---
title: "make better animations with Tweens in Godot!"
source: "https://www.youtube.com/watch?v=KUyQzjpRsU8"
author:
  - "[[Queble]]"
published: 2025-03-28
created: 2026-07-14
description: "Here's a quick guide/tutorial on how to use Tweens in Godot!Tweens are great for implementing animations quickly, and are especially useful when you don't know the starting point of your animation.T"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=KUyQzjpRsU8)

Here's a quick guide/tutorial on how to use Tweens in Godot!  
Tweens are great for implementing animations quickly, and are especially useful when you don't know the starting point of your animation.  
Thanks for watching, and I hope you have a great week! :)  
  
https://discord.gg/kgWXhZjd69  
https://www.twitch.tv/queble\_game\_dev  
  
Download Godot here:  
https://godotengine.org/  
  
Official Godot blog:  
https://godotengine.org/blog/  
  
Checkout the official docs for Tweens:  
https://docs.godotengine.org/en/stable/classes/class\_tween.html  
  
Timestamps:  
0:00 Intro  
0:16 Basic Tween setup  
1:13 Intermediate Tweening methods / tricks  
3:54 Example #2  
4:48 Additional notes / advanced tips  
7:22 Outro / Members shoutout :)  
  
I offer 1 on 1 Godot tutoring:  
https://www.fiverr.com/s/o8Wq7AG  
  
