---
title: "CUDA 到底是什么？为什么它能改变整个AI时代？"
source: "https://www.bilibili.com/video/BV1QcYv6NE5k/?"
author:
  - "[[内核聊内核]]"
published: 2026-09-13
created: 2026-09-19
description: "CUDA 到底是什么？本期视频从 2006 年 CUDA 诞生之前讲起：那时想让 GPU 做通用计算，只能把算法伪装成图形渲染，用纹理传数据、用像素着色器算逻辑、用 framebuffer 取结果，极其难写、难调、受限。CUDA 的核心突破，是让 GPU 真正变成可编程的——它提出 Thread、Block、Grid 三层线程组织，Register、Shared Memory、Global Mem"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1QcYv6NE5k&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

CUDA 到底是什么？本期视频从 2006 年 CUDA 诞生之前讲起：那时想让 GPU 做通用计算，只能把算法伪装成图形渲染，用纹理传数据、用像素着色器算逻辑、用 framebuffer 取结果，极其难写、难调、受限。CUDA 的核心突破，是让 GPU 真正变成可编程的——它提出 Thread、Block、Grid 三层线程组织，Register、Shared Memory、Global Memory 一套清晰存储层次，让开发者第一次能用 C 语言扩展写 GPU 代码。视频完整拆解 CUDA 解决了什么问题（可编程性、海量并行、数据复用、性能可预测、完整生态），CUDA 代码长什么样（global Kernel、threadIdx 坐标、<<<>>> 启动配置），Host 与 Device 如何分工，一次 Kernel 执行的五个步骤，以及 CUDA 抽象如何一一对应 GPU 硬件。更重要的是，视频解释了为什么 CUDA 能统治 AI 时代——它不只是硬件，而是一套“并行编程模型 + 编译器工具链 + 高性能数学库 + 开发者生态”的四位一体护城河，这也是它在与 OpenCL 的竞争中最终胜出的关键。

## Transcript

**0:02** · 2006年之前 GPU只能用来画图顶点着色器像素着色器各管一段不能跑通用程序但科学家们发现GPU的并行能力远超过CPU 问题来了这么强的算力为什么不能用来做科学计算答案是可以 2006年 NVIDIA发布了KDAGPU 通用计算时代正式开启

**0:28** · 今天我们就从零开始把KDA到底是什么讲清楚先看KDA诞生之前的世界2000年代如果你想让GPU做通用计算只能把算法伪装成图形渲染例如把数据编码成纹理把运算写成pixel shader 把结果划到frame buffer上这种方法叫PU通用GPU计算问题是极其难写

**0:57** · 极其难调而且被图形API限制这不是GPU不够强而是没有一个真正为通用计算设计的编程模型 KDA的核心突破是让GPU变成可编程的在此之前 GPU的编程模型是图形管线顶点光栅化像素 KODA提出了一套全新的抽象 Fred block grade 三层线程组织结构 Shared memory

**1:27** · Register Global memory 一套清晰的存储层次开发者第一次可以用C语言写GPU程序不用再伪装成图形那么KDA到底解决了什么问题第一可编程性用C语言扩展写GPU代码第二并行性几万个线程同时执行自动映射到GPU硬件第三数据复用shared memory

**1:55** · 让block内线程共享数据第四性能可预测 occupancy合并仿存 warp调度都有清晰规则第五生态工具编译器NVCC调试器 code g dB性能分析器nf prov 从语言到工具 KDA把GPU编程从黑客技巧变成了工程实践再看KDA的代码长什么样最经典的例子是向量加法

**2:24** · 一个下划线下划线 global下划线下划线函数叫做kernel 每个线程通过thread i d x block i d x计算自己的全局索引然后各线程独立完成一份计算 host端通过语法启动kernel 指定block和grade数量这就是KDA编程的基本形态一个kernel几万个线程一次启动

**2:52** · KDA代码分成两个世界 host代码跑在CPU上负责准备数据启动kernel回收结果 device代码跑在GPU上是真正并行执行的部分两者通过PCIE或NVLINK传递数据 kernel是host和device的分界线 host启动kernel device执行kernel结束后控制权回到host

**3:17** · 这种host device分离模型是KODA编程的核心接下来看coda怎么运行第一步 host把数据从内存复制到GPU显存第二步host启动kernel grid 被提交到GPU 第三步 GPU把block分派到各个SM 第四步每个SM把block拆成warp 交给coda CORE执行第五步执行完成后

**3:47** · 结果从GPU显存复制回host 这五个步骤就是一次KDA执行的完整生命周期 KDA的抽象直接对应GPU硬件 FRED对应cuda CORE block 对应SM调度单元 warp对应硬件 Word schedule Shared memory 对应SM内部物理 Slam Global memory 对应显存 tensor CORE对应SM内的矩阵计算单元

**4:16** · KDA编程模型的每一个抽象都不是凭空设计而是GPU硬件的直接映射为什么KDA能统治AI时代因为它不只是硬件 KODA生态包括CUBLAS矩阵库 CUDNN深度学习库 tensor RT推理引擎 koda toolkit编译器 NC cl多卡通信 insight性能分析深度学习框架PYTORCH

**4:46** · Tensorflow 底层几乎都在调用这些库这种硬件加编程模型加软件站加生态四位一体的组合是NVIDIA真正的护城河再看KDA和open cl的区别 open cl是一个开放的跨平台并行计算标准理论上可以在任何厂商的GPUCPUFPGA上运行 KDA只能在NVIDIAGPU上运行

**5:15** · 那为什么KODA反而赢了因为KODA和硬件是协同设计的编程模型编译器运行时硬件架构都在同一家公司手里反复打磨开放的代价是通用性协同的回报是性能与生态现在把KODA的本质总结一遍 KDA是一套并行编程模型 KDA是一个编译器工具链 KODA是一组高性能数学库

**5:44** · KDA是一个开发者生态 KODA让GPU从图形硬件变成了通用计算引擎这就是为什么今天AI训练科学计算渲染加速几乎都离不开coda 从更大的视角看 KDA的成功告诉我们一个道理硬件性能不是全部真正决定一项技术能否普及的是编程模型是否好用是工具链是否完整

**6:12** · 是生态是否繁荣 coda用编程模型把GPU的算力释放出来再用生态把开发者聚集起来这才是他真正的护城河如果你已经理解了KODA是什么下一步就是深入KDA编程模型从fred block grid到work shared memory tensor CORE 每一个抽象如何映射到硬件每一个决策如何影响性能

**6:40** · 下一集我们就沿着一次kernel启动把KDA编程模型完整拆开再回看18年前 2006年KODA发布的那个夏天没人能预见他会成为AI时代的基石但正是KDA让GPU的算力第一次真正被释放从游戏显卡到AI引擎从像素渲染到矩阵计算 coda证明了一件事硬件性能决定上限

**7:09** · 编程模型决定能不能达到上限如果你想继续深入下一站可以拆解KODA编程模型从fred block grid的层次结构到word调度共享内存 tensor CORE编程你会看到硬件架构和软件模型是如何协同工作的下一集我们就从CUDA编程模型开始把GPU计算的底层逻辑真正拆开