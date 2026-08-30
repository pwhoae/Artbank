---
title: "【阿空】音效一堆就爆音？游戏音乐、音效设置指南！| Unity快速入门 #17"
source: "https://www.bilibili.com/video/BV1bSzmYpEuL/?"
author:
  - "[[阿空的遊戲部屋]]"
published: 2024-12-03
created: 2026-08-29
description: "✨别忘记 \"一键三连\" 哦，点赞投币越多，更新越快！ε٩(๑> ₃ <)۶з✨📑粉絲遊戲、作品集募集中！(https://forms.gle/F2u5GMCd4qUUVVex7)📑阿空小調查募集中，你問我答！(https://forms.gle/5Wszqq6zHsKHV1gW9)音乐怎么切换？音效堆再一起爆音了吗？音乐音效的管理一直都是比较麻烦的部分，一起来看看要怎么管理吧！ (●"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1bSzmYpEuL&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

✨别忘记 "一键三连" 哦，点赞投币越多，更新越快！ε٩(๑> ₃ <)۶з✨  
📑粉絲遊戲、作品集募集中！(https://forms.gle/F2u5GMCd4qUUVVex7)  
📑阿空小調查募集中，你問我答！(https://forms.gle/5Wszqq6zHsKHV1gW9)  
  
音乐怎么切换？音效堆再一起爆音了吗？  
音乐音效的管理一直都是比较麻烦的部分，一起来看看要怎么管理吧！ (●'◡'●)。  
  
有任何问题或建议有欢迎哦，有看到会尽量回覆(つд⊂)  
🚩商务合作请私信~

## Transcript

**0:00** · 哈啰 大家好 欢迎来到阿空的游戏部屋我是阿空 那我们今天呢要继续来Unity快速上手好 那这一次我们要做什么呢我们要来看要怎么样去处理音乐还有音效好 那我们就开始吧那么我们通常在制作音效的时候呢就会直接创建一个新的物件就是你的音乐物件 然后再把你的这个音乐挂进去

**0:29** · 那它就会透过这个 AudioSource 去播放你的这个音乐档案好 那当我们开始之后呢我们就可以听到音乐就可以正常的播放出来了那么我们也可以在 AudioSource 这里去调整你的音乐参数像是要不要重复 或者是你的音量等等的资讯但是这样子做会有什么样的问题呢

**0:58** · 就是当你的音乐全部挂在物件上面的时候那当你有很多的物件 那它会同时播放就会造成叠加的问题所以通常呢我会限制一下它的通道就是只有特定的这个 AudioSource 去播放那么当你有很多音讯需要播放的时候呢你就可以选择暂停旧的音讯或者说不要播放新的音讯好 那要怎么做呢

**1:25** · 我们就会需要一个统一管理的一个脚本那我们可以到 Script 这里然后创建一个新的脚本好 那我们叫做 AudioManager 好 那我们到 AudioManager 这里好 那首先我们要先创建我们有多少个通道可以去播放音效或是音乐也就是我们有多少个 Source 可以使用所以我们这里可以使用一个 List 来创建好 那叫做 AudioSource

**1:55** · 好 那我们叫做 Audios 好了那么它是一个新的 List 好 那接着在底下呢我们就可以用回圈去创建这个 Audios 好 那么我们要先来创建然后把它加进这个 AudioManager 的物件当中所以我们可以使用 List.getObject.addComponent 好 那我们要加入的呢 就是 AudioSource

**2:25** · 好 那么接着呢 我们也要把这个 Audio 把它存下来所以我们可以用变数然后呢 再把它放进去好 那么现在呢 我们的这个 AudioManager 它就有三个 AudioSource 的物件那我们就可以分别透过这个 Manager 去调用三个不同的通道去播放音乐好 那么首先呢 我们要先关联一下这个音乐还有音效

**2:53** · 所以 AudioClip 就是我们需要播放的这个音乐片段好 那我们叫做 BGMForest 然后把它 Public 那么接着呢 我们也有一些音效所以我们叫做 SE 就是 SoundEffect 然后 Shoot 然后 SE 受伤 Damage 好 然后 SE 怪物被打败的时候

**3:20** · 所以是 Destroy 那现在呢 我们就有这几个片段可以去使用那接着呢 我们也要有一个播放的功能好 那我们在播放的时候呢你需要决定你要使用的是哪一个 Source 去进行播放那么如果这个 Source 在播放呢你就可以把它暂停 然后替换掉那么我们前面就可以给它一个 Index 好 那它是 int

**3:49** · 也就是你要使用第几个资源去做播放的动作好 那第二个呢 就是我们要播放的内容好 那我们可以使用 Name 来代替好 那既然我们是直接使用 Name 我们就可以把它做一个关联那这里呢 因为我们是直接用 Reference 的关系所以我们要在另外创一个可以拿到这个关联的功能好 那它会回传的就是 Audio Source (是 Clip)

**4:17** · 好 然后我们要使用名称去拿到它的 Audio Clip 那么我们就可以拿 Get Audio 好 那么我们会使用一个 Switch 去拿取所以如果我的名称是 BGMForest 的时候好 那我们就可以回传一下好 这个 Audio Clip 这里是 Audio Clip

**4:50** · 好 那以下也是就是 S1 然后 Shoot 好 还有 Damage 跟 Destroy 所以复制一份好 那这样子我们就做好了一个功能可以透过名称去拿取这个 Audio Clip 那我们在呼叫的时候呢就可以直接使用这个名称去拿取

**5:20** · 好 这个改成大写好 那当我们在 Play 的时候我们就要去拿取这个 Audio Clip 所以 GetAudioClip 我们使用这个 Name 去拿取好 那么这个就是我的 Clip 好 那么如果这个 Clip 不是 Null 的时候呢好 那我们就可以去拿取这个 Audio Source

**5:50** · 然后并播放这个音乐那么我们要使用的是 Audios 的 Index 去拿到这个 Source 那么它的 Clip 呢 就会等于我们新的 Clip 那么接着还有一个主要的问题就是它是不是要重复播放所以我们就可以写 Bool isLoop 所以这个 Audio Source 的 loop 呢就会等于 isLoop 好 那接着呢

**6:19** · 我们可以先把它记录一下使用变数储存下来好 然后再去变动这个 Audio 好 那全部更改完设定之后呢我们就可以去进行播放所以这个 Audio.Play 好 这样子我们就可以去进行播放了好 那接着我们就可以来试一下是不是能够正常的播放那么我们可以创一个新的脚本

**6:47** · 用来管理这个场景的脚本好 那我们叫做 ForeastScene\_1 那么在开始的时候呢我们就可以使用这个 Game Manager 的 Instance 好 那现在呢我们的 Game Manager 还没有去操控这个 Audio Manager 所以我们要先到 Game Manager 这里然后去创建一下那么做法都一样我们就可以在这里换上 Audio Manager

**7:16** · 然后在底下呢我们也可以新增一下 Audio Manager 好 那么在开始的时候呢我们就可以去生成这个 Audio Manager 好 那它会使用的是 Audio Manager 的物件 Prefab 然后我们会拿取的是 Audio Manager 好 那接着呢

**7:44** · 我们要来设定一下这个 Audio Manager 的一些数值那么 BGMForeast 呢就是我们要找到 Audio 的 BGM SE Shoot 呢就是 Shoot Demage 呢就是 Demage 好 Destroy 就是 Destroy 好 那这样子我们就可以把它关联起来那最后呢我们要把这个做成一个 Prefab

**8:12** · 好 那现在我们就有这个 Audio Manager 的 Prefab 好 那回到 VSCode 我们要在这个 Foreast 的管理脚本里面我们要去产生这个背景音乐所以它的 Audio Manager 的好 这里要改成 Public 好 然后 Play 那么我们要播放什么呢第一个就是我们要使用的通道就是 0 那么它的名称呢

**8:42** · 就是 BGMForest 好 那它是不是要 loop 呢就是 True 好 那我们来看一下效果吧好 那我们要先加一下这个物件然后叫做 Forest Scene1 然后呢我们要在这个 Manager 上面要挂上你的 Audio 的 Prefab 好 那这样子我们就有了两个管理的脚本一个是你的特效一个是你的 Audio 好 那我们要调整一下它的顺序

**9:14** · 好 那我们的 Audio Manager 要在后面然后你的 Effect Manager 也可以在后面那么你的 Forest 的脚本也要把它放在里面好 那么它的顺序还是会出错所以我们要先把它放在 Awake 里面好 让它在初次初始化的时候就要把你的所有的 Audio 创造出来好 那现在我们就可以成功的让你的 Audio Manager 可以去播放音乐

**9:44** · 那么接下来我们来看一下音效吧好 那首先我们来处理一下发射子弹的部分好 我们可以到 Player Controller 这里那么在当我们发射子弹的时候我们就可以顺便去播放音效那接着我们就可以直接使用 Game Manager 的 Audio Manager 直接去播放就可以了那么 0 已经使用了 就是背景音乐所以我们就可以使用 1

**10:13** · 那它的名称就是 SE Shoot 好 那么它是否要重复呢 就是 False 好 这边没有改到 所以 SE Shoot 要修改一下好 那这样子我们就可以成功的透过这个 Audio Manager 去帮我们操控这个音效的播放好 那接着呢我们也可以顺便把怪物受伤

**10:41** · 还有死亡的音效也把它加上去好 那当我们的怪物受到伤害的时候我们就可以直接呼叫 Game Manager 的 Instance 的 Audio Manager 去播放音效好 那么播放的位置呢我们就可以设定在第三个那它的名称呢 就是 SE Damage 好 那么它是不是要重复呢 就是 False 好 那复制好 那当怪物死亡的时候呢

**11:10** · 我们就可以播放死亡的音效好 那这样子呢我们就可以成功的透过Audio Manager 去帮我们播放音乐还有音效好 那这样子呢我们就可以很轻易的去管理你的音乐还有音效可以去控制你的播放数量

**11:38** · 好 那以上就是这一次音乐音效的处理技巧如果觉得影片不错的话呢可以帮忙点个喜欢留言分享那我们就下期再见啰掰掰制作影片不易，触及不高，可以麻烦大家帮忙点个赞👍、转发分享哦~இ௰இ