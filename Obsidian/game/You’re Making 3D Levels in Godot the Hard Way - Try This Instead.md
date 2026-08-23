---
title: "You’re Making 3D Levels in Godot the Hard Way - Try This Instead"
source: "https://www.youtube.com/watch?v=b9-xbjKvUXw"
author:
  - "[[Letta Corporation]]"
published: 2025-05-11
created: 2026-08-23
description: "My Game Development Courses:Create a Complete 2D Endless Runner Game In Godot 4: https://www.udemy.com/course/how-to-create-games-with-godot-4-3-for-beginners/?couponCode=MAY-2025-12.99Learn to Crea"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=b9-xbjKvUXw)

My Game Development Courses:  
Create a Complete 2D Endless Runner Game In Godot 4: https://www.udemy.com/course/how-to-create-games-with-godot-4-3-for-beginners/?couponCode=MAY-2025-12.99  
Learn to Create Games in Your Phone Using Godot 4 (No PC): https://www.udemy.com/course/learn-to-create-games-in-your-phone-using-godot-4-no-pc/?couponCode=GODOT-NO-PC  
  
Learn to Create a 2D RPG in Unity 6: https://www.udemy.com/course/learn-to-create-a-2d-rpg-in-unity-6/?couponCode=7FEA2CD310AFF11FB1FA  
  
  
\-------------------------------------------  
  
  
Join this channel to get access to perks:  
https://www.youtube.com/channel/UCK7nhJBW05-tCmbmvbHThmw/join  
  
📡CONTACT📬  
Job offers, YouTube collaborations, etcetera:  
➤✉️Email: letta.corporation@gmail.com  
  
➤🔵LinkedIn: https://www.linkedin.com/in/marco-paoletta/  
  
▶️PLAYLISTS🎥  
Godot: Full Courses: https://youtube.com/playlist?list=PLX91FzZ\_h1OBryEAM9VnznwA8hSAENeD1&si=BaYpk-KKDhY-asaP  
Godot: Tutorials: https://www.youtube.com/playlist?list=PLX91FzZ\_h1ODdeeja8qj87uXhjEebfImq  
Godot: Addons: https://www.youtube.com/playlist?list=PLX91FzZ\_h1OATCglSqMhMJmKD66E9hpwU  
Godot: Tips & Discussions: https://www.youtube.com/playlist?list=PLX91FzZ\_h1OBUN0Xkegy9qpjmy5r3U7-S  
Godot: Best Games: https://www.youtube.com/playlist?list=PLX91FzZ\_h1OALTLCr6qG3JkKnouTPWa5K  
Godot: Godot: How To Make Games In Mobile: https://www.youtube.com/playlist?list=PLX91FzZ\_h1OA76ytWDKVJbOe3TDgfR-Dy  
Game Dev.: Advises: https://www.youtube.com/playlist?list=PLX91FzZ\_h1OBRPiLSBPybGXkmIwSA7oph  
Game Dev.: Job & Money: https://www.youtube.com/playlist?list=PLX91FzZ\_h1OBFgw6m0SpagXBlWl8SKvKP  
Unity: Tutorials: https://www.youtube.com/playlist?list=PLX91FzZ\_h1OB0ItgAAYWb2T5SOAx9kSdl  
  
🎮MY GAMES🕹️  
➤Match 3 Pass: https://play.google.com/store/apps/details?id=com.LettaCorporation.Match3Pass&hl=en&gl=US  
➤Shake It and Find It: https://play.google.com/store/apps/details?id=com.LettaCorporation.ShakeItandFindIt&hl=es\_419&gl=US  
➤Circle Combat: https://play.google.com/store/apps/details?id=com.LettaCorporation.CircleCombat&hl=es\_AR&gl=US  
➤World Cup Collector: https://play.google.com/store/apps/details?id=com.LettaCorporation.WorldCupCollector  
➤Swipe Never Stop: https://play.google.com/store/apps/details?id=com.LettaCorporation.SwipeNeverStop  
➤Protect the UFO: https://play.google.com/store/apps/details?id=com.LettaCorporation.ProtecttheUFO  
  
