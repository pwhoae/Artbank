# STREAMING_CHUNK:Defining script headers and exported parameters...
class_name ShooterJuiceDemo
extends Node3D

## ==============================================================================
## Godot 4.x 3D Shooter Juice & Effects Interactive Demo
## Attach this script to a root Node3D in an empty scene and run (F5).
## Everything (Meshes, UI, Shaders, Particles, Audio) is generated dynamically!
## ==============================================================================

# Effect Toggles (Controlled via GUI checkboxes or code)
var enable_hit_flash: bool = true
var enable_recoil: bool = true
var enable_camera_shake: bool = true
var enable_squash_stretch: bool = true
var enable_floating_text: bool = true
var enable_particles: bool = true
var enable_sound: bool = true

# Weapon Types
enum WeaponType { RIFLE, LASER, FLAMETHROWER, GRENADE }
var current_weapon: WeaponType = WeaponType.RIFLE

# Ammo & Target State
var ammo_count: int = 30
var max_ammo: int = 30
var target_hp: float = 100.0
var target_max_hp: float = 100.0

# Camera & Shake Variables
var camera: Camera3D
var camera_base_transform: Transform3D
var shake_intensity: float = 0.0
var shake_decay: float = 5.0

# Weapon Rig Nodes
var weapon_pivot: Node3D
var weapon_mesh: MeshInstance3D
var muzzle_light: OmniLight3D
var raycast: RayCast3D
var weapon_default_pos: Vector3 = Vector3(0.3, -0.25, -0.5)

# Laser & Flame Special Nodes
var laser_mesh: MeshInstance3D
var flame_particles: GPUParticles3D
var hit_sparks_particles: GPUParticles3D

# Target Mesh Nodes
var target_root: Node3D
var target_body_mesh: MeshInstance3D
var target_default_scale: Vector3 = Vector3.ONE
var target_material: StandardMaterial3D

# UI Nodes
var ui_layer: CanvasLayer
var hp_bar: ProgressBar
var hp_label: Label
var ammo_label: Label
var weapon_info_label: Label
var crosshair: Control

# Audio Player Generator
var audio_player: AudioStreamPlayer
var audio_generator: AudioStreamGeneratorPlayback

# Input State
var is_firing: bool = false
var fire_timer: float = 0.0

# STREAMING_CHUNK:Initializing node lifecycle and scene setup...
func _ready() -> void:
	# Build environment, lighting, and camera
	setup_environment()
	setup_camera_and_weapon()
	
	# Build 3D target dummy (Dino target)
	setup_target_dino()
	
	# Build particle generators
	setup_particles()
	
	# Build dynamic UI overlay
	setup_ui()
	
	# Build procedural sound generator
	setup_audio()
	
	# Connect frame processing
	set_process(true)
	set_physics_process(true)

# STREAMING_CHUNK:Configuring 3D environment, lights, and floor...
func setup_environment() -> void:
	# World Environment & Lighting
	var env := WorldEnvironment.new()
	var environment := Environment.new()
	environment.background_mode = Environment.BG_COLOR
	environment.background_color = Color(0.05, 0.07, 0.1)
	environment.ambient_light_color = Color(0.2, 0.25, 0.35)
	environment.ambient_light_energy = 1.0
	environment.tonemap_mode = Environment.TONE_MAP_FILMIC
	env.environment = environment
	add_child(env)

	# Directional Sunlight
	var sun := DirectionalLight3D.new()
	sun.position = Vector3(5, 10, 5)
	sun.rotation_degrees = Vector3(-45, 30, 0)
	sun.shadow_enabled = true
	add_child(sun)

	# Floor Plane Mesh
	var floor_mesh := MeshInstance3D.new()
	var plane := PlaneMesh.new()
	plane.size = Vector2(40, 40)
	floor_mesh.mesh = plane
	floor_mesh.position.y = -1.2
	
	var floor_mat := StandardMaterial3D.new()
	floor_mat.albedo_color = Color(0.08, 0.12, 0.18)
	floor_mat.roughness = 0.8
	floor_mesh.material_override = floor_mat
	add_child(floor_mesh)

	# Static Body for Floor collision
	var floor_body := StaticBody3D.new()
	var floor_shape := CollisionShape3D.new()
	var box_shape := BoxShape3D.new()
	box_shape.size = Vector3(40, 0.1, 40)
	floor_shape.shape = box_shape
	floor_shape.position.y = -1.25
	floor_body.add_child(floor_shape)
	add_child(floor_body)

