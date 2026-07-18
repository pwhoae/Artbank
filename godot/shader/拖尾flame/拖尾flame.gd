#=========================================================
# DynamicTrail3D.gd
# 挂载到一个空的 MeshInstance3D 节点上，实现酷炫的刀光或飞弹拖尾。
#=========================================================
extends MeshInstance3D
class_name DynamicTrail3D

@export var target_node: Node3D        # 要跟踪的物体 (例如：剑尖)
@export var offset_vector: Vector3 = Vector3(0, -1.2, 0) # 刀刃宽度的偏移向量
@export var trail_lifetime: float = 0.4 # 拖尾段持续时间 (秒)
@export var max_points: int = 60        # 最大样点数量
@export var min_distance: float = 0.05  # 生成新段所需的最小位移

struct TrailPoint:
	var top: Vector3
	var bottom: Vector3
	var time: float
	var alpha: float

var points: Array[TrailPoint] = []
var immediate_mesh: ImmediateMesh

func _ready() -> void:
	# 实例化 Godot 4 ImmediateMesh 用于动态渲染
	immediate_mesh = ImmediateMesh.new()
	self.mesh = immediate_mesh
	
	if not target_node:
		# 若未指定，则默认跟踪父级
		target_node = get_parent() as Node3D

func _process(delta: float) -> void:
	if not target_node:
		return
		
	# 1. 移去超时样点
	var current_time = Time.get_ticks_msec() / 1000.0
	var i = 0
	while i < points.size():
		var age = current_time - points[i].time
		if age > trail_lifetime:
			points.remove_at(i)
		else:
			# 计算插值Alpha，让旧段平滑消散
			points[i].alpha = 1.0 - (age / trail_lifetime)
			i += 1
			
	# 2. 采样当前骨骼/物体的物理坐标并判定是否加入新样点
	var current_top = target_node.global_position
	var current_bottom = target_node.global_global_transform().basis * offset_vector + current_top
	
	var should_add = true
	if points.size() > 0:
		var last_point = points[points.size() - 1]
		var dist = last_point.top.distance_to(current_top)
		if dist < min_distance:
			should_add = false
			
	if should_add:
		var new_point = TrailPoint.new()
		new_point.top = to_local(current_top)
		new_point.bottom = to_local(current_bottom)
		new_point.time = current_time
		new_point.alpha = 1.0
		points.append(new_point)
		
		# 限制最大网格面数
		if points.size() > max_points:
			points.remove_at(0)
			
	# 3. 动态重构三角面片 (Ribbon Mesh)
	_rebuild_trail_mesh()

func _rebuild_trail_mesh() -> void:
	immediate_mesh.clear_surfaces()
	
	if points.size() < 2:
		return
		
	immediate_mesh.surface_begin(Mesh.PRIMITIVE_TRIANGLE_STRIP)
	
	for idx in range(points.size()):
		var pt = points[idx]
		# 将索引转化为沿着整个拖尾的横向 UV 坐标 (0.0 表示尾端, 1.0 表示尖端)
		var u = float(idx) / float(points.size() - 1)
		
		# 写入上边缘顶点 (UV: [U, 1.0])
		immediate_mesh.surface_set_color(Color(1.0, 1.0, 1.0, pt.alpha))
		immediate_mesh.surface_set_uv(Vector2(u, 1.0))
		immediate_mesh.surface_add_vertex(pt.top)
		
		# 写入下边缘顶点 (UV: [U, 0.0])
		immediate_mesh.surface_set_color(Color(1.0, 1.0, 1.0, pt.alpha))
		immediate_mesh.surface_set_uv(Vector2(u, 0.0))
		immediate_mesh.surface_add_vertex(pt.bottom)
		
	immediate_mesh.surface_end()
