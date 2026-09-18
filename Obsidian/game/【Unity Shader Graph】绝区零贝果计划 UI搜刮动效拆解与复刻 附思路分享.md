---
title: "【Unity Shader Graph】绝区零贝果计划 UI搜刮动效拆解与复刻 附思路分享"
source: "https://www.bilibili.com/video/BV1jZeW6nECW/?"
author:
  - "[[小小黒下士]]"
published: 2026-09-16
created: 2026-09-19
description: "我喜欢玩绝区零"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1jZeW6nECW&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

我喜欢玩绝区零

## Transcript

**0:00** · 新一系主播在玩绝区零搜打趣的时候觉得搜东西的动效很酷炫于喜也想尝试复刻一个这是官方的效果根据实际需求大概可以拆解为两到三个SHADER实现最终主播在unity中复刻的效果由多个SHADER和animation组合得到适用于异形UI元素后面是简单的可调参数展示和思路分享首先是扫描线 shader fade属性控制扫描进度运行时修改

**0:30** · Scan field with 控制扫描区域宽度本计项就需在原图基础上覆盖一个静态图形对静态图形做一个局部蒙版再用脚本控制流动 Skyline density 控制扫描线疏密纹理可以手绘但这种简单的竖线循环直接调正弦函数可以省掉一张贴图剩下的就是用来控制描边细节表现的杂项了这里主播把上下边界的描边做成静态的右侧描边

**0:58** · 由于总是在扫描区域的右边界处所以单独做两者拼起来像是一个整体就行了第二个SHADER是纹理流动相对简单飞的属性仍然给脚本控制依旧调用正弦函数划线加上UV旋转时间连下UV偏移使纹理能够流动顺手暴露了线宽和颜色属性做的不是很完整剩下的动效是animator shook的但背景的颜色渐变是SHADER做的

**1:27** · 这样可以保证美术全程只提供一张纹理即可那今天的分享到这里就结束了欢迎在评论区交流学习感谢您的观看我们下期再见