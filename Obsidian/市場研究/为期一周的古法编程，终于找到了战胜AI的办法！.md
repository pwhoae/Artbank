---
title: "为期一周的古法编程，终于找到了战胜AI的办法！"
source: "https://www.bilibili.com/video/BV1UatT6rErn/?"
author:
  - "[[游戏开发极客]]"
published: 2026-09-03
created: 2026-09-07
description: "AI编程的弱点在哪？我们如何在和AI竞争的过程中保持自己的优势？"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1UatT6rErn&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

AI编程的弱点在哪？我们如何在和AI竞争的过程中保持自己的优势？

## Transcript

**0:00** · 嗨大家好我是你们AI编程的忠实粉丝游戏开发极客极客大叔呃自从去年年底我发现AI可以帮助我写程序之后我就开始完全用AI去生成我的代码啊那个不管是cloud cod codex或者是KO啊这些工具我都用了很多啊国产的编程我也在测试我觉得AI是非常非常牛的编程工具但是呢前一阵子我发现啊有些问题可能需要我亲自处理我就又回归到了那个手动开发

**0:29** · 就是无法编程啊自己写代码的阶段然后这个期间我就去看了很多AI生成代码我发现啊不看不得了一看竟然有很多问题第一个问题就是他会为了完成某些东西去改我去扩散它的代码片段就是影响我其他跟他无关的那些底层代码这是第一种第二种是它会不断增加代码但是它删除删除代码很少它就让你代码变成膨胀第三种它有些地方会增加功能会改乱另外一个功能会产生一些低级的bug 当你解决这些问题的时候

**0:58** · 解决一个问题产生另外一个bug 会产生无限循环呃而且我觉得它的代码虽然看起来乍看起来很漂亮但事实上并不一定是最好的这让我很迷惑是吧我说AI变成这么智商这么高了智商是我的几百倍到现在起来可能我看他还缺乏有些问题那是我的错呢还是AI变成了错呢我也陷入这个迷茫之中直到昨天我偶然在外网上看了那个陶哲轩博士的一段视频 We're seeing now in programming that Many expert programers are reporting that the ability to write code Has increased by factor of five Or ten or one hundred with these with these tools

**1:28** · But they are also uh They can they can feel themselves Learn ulosing the ability to code by hand And sometimes they cannot review the code that that that comes out All these agents There's a tradeoff You know speed And and is not everything 他在讲数学方面的问题的时候顺便提及了编程方面的问题他说现在的AI解决问题的思路就是乱枪打鸟最快速度发射最多子弹把鸟都打死就得了他可能100个就是数学的一 100或者1000个问题全丢给AI AI只要完成5% 那可能就有50个50个问题解决了

**1:56** · The beginning to become successful at When you point them at a very broadventure problems And they solve some percentage of them like Maybe you point them in a thousand problems And they solve five percent forproblems That's still fifty problems Solved you can already have tools that in some sense Outperform humans Mathematicians by row number of problems Solved um now The fifty problems they get solved May not be the fifty problems that you most want solved uh There could be fifty random problems um But so it It is it is very impressive that 这就是AI解决问题的方式方式就是他可以速度比别人快他的能力比别人都强他就可以直线啊横冲直撞

**2:26** · 反正问题我解决就得了这叫我反过来反过来让我想一下就是我们的AI是如何训练编程能力的那我想我想啊因为我不是AI公司的我没训练过大模型但是我猜测你们也可以跟我一起猜测AI是如何训练这个大部分去编程的大概率就是让AI做题我们有些朋友应该参加过 ACM那个考试的网站就是你做一道题通过了计算你的时间啊计算你的呃通过的效率计算你占用内存的多少然后给你评个分这就是我们一般的程序员考试的一个方法

**2:55** · 只要你题对了答对了就行不管怎么写的啊那些ASM的那些编程网站全这么干的你只要看你的效率高甚至有时候hello world直接输出一下hello word也行你把几个字母拼出hello word也行只要能达到这个目的你就是棒的就是程序员的评评判方式如果我把AI放到这这态模模式里训练AI会什么方式去做的他会最快最简单的完成问题他就成功了对吧他只管自己的问题解决他不会去考虑未来10年 20年的这个软件的发展啊软件结构的发展因为呃因为就算你考虑的话

**3:25** · 你也没有一个评判机制呃我们一般说程序代码的味道啊代码的优秀不优秀不代表味味道好不好这个味道是没有一个固定的衡量标准的所以说我们没办法把这个好的味道训练给AI AI可以去揣测但是味道是代码的味道是没办法让AI去评分的好的AI烂的AI它分不出来所以说这条路往下再走的话就会导致AI会编程会以一个短平快直线的方式解决问题哦这东西是会好呢有很多领域是好的比如说你参加黑客松两天

**3:54** · 需要设成一个啊程序或者是你做创业的时候产生最小可用级MVP的时候他都很快的帮你实现甚至解决一些算法问题的时候都很快的实现但是有些情况是不好的当你这个代码需要一个长期维护比如说你做一个操作系统就要维护十几年做个游戏差引擎要维护十几年的时候他不会往未来考虑我觉得AI没办法往未来考虑超过10年之后的东西他是想不到的对不对那你说这有什么能问题呢呃我们学程序的架构的时候要知道架构要合理最简单的办法就是把它在逻辑上做合理了逻辑上做合理了