# STREAMING_CHUNK:Constructing FPS camera, weapon rig, and raycaster...
func setup_camera_and_weapon() -> void:
	# Main Camera3D
	camera = Camera3D.new()
	camera.position = Vector3(0, 0, 0)
	add_child(camera)
	camera_base_transform = camera.transform

	# Weapon Pivot attached to Camera
	weapon_pivot = Node3D.new()
	weapon_pivot.position = weapon_default_pos
	camera.add_child(weapon_pivot)

	# Weapon Barrel Mesh
	weapon_mesh = MeshInstance3D.new()
	var cyl := CylinderMesh.new()
	cyl.top_radius = 0.04
	cyl.bottom_radius = 0.05
	cyl.height = 0.6
	weapon_mesh.mesh = cyl
	weapon_mesh.rotation_degrees.x = -90
	
	var gun_mat := StandardMaterial3D.new()
	gun_mat.albedo_color = Color(0.2, 0.25, 0.3)
	gun_mat.metallic = 0.8
	gun_mat.roughness = 0.2
	weapon_mesh.material_override = gun_mat
	weapon_pivot.add_child(weapon_mesh)

	# Muzzle Light
	muzzle_light = OmniLight3D.new()
	muzzle_light.light_color = Color(1.0, 0.7, 0.2)
	muzzle_light.light_energy = 0.0
	muzzle_light.omni_range = 5.0
	muzzle_light.position = Vector3(0, 0, -0.4)
	weapon_pivot.add_child(muzzle_light)

	# Firing RayCast3D
	raycast = RayCast3D.new()
	raycast.target_position = Vector3(0, 0, -50)
	raycast.enabled = true
	camera.add_child(raycast)

	# 3D Laser Beam Mesh (for Laser Rifle)
	laser_mesh = MeshInstance3D.new()
	var beam_cyl := CylinderMesh.new()
	beam_cyl.top_radius = 0.02
	beam_cyl.bottom_radius = 0.02
	beam_cyl.height = 10.0
	laser_mesh.mesh = beam_cyl
	laser_mesh.rotation_degrees.x = -90
	laser_mesh.position = Vector3(0, 0, -5.0)
	laser_mesh.visible = false
	
	var laser_mat := StandardMaterial3D.new()
	laser_mat.albedo_color = Color(0.0, 0.9, 1.0)
	laser_mat.emission_enabled = true
	laser_mat.emission = Color(0.0, 1.0, 1.0)
	laser_mat.emission_energy_multiplier = 4.0
	laser_mesh.material_override = laser_mat
	weapon_pivot.add_child(laser_mesh)

