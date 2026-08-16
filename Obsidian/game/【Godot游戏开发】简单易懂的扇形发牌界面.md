---
title: "【Godot游戏开发】简单易懂的扇形发牌界面"
source: "https://www.bilibili.com/video/BV1eeF6zHES9/?"
author:
  - "[[鲁搬三试]]"
published: 2026-02-06
created: 2026-08-16
description: "做一个简单易懂的扇形发牌界面Godot4.6病从口入，祸从口出"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1eeF6zHES9&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

做一个简单易懂的扇形发牌界面  
Godot4.6  
病从口入，祸从口出

## Transcript

**0:00** · 大家好今天我们来做一个简单的扇形发牌嗯嗯下面开始新建一个测试场景依然叫做test thing 为场景创建脚本删除默认方法创建一个button节点

**0:30** · 内容写发牌修改一下尺寸为100×160 右侧居中对齐绑定按下信号按下按钮时调用ADD card的方法添加ADD card的方法新建control场景命名为card

**1:01** · 创建脚本卡片尺寸修改为100×160 左上角对齐创建panel子节点对齐整个矩形修改一下样式方便查看效果右键新建style bags flat 背景色改成黑色

**1:31** · 增加边框宽度边框颜色就先不改了增加一个圆角半径16 有点宽了边框改成四圆角改成八还凑合接下来编写脚本给panel绑定信号

**2:00** · 先删除默认方法创建一个补间动画按照老规矩先Q后创建鼠标进入卡片区域时要实现一个向上移动的动画修改panel的position属性相对位置向上移动25

**2:29** · 0.1秒完成复制到下面 Y改成零回到test thing 继续编写at cart 方法将cart拖拽到脚本4.6 默认按UID加载不太习惯实例化cart 创建一个新的control节点用来放置新增的卡牌没有特殊要求

**2:59** · 对其整个界面忽略鼠标操作添加到脚本a child 将新的卡片加入场景指定一个初始位置开始时和button放在一起一定要使用global position测试一下

**3:29** · 发出一张牌遮挡了按钮增加一个指定的位置从display server获取窗口大小调用window get size方法位置在窗口中间要除以2.0 不能是二因为获取的是vector2I会报错垂直位置向上偏移200

**3:58** · 留下卡片的显示控件添加多个卡片需要记录一下卡片的数量用cot size添加卡片后加一如果卡片有一些复制操作可以先按wake一下我这里没加载数据 0.1秒之后移动卡牌

**4:28** · 需要一个补间动画不复用的情况下直接创建这里要修改card的global position 指定card移动到target position

**4:55** · 新增card和target position card从control节点的子节点中获取第一个 target position为base position 向左上角移动半个卡片大小测试一下第二张牌发布出去

**5:24** · 因为没进行操作指定一个中心卡片 Cart size 取二的余数确认卡片数量奇偶 center number为card size减一再除以二零到card size 循环

**5:58** · 获取DI张卡片扇形需要同时移动角度和位置新建angle 根据DI张卡片和中心卡片的差值计算旋转角度每张卡片差两度在计算卡片的位置偏移根据旋转角度获取sin和cos值 Deck or red

**6:27** · 将角度换算为弧度加90度游安狗直接用吧实际可以成I和SCHENUMBER的差值再乘25 最后每张卡片移动半个卡片位置 Y轴使用cos值也增加90度承安够再乘15 移动30

**6:54** · 取反让卡片向下移动最终f set要增加到target position中然后处理偶数的情况上面都复制过来三只number10card size除以2angle 角度加移向左偏一半 train增加并行操作

**7:24** · 卡片旋转到angle 用rotation degrees操作角度 rotation操作弧度 0.1秒同时完成上下都用测试一下发牌时鼠标碰到卡片了选择卡片的动画会卡一下避免卡片创建时影响鼠标操作的方法比较多

**7:52** · 我们用一个简单点的切换到car的脚本增加一个is ready状态重写ready方法 OVT下创建0.2秒后标记为已准备好

**8:22** · 最后is ready为true 之后再执行补间动画这样就完成啦最后再测试一下发牌摸牌谢谢观看