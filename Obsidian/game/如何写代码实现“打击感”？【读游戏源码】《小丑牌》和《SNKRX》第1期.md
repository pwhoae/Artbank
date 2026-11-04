---
title: "如何写代码实现“打击感”？【读游戏源码】《小丑牌》和《SNKRX》第1期"
source: "https://www.bilibili.com/video/BV1p26VYnEhz/?spm_id_from=333.1245.0.0"
author:
  - "[[道莫如]]"
published: 2024-12-30
created: 2026-11-04
description: "《SNKRX》笔记已完结，获取请看评论区。"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1p26VYnEhz&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

《SNKRX》笔记已完结，获取请看评论区。

## Transcript

**0:03** · 在读泰拉瑞亚前我们先读的星界边境同理在读小丑牌的源码前我们先读snakes的源码 snakes是一款极简肉鸽据说是小丑牌的灵感来源小丑牌的确有部分代码来自snakes Snakes MIT协议发布在GITHUB上但也上架了steam steam上特别好评这样一款产品及极简肉鸽的一切都值得我们学习

**0:32** · 肉鸽道具有何如何解有steam API的使用乃至于伤害计算公式都可以拿来借鉴游戏基础部分请看笔记本期我们直接来看最有价值的部分如何编写代码实现打击感打击感系统主要由这几个效果来实现现在请打开随笔记附送的修改版源码

**0:59** · 我在这修改版源码中注释掉了steam验证添加了中文注释实验用代码以及做了汉化之所以做汉化是因为这英语有些超纲不看翻译没法文儿另外游玩时请打开鼠标操作否则体验很差来看我在main menu 点LOL中添加的打击感实验代码按注释中的说明分别取消这几行代码的注释再取消这行代码的注释

**1:31** · 按F键即可看到几种打击感效果这是调用camera的shake的抖动效果这是调用camera的spring shake的抖动效果我们来看看摄像机抖动效果的代码

**1:59** · 实现snakes的objects 依据物理行为和摄像机行为被分到一个group中然后由group统一进行绘制可以看到在objects绘制的前后分别调用了camera的attach和detach attach保存当前坐标系并根据camera的X和Y建立新的坐标系 d touch恢复被保存的坐标系

**2:29** · 而camera的抖动函数会在一段时间内不断改变 camera的X和Y 这意思就是camera的抖动函数被调用时会不断的用camera的X和Y创建新的坐标系也就实现了摄像机抖动效果再来看弹簧效果我们来看弹簧效果的代码

**2:59** · 实现弹簧spring的实现跟camera抖动类似也是靠改变坐标系来实现的当用spring的pull会在一段时间内不断改变spring的X 然后再用spring的X来不断改变坐标系或者也可以用不断变化的spring的X来不断改变所绘制object的比例再来看闪烁效果

**3:31** · 我们来看看闪烁效果的代码实现调用闪烁器的flash方法会使闪烁器的F属性在一段时间内变为true 然后我们在绘制object的颜色时检测闪烁器的F属性来绘制不同的颜色以实现闪烁效果至于粒子效果请分别取消这两处代码的注释

**3:58** · 来查看中间这每两秒出现的红色的粒子就是hip pole粒子效果这是hit circle的效果粒子效果的代码比较简单为节省时间我们跳过我们来看慢动作效果

**4:28** · 可以看到每次我按下F键蛇就会变慢发生低频力量强度大的行为时就可以使用慢动作例如snakes中每当有英雄死亡时就使用了此效果我们来看慢动作效果的代码实现打开sh点LUA文件有个全局函数slow 这便是产生慢动作的函数该函数控制serve amount这个全局变量

**4:58** · 将slow mt乘以group的update的参数DT即可使该group变慢 slow mount分之一倍如此便实现了慢动作效果最后有不懂的请看笔记 snakes笔记已完结随笔记附送修改版源码里面有汉化实验用代码以及每个肉鸽道具代码实现之处我都添加了中文注释

**5:26** · 笔记获取请看评论区