# STREAMING_CHUNK:Building the 3D target dino dummy with collisions...
func setup_target_dino() -> void:
	target_root = Node3D.new()
	target_root.position = Vector3(0, -0.8, -5)
	add_child(target_root)

	# Dino Standard Material with Emissive for Hit Flash
	target_material = StandardMaterial3D.new()
	target_material.albedo_color = Color(0.06, 0.72, 0.5) # Emerald Green
	target_material.roughness = 0.4
	target_material.emission_enabled = true
	target_material.emission = Color.BLACK
	target_material.emission_energy_multiplier = 0.0

	# Dino Main Body (Box)
	target_body_mesh = MeshInstance3D.new()
	var body_box := BoxMesh.new()
	body_box.size = Vector3(1.0, 1.2, 1.4)
	target_body_mesh.mesh = body_box
	target_body_mesh.position.y = 0.8
	target_body_mesh.material_override = target_material
	target_root.add_child(target_body_mesh)

	# Head
	var head := MeshInstance3D.new()
	var head_box := BoxMesh.new()
	head_box.size = Vector3(0.7, 0.7, 0.9)
	head.mesh = head_box
	head.position = Vector3(0, 1.4, -0.5)
	head.material_override = target_material
	target_root.add_child(head)

	# Snout
	var snout := MeshInstance3D.new()
	var snout_box := BoxMesh.new()
	snout_box.size = Vector3(0.5, 0.4, 0.6)
	snout.mesh = snout_box
	snout.position = Vector3(0, 1.3, -1.0)
	snout.material_override = target_material
	target_root.add_child(snout)

	# Eyes (Glowing red)
	var eye_mat := StandardMaterial3D.new()
	eye_mat.albedo_color = Color.RED
	eye_mat.emission_enabled = true
	eye_mat.emission = Color.RED

	for side in [-0.36, 0.36]:
		var eye := MeshInstance3D.new()
		var sphere := SphereMesh.new()
		sphere.radius = 0.08
		sphere.height = 0.16
		eye.mesh = sphere
		eye.position = Vector3(side, 1.5, -0.7)
		eye.material_override = eye_mat
		target_root.add_child(eye)

	# Target Collider Static Body
	var target_body := StaticBody3D.new()
	target_body.name = "TargetBody"
	var col_shape := CollisionShape3D.new()
	var box_col := BoxShape3D.new()
	box_col.size = Vector3(1.2, 1.8, 1.8)
	col_shape.shape = box_col
	col_shape.position.y = 0.9
	target_body.add_child(col_shape)
	target_root.add_child(target_body)

# STREAMING_CHUNK:Configuring GPUParticles3D for hit sparks and flames...
func setup_particles() -> void:
	# Impact Sparks Particle System
	hit_sparks_particles = GPUParticles3D.new()
	hit_sparks_particles.emitting = false
	hit_sparks_particles.one_shot = true
	hit_sparks_particles.amount = 20
	hit_sparks_particles.lifetime = 0.3
	hit_sparks_particles.explosiveness = 0.95

	var spark_mat := ParticleProcessMaterial.new()
	spark_mat.direction = Vector3(0, 1, 0)
	spark_mat.spread = 180.0
	spark_mat.initial_velocity_min = 3.0
	spark_mat.initial_velocity_max = 8.0
	spark_mat.gravity = Vector3(0, -9.8, 0)

	var spark_mesh := SphereMesh.new()
	spark_mesh.radius = 0.04
	spark_mesh.height = 0.08

	var spark_draw_mat := StandardMaterial3D.new()
	spark_draw_mat.albedo_color = Color(1.0, 0.4, 0.1)
	spark_draw_mat.emission_enabled = true
	spark_draw_mat.emission = Color(1.0, 0.6, 0.2)
	spark_draw_mat.emission_energy_multiplier = 3.0
	spark_mesh.material = spark_draw_mat

	hit_sparks_particles.process_material = spark_mat
	hit_sparks_particles.draw_pass_1 = spark_mesh
	add_child(hit_sparks_particles)

	# Flamethrower Particle Stream
	flame_particles = GPUParticles3D.new()
	flame_particles.emitting = false
	flame_particles.amount = 60
	flame_particles.lifetime = 0.6
	
	var flame_pmat := ParticleProcessMaterial.new()
	flame_pmat.direction = Vector3(0, 0, -1)
	flame_pmat.spread = 15.0
	flame_pmat.initial_velocity_min = 8.0
	flame_pmat.initial_velocity_max = 12.0
	flame_pmat.gravity = Vector3(0, 1.0, 0)

	var flame_mesh := SphereMesh.new()
	flame_mesh.radius = 0.15
	flame_mesh.height = 0.3

	var flame_draw_mat := StandardMaterial3D.new()
	flame_draw_mat.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	flame_draw_mat.albedo_color = Color(1.0, 0.5, 0.1, 0.7)
	flame_draw_mat.emission_enabled = true
	flame_draw_mat.emission = Color(1.0, 0.3, 0.0)
	flame_draw_mat.emission_energy_multiplier = 2.0
	flame_mesh.material = flame_draw_mat

	flame_particles.process_material = flame_pmat
	flame_particles.draw_pass_1 = flame_mesh
	weapon_pivot.add_child(flame_particles)
	flame_particles.position = Vector3(0, 0, -0.4)

