---
title: "THIS Is Why You Need To Use Tweens"
source: "https://www.youtube.com/watch?v=p-4nfWYyIp8"
author:
  - "[[Mina Pêcheux]]"
published: 2025-03-28
created: 2026-07-14
description: "#godot #gamedev🚀 Support me on Patreon: https://www.patreon.com/minapecheux👉 UI assets by Prinbles: https://prinbles.itch.io/silent👉 Cursor by Kenney: https://kenney.nl/Ever wanted to make so"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=p-4nfWYyIp8)

#godot #gamedev  
  
🚀 Support me on Patreon: https://www.patreon.com/minapecheux  
👉 UI assets by Prinbles: https://prinbles.itch.io/silent  
👉 Cursor by Kenney: https://kenney.nl/  
  
Ever wanted to make some nice dynamic animations in your Godot games, with cool easings and easy-to-write yet efficient logic? Then you need to discover the power of tweens!  
  
(This tutorial was made in Godot 4.3)  
  
This video is made possible in part by my YouTube members - thanks! :)  
@ScrapyDo0  
  
Royalty Free musics:  
\---------------------------------  
Artist: Benjamin Tissot  
Royalty Free Music: Bensound.com/royalty-free-music  
License code: AT0DLTSD77XLEWGR  
Music: Bensound.com/free-music-for-videos  
License code: TWT88KK9TWNTKVA9  
Music by: https://www.bensound.com/free-music-for-videos  
License code: PZKPU0YRANCZEWEG  
Music: Bensound  
License code: PW1VER3WC3LMJ0X9

## Transcript

**0:00** · So, ever wanted to give some nice ease out movement to your go player or add some bounciness to your UI transitions?

**0:08** · Then you needed to discover the power of twins. Now, the word twins actually short for in between cuz it's a tool that's all about autocomputing the values in between time, a start and an end point that you've specified manually. And something really cool with twins is that contrary to animation player notes, you don't need to know your final value in advance. It can be computed on the fly in your code.

**0:34** · For example, if you want to move a node like your player to a completely dynamic point on the screen. Also, another nice thing is that twins are very lightweight. So, they're a great way to do basic animations or easy tasks that happen often in your logic.

**0:54** · Now in god of 3 we used to have a twin node to do this kind of thing but it was removed in god of 4 and so now the idea is just to create them directly via code and actually this is super easy to do just by using the get tree.create Create twin built-in. Once you've created your twin object in your code, you can use one of two functions to tell GDO what you want to do.

**1:16** · With twin property, you have to pass the object to operate the twin on the name of the property to twin, the final value for this property, and the time span to twin over.

**1:32** · With twin method, you instead use a function to run some logic during your twin, possibly with a more complex or several updates at the same time. And so here after the function, you pass in the start value, the end value, and the time span for the twin. The twin value, which is autocomputed from these two points, is then accessible in your method over the whole twin duration.

**1:56** · Something essential to note is that as soon as you've created your object in your code and given it at least one of those two twin commands, then the engine will run your twin directly when it gets to that point in the logic in a fire and forget way. Though, if you want to run some logic once your twin has finished, you can either await its finished signal or use the twin callback method to delay some extra chunk of code.

**2:23** · Okay, now that's already pretty cool, but honestly, this is just the basics.

**2:28** · There are a lot of other great tools that you can use to really customize your twins and make really cool effects.

**2:34** · For example, by default, your twin commands will run one after the other.

**2:38** · But if you want, you can use the set parallel method on your twin object or the parallel function on your various commands to tell GDU to run everything at the same time and thus get a more complex animation where multiple properties change together. Or if you need your twin to run even when the game is posed, then you can use the set pose mode method. Or if you have a twin already running that updates the same properties as the ones you want to use now, you can kill this previous twin as long as you've kept a reference to it, of course.

**3:09** · Or you can change the overall speed of your twin. Or you can chain your twin commands with the set delay built-in to have them wait for a little while before starting and create offsets in your anim. Or you can get really crazy and add custom easings and transition types to your twin effects. That's typically how you can get a cool dynamic movement for an object or a more bouncy feel or a powerful shoot animation. Well, you get the idea.

**3:39** · And if you're curious, here are a few extra built-ins you can use on your twin commands to better specify where they start or how they work with quick and easy to use short hands.

**3:51** · But in any case, here you go. You now know how to leverage the power of twins to create nice animations in your goto games with custom easings and lightweight dynamic effects. I really hope you liked this quick tutorial.

**4:04** · Don't hesitate to react in the comments and subscribe to the channel to get more videos. And of course, a huge thanks to my Patreon and YouTube members for the support and to you for watching. And as always, take care.