---
title: "【skills教程】别再自己瞎写Skills了！实用Skill大全、网站推荐与最佳实践"
source: "https://www.bilibili.com/video/BV1HGpg6sEqu/?"
author:
  - "[[不管这么多]]"
published: 2026-10-10
created: 2026-10-19
description: "推荐一些github上面知名的skills"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1HGpg6sEqu&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

推荐一些github上面知名的skills

## Transcript

**0:00** · 如果你现在还在从零开始写skill 我建议先停一下因为现在GITHUB上已经有一批成熟项目把怎么写写什么怎么安装怎么验证都做成现成方案了更关键的是 skill已经不只是cloud code的功能同一套skill点MD格式正在被codex cursor Gemini Cli copilot等越来越多agent工具采用顺便提醒一下如果你后面用这些海外AI工具需要开通付费版

**0:27** · 或者在官网订阅很多平台支付的时候都会要求一张支持visa或MASTERCARD的银行卡如果你手里没有海外信用卡可以看看easy pay的虚拟信用卡开卡只需要三美金不需要KYC认证比较适合只是想解决海外AI产品官网支付问题的用户好回到skills这里先建立一个概念 skill本质上是一个文件夹入口通常是skill点MD 最少写name和description agent

**0:55** · 启动时先看到少量原数据任务匹配以后才读取完整说明真正执行时在按需打开脚本参考资料和模板这叫渐进式加载他解决的不是提示词够不够长而是什么时候把哪一段专业知识教给A景我按star热度加实用性筛了十个值得收藏的项目 star是我查资料时的快照会继续变化其中super powers已经接近30万 star anthropic官方skills超过17万

**1:24** · 阿迪奥斯曼尼的项目接近10万 composure油也超过7万后面的几个基本也在2万到4万多这个区间第一个opera的superpowers 它不是几条提示词而是一整套软件开发方法先澄清需求再形成设计再拆实施计划然后进入测试驱动开发自agent 执行代码审查和验证他最适合想把AI编程从想到哪写到哪儿变成稳定工程流程的人第二个ANTHROPIC官方的skills

**1:54** · 这是最应该先看的参考答案里面不止有基础模板还有Pdf word PPT excel等文档 skill以及网页测试 MCP开发品牌与沟通类事例你想知道一个复杂skill的目录脚本参考资料应该怎么组织直接学习它的结构第三个EDDIOSMONY的agent skills 他把开发过程拆成定义计划构建测试审查简化发布重点不是让AI多写代码而是给AI加质量门槛

**2:24** · 做API前端测试性能优化和代码审查的人非常值得看第四个COMPOSIO的awesome class skills 这个库特别适合找灵感除了编程还有品牌规范画布设计更新日志竞品广告提取等工作流你会发现skill真正有价值的地方是把一项重复工作固化成标准流程第五个second thirty three的agent entic assome skills 它更像一个大型skill控制中心背后有2000多个skill

**2:53** · 并且提供命令行本地MCP搜索组合和审计尤其值得看他的audit和DN思路社区skill不要下载完就直接给最高权限第六个k dance的scientification skills 如果你做科研这是专门型项目它覆盖生物信息基因组化学信息学药物发现科研数据分析等场景还连接大量科学数据库它展示了skill的另一个方向不是教模型怎么说

**3:21** · 而是补充真正的领域工作流第七个GITHUB官方的oracle plot 这里把skill agent instructions Hooks workflow和插件放在一起它特别适合copilot的用户也适合你观察单个skill和完整agent配置到底是什么关系第八个both agent Some agent skills 这是一个跨平台合集收录上千个来自官方团队和社区的skill 包括super base Stripe Expo fire crowd等想批量找成熟案例

**3:50** · 可以直接看他的网站的official skills that s h 第九个versal labs The skills 这个不是单纯仓库而是一套skill安装和管理工具你可以用np x skills版搜索用ADD安装用update更新甚至临时use一个skill 而不长期安装它目前已经支持70多种agent客户端找skill 我更建议先上skills点SH 实际安装也很简单看到一个GITHUB仓库

**4:18** · 不需要手动复制文件先列出里面有哪些skill 只挑当前项目需要的几个再安装到cloud code codex或cursor 项目及skill 跟着仓库走适合团队共享全局 skill放到用户目录适合每天都会用的通用能力第十个 google的skills 如果你经常做google cloud DK android flutter FIRESTORE或maps 这个官方库非常实用尤其是云服务这种接口和最佳实践持续更新的领域

**4:47** · 官方skill很值得优先参考那自己还要不要写skill 当然要但正确顺序应该反过来先搜索再复用再修改最后才是从零创建而一个好skill 我建议至少检查四件事第一description必须写清楚他做什么和什么时候触发否则agent根本不知道什么时候该加载第二不要把所有资料塞进skill 点MD入口保持短详细文档放references 固定操作

**5:17** · 放scripts 需要输出模板再放assets 让agent先看入口需要实在加载第三不要一次装几十上百个skill skill越多不代表能力越强触发边界互相重叠反而会浪费上下文甚至让agent选错流程微软自己的skills项目也明确提醒只加载当前项目真正需要的skill 避免context rap 第四第三方skill一定先审查只要他能够调用shell网络文件

**5:46** · 账号凭据或者MCP 他就已经进入你的权限边界所以skills的核心其实不是写一篇高级提示词而是把一项工作拆成什么时候触发按什么步骤做需要读取什么资料可以调用什么工具最后怎么验证结果先去成熟项目里学这套结构再写自己的skill 你会少走非常多弯路