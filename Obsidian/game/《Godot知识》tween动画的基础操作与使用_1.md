---
title: "《Godot知识》tween动画的基础操作与使用_1"
source: "https://www.bilibili.com/video/BV1dWMH6yEmU/?spm_id_from=333.1245.0.0"
author:
  - "[[zxvsr]]"
published: 2026-07-09
created: 2026-10-04
description: "tween动画的一些基础方法操作与使用GODOT官网 : https://godotengine.orgGODOT官方文档：https://docs.godotengine.org/zh-cn/4.x/about/introduction.html感谢支持，如果有帮到你，记得三连+转发"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1dWMH6yEmU&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

tween动画的一些基础方法操作与使用  
  
GODOT官网 : https://godotengine.org  
GODOT官方文档：https://docs.godotengine.org/zh-cn/4.x/about/introduction.html  
  
感谢支持，如果有帮到你，记得三连+转发

## Transcript

**0:00** · twin动画也叫补间动画在格斗3.0当中它是以节点的形式存在的在格斗四中它已经完全转为了纯代码实例化的轻量级对象它可以直接在gd script语法当中去使用这一期简单的认识一下twin的基础使用创建twin动画的方式非常简单直接定义一个twin变量名类型是twin等于create tin

**0:28** · 这样就创建完成了 twin动化的操作当中最常用的就是tune property 这个属性它需要填入四个值第一个是你要操作的对象我这里有一个spider to d 它是一个格斗的logo 我想要操作它就要在这里写一个SPITOD 直接引用它

**0:57** · 第二个值是对象的属性需要加双引号比如我想修改这个spider to d的位置也就是position 第三个值是要对position这个属性要修改成多少现在他的位置是五十一百我想要把它修改成一百一百这里就要写letter two100 最后一个值是持续时间

**1:25** · 也就是spider to d的position 这个属性从五十一百变成一百一百他的这个时间持续多久我这里写一秒这样他的四个值就填写完成了可以看到spy to d从一开始位置移到这个位置也就是它的X轴从50~100 经过了一秒的时间

**1:58** · 修改一下我让他的Y轴也变化一下也移动50 这样它就X轴和Y轴同时都运动 twin property可以修改指定对象节点的很多属性基本在检查器这一边你可以看到的属性它都可以修改我这里又写了一个twin property 让他去修改module这个属性的阿尔法值把它修改成0.0

**2:26** · 持续时间为一秒也就是这个值将它从255变成零持续时间为一秒它的透明度变成零所以看不见了但其实他是还在的从远程这里可以看到这个spider to d依旧是存在的第二个方法是interval插入停顿时间

**2:55** · twin动画默认是顺序播放的我这里的顺序就是先移动后变透明我在这两个当中插入一个train interval 时间就是等待一秒先修改position 然后等一秒变透明第三个方法是twin call back 触发回调函数我这里写了一个释放spy to d节点的方法叫SPIDIE

**3:23** · 并且触发的时候会先输出这一句话到控制台上然后再销毁在这个地方使用train call back 然后调用spider die 这里输出了刚刚写的那句话

**3:50** · 远程这里可以看到这个节点下面已经没有了 spider to d已经被销毁了第四个方法是twin method平滑执行方法可以把它理解为twin poverty 以及这个twin call bt 结合了这个方法也是需要四个值

**4:20** · 我添加了一个label节点在这个位置然后还写了一个score update方法去更新label节点的显示 to method需要四个值第一个就是它需要调用的方法第二个和第三个值就是它的参数变化我这里写0~100 持续时间为两秒

**4:53** · 注意这个地方的变化这就是two method的作用过渡的目标不是属性而是需要传参的函数也就是前面两个twin property 以及twin call back的结合第五个是turn away 这是格斗4.7更新后新增的特性

**5:20** · 它的作用是等待某个信号发出后再执行后面的动画也就是起到暂停的作用它需要的值是一个信号我在这里添加一个button按钮我把它放到了这个位置这里我要写等待这个button按钮被按下的信号

**5:48** · 然后我将这个TUNAWAY换个位置把它放到这里它和interval一样也是起到暂停的作用所以我先将interval给注释掉等会我再讲一下它们俩的区别这里的执行顺序应该是spider to d 移动了他的position 然后他要等待我按下button按钮发出信号之后才会执行这个透明变化然后是下面的这些代码

**6:24** · 可以看到它并没有变透明它只是移动了位置当我点击了下一步发出信号之后它就开始透明了接下来的代码都执行了这就是TUNAWAY的作用它与interval的区别就是interval要设置具体的等待时间而await是等待信号由于它是格斗4.7之后更新的暂时还没有遇到相关的应用场景

**6:52** · 只是目前了解到他是这样子的一个作用 twin动画一些比较基础的操作与使用就是这些还有一些更高级的例如队列并行创新播放防卡死机制晃动算法行为微调等剩下的这些留到下一期视频再做记录