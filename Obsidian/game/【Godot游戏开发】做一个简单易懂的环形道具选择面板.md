---
title: "【Godot游戏开发】做一个简单易懂的环形道具选择面板"
source: "https://www.bilibili.com/video/BV1B3rjB5Eef?"
author:
  - "[[鲁搬三试]]"
published: 2026-01-14
created: 2026-08-16
description: "做一个简单易懂的环形道具选择器Godot4.4.1视频中素材取自 https://kenney.nl/录屏一分钟，编字幕一小时"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1B3rjB5Eef&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

做一个简单易懂的环形道具选择器  
Godot4.4.1  
视频中素材取自 https://kenney.nl/  
录屏一分钟，编字幕一小时

## Transcript

**0:00** · 大家好今天我们来做一个环形选择器按住alt键打开移动鼠标完成选择松开alt键关闭下面我们开始首先新建一个测试节点类型为node2D 起名test sc 创建一个脚本删除默认方法新建input内置方法接收玩家输入

**0:28** · 新建一个node2D场景取名为will 新建一个脚本先删除raid方法新建一个ray cast2D子节点拖拽到脚本中 recast2D可以发出一条射线检测对应方向和距离内是否碰撞指定的节点修改脚本获取鼠标坐在位置这里global是全局位置

**0:58** · 再减去当前view节点的位置 angle方法获取结果向量的弧度将其赋值给cast deer 设置为cast2D的目标点集中点它是一个vector2向量cos deer 获取X值 Cd 获取Y值再给一个500的距离然后我们把它放到test thing中

**1:28** · 随意放置一个位置测试一下看看效果什么都没看到点击调试选择显示碰撞区域再测试一下可以看到有一条线跟着鼠标移动之后要通过它来实现道具的选择新建一个场景命名为will item 类型为aria2D 新建一个collection ship2D子节点添加一个圆形区域

**1:58** · 半径为32 新建一个spread2弟子节点我这里准备了几张图片选一个添加到texture纹理中修改一下缩放 0.5 PO子节点用于显示边框忽略对panel的所有鼠标操作

**2:28** · 修改一下尺寸位置相对于零点居中锚点设置到矩形中心这样就可以围绕中心点旋转了添加一个脚本新增update rotate方法传入rotate参数这里我们用补间动画来实现panel的旋转

**2:58** · 默认停止正在运行的补间动画然后重新创建这里要变换panel的角度把panel拖拽到脚本修改rotation 这里是弧度如果要按角度修改可以使用rotation degress参数参数类型是float

**3:31** · 删除默认方法新建update scale方法参数为scale 默认1.0 再新建一个补间动画用来处理缩放复制一个过来

**3:56** · 这次直接修改当前节点变更scale属性 scale属性是一个vector2向量基本操作方法完成回到will场景新建一个node2弟子节点起名叫items

**4:28** · 将VITEM拖拽到items 多复制几个六个866大顺新建一个ESON属性增加一个方法按和一个方法up

**4:56** · 分别对应打开和关闭判断items是否有子节点判断打开状态并修改创建一个循环体要根据item的序号设置它的位置和旋转角度

**5:27** · ta又是GA中的一个常数值为两派乘以I再除以子节点的数量获取diec item 调用update rotate方法传入deer 这里的deer是弧度

**5:54** · 将代码复制到off方法修改判断条件避免重复操作 dear不用计算设置为零切换到test se 开始实现案件逻辑判断 event事件类型只处理input vue类型的事件按键为out

**6:25** · 按下按键松开按键将will o拖拽到脚本按下时调用on方法松开时调用up方法测试一下重复按下和松开alt键关闭碰撞显示回到view 实现位置移动

**6:56** · 根据deer获取方向向量位移乘以100 增加一个补间动画在一定时间内完成位移需要修改item的position参数相对位置就可以这段代码也可以在VIVITEM内部方法中实现

**7:29** · 复制位移过程到off方法移动完成后增加一个call back 目标值为零其实不用改测试一下重复按下和松开alt键效果不错选择request rd

**7:58** · 碰撞层改为八切换到will item 把当前层改为八碰撞层改为零再回到view 把碰撞类型改为aria 然后新增一个参数 selected记录已选择的道具判断射线是否有碰撞获取碰撞体area

**8:26** · 其实就是当前方向上的VITEM 打印方便查看测试一下打开面板后移动鼠标 selected变成当前方向的VITEM 增加一个聚焦效果新增select方法循环遍历items的子节点

**9:06** · 当selected和item相同时放大item 否则缩小调用之前写的update scale方法倍率设置为1.5 如果不同恢复1.0 复制方法名在process真方法

**9:33** · 最后调用测试一下这里应该是item按住alt鼠标移动时对应的图标变大了回收时不太好松开alt键时可以让这些图标都隐藏掉 on方法中让items显示 off方法中让items隐藏

**10:04** · 隐藏写在call back里这样可以看到图标收回的动画测试一下看起来效果还不错接下来实现动态添加item 在test theme新增一个ADITEM方法备用

**10:34** · 新建global场景用来保存全局数据打开项目设置全局设置添加global节点到自动加载新建一个脚本增加一个export参数 Items 类型为resource数组

**11:09** · 新建一个脚本命名为item status 用来记录item信息调整一下窗口大小新建一个文件夹status 把item status移动到这里继承改为resource 添加两个参数一个是item name 一个是item icon

**11:44** · item icon是texture2D类型保存图片设置 class name为item status 新建一个resource 继承item status 命名为item status 复制到六个给每个资源设置名称和图片

**12:13** · 显示和切换时就可以看到区别回到test thing 新建一个panels节点放在靠中间一点的位置再添加一个text direct节点

**12:42** · 显示已选择的图标尺寸改为64×64 纹理居中缩放并适配图片高度向下一点回到testing 新增physics process内置方法将texact act拖拽到脚本

**13:12** · 当texture direct的纹理和selected的纹理不相同时 text direct赋值这里使用status参数给will item增加一个status参数

**13:40** · 新增init item方法传入参数为status 直接给status赋值然后修改spread2D的纹理

**14:09** · 切换到view节点新增light方法创建一个新的VITEM 并添加到items 将VITEM文件拖拽到脚本创建实例调用init item方法赋值

**14:41** · 到global给items赋值添加六个元素回到test thing 便利global的items 并调用VIVO的app方法传入status

**15:14** · 添加read方法加载完成时调用ADD item测试一下好的启动报错这里是空属性不包含texture 所以应该是status赋值的问题看看问题出在哪里到view item脚本调整当节点未加载完时

**15:43** · 重新调用init item 测试一下战役出节点一直未加载到 will调整ADD方法将1need item放到app child之后再测试一下status不存在

**16:13** · 增加判断select的存在时在调用重新测试图片有点大转到第一个选项是报错还是status 不存在增加判断status是否存在

**16:41** · 重新测试这次不报错了删除一开始准备的六个will item 只留下动态加载的节点还是应该调整一下图标大小 spread2D的缩放改成0.3 重新测试这个没改

**17:12** · text direct调整为fit height和keep aspect center 重新测试松开alt会切换异常应该是松开alt时一个icon经过RK2D触发了碰撞切换到will base on调整到最前面

**17:41** · 然后在碰撞检测时要求ESUM为true 这样回收时就不会再触发选择了谢谢观看