If you'd like to support the channel, consider becoming a member! :)  
https://www.youtube.com/channel/UCjjFS6h7Dc7gCaq6\_PX8jUg/join  
By becoming a member, you'll get:  
• Early access to videos  
• Shoutout at the end of all future videos  
• Exclusive role + access in my Discord server  
(if you have any suggestions for additional members benefits, don't hesitate to reach out!)  
  
This video was recorded in Godot v.4.4 stable.

## Transcript

### Intro

**0:00** · Today we're going to be looking at how to implement tween in GDAU. Twins allow you to set up really polished and smooth animations very easily. Kind of like what you're seeing on screen where I have this grow and shrink animation playing whenever you hover over a button. I'm going to show how I did the buttons in a second. But let's go over setting up just like the basic tween. So basically what I have is this sprite and we're going to go into the script here.

### Basic Tween setup

**0:20** · And whenever the mouse button is clicked, I'm going to be calling this create tween method. And then the next line is just actually calling that animation to start. So, I'm going to split this up a bit just so that you guys can read it. But once we have the tween created, we can just call tween.tween property. And this function is essentially going to tell the tween like, hey, we want this specific property to animate to a target position or a target value over x amount of time.

**0:45** · And the tween is going to handle all the rest in the background. It's automatically going to move everything in a process and also adapt to the frame rate. So, you don't need to worry about any of that stuff. But as you can see, my basic animation here just says that we want to tween a property on self and we want to tween the global position to the global mouse position over the course of 1 second. Now, let's see how this looks and then I'm going to show some more like advanced tricks you can do. So, in the game, whenever we click, it's just going to move the sprite to the mouse position. But, as you can see, the motion is really like linear. Like, it just starts and stops immediately.

### Intermediate Tweening methods / tricks

**1:19** · And that's not really something that looks great with game animation. So that brings us to the more advanced methods for twins and that's going to be the easing type and the transition type. So whenever you create a tween, you can directly set the transition type with tween settr and then it's going to require an entry from the tween's enum of transition types. I'm going to select the trans cubic. That should look all right. And then we're going to do another line and say tween set ease. And this allows us to set the easing type.

**1:49** · So, if I say ease out, then the animation is going to slow down as it reaches the end point. So, back in the game, let's see how this looks. If I click anywhere, you can see that it slowly moves towards the mouse. And this looks a lot smoother already. So, you can kind of see how this would really improve all of your games animations instead of like spending hours making an animation player and setting up all your curves and whatever. Tween can make a lot of the more like trivial just like subtle animations so much easier. Now, a really quick trick. Most of the tweening methods are actually chainable methods.

**2:19** · So that means instead of calling set trans and set ease on two separate lines. I could actually just move this over to the same line and then you can see that we are kind of chaining the methods. So this is all in one line.

**2:31** · Typically that looks a bit better in my opinion. And if you really want to go crazy, you could technically put this entire thing at the end of your uh tweener like this. So we we call tween property and then chain these other methods on top of it. But typically that's a little too long cuz you're going to want to put backslashes anyway to split up the lines and um that's not really that readable. So in my opinion, this is a great way to do it. Now, one quick thing to note before we get to the buttons is you only want to have one tween assigned per object.

**2:57** · So in this case, we have a new tween being defined every single time we click the mouse button. Which means if we're still in an animation from the previous tween and we start another tween on the same object's property, that typically isn't good design practice because they're going to like override each other. So what I always recommend you do in a tween setup is make your tweening variable a scriptwide variable. And then so that we can reset any previous animations before we start a new one, we're going to make a new function called reset tween. This is just going to return void.

**3:28** · And then inside of here, we just want to check if the tween exists. Then we're going to call the tween.kill method, which is a very brutal method name in my opinion, but it does the job. And then after that, we're just going to assign tween equal to a new tween, like so. So now we can just call reset tween before we start an animation. And this will ensure that all of the previous animations are completely freed before we actually start uh this next one. So next up, getting into the buttons that I showed at the start of the video.

### Example #2

**3:56** · I just have a basic button and all I want to do is tweak the scale of it to kind of shrink and grow when you hover over it. So, what I've done really quick behind the scenes is actually changed the pivot offset cuz if you scale a button with the pivot at the top left, it's going to scale it a bit oddly. So, I like to keep the pivot at the center of the control.

**4:16** · But all I've done inside of the button script is basically connect my mouse entered mouse exited signals on the ready function. You can see I also have that tween variable defined like I just mentioned with the reset tween function.

**4:29** · And then all I have to do after that is whenever the mouse is entered or exited, I just reset the tween and then set my easing and transition types and actually create a new tweener for the scale property. So with this going, you can see that this is like a very smooth um cool looking animation. I typically like to do this for a lot of my UI just cuz it feels a lot more like interactive.

### Additional notes / advanced tips

**4:48** · So, now that we have the basics out of the way, let's just go over some like super kind of slightly intermediate tips, I guess. So, the first thing to note is any tweeners that you add to a tween are going to be executed in the order that they were added one after the other by default. So, like when I'm tweening the scale up on my buttons, if I wanted to like let's say duplicate this line and instead I wanted to tween the modulate property and I wanted to tween it to let's say like uh the color Rebecca purple.

**5:19** · I didn't even know that was a thing. I was trying to type red.

**5:22** · But anyways, these two animations are going to be called one after the other.

**5:26** · So testing this out in the game, you can see my button scales in and then it tween to that Rebecca purple color which again that's a crazy color. Now if you do not want this behavior, if you want them to be parallel, it's as easy as just calling the set parallel function on Tween and then we can either pass in true otherwise it it puts true in there by default. And again this is a chainable method. So we can call it on the same line as all these other initial setup functions. And now that this is the case, our tween is going to run at the same time. Uh, like so, which is pretty nifty.

**5:58** · Now, there's one more method I want to mention quick. So, that is the from method. So, if we're calling like a tween property function here, I can actually define the starting point.

**6:07** · So, I would say dot from and then I pass in the value I want to start it from.

**6:11** · So, in this case, maybe I'd want to pass in a vector 2 and put like 22. And that would mean we're scaling up really quickly as the starting point and then scaling down to 1.1, which is going to look uh really horrible. So obviously use this wisely in your games, but the from method can definitely be helpful if you want to have like an anchor point for your animations. Now, there are a couple more like unique functions on the documentation that you can check out.

**6:36** · I'm not going to go over them too much in depth here. They're pretty straightforward, just like knowing how twins work in this way. It's going to be basically calling them in the same manner. But it is good to note that it's possible to do things like adding a wait time, which is just using the the tween interval method, or also binding a tween to function calls, which is something that I would probably use an animation player for, or like a timer, I guess, but it is possible to do it with twins as well.

**7:02** · So, I guess if I run into like a specific use case where I think it's better to use twins um for functions and whatever, I'll let you guys know. But there are a lot of very cool um powerful things you can do with twins. Like I think I have two videos I released this past month that were like utilizing twins in kind of a interesting way. So those will be up on screen if you want to check those out. But anyways, I just thought I would share this quick video.

### Outro / Members shoutout :)

**7:24** · I hope you guys learned something. Quick shout out to the current members. Thank you guys so much for all the channel support. If you do want to become a member, all the links are in the description for like uh Discord and stuff too. But anyways, thanks for watching and I will see you guys in the next one. Bye.