🎵MUSIC🎶  
➤Song: Tokyo Music Walker - Way Home  
License: Creative Commons (CC BY 3.0) https://creativecommons.org/licenses/by/3.0  
https://www.youtube.com/channel/UC3lLfvhpPGtwd5qD25cMDcA  
Music powered by BreakingCopyright: https://breakingcopyright.com  
➤Patrick Patrikios  
https://www.youtube.com/watch?v=XO3WVCcGKzA  
➤Alva Majo channel theme  
https://www.youtube.com/watch?v=qtSByF6qxik  
➤Music: Evan King - CHIPTUNE ♫ 20XX  
https://www.youtube.com/ContextSensitive  
https://contextsensitive.bandcamp.com/  
➤Zelda II The Adventure of Link Town Theme Orches  
https://youtu.be/h5fA4Iyp7uA?si=7pX2N-CixnYRgc04  
➤Haters Gonna Hate - smol edition  
(Cannot find the link, if you have it please share it with me by Discord. The link is above)  
  
It seems that this is the end of the description. If you liked the video, consider subscribing so that YouTube notifies you when I upload new useful content :)  
Have a nice day!

## Transcript

**0:00** · So, imagine being able to quickly create your own 3D levels. For example, here we have a 3D platform that I've created and I'm going to be using it to explain the topic of this of this video quite easily, rapidly and practically. Okay, so here, as you can see, we have some coins. We have some obstacles.

**0:17** · Everything is aligned mostly perfectly, okay, or good enough for you to see, okay, yes, this is a pretty polish level and it could actually be a part of a full game in the go engine. So let me tell you exactly how this has been done.

**0:32** · Okay. So this is the go to project itself and how this has actually been made is with the following node. This is a grid map node. Okay. Which as you can see if I click on it I have this new tab grid map. And I have different objects to let's say draw around environment.

**0:49** · Let's select this block grass. And if I go to the paint tool I can now paint these blocks. I also have some levels.

**0:56** · So I can actually uh move the y-axis okay of these models okay if I want to create more platforms for example and it's basically the grid map is the equivalent of tile map to this but in 3D. So how they work and their controls are very similar how they are set up is a little bit different. So let me actually start off with a brand new scene over here and let's just be this our main scene. Okay, actually we'll call it just as main two because I already have a main scene in the scene and I will use the control a shortcut to quickly add the child node.

**1:27** · You can still use this plus icon and as I told you we are going to in the grid map.

**1:32** · What the grid map needs in order to work is this mesh library over here. So how exactly do we create this mesh library?

**1:40** · So we need to create another scene. So let me close this one so that I can create a new one right over there.

**1:46** · And what I need to do there is to drag and drop all the models that I want my grid map to have. So I will go to my assets and models and let's just do it with a couple of the objects that I have over here. So let me just do it with these ones for example, but you can do it with as many as you want. And let's drag and drop them directly over there.

**2:05** · It doesn't matter where you drag and drop them, whether you move these objects over here, if you rotate them, whatever they this the position itself doesn't really matter. Okay. How I'm going to be calling this is a tiles 2 just because I already have a tiles scene. Okay. And what we're going to be doing with this is first of all saving the sim somewhere. So I will just save it right over there. And then you will go to sim export as mesh library. And here you will once again call it tiles 2 for example.

**2:34** · Once that you have this you will go to your tile map mesh library quick load. In this case I have the the other tiles. Okay. So I will just load in this one. And now I just have my tiles and I can start working around. So here I have the different blocks with which I can work around. For example, okay. And if I want to put an arrow over there, what I can do is increase the level by one. And well, it seems that I it kind it is kind of there, but it isn't.

**3:03** · If I put it on zero, it is basically beneath or well, it is not in the correct position. So what is actually going on over there? And actually the same the same thing happens if I want to stack these blocks on top of each other. They are not in the correct place. So if we go to this part where it says cell, we actually have the cell size. So this also kind of really depends on the specific model size, okay, of of its own.

**3:31** · But you can actually just start playing around with the Y size and once you see them that they are together, you can use that value. So in this case, a cell size of one seems correct. They are usually like mathematical values alo I mean not mathematical values but integers or flows such as 1.2 2 1.5 1.5 uh sorry 1.75 they are not uh 1 3678 no or or maybe 1 um

**4:04** · 0032 no you should just use directly one it's the the mathematical value that you should be using there and the same thing with with X and Z okay if you find that some tiles are not working correctly well some of the meshes are not being aligned properly you can modify them and You can see now they are being stacked together properly. For example, here this let's say that I wanted to make it point this point. So once again you have the rotate tools. So with this one, okay, we can rotate it in the C-axis.

