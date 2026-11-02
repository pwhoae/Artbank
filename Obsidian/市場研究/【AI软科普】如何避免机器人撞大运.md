---
title: "【AI软科普】如何避免机器人撞大运"
source: "https://www.bilibili.com/video/BV1ggxN6wEBD/?spm_id_from=333.1245.0.0"
author:
  - "[[酥香兔]]"
published: 2026-10-30
created: 2026-11-02
description: "周更还是有点太勉强了……如果有疑问、补充或者指正，欢迎在评论区友好交流！本期参考论文：[1] Streaming Flow Policy: Simplifying diffusion/flow-matching policies by treating action trajectories as flow trajectories.https://proceedings.mlr.pr"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1ggxN6wEBD&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

周更还是有点太勉强了……  
  
如果有疑问、补充或者指正，欢迎在评论区友好交流！  
  
本期参考论文：  
\[1\] Streaming Flow Policy: Simplifying diffusion/flow-matching policies by treating action trajectories as flow trajectories.  
https://proceedings.mlr.press/v305/jiang25a.html  
  
\[2\] Diffusion Policy: Visuomotor Policy Learning via Action Diffusion.  
https://doi.org/10.1177/02783649241273668

## Transcript

**0:01** · 假如你站在一条铁轨上迎面是一辆疾驰而来的火车喂谁会站在这种地方幸运的是你是一台强大的智能机器人能轻松躲开火车你曾学过两种应对这种情况的方法向左闪或者向右闪那么该选哪个呢随便选一个不行吗当然可以只是你系统里的那套算法

**0:30** · 可不是这么想的他要做的是找出一个与这两种动作相比均方误差最小的答案这是哪门子的最佳选项啊通过这个例子我们不难发现

**0:57** · 当一件事有多种正确答案时如果非要让机器人以与所有答案的均方误差最小为标准找出一个最优解反而可能得到一个错误的答案那么有没有什么办法能让机器人学会随便选一个答案呢当然有今天我们就来认识其中一种方法 Diffusion policy 扩散策略

**1:29** · 刚才我们提到了均方误差什么是均方误差呢很简单说白了就是把机器人的答案和标准答案之间的差距平方一下再取个平均所以军方误差是一种衡量机器人答题能力的标准误差越低说明答得越好如果某个答案能使均方误差达到最低

**1:56** · 我们就认为它是该题的最优解但假如某道题的正确答案不唯一呢喂派蒙是什么啦显然我们希望机器人能学会各种答案而不是硬找出一个最优解那么DP是怎样做的呢在上期视频里我们曾简单介绍过DP 简单来说

**2:25** · 我们可以把它想象成一位画家假如我们想教他画出一条动作轨迹首先我们会把这条轨迹故意弄乱接下来就让他猜一猜这张画里到底添加了哪些干扰呃这真的还能认出来吗别担心我们作为指导者手里是有正确答案的我们会告诉他猜的对不对

**3:01** · 经过大量练习他逐渐学会了该怎么识别干扰并通过移除这些干扰把杂乱的草稿修改成合理的轨迹那么如果轨迹不止一条呢道理也是一样的你看不管有多少条正确轨迹我们都可以把它们弄乱

**3:30** · 再用同样的方法教DP还原这样一来 DP就能学会多种不同的正确做法而不必强行找出一个均方误差最小的唯一解这种能够学习多种正确做法的能力就叫做多模态说到这里你可能会好奇只有DP能实现多模态吗当然不是

**3:59** · 比如上期视频里我们就介绍过另一种方法 Streaming flu policy 流是流策略简单回顾一下 S f p 也是一种让机器人学会画出动作轨迹的方法只不过跟DP反复修改一整段轨迹不同 SFP画出的每一笔都是最终轨迹的一部分因此它可以边画边执行不必等到整条轨迹画完

**4:29** · 大大降低了等待时间和计算成本呃怎么夸起别人来了今天的主角不是DP吗没错虽然SFP有它的优势但DP当然也有自己擅长的事情回到之前的问题假如我们想教机器人学会多条不同的动作轨迹而这些轨迹之间又恰好有交叉

**4:56** · 那DP会不会把轨迹弄混呢 DP把一整条路线当做学习对象因此他能学会每条路线的完整形状基本不会弄混那SFP呢啊他怎么弄混了

**5:25** · 你看这就是SFP的局限在遇到轨迹交叉的情况时它虽然能保持多模态但走的路线却不一定是我们期望的那条而在这方面DP就更有优势了那他为什么会弄混呢好问题这就要说到上期视频里我们提到过的一个概念速度场至于什么是速度场

**5:54** · 他又是怎么知道SFP画出路线的我们就留到下期视频再聊求关注求点赞求三连这里是新人up主兔子感谢你的观看我们下期再见