---
title: "TownScaper技术概览"
source: "https://zhuanlan.zhihu.com/p/280013345"
author:
  - "[[祥男(Yene)]]"
published:
created: 2026-11-05
description: "TownScaper是今年6月份上线Steam的建造类游戏，不过它的作者已经在 twitter做了一年多的游戏开发日志。结合2019年欧洲独立游戏大会的一场演讲，EPC2018一场演讲，输出一下这个游戏的技术要点。Townscaper on Steam…"
tags:
  - "clippings"
---
[收录于 · 人类本质复读机](https://www.zhihu.com/column/c_1308913080236163072)

288 人赞同了该文章

[TownScaper](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=TownScaper&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiJUb3duU2NhcGVyIiwiemhpZGFfc291cmNlIjoiZW50aXR5IiwiY29udGVudF9pZCI6MTUwMzU0NDUwLCJjb250ZW50X3R5cGUiOiJBcnRpY2xlIiwibWF0Y2hfb3JkZXIiOjEsInpkX3Rva2VuIjpudWxsfQ.Mk0xXlV_i-MNVDvNM01fIBVlgqUkXtBQC2aHdhWbSFI&zhida_source=entity) 是今年6月份上线Steam的建造类游戏，不过它的作者已经在 [twitter](https://link.zhihu.com/?target=https%3A//twitter.com/OskSta) 做了一年多的游戏开发日志。结合2019年 [欧洲独立游戏大会](https://link.zhihu.com/?target=https%3A//www.youtube.com/watch%3Fv%3D1hqt8JkYRdI) 的一场演讲， [EPC2018](https://link.zhihu.com/?target=https%3A//www.youtube.com/watch%3Fv%3D0bcZb-SsnrA) 一场演讲，输出一下这个游戏的技术要点。

[![](https://pic3.zhimg.com/v2-a882d43a894ed24d1acf18e4246d0c3a_180x120.jpg)](https://link.zhihu.com/?target=https%3A//store.steampowered.com/app/1291340/Townscaper/)

首先作者从业经验非常令人羡慕，在育碧Division干完后就自己出来单干独立游戏。

## 波函数坍缩

游戏的核心技术是 [波函数坍缩](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=2&q=%E6%B3%A2%E5%87%BD%E6%95%B0%E5%9D%8D%E7%BC%A9&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiLms6Llh73mlbDlnY3nvKkiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoxNTAzNTQ0NTAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MiwiemRfdG9rZW4iOm51bGx9.brgJ82cLkmPeYqV8Xd4Zr55smRr8wcFS60WCQSol_Go&zhida_source=entity) ，本来是一个利用固定种子和连通性筛选迭代像素最后坍缩到稳定的图像内容的自动 [生成算法](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=%E7%94%9F%E6%88%90%E7%AE%97%E6%B3%95&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiLnlJ_miJDnrpfms5UiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoxNTAzNTQ0NTAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.S-8OI7n_btLldLthdpvl0_JmKc_ymcy6zJlK909sUns&zhida_source=entity) 。

![](https://pic1.zhimg.com/v2-a395c0e85aa3883b7a36e15ad13c232e_1440w.jpg)

将2D算法转为3D算法的基础，就是下面这张Cube的匹配图。

![](https://pic4.zhimg.com/v2-1eb947ef4b2eb59e24ee5af20a125875_1440w.jpg)

完成理论基础建设后，作者设计的房屋建模。

![](https://pica.zhimg.com/v2-a9908e067057c4a416200b639ff73366_1440w.jpg)

每个Cube都不是一个完整的房子，所有完整的房子都是用若干个（4xn）模型块拼接而成。

![](https://pic4.zhimg.com/v2-51f340c57d32b861ece4fc6eec9af995_1440w.jpg)

下面是作者完成3D化的波函数坍缩的Demo地址。

![](https://pica.zhimg.com/v2-625eea26a1ae532f587d6d95de7881da_1440w.jpg)

## 非结构网格

如果你试玩了上面的Demo，会发现完成了生成算法的屋子都是方方正正的矩形布局。作者非常出彩的在六边形布局的基础上扩展了非结构网格生成算法，让房屋的布局摆脱一板一眼的方正布局。

![](https://pic3.zhimg.com/v2-976a518e9354741c1a2090c5fb1eb868_1440w.jpg)

算法的核心，每个菱形的中心和四个顶点的连接 [向量](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=%E5%90%91%E9%87%8F&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiLlkJHph48iLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoxNTAzNTQ0NTAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.l72n00MphCkX_WBheZHKcC4tTUTE8_tXLJkk86IT_0M&zhida_source=entity) ，统一到一个轴向上，随机给力，再还原到菱形的角度上。

![](https://picx.zhimg.com/v2-c051b05bb6b4c28ab1b98137e0e87f7d_1440w.jpg)

![](https://pic2.zhimg.com/v2-f535169deeb26632c09a1f09cb5a3507_1440w.jpg)

## 网格变形

配合 [非结构网格](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=3&q=%E9%9D%9E%E7%BB%93%E6%9E%84%E7%BD%91%E6%A0%BC&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiLpnZ7nu5PmnoTnvZHmoLwiLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoxNTAzNTQ0NTAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MywiemRfdG9rZW4iOm51bGx9.7EvSmCD08HJCqJRPpbOaMP7BoERzdsAyY-MAkBliedE&zhida_source=entity) 的方案，每个Cube区块的模型根据当前网格的形状做扭曲。

![](https://picx.zhimg.com/v2-457cd93f5136b5fb9ad2892d2aab57ed_1440w.jpg)

![](https://pic1.zhimg.com/v2-2027da84f6ef9fb9d3774a71c3ef7b72_1440w.jpg)

## 沙滩和海浪

生成结束后根据生成轮廓线，再平滑，组合生成沙滩 [mesh](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=mesh&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiJtZXNoIiwiemhpZGFfc291cmNlIjoiZW50aXR5IiwiY29udGVudF9pZCI6MTUwMzU0NDUwLCJjb250ZW50X3R5cGUiOiJBcnRpY2xlIiwibWF0Y2hfb3JkZXIiOjEsInpkX3Rva2VuIjpudWxsfQ.J5xAFhnjlH_eZCI7_-HHTTsyiPAgxtyJQszyXitSyTY&zhida_source=entity) ，再外扩成海浪mesh

![动图封面](https://pica.zhimg.com/v2-ec86f0063e08e2f370414734e9531132_b.jpg)

## Italian wires

作者开发期心血来潮做了一个类似广场彩旗的细节，在整体风格变得“威尼斯”之后，改成了高空的晾衣绳。

![动图封面](https://picx.zhimg.com/v2-400adb3bf9d2599f337fac890d1ffb5d_b.jpg)

上线之后又加了圆形浮空岛下面加螺旋桨的细节。

## 庭院

在房屋形成的封闭空间里二次进行波函数坍缩计算，这次模型换成庭院围墙组，2D版算法即可。

![](https://pic3.zhimg.com/v2-719928b790f7146c0ee84a3dc07acfee_1440w.jpg)

![](https://pic4.zhimg.com/v2-414071eb460c8f363850f5d7e94adde1_1440w.jpg)

## Boids

每个鸟落在屋顶的时候一个模型，起飞的时候一个模型，飞行动画是shader写的顶点基于高度的偏移。

![动图封面](https://pic1.zhimg.com/v2-bc9d0edad877acd79485b23b444ede3a_b.jpg)

鸟群计算用 [Boids算法](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=Boids%E7%AE%97%E6%B3%95&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiJCb2lkc-eul-azlSIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjE1MDM1NDQ1MCwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.yL-yv-Tk7aLNfGUMycVZrPLtgo8z3P7M2ZIq3pWoRwU&zhida_source=entity)

![](https://pica.zhimg.com/v2-8abe7889e65230982b3494bf2169402a_1440w.jpg)

利用房屋模型外表面法线判定飞行范围和落脚位置

![](https://picx.zhimg.com/v2-fd512f2529473d8b7fb65214fa1b93b7_1440w.jpg)

## 植被

灌木利用视错觉而非CG技术制造立体感。

![动图封面](https://pic3.zhimg.com/v2-7b8bc7d69ed075aafa350fa0dbdeb9ca_b.jpg)

关于凹脸错觉看过这种玩具的人就秒懂。

![](https://pic1.zhimg.com/v2-7d32f8ae0f02de18570e4ae7e7f40d8e_1440w.jpg)

![](https://pic4.zhimg.com/v2-853facd30eed3bab1ea5862d34db92d1_1440w.jpg)

## 环境光

通过分层写RT记录空间信息，偏移采样获得颜色。

![](https://picx.zhimg.com/v2-fb62ac40b96021afad549973c01bac77_1440w.jpg)

![](https://pic4.zhimg.com/v2-cdeae56ef9bfc80c812ff85713c43af7_1440w.jpg)

## 像素风格化

粗化描边

![](https://pic4.zhimg.com/v2-aade9e4ca225f6fa49e95867324fd3cb_1440w.jpg)

![](https://pic2.zhimg.com/v2-34204d0f06cfd2edc514680726dcc8b9_1440w.jpg)

## Moody Clouds

环形缓慢旋转的天空盒

![](https://pic3.zhimg.com/v2-d2ff61d954e154742a05ecdaf3716ec8_1440w.jpg)

## 包围盒计算和球面相机

通过已有建筑计算包围六边形，用屏幕中心射线确认相机锚点

![](https://pic4.zhimg.com/v2-992be8466ad65be3f893bdb7cf984b85_1440w.jpg)

## 保存数据

所有数据序列化成编码，本地复制和网络分享功能就完成了。

![](https://pic4.zhimg.com/v2-b7c664493d24dff42e3d70b88da586ad_1440w.jpg)

## 总结

26块钱买个技术玩具，不亏。

---

年底把热衷翻技术推的同学抓来知乎，趁热打铁把之前翻推记的草稿贴一下，向外引流，有梯子的同学可以自行查阅。说起WFC国内很早就有人写过相关文章， [3D化](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=2&q=3D%E5%8C%96&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiIzROWMliIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjE1MDM1NDQ1MCwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoyLCJ6ZF90b2tlbiI6bnVsbH0.GBUUz2ixAe5p455lnKUEmzZvVBNO3rPQc6r4-5HEQ7M&zhida_source=entity) 也不止TownScaper一家，我力不在此，只是和大家推荐一下Oskar这位非常厉害的独立游戏开发者和他独特的技术想象力。国外也有几位在发售前就完成了 [技术复原](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=%E6%8A%80%E6%9C%AF%E5%A4%8D%E5%8E%9F&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiLmioDmnK_lpI3ljp8iLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoxNTAzNTQ0NTAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.JXez62GylWwJT3B-sFpy4O3jl1smZuVsrMCeZCmhU6c&zhida_source=entity) 的大佬，单说技术讲出来了就没有特别深奥的地方，关键还是创意和技术细节。

## Algorithm

![](https://picx.zhimg.com/v2-fda91c41a95a8ec36d6abe7aaf67483d_1440w.jpg)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EAplwULXkAE3dFL.mp4)

- Finally reading up on WaveFunction Collapse. I am in awe of the breadth of applications so far and eager to experiment myself: [t.co/RgNYKCZCRw?](https://link.zhihu.com/?target=https%3A//t.co/RgNYKCZCRw%3Famp%3D1)

## Irregular grid

![](https://picx.zhimg.com/v2-1b886679a8efc23c010cb1bf8ab770d5_1440w.jpg)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/D-4XddXXoAAX-CX.mp4)

![](https://pica.zhimg.com/v2-61e6ba5f6f970444f2889a72de13ab10_1440w.jpg)

![](https://pic4.zhimg.com/v2-d0265a93924fe56d25613cae6cdfe8f5_1440w.jpg)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/D_mpe1HUcAMt-Rz.mp4)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/D_m2f9cXUAEyrTS.mp4)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/D_vobp2XYAAct9g.mp4)

![](https://pica.zhimg.com/v2-848329f8299d81c5516adde01b81e8b6_1440w.jpg)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/D4sqIa8WkAUKXDx.mp4)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/DvikIfoXQAAYYki.mp4)

## Marching cubes

![](https://pic2.zhimg.com/v2-b49f17707556ccce8e07e2e8c57aad5b_1440w.jpg)

[t.co/muMmYXW0gt?](https://link.zhihu.com/?target=https%3A//t.co/muMmYXW0gt%3Famp%3D1)

![](https://pic3.zhimg.com/v2-30243607e3dc9ce34fa604d77c953d7a_1440w.jpg)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EJ_UcsvX0AAmAsX.mp4)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EXbPKmQWsAANu8F.mp4)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EXKELwPWoAEBHA3.mp4)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EJcjNTiXkAAdKnE.mp4)

## Mesh deformation

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1261950977365757953)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/Dr5OyjOWwAAiYUF.mp4)

## Light&Shadow

![](https://picx.zhimg.com/v2-33c3c3e6d05759debe78dcb86eba7d23_1440w.jpg)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EIRooE5WoAAPFDA.mp4)

[twitter.com/i/status/11](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1190191289922465793)

Trying out some per vertex voxel based shadows. Not great not terrible. Looks better when not moving, and with less contrast, obviously.

![](https://pic4.zhimg.com/v2-8adadc031cc34737dd5cc626597d1265_1440w.jpg)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EN7WOZfW4AEDpAw.mp4)

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1215644531221311488)

- The technical solution is almost the same as in Bad North. One big difference is that the bright colors wouldn't let me get a way with a monochrome reflection, so I had to figure out this somewhat abstract flat colored mid point. (Also, the wave skirt stretches further this time)
![](https://pic1.zhimg.com/v2-ddda90f3b8bcea08afc827c5cd857216_1440w.jpg)

[twitter.com/i/status/11](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1168571866405097472)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EDeZ4spWsAIwwty.mp4)

- A peek at my ambient [occlusion](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=occlusion&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiJvY2NsdXNpb24iLCJ6aGlkYV9zb3VyY2UiOiJlbnRpdHkiLCJjb250ZW50X2lkIjoxNTAzNTQ0NTAsImNvbnRlbnRfdHlwZSI6IkFydGljbGUiLCJtYXRjaF9vcmRlciI6MSwiemRfdG9rZW4iOm51bGx9.vinUNZn4vLj_023PJgDfJQrAO5WLAcQm5pUAA4Fg-u8&zhida_source=entity) approach. The occlusion lives in a layered mesh that's reprojected to a texture at each change. That texture is then blurred, and sampled in the vertex shader of whatever needs lighting.

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/ESvJlbyXYAUulYr.mp4)

- Obviously, a big benefit of this is that with white finally in my [palette](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=palette&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiJwYWxldHRlIiwiemhpZGFfc291cmNlIjoiZW50aXR5IiwiY29udGVudF9pZCI6MTUwMzU0NDUwLCJjb250ZW50X3R5cGUiOiJBcnRpY2xlIiwibWF0Y2hfb3JkZXIiOjEsInpkX3Rva2VuIjpudWxsfQ.fzD_3U-nBqfNA5PfEW0VvRwALgK9S4wAO8F0fjfIAP0&zhida_source=entity), I can properly show off the colored "bounce" "light" of my custom realtime "lighting" system.

## Wave&Beach

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EQlrLj9W4AAPJpa.mp4)

- I made some dynamic sandbanks. They help ground the environment and they soften the grid.

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EQl9jePWAAIdIwM.mp4)

- Find edges \* Smooth \* Fiddle about \* Remove inverted triangles \* Add some waves (no line-line intersections needed)

## Italian wires

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EXvYOhhXsAEXi73.mp4)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/ENR9s_qXsAEmufd.mp4)

## Yard

![](https://pic2.zhimg.com/v2-980d9091d06eec7342141bca3d7345fd_1440w.jpg)

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1246074663546916873)

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1238474550511308800)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EFuyGF4XoAYVLoe.mp4)

## Boids

![](https://pic3.zhimg.com/v2-2afd29e331bdf3cb977c4869a849995c_1440w.jpg)

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1244892370392489989)

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1225039245158551552)

- The animation is done through vertex shader flapping and smooth mesh [swapping](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=swapping&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiJzd2FwcGluZyIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjE1MDM1NDQ1MCwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.DSzK3aQFdsGTT4AVV3fP6XZ9D2JF_TjZPAC2j83OAqg&zhida_source=entity). The flap time is offset by vertical position, which makes them differ from each other and flap faster when going up.

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1225037781858234368)

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1219343599336333319)

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1219340987299966976)

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1218585034074083333)

## Foliage

![](https://pic2.zhimg.com/v2-72558ceb431f83cef8732c6431df80cb_1440w.jpg)

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/ETkTbrHWkAInuWI.mp4)

- I moved my plants to a 32² corner on the 128² texture I'm using for everything else. Plus they now also use the every-other- [pixel](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=pixel&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiJwaXhlbCIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjE1MDM1NDQ1MCwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.AhKbYDp8r6ioa-J-WPHBcgrKIdNdQUfsWBVbVizHkr8&zhida_source=entity) -is-a-line tech, so everything is crisp and nice up close

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/ELqFR0aWoAEfZui.mp4)

- For doors and windows, I use som stencil buffer shenanigans to punch holes in the [zbuffer](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=zbuffer&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiJ6YnVmZmVyIiwiemhpZGFfc291cmNlIjoiZW50aXR5IiwiY29udGVudF9pZCI6MTUwMzU0NDUwLCJjb250ZW50X3R5cGUiOiJBcnRpY2xlIiwibWF0Y2hfb3JkZXIiOjEsInpkX3Rva2VuIjpudWxsfQ.owXq4W7RfDzzv7ICuQ-2OiXIMh0tyIR2UylVX-dGafk&zhida_source=entity). I admit it was a bit fiddly to figure out.

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/ELqDqnaWoAETM74.mp4)

- For the plants, I dug up this ol' trick: alpha is view angle modulated by leaf texture mapped to a sphere.

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EIrMoRuWwAI_ero.mp4)

- Ah, the timeless problem of shrubbery that look good from all angles without too much [overdraw](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=overdraw&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiJvdmVyZHJhdyIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjE1MDM1NDQ1MCwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.pzQqNQmx6DtEDf2OId81LUioeC4FUaucNKwmSBW98Vo&zhida_source=entity). Adding an anchored center vert to the billboards makes them a bit less flat and gives them [directionality](https://zhida.zhihu.com/search?content_id=150354450&content_type=Article&match_order=1&q=directionality&zd_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ6aGlkYV9zZXJ2ZXIiLCJleHAiOjE3OTQwNjE4NTIsInEiOiJkaXJlY3Rpb25hbGl0eSIsInpoaWRhX3NvdXJjZSI6ImVudGl0eSIsImNvbnRlbnRfaWQiOjE1MDM1NDQ1MCwiY29udGVudF90eXBlIjoiQXJ0aWNsZSIsIm1hdGNoX29yZGVyIjoxLCJ6ZF90b2tlbiI6bnVsbH0.vaL_cIjhdkkZiS6P-9bmEex3ajOSGDHvHY6shRRZ3Yc&zhida_source=entity) without messing with the rotation

## Pixel

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/ETlB_hqX0AEJW2F.mp4)

- It has been brought to my attention that not all of you are familiar with my every-other-pixel-is-a-line tech. I make the UVs speed past every 2nd pixel before sampling. It's core to my art style and what lets me get away with one 128² texture and crisp antialiasing up close.

## Moody Clouds

[video.twimg.com/tweet\_v](https://link.zhihu.com/?target=https%3A//video.twimg.com/tweet_video/EUDVWwCWoAAXO-p.mp4)

- it's a simple 1024x256 texture with some wobble in the sampling

## Bounding box

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1218124103741267968)

- On the plane, the focus point is thus relative to the hex space bounding box. The math around this was much more finicky that I first expected.

## Orbit camera

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1218118674290180096)

- My camera can now pan as well as orbit. I was unsure I would add panning, because users not used to 3D cameras might get lost. I think I solved that by making the panning relative and clamped to the bounding box (note how the camera climbs as I build on top)

## UI&Undo&Redo

[twitter.com/i/status/12](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1242824460325052417)

## Data

[twitter.com/i/status/11](https://link.zhihu.com/?target=https%3A//twitter.com/i/status/1198957499027795969)

- That bit of text up top is the save data for the current construction. I think I've packed the data about as tight as I can. Keeping the save data in a string will make constructions easily shareable between platforms (when it comes to that)

编辑于 2020-12-25 00:35

赞同 288