# STREAMING_CHUNK:Constructing 2D HUD, crosshair, and options panel...
func setup_ui() -> void:
	ui_layer = CanvasLayer.new()
	add_child(ui_layer)

	# Center Dynamic Crosshair
	crosshair = Control.new()
	crosshair.set_anchors_preset(Control.PRESET_CENTER)
	ui_layer.add_child(crosshair)

	var dot := ColorRect.new()
	dot.size = Vector2(4, 4)
	dot.position = Vector2(-2, -2)
	dot.color = Color.RED
	crosshair.add_child(dot)

	# Header Panel
	var header := PanelContainer.new()
	header.position = Vector2(20, 20)
	var header_lbl := Label.new()
	header_lbl.text = " Godot 4 3D Shooter FX Demo "
	header.add_child(header_lbl)
	ui_layer.add_child(header)

	# Right Side Panel: Juice Feature Toggles
	var panel := VBoxContainer.new()
	panel.position = Vector2(GetViewportSize().x - 240, 20)
	panel.custom_minimum_size = Vector2(220, 0)
	ui_layer.add_child(panel)

	var toggles_title := Label.new()
	toggles_title.text = "--- FX Juice Toggles ---"
	panel.add_child(toggles_title)

	var chk_flash := CheckBox.new()
	chk_flash.text = "1. Hit Flash Shader"
	chk_flash.button_pressed = true
	chk_flash.toggled.connect(func(t): enable_hit_flash = t)
	panel.add_child(chk_flash)

	var chk_recoil := CheckBox.new()
	chk_recoil.text = "2. Recoil & Tilt"
	chk_recoil.button_pressed = true
	chk_recoil.toggled.connect(func(t): enable_recoil = t)
	panel.add_child(chk_recoil)

	var chk_shake := CheckBox.new()
	chk_shake.text = "3. Camera Shake"
	chk_shake.button_pressed = true
	chk_shake.toggled.connect(func(t): enable_camera_shake = t)
	panel.add_child(chk_shake)

	var chk_squash := CheckBox.new()
	chk_squash.text = "4. Squash & Stretch"
	chk_squash.button_pressed = true
	chk_squash.toggled.connect(func(t): enable_squash_stretch = t)
	panel.add_child(chk_squash)

	var chk_float := CheckBox.new()
	chk_float.text = "5. Floating Damage Text"
	chk_float.button_pressed = true
	chk_float.toggled.connect(func(t): enable_floating_text = t)
	panel.add_child(chk_float)

	var chk_part := CheckBox.new()
	chk_part.text = "6. Impact GPUParticles"
	chk_part.button_pressed = true
	chk_part.toggled.connect(func(t): enable_particles = t)
	panel.add_child(chk_part)

	# Bottom HUD: Weapons & Ammo
	var bottom_bar := HBoxContainer.new()
	bottom_bar.position = Vector2(20, GetViewportSize().y - 80)
	ui_layer.add_child(bottom_bar)

	var btn_rifle := Button.new()
	btn_rifle.text = "1. Rifle"
	btn_rifle.pressed.connect(func(): select_weapon(WeaponType.RIFLE))
	bottom_bar.add_child(btn_rifle)

	var btn_laser := Button.new()
	btn_laser.text = "2. Laser"
	btn_laser.pressed.connect(func(): select_weapon(WeaponType.LASER))
	bottom_bar.add_child(btn_laser)

	var btn_flame := Button.new()
	btn_flame.text = "3. Flame"
	btn_flame.pressed.connect(func(): select_weapon(WeaponType.FLAMETHROWER))
	bottom_bar.add_child(btn_flame)

	var btn_grenade := Button.new()
	btn_grenade.text = "4. Grenade"
	btn_grenade.pressed.connect(func(): select_weapon(WeaponType.GRENADE))
	bottom_bar.add_child(btn_grenade)

	var btn_reload := Button.new()
	btn_reload.text = "Reload (R)"
	btn_reload.pressed.connect(reload_weapon)
	bottom_bar.add_child(btn_reload)

	# Ammo & Info Display Labels
	ammo_label = Label.new()
	ammo_label.position = Vector2(20, GetViewportSize().y - 110)
	ammo_label.text = "Ammo: 30 / 30"
	ui_layer.add_child(ammo_label)

	weapon_info_label = Label.new()
	weapon_info_label.position = Vector2(200, GetViewportSize().y - 110)
	weapon_info_label.text = "Weapon: Assault Rifle [Hitscan + Recoil]"
	ui_layer.add_child(weapon_info_label)

	# Target HP Progress Bar
	hp_bar = ProgressBar.new()
	hp_bar.position = Vector2(GetViewportSize().x / 2.0 - 100, 20)
	hp_bar.custom_minimum_size = Vector2(200, 20)
	hp_bar.value = 100
	ui_layer.add_child(hp_bar)

	hp_label = Label.new()
	hp_label.position = Vector2(GetViewportSize().x / 2.0 - 40, 22)
	hp_label.text = "100 / 100 HP"
	ui_layer.add_child(hp_label)

	# Reset Target Button
	var btn_reset := Button.new()
	btn_reset.position = Vector2(GetViewportSize().x / 2.0 - 50, 50)
	btn_reset.text = "Reset Dummy"
	btn_reset.pressed.connect(reset_target)
	ui_layer.add_child(btn_reset)

