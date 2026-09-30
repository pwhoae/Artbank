---
title: "Godot 4 的 3D 墙壁箱子平台的壁架攀爬教程！"
source: "https://www.bilibili.com/video/BV1P2421A7vv/?spm_id_from=333.1245.0.0"
author:
  - "[[账号已注销]]"
published: 2024-02-02
created: 2026-09-30
description: "在这个视频中经常使用玩家root。实际上，它只是玩家模型的父级，而不是根骨骼本身。项目源码：https://www.patreon.com/Brok3ncircuitProject"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1P2421A7vv&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

在这个视频中经常使用玩家root。实际上，它只是玩家模型的父级，而不是根骨骼本身。  
项目源码：https://www.patreon.com/Brok3ncircuitProject

## Transcript

**0:03** · Hello Everyone and welcome back to the channel I hope you're all having a fantastic day Remember that sick mantle and climbing system I showed you guys in the last video The one that lets your characters climb walls like parkour pros Yeah That one well strap yourselves in Because today we're going to crack open the code and learn exactly how i built That bad boy Now this ain't going to be a hand holding tutorial for folks Just starting out

**0:32** · We're going to be diving deep into some juicy godot for concepts But don't worry I'll break it down into bite sized pieces So you can grasp the core ideas by the end of this You'll be ready to build your own gravity defying movement mechanics Even if you're not a master coder yet So are you ready to unleash your inner mountain goat And take your game design to the next level Then let's do this first things first Let's talk about the foundation

**1:00** · The basic idea of climbing mechanic Is to use two raycasts to detect climbable object For example If player jump into wall We need to cast two ray cast to that wall If one ray cast hit the wall and another one is not hitting anything We can consider that as a ledge When we find the ledge now We can disable gravity and play climbing animation easy right There are many more condition we can set up

**1:28** · But for this tutorial we only use those two criteria to tell our player the climb condition The only question is how do we do it through the code as usual We go back to player and create two ray cast facing forward Place it above the player head for this I name my ray cast as ray zero one and ray zero two Respectively in our script we reference that raycast as ray zero one and ray zero two

**1:58** · Then create a new function to detect climbable ledge This line of code is telling our player that If ray zero two is hitting something and ray zero one is not hitting something We will set on ledge is true And if on ledge is true We can disable gravity and play climb animation Note to disable gravity completely Make sure to set velocity y and gravity to zero

**2:24** · Else your player might still falling down slowly if you use the build in script This too is the gravity value This two line of code is important later Make sure to remember it Now that we have built our code Let's see the result good This should be the result we want After finding the ledge We can play our climb animation This is the harder part From now on We have two option

**2:55** · Root motion or non root motion Of course the easy way Which is to use root motion Unfortunately Since godot have a very bad root motion implementation I have to use the later method If you're already a root motion expert You can just skip this part entirely Since your climb animation would play accordingly It's quite confusing So let me show you what i am talking about Let's say you got a climb animation from mixximo or anywhere else

**3:24** · As you can see Whenever the animation finish it Root position is separated from player model This is fine and all But after the transition to next animation Which is idle animation We will have problems Since the player position is returned back to its original point And not at the new position to remedy this We need to make our player model to go independent from its parent during climb state This way the parent position won't affect climb animation new position

**3:53** · Remember our code before Yeah This piece of code will make out player model as a top level This way The parent movement won't affect animation position We will use this while in climbing state After we finish climb animation We need to move our root player to a new position So that player won't return to its original position There are many ways to do that One way is to store the new position value

**4:21** · And teleport the player to that position to store the new position I will use third ray cast Which i will call ray zero three Remember that from somewhere Cast it downward Make sure it high enough from player head Place it to where the animation end this way We will get the exact location to teleport our route player

**4:50** · For our let's add player Root player model and third ray cast in our parameter value And to move the root player to new position We will do it from animation event Before that let's create a new function called teleport This code will teleport our root position to third raycast point To run this function We need to create animation event Open our climb animation clip and call method from the script

**5:31** · I find it better to place teleport function after our player already on the ledge level Now let's test it It work But now we have a new set of problem Climb animation play non stop

**6:02** · This is because we're still in climbing state We need to turn on ledge to false And return back player model into child of player root For that we need to create another method that will be called by animation event Let's call it move the body function What this function does is to reset back player into their original position Before climbing begin We must place this function to the next animation that happened after player finished climbing Which is in this case an idle animation

**6:32** · For some reason Place it at the end of climbing animation clip What work is expected The method must be placed exactly at the beginning frame of idle animation Else you will get some weird movement Let's see the result As you can see the transition snap exactly where the climb end If done right You won't even notice the transition Of course This is just the basic of it To make it look more natural You need to fine tune the detail yourself

**7:01** · I hope you learned something from this tutorial Because i do There are many more feature I added from this mechanic that i cannot cover in this video Hopefully i can do that in the next video The full project is already uploaded to my patreon page