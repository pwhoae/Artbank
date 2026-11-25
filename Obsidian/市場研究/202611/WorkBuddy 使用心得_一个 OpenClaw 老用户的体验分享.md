---
title: "WorkBuddy 使用心得:一个 OpenClaw 老用户的体验分享"
source: "https://zhuanlan.zhihu.com/p/2019148161474642587"
author:
  - "[[昭析ICT]]"
published:
created: 2026-11-25
description: "用了 3 个月 OpenClaw，最近一周在体验 WorkBuddy 写在前面用 OpenClaw 三个月了，从最开始折腾 Docker、配环境变量，到后来慢慢上手，确实体会到了 AI Agent 的强大。 今年 3 月开始，国内各种“Claw”雨后春笋般…"
tags:
  - "clippings"
---
45 人赞同了该文章

![](https://pic2.zhimg.com/v2-6a3d9da6379ee1ef4336b2f678fa7983_r.jpg)

> 用了 3 个月 OpenClaw，最近一周在体验 WorkBuddy

---

## 写在前面

用 OpenClaw 三个月了，从最开始折腾 Docker、配 [环境变量](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLnjq_looPlj5jph48iLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.y1CTB_PR70-255hlfubQvCQq-BRfc3pvRdAGFPOLP6g&zhida_source=entity) ，到后来慢慢上手，确实体会到了 AI Agent 的强大。

今年 3 月开始，国内各种“Claw”雨后春笋般冒出来： [QClaw](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=QClaw&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiJRQ2xhdyIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjI3MTg0NTYzMCwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.Lpi03xeLRUa4uzush0PLqupZewEvAJvwx4e0YaJ32Og&zhida_source=entity) 、AutoClaw、 [Kimi Claw](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=Kimi+Claw&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiJLaW1pIENsYXciLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.Rf80iP0yUwb6PXCdRy2W5M9juYXFeh49VZ1zjScJYqQ&zhida_source=entity) ……每个都说自己好用。这时候看到腾讯出了 WorkBuddy，想着既然都是“养虾”，不如试试有啥不一样。

**一试发现，还真挺有特色。** 不是说它比 OpenClaw 强多少，而是 **定位不太一样**——OpenClaw 更像开源工具箱，WorkBuddy 更像开箱即用的产品。

用了一个多星期，我觉得有几个点挺值得分享的，写出来给大家参考。

---

## 体验 1：上手门槛真的低

用过 OpenClaw 的都知道，第一次部署有多折腾：

- 装 Docker
- 配环境变量
- 搞 API Key
- 配置飞书 channel
- 安装 skill
- 调试半天才能跑起来

**WorkBuddy 就简单多了：**

**整个过程 2 分钟。**

这对非技术背景的人太友好了。我之前推荐同事用 OpenClaw，光是教他们装 Docker 就劝退了一半。

---

## 体验 2：手机远程控制太实用了

OpenClaw 对 Discord、Slack 这些国外平台支持很好，但对国内用户来说配置非常麻烦，企业微信、钉钉、 [飞书](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=2&q=%E9%A3%9E%E4%B9%A6&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLpo57kuaYiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MiwiemRfdG9rZW4iOm51bGx9.PkLwaQGmO56_5agNjTSylo-1bNsaqIZI5DLBajBMmr4&zhida_source=entity) 要自己折腾配置，调试半天可能还跑不起来，不太友好。

**WorkBuddy 就简单多了：** 直接支持国内主流平台，1 分钟搞定：微信、 [企业微信](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=2&q=%E4%BC%81%E4%B8%9A%E5%BE%AE%E4%BF%A1&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLkvIHkuJrlvq7kv6EiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MiwiemRfdG9rZW4iOm51bGx9.lQBCr94OeDXXuoYzxGAUuBt8U63FTeo7gfKEmTMZigA&zhida_source=entity) 、QQ、飞书、钉钉

**举个例子：**

有次在开会没带电脑，突然需要展示一个 ppt 材料，这时候就可以控制 WorkBuddy 发送邮件：

```
"把桌面'产品资料'文件夹里的XXX解决方案ppt文档,
发我邮箱"
```

2 分钟后收到文件，直接投屏。这种不在电脑边上需要分享文件的场景，真的太方便了。

**配置也简单：**

- 在 WorkBuddy 里扫个码
- 绑定企业微信/QQ/飞书/钉钉
- 1 分钟搞定

现在可以不用每次都带电脑了，手机就能遥控办公室的 WorkBuddy 干活。

---

## 体验 3：双模式设计很贴心

WorkBuddy 有两个模式：

### 工作模式（我 90% 时间用这个）

适合日常办公：

- 整理文件、处理数据
- 生成文档、PPT、报告
- 分析 Excel

**举例：**

```
"分析这个 Excel:
 1. 找出销售额最高的 10 个产品
 2. 每个月的销售趋势
 3. 哪个地区增长最快
 生成带图表的报告"
```

3 分钟搞定，我只需要审核结果。

### 编程模式（偶尔用）

适合代码相关：

- 写代码、改 bug
- 做网页、写脚本
- [技术文档](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=%E6%8A%80%E6%9C%AF%E6%96%87%E6%A1%A3&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLmioDmnK_mlofmoaMiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.IcXmtkGBL38j5e-aeMZMf0tQMOAGgsbmOHkV4_hbNWg&zhida_source=entity)

**我不是程序员，但偶尔也会用：**

- 做个简单网页展示作品
- 写个小脚本批量处理文件

关键是它会一步步教你，不需要你本来就会编程。

**这个设计挺聪明的，规避了 OpenClaw 门槛较高的问题。**

OpenClaw 主要面向开发者，WorkBuddy 把办公和编程都照顾到了。

---

## 体验 4：可以限定工作范围

WorkBuddy 有个类似 Claude Code、 [Codex](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=Codex&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiJDb2RleCIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjI3MTg0NTYzMCwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.hSpKvHMS0NiH4k6I-KFBI1n4GnJeZwKF5Dh28w-NYkA&zhida_source=entity) 的实用设计： **可以指定它在哪些文件夹里干活** 。

OpenClaw 默认权限比较大，AI 可以访问很多地方。WorkBuddy 让你自己选：

- 授权哪些文件夹
- AI 只能在这些文件夹里操作
- 其他地方它看不到也动不了

**我的做法是** 只授权工作相关的文件夹：桌面/文档/下载/特定项目文件夹

重要文件（个人照片、 [财务资料](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=%E8%B4%A2%E5%8A%A1%E8%B5%84%E6%96%99&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLotKLliqHotYTmlpkiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.AiTHiU-sRdwoC4J4fMIWz04M_hgIwgFlJTRhpezGoD8&zhida_source=entity) 等）单独放，不授权。

**好处：**

1. 心里踏实：AI 动不了重要文件
2. 指令更简单：不用每次都说完整路径
3. 不会误操作：删除、移动文件都在可控范围内

这个设计挺贴心的，把 AI 的工作范围限定好，用起来更放心。

---

## 我理解的 WorkBuddy 定位

WorkBuddy 和 Openclaw 一样，像是“数字助手”，能实际操作你的电脑，交付可验收的结果。很多人可能会说 WorkBuddy 是不是就是 OpenClaw 换个皮？

**我的理解：不是换皮，更像是 OpenClaw + CodeBuddy 的结合体** 。并且在交互上做了很多的改进。

### 从技术架构看

WorkBuddy 是腾讯基于 CodeBuddy 架构自研的，不是 OpenClaw 的分支。但它 **兼容 OpenClaw 的技能包** ，可以用 OpenClaw 社区的 Skills.

**所以：**

- [底层能力](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=%E5%BA%95%E5%B1%82%E8%83%BD%E5%8A%9B&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLlupXlsYLog73lipsiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.WKlJhdMQQgrW3N6dBBLsLgFhIaOcNR8bIAoZDvbMgxs&zhida_source=entity) ：CodeBuddy 的 Agent 架构（办公 + 编程双模式）
- 生态兼容：OpenClaw 的技能包
- 交互层：做了很大改进（下载即用、国内平台支持、文件夹授权）

### 和 OpenClaw 的区别

|  | OpenClaw | WorkBuddy |
| --- | --- | --- |
| 定位 | 开源工具箱 | 产品化封装 |
| 部署 | 需要命令行 | 下载即用 |
| 场景 | 办公自动化 | 办公 + 编程双模式 |
| 国内平台 | 要自己配置 | 原生支持（微信/ [企微](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=%E4%BC%81%E5%BE%AE&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLkvIHlvq4iLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.m0d3qhD2W92uyWr7O4ef4z8TXFLvkVACDVQ-jyd0d_E&zhida_source=entity) /QQ/飞书/钉钉） |
| 权限控制 | 默认权限大 | 文件夹级授权 |

### 我的选择

- **个人折腾** ： OpenClaw（可定制性强，免费）
- **公司办公** ： WorkBuddy（省心，交互友好，国内平台支持好）

我现在两个都在使用，不是说哪个更好，而是看你的需求和使用场景。

---

## 一些概念扫盲

WorkBuddy 有一些特别的功能，刚遇到的时候可能会有点迷糊，我用简单的语言说明一下：

### Claw（远程任务页面，“虾王”）

**是什么？**

**官方文档说它是用于** [远程指令](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=%E8%BF%9C%E7%A8%8B%E6%8C%87%E4%BB%A4&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLov5znqIvmjIfku6QiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.Wq0eKNMsOURdEz1b8Qqnq-ThNFCKozXH41GLgEniJrA&zhida_source=entity) 接收和执行记录查看的专属页面，比如用于通过手机等外部渠道向本地 WorkBuddy 下发任务，所有远程指令都在这里执行和记录

我感觉它有点像是特殊的虾——你养的虾王，比较重要的事情尽量在它这进行。 **和普通任务的区别：**

- **工作目录固定** ：默认使用 “Claw” 专属文件夹，不能自由指定目录
- **不能新建对话** ：只有一个页面，所有远程指令都在这里，无法并行多个任务
- **保留完整历史** ：无法清空上下文，会保留完整的对话记录

**使用建议：**

- 本地使用：优先用主界面的普通任务
- 远程触发：用 Claw 页面（需要先配置企微/微信/QQ/飞书/钉钉）

### Skill（技能）

**是什么？**

跟 Openclaw 的 skill 概念一样，可以给 AI 加载的专业能力包，扩展 AI 的技能树。

**举例：**

- PDF 技能：读取、合并、拆分
- Excel 技能： [数据清洗](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=%E6%95%B0%E6%8D%AE%E6%B8%85%E6%B4%97&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLmlbDmja7muIXmtJciLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.2uPT8hTzvdcQcWlWRGMWyKGp69EppzWP5Yp4nAHjkSE&zhida_source=entity) 、透视表、图表
- 浏览器自动化：网页抓取、自动填表

**怎么用：**

- WorkBuddy 内置 20+ 技能
- 大部分时候自动加载
- 兼容 OpenClaw 的 Skills

### Expert（专家）

**是什么？**

Expert 背后是垂直领域的专业知识库，能做垂直领域的专业顾问，比通用 AI 更懂某个领域。

**举例：**

- 小红书运营专家：懂涨粉技巧、内容策略
- Python 开发专家：懂代码规范、性能优化
- [数据分析](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=%E6%95%B0%E6%8D%AE%E5%88%86%E6%9E%90&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLmlbDmja7liIbmnpAiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.x5y29_0BiRukWhTLZIl0KS3n3gdNtJUIgroXf_MHCjA&zhida_source=entity) 专家：懂统计方法、可视化

**怎么用：**

- 左侧边栏找到「专家」
- 选择对应领域
- 直接提问

### Plugin（插件）

**是什么？**

Plugin 是 Skill 和 Agent 之间的 [组合层](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=%E7%BB%84%E5%90%88%E5%B1%82&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLnu4TlkIjlsYIiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.Is0-2yfBqdOd7YMEBc6QqixI2lKUPDgzh6zwzpWq1n8&zhida_source=entity) ，可以组合多个 Skill 和工具，实现第三方服务的集成，连接外部工具。

**举例：**

- GitHub 插件：自动化 PR、代码审查
- [Notion](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=Notion&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiJOb3Rpb24iLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.EnlezTHy694-Os3qROIdBvOvcfiprlKMmBcavYdLhSI&zhida_source=entity) 插件：同步笔记、管理数据库
- Jira 插件： [任务追踪](https://zhida.zhihu.com/search?content_id=271845630&content_type=Article&match_order=1&q=%E4%BB%BB%E5%8A%A1%E8%BF%BD%E8%B8%AA&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTU3NTQ0NTUsInEiOiLku7vliqHov73ouKoiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoyNzE4NDU2MzAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.9shtmNz0S2HnHL0QhruIctRgRpmWf4hLEGqWo32aOfk&zhida_source=entity) 、工单管理

**怎么用：**

### 工作空间（Workspace）

**是什么？**

这个就是软件工程里面的 Workspace 的概念，跟 claudecode、codex 一样，算是你的项目文件夹，每个项目一个独立空间。

**举例：**

```
/WorkBuddy/
  ├── 小红书运营/
  ├── Python学习/
  └── 个人博客/
```

**为什么需要：**

- 不同项目文件不会混在一起
- WorkBuddy 知道你当前在做什么项目
- 更安全（每个空间独立授权）

---

我是渡叔，一个ICT行业20+从业者，刚入门AI思考和实践者

编辑于 2026-03-22 20:28・湖南

赞同 45