# STREAMING_CHUNK:Setting up procedural audio stream synth...
func setup_audio() -> void:
	audio_player = AudioStreamPlayer.new()
	var generator := AudioStreamGenerator.new()
	generator.mix_rate = 22050
	generator.buffer_length = 0.1
	audio_player.stream = generator
	add_child(audio_player)
	audio_player.play()
	audio_generator = audio_player.get_stream_playback()

func GetViewportSize() -> Vector2:
	return get_viewport().get_visible_rect().size

# STREAMING_CHUNK:Handling continuous inputs and camera shake frame loops...
func _process(delta: float) -> void:
	# Continuous Automatic Firing Logic
	if is_firing:
		fire_timer -= delta
		if fire_timer <= 0.0:
			trigger_weapon_fire()

	# Camera Shake Processing with Exponential Decay
	if enable_camera_shake and shake_intensity > 0.0:
		var rx := randf_range(-1.0, 1.0) * shake_intensity
		var ry := randf_range(-1.0, 1.0) * shake_intensity
		var rz := randf_range(-1.0, 1.0) * shake_intensity
		camera.transform.origin = camera_base_transform.origin + Vector3(rx, ry, rz)
		shake_intensity = max(0.0, shake_intensity - shake_decay * delta)
	else:
		camera.transform.origin = camera_base_transform.origin

	# Laser Rifle Continuous Ray Updating
	if current_weapon == WeaponType.LASER and is_firing:
		laser_mesh.visible = true
	else:
		if current_weapon != WeaponType.LASER:
			laser_mesh.visible = false

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		is_firing = event.pressed
		if is_firing:
			trigger_weapon_fire()

	if event is InputEventKey and event.pressed:
		match event.keycode:
			KEY_1: select_weapon(WeaponType.RIFLE)
			KEY_2: select_weapon(WeaponType.LASER)
			KEY_3: select_weapon(WeaponType.FLAMETHROWER)
			KEY_4: select_weapon(WeaponType.GRENADE)
			KEY_R: reload_weapon()