**4:32** · With this one, you can rotate it on the Y, etc. Okay, so let's try to make it face the correct direction. I believe it's this one. No, I'm very bad at rotations. It's this one. Okay, perfect.

**4:42** · There we go. So there we have it pointing to the direction that we want.

**4:46** · Now something that you will see is that for example, this tile in specific is very small. the same thing with the barrels. Uh but actually the size of the grass is correct. Okay, let's say. So how exactly do we modify the size of something? Because what we have here is a scale. Okay, for example, but this is not something that in most cases you want to use. So how exactly do do you scale this? You can technically increase the scale of everything, but this will scale everything. Um and once again, in lots of cases, this is not something that you want to you to do.

**5:13** · It's better to scale the other elements, the the player, for example. if you want to scale the player, but not this. Um, so what you do is that you go back to your your tiles and let's look the models that we want to modify. So we have the barrel and the arrow. So let's scale them in slightly. So let me select them both with a left click over here. And now I will hold on control and left click here. I go to transform and I will just scale them by two. Once again the position doesn't matter. I will save the sim. I will press scene export as mesh layer.

**5:46** · And here it's very important that we apply mesh instance transforms. Okay.

**5:51** · Now we press save. We want to override it. And there's sometimes that go will for somehow drop you an error. Okay. I believe it's because in this case this scene is not saved. So let's try it again. Let's export this as me again. If not we will just save it as a new file.

**6:08** · Um so this is correct. Overwrite it. And once again we have an error. So so unfortunate. Let's make it tiles three.

**6:16** · Okay, there it is. And now what we have to do is to override our tiles. So tiles three. Okay, there we have it.

**6:29** · Oh, but in reality, what we need to do over here is to make them local so that we can actually access the mesh because we actually scaled in the um the the the root node but not the mesh that that this is what actually matters for the mesh instance. Sorry, for the mesh library. So, let's select the meshes.

**6:49** · Let's go now again. Let's make them even bigger. Something like 2.5 so that we can actually see a huge difference. Uh let's save them again. So actually export them mesh library tiles I don't know five uh this should be enabled by the way and now we go back to main let's load them in in this I I did have created more tiles but it doesn't matter this is the last one that we have created and there we have it okay so now it is much bigger and also the barrel if we want to paint it now as you can see it is much bigger so let's paint it on top of this one and there you have it

**7:23** · okay now some controls that could be pretty useful for you to navigate through do this. Um, if I was over here and I wanted to move the camera wherever I wanted, instead of having to uh deselect the node and move around with the right click h and here while moving uh using W and D, I can directly just while I am over here right click and move with W and D. And with this I can paint a little bit easier. So let's once again try to create some kind of easy level. So let's go to level zero.

**7:55** · Let's draw here some platforms. And as you can see, automatically using right click W and D, I can create this. So it's quite quite simple. Then let's create here some more. Oops, I rotated there. This. So let me You also have shortcuts by the way for all these, but it's quite complicated to remember them all. Let's now increase the floor and let's put them over here. Increase the floor again, for example. And there you can see how the workflow would work.

**8:22** · Once again, these grid map nodes and all these ways are being improved all the time. You can see there is still some inconsistencies such as the fact that sometimes you cannot um save your mesh libraries, but overall is working pretty well uh right now.

**8:39** · Um so anyway, this is the best way that I found. This is by the way part of a go do course that I'm going to be releasing very soon. Okay. Uh, and this is just one of the three games that the course will teach you about. So, hey, I I I really think that this course will be in this course, by the way, you're going to be learning this even in more detail and of course many many other things. So, if you really want to inform about all that, make sure that you always keep an eye on the channel.

**9:07** · And talking about go to courses, okay, for a limited time, you're going to get my go to core for just $10 when the original price, as you can see, is $45. This is just if you are using the code uh sorry the link in the description down below. Once again it's for limited time. So make sure that you hurry up. The course has 4.9 on average of ratings um for six ratings and it has more than 30 students. So I'm sure that you're going to be enjoying this experience and learning a lot at the same time.

**9:36** · And once again I'm planning on releasing even a new course very very soon. So stay up to date. And of course, the students that buy this coded course are going to be the first one that are going to be able to buy the next course that I'm releasing very soon. See you in the next one and bye-bye. and Ro.