**4:24** · 不一定最快最优的解对吧但只要逻辑上合理了以后不管需求改变不管是功能增加不管是架构整体的大的变化只要你逻辑合理了未来发展都是顺畅的所以说编程最重要目的一个架构师最重要的目的是要把代码的逻辑做到合理就是符合逻辑原理或者是数学原理或者是物理原理它就是合理的那这东西就是对的而不是最快解决问题啊最快解决问题是算法工程师不是架构工程师所以说我觉得AI在算法工程师上这方面它是无敌的但是在JVA工程师上

**4:53** · 它没有一个办法去让自己不断提高所以说导致AI会一个就变成这种呃乱枪打鸟大力出奇迹这种这种方式去编程啊所以说当你很快的提交东西的时候没问题没问题没问题但是当你需要一个长期维护的产品的时候比如说像我们的作品已经做了67年了将近小10年了他一进来之后发现就会有问题因为你很多因为长期设计的东西他不认同他不认可这就导致一个很大的矛盾或者是他为了安全起见他不动你以前代码他改新的代码就会导致软件越来越臃肿

**5:23** · 这都是不对的所以说我现在发现这个问题之后诶我跟你们探讨啊我没有证实但是我发现很多那个证据对吧我我发现他会这些证据我都让他自己回答了我说AI你是不是哪错了他说我错了没错我错了我现在认错我又不能扣他工资又不能又不能开除他又不能骂他反正AI每次我我说你不对你做错的时候他都会很很谦卑的认可这事所以我把他那个认可度都经常遇到问题我都截图下来 AI编程有很多问题啊它适合于快速解决目前的东西

**5:52** · 但不适合于长期的长期的这个设计这就举个例子吧就是如果古代呃原始人找食物怎么找就打猎嘛最快速度找到动物直接打猎吃了就好了但是打猎这事情是不是最好最优解呢不一定那后来人们学会耕种发现诶我只要把这个粮食种到这里头一年之后我能收获更多粮食但是从一个大力出奇迹的方法来看短期之内耕种的效果肯定不如打猎的更快对吧达猎今天晚上能吃到肉但是耕种的话你还能丧失一些种子啊第二天才能收拾东西就是有些时候短平快并不是最优解

**6:21** · 我们最优解可能要在现代做些牺牲啊为未来做一些铺垫这样才能得到更多的粮食这是我我认可的例子啊当然了啊陶博士举了一个日心说和地心说的例子那个例子可能更深奥一点啊 And kepler coponica's model was worse Just knowing agreement of data is not necessarily um The the only metric it was only after kepler found his His revise model Where the open sal circus for ellipses That the heavy centric model Became more accurate than the geocentric model What this tls

**6:50** · You is that is that science is um You can't always get instant feedback as to whether You sold decito be problem or not if kepler And and copernicus had ai And they asked them to Particularly model for fourth full universe It could be that the ai is that generated the correct Cheatric model would would be discarded Because initially their predictions were not as good As as as the geocentrones It takes 但是我现在就是觉得呃如果AI没办法找到一个为长期目标打分的这个方法的话或者训练的规划的话

**7:19** · 那么我相信人类在编程里头这个架构领域上还有一个绝对优势就是我们可以我们只要呃让AI符合本身逻辑这个不追求效率不追求开发效率不追求解决问题的效率的话在长期上我们会比AI更强这是我的现在我的看法所以说我们人类在AI编程领域上还有价值吗我认为价值很大的这是而且随着AI编程这种横冲直撞的东西越来越多的朋友在我的下面留言说AI做做错错很多东西他们就是不敢说嘛

**7:48** · 现在现在大家都在文科生编程吗你一说AI不行的话文科生会过来骂你说你你们这些难道只有会写程序的人才能有资格写程序吗我们这些人难道不能写程序吗就是就是现在这个大家都非常崇拜哎但是我相信更理智的人呃更能明确的思考诶哪里强哪里弱的人会在下一个阶段得到更好的这个价格我们离不开AI了就算你去自己写代码 AI也可以辅助你给你就是填空嘛帮你补补全你的代码 AI可以做很多东西但是哪些领域上AI擅长哪些领域上AI不擅长你

**8:17** · 人类要不顶上去这些东西如果你心里有数的话那我相信在下一个时代里头就是可以操控AI补全AI 让AI变得更强的那个真正有价值的人你会得到十倍和百倍的收入所以说我们现在不能完全的排斥AI 也不能完全的去信任AI 找一个理性的角度啊也不不迷信也不排斥找个理性角度看怎么样人类跟AI合作 AI有擅长的地方人类也有擅长的地方不是说两者一个体态取代另外一方程序员不会交往啊比如说咱架构设计方面程序员仍然有足够的优势但是在算法啊

**8:46** · 短期的实现的大力出奇迹的技能未来已经是无敌了所以说这两个怎么结合结合起来我也一直在想我的公司的架构结构软件架构中如何把这两个结结合起来这是我现在的给我自己的命题我觉得这种方式才是真正在下一个AI时代里头真正能体现人类价值的方式能让你更有价值更有更提高的方式这就是我出这篇视频的一个想法和结论希望各位AI时代的编程者不管你是古法编程还是AI呃氛围编程我相信我们都有更好的结果只要你保持着对自己的谦卑

**9:16** · 也保持着对AI的谨慎我相信未来一定会更好好拜拜今天结束拜拜