# STREAMING_CHUNK:Executing weapon firing mechanics and recoil logic...
func trigger_weapon_fire() -> void:
	if ammo_count <= 0:
		reload_weapon()
		is_firing = false
		return

	match current_weapon:
		WeaponType.RIFLE:
			fire_timer = 0.12 # Fire rate
			ammo_count -= 1
			perform_hitscan_shot(20.0, 0.08)
			play_synth_sound(800.0, 0.05)

		WeaponType.LASER:
			fire_timer = 0.06
			ammo_count -= 1
			perform_hitscan_shot(8.0, 0.02)
			play_synth_sound(1400.0, 0.03)

		WeaponType.FLAMETHROWER:
			fire_timer = 0.05
			ammo_count -= 1
			flame_particles.restart()
			perform_flame_shot()
			play_synth_sound(200.0, 0.04)

		WeaponType.GRENADE:
			fire_timer = 0.6
			ammo_count -= 5
			perform_grenade_blast()
			play_synth_sound(120.0, 0.3)
			is_firing = false

	update_ui_hud()

	# Recoil & Gun Pitch Tilt Animation
	if enable_recoil:
		apply_weapon_recoil()

# STREAMING_CHUNK:Executing hitscan raycasts and impact handlers...
func perform_hitscan_shot(damage: float, shake_amount: float) -> void:
	# Muzzle Flash Light Pulse
	muzzle_light.light_energy = 3.0
	var light_tween := create_tween()
	light_tween.tween_property(muzzle_light, "light_energy", 0.0, 0.08)

	if enable_camera_shake:
		shake_intensity = shake_amount

	# Check RayCast Collision
	if raycast.is_colliding():
		var hit_node := raycast.get_collider()
		var hit_point := raycast.get_collision_point()
		var hit_normal := raycast.get_collision_normal()

		if hit_node and hit_node.name == "TargetBody":
			apply_target_damage(damage, hit_point, hit_normal)

func perform_flame_shot() -> void:
	# Check distance to target
	var dist := weapon_pivot.global_position.distance_to(target_root.global_position)
	if dist < 8.0:
		apply_target_damage(5.0, target_root.global_position + Vector3(0, 0.8, 0), Vector3.UP)

func perform_grenade_blast() -> void:
	# Massive Shockwave Camera Shake
	if enable_camera_shake:
		shake_intensity = 0.35

	# Animate Shockwave Blast Mesh
	var blast_mesh := MeshInstance3D.new()
	var sphere := SphereMesh.new()
	sphere.radius = 0.2
	sphere.height = 0.4
	blast_mesh.mesh = sphere
	blast_mesh.position = target_root.position + Vector3(0, 0.8, 0)
	
	var blast_mat := StandardMaterial3D.new()
	blast_mat.albedo_color = Color(1.0, 0.6, 0.1)
	blast_mat.emission_enabled = true
	blast_mat.emission = Color(1.0, 0.4, 0.0)
	blast_mat.emission_energy_multiplier = 4.0
	blast_mesh.material_override = blast_mat
	add_child(blast_mesh)

	var blast_tween := create_tween()
	blast_tween.tween_property(blast_mesh, "scale", Vector3(8, 8, 8), 0.35)
	blast_tween.parallel().tween_property(blast_mat, "albedo_color:a", 0.0, 0.35)
	blast_tween.tween_callback(blast_mesh.queue_free)

	apply_target_damage(50.0, target_root.global_position, Vector3.UP)

# STREAMING_CHUNK:Applying target damage, squash & stretch, hit flash, and floating numbers...
func apply_target_damage(damage: float, hit_point: Vector3, normal: Vector3) -> void:
	target_hp = max(0.0, target_hp - damage)
	update_ui_hud()

	# 1. Hit Flash Shader Material Emissive Pulse
	if enable_hit_flash and target_material:
		target_material.emission = Color.WHITE
		target_material.emission_energy_multiplier = 2.0
		var flash_tween := create_tween()
		flash_tween.tween_property(target_material, "emission_energy_multiplier", 0.0, 0.15)

	# 2. Squash & Stretch Elastic Tweening
	if enable_squash_stretch and target_root:
		var squash_tween := create_tween().set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_OUT)
		target_root.scale = Vector3(1.3, 0.7, 1.3)
		squash_tween.tween_property(target_root, "scale", target_default_scale, 0.4)

	# 3. Floating 3D Damage Label
	if enable_floating_text:
		spawn_floating_damage_text(hit_point, damage)

	# 4. GPUParticles Impact Sparks
	if enable_particles and hit_sparks_particles:
		hit_sparks_particles.global_position = hit_point
		hit_sparks_particles.restart()

# STREAMING_CHUNK:Spawning 3D billboard damage label animations...
func spawn_floating_damage_text(pos: Vector3, damage: float) -> void:
	var label3d := Label3D.new()
	label3d.text = "-%d" % int(damage)
	label3d.font_size = 48
	label3d.modulate = Color(1.0, 0.2, 0.2)
	label3d.billboard = BaseMaterial3D.BILLBOARD_ENABLED
	label3d.position = pos + Vector3(randf_range(-0.3, 0.3), 0.5, randf_range(-0.3, 0.3))
	add_child(label3d)

	# Animate float upward and fade out
	var tween := create_tween()
	tween.tween_property(label3d, "position:y", label3d.position.y + 1.0, 0.5)
	tween.parallel().tween_property(label3d, "scale", Vector3(1.3, 1.3, 1.3), 0.2)
	tween.parallel().tween_property(label3d, "modulate:a", 0.0, 0.5)
	tween.tween_callback(label3d.queue_free)

# STREAMING_CHUNK:Applying weapon recoil and spring mechanics...
func apply_weapon_recoil() -> void:
	var recoil_tween := create_tween().set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)
	weapon_pivot.position.z = weapon_default_pos.z + 0.15
	weapon_pivot.rotation_degrees.x = 8.0
	recoil_tween.tween_property(weapon_pivot, "position:z", weapon_default_pos.z, 0.12)
	recoil_tween.parallel().tween_property(weapon_pivot, "rotation_degrees:x", 0.0, 0.12)

# STREAMING_CHUNK:Handling UI state updates and weapon switching...
func select_weapon(type: WeaponType) -> void:
	current_weapon = type
	match current_weapon:
		WeaponType.RIFLE:
			max_ammo = 30
			weapon_info_label.text = "Weapon: Assault Rifle [Hitscan + Recoil]"
		WeaponType.LASER:
			max_ammo = 50
			weapon_info_label.text = "Weapon: 3D Laser Rifle [Continuous Energy Beam]"
		WeaponType.FLAMETHROWER:
			max_ammo = 100
			weapon_info_label.text = "Weapon: Flamethrower [GPUParticles Stream]"
		WeaponType.GRENADE:
			max_ammo = 10
			weapon_info_label.text = "Weapon: Grenade Launcher [Explosive Shockwave]"
	ammo_count = max_ammo
	update_ui_hud()

func reload_weapon() -> void:
	ammo_count = max_ammo
	update_ui_hud()
	
	# Weapon Spin Reload Animation
	var reload_tween := create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	reload_tween.tween_property(weapon_pivot, "rotation_degrees:z", 360.0, 0.4)
	reload_tween.tween_callback(func(): weapon_pivot.rotation_degrees.z = 0.0)

func reset_target() -> void:
	target_hp = target_max_hp
	update_ui_hud()

func update_ui_hud() -> void:
	if ammo_label:
		ammo_label.text = "Ammo: %d / %d" % [ammo_count, max_ammo]
	if hp_bar:
		hp_bar.value = target_hp
	if hp_label:
		hp_label.text = "%d / %d HP" % [int(target_hp), int(target_max_hp)]

# STREAMING_CHUNK:Synthesizing procedural audio waveform pulses...
func play_synth_sound(frequency: float, duration: float) -> void:
	if not enable_sound or not audio_generator:
		return

	var sample_rate := 22050.0
	var total_frames := int(sample_rate * duration)
	var phase := 0.0
	var increment := (frequency * TAU) / sample_rate

	for i in range(total_frames):
		phase += increment
		var sample := sin(phase) * (1.0 - float(i) / float(total_frames))
		audio_generator.push_frame(Vector2(sample, sample) * 0.3)