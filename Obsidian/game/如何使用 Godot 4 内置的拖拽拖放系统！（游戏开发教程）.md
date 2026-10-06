---
title: "如何使用 Godot 4 内置的拖拽拖放系统！（游戏开发教程）"
source: "https://www.bilibili.com/video/BV1wr421x7bK/?"
author:
  - "[[账号已注销]]"
published: 2024-02-28
created: 2026-10-06
description: "如何使用 Godot 4 内置的拖拽拖放系统！（游戏开发教程）, 视频播放量 3994、弹幕量 0、点赞数 87、投硬币枚数 24、收藏人数 274、转发人数 12, 视频作者 账号已注销, 作者简介 ，相关视频：Godot高级角色控制器+动画实现演示，被骂醒了，加强美术，【godot】一个视频教会你打击停顿，【godot】全网最易懂的状态机，让AI直接操作godot开发游戏，mcp新版本发布，【像素游戏进阶】正交 vs 透视 — 哪种视角更适合你的2.5D像素艺术游戏？，【独游开发者福音】真：一键让 AI 生成完美像素素材！，下雨天种地，让AI直接操作godot开发游戏，godot cli发布，预期节省80%token！，Godot战棋游戏基础教程——正在开始"
tags:
  - "clippings"
---
<iframe width="560" height="315" src="https://player.bilibili.com/player.html?bvid=BV1wr421x7bK&amp;page=1&amp;high_quality=1&amp;danmaku=0" title="Bilibili video player" frameborder="0" allowfullscreen=""></iframe>

## Transcript

**0:00** · Hello guys Welcome to another tutorial So today i'm gonna show you guys how to use good Those built in drag and drop system So here i have a circle I could drop it in a circle here But i can't drop it in a square Then the square can drop it here But i can drop it in the square here So let's get started Okay So in order to do this We need to use four built in functions

**0:28** · First one is get drug data The second one is the drug preview Third is can drop data And then the fort is drop data So we're gonna go over these and show you what Each of them first Let's create some notes Let's add three texture Duplicate this And we're gonna name these name This one slot name This one slot two Then let's name this one object Or this could just say drag over

**0:58** · Make it straightforward So i have this texture here And i'm gonna just show a texture less than each of these I could just grab a copy of the texture And then grab the piece that i need right I'm going to use that square And for this one you're going to use the circle Drag them over a bit Then for the drag a texture What we need now is script

**1:25** · We're gonna put the same script on these two guys up here So let's slot But it on top of this as well All right So what we need to do now is for this one We get the can drop data So funk So if you for now We're going to tell it to return true Or otherwise return false Explain those so if the

**1:54** · If the mouse is over the top of this node with this function already set It's gonna just return true Otherwise it's gonna always return false Right That means you can drop it any other place rather than other than this Whatever has that function Right so next we need the fun drop data And we could just pass that For now we have to go over here to create the data on here now Drag object You need to implement drag data

**2:23** · What i want to do here is basically And some data that's called is equals One could be anything like from just a integer or the dictionary And that's what we're going to use in a bit But well we can use array too So what i want to do here Get the drag preview Set drag preview and this takes a control We can just call it preview for now

**2:51** · Let's set this to alpha now And then i'll do this Want to show you guys what we have so far So good now Test the scene We'll get the mouse getting here I could drag He's noticed that there's a little thing on my mouse I go over this one I could drop it here Nothing's gonna happen But this one as well We have nothing to tell it

**3:21** · To not drop on that one yet So you can Let's set up the drag preview first So let's go back on the drag object So for the drag preview We can use a another text We're just creating this text right to put on the preview You don't need to parent it to anything or anything like that So let's say new

**3:52** · Said this texture to be equal to our texture The texture equals Could save that now and you could test it out again There you go We have a preview And it's at a weird offset We could fix that But for the tutorial We're gonna just skip drag it here Nothing's still happening To allow us to place them now We have to go back to here With the end of the or to the drop data I mean we already have it That's true

**4:22** · What we want to do here You could parent it So let's go back to drag this data that we have here We need to passing something So let's pass in ourselves First We're passing the whole drag object as a reference in the slot Now we know that the data is now the node You could see data Let's get parent remove channel data Let's say a child

**4:52** · So we are getting the parent The child object We're removing its or removing itself from the parent It's burnt and we're grabbing it We're adding it as our child on the slot You could test it up No part of that break it over here as well Yeah That works all right So now we don't want it to go in a circle

**5:20** · Now we can mess with the can drop data So on the slot Let's export a You know On the square all right So the control now The drag drag object You want to return an array instead

**5:45** · So let's go here to the array to be self number one Number one is a is a square and return data about that And then in the slot now we need to update this So this will be zero Now that the parent index Zero of the data up here We could see If You want to return true

**6:15** · Else we return false And let's go to plots now You have to act specifically said types So this is all a circle And then this should be a square right now If we drag here now Let's play Drop here But i can't drop here anymore Pretty straightforward

**6:42** · To duplicate this guy now hit the drag object Make this unique Then we could change its region to be a first fix Scaling Leave it there for now All right So we need to change this one step to be first circle I mean Oh Oh We need to actually set it So we can export this one step now So it is to be the by default Oh

**7:11** · Instead of ascending one And send the type here on object to it to be a circle And let's run this I'm grabbing the here So this can go in here Because it's not a square But it can go here Because it's a circle there you go And the square could go to the square That's it That's it for the tutorial here in my game that i'm working on I have same setup But it's a lot more complex

**7:40** · So here i could drag these around to different slots Could split this in half Control to the one Also have up in places So this is a gas collector You can go on top of that

**8:08** · So even bring them back on each other This one can go on top of that So there's swap places Name as well Mining laser This is the map Isn't I could drag them over here as well And these guys technically I don't want them to be over here But anything not gonna be doing it

**8:37** · This is bronze I That's it guys Thanks for watching And you know Another one