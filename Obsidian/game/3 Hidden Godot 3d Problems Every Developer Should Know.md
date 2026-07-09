---
title: "3 Hidden Godot 3d Problems Every Developer Should Know"
source: "https://www.youtube.com/watch?v=uyaGRU_56HQ"
author:
  - "[[GW TUTS]]"
published: 2026-06-07
created: 2026-07-09
description: "Building game systems is fun.This video contains information about the bugs i solved for my 2 controller which was recently developed---## 🎮 Assets Featured### 🐎 Horse Controllerhttps://gw-t"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=uyaGRU_56HQ)

Building game systems is fun.  
This video contains information about the bugs i solved for my 2 controller which was recently developed  
\---  
  
\## 🎮 Assets Featured  
  
\### 🐎 Horse Controller  
  
https://gw-tuts.itch.io/horse-controller  
  
\### 🏹 Advanced RPG Bow & Arrow Controller  
  
https://gw-tuts.itch.io/adv-rpg-template-bow-arrow-controller  
  
\---  
  
\## 📢 Don't Forget  
  
👍 Like if you enjoy the project  
💬 Comment your thoughts or issues  
🔔 Subscribe for more devlogs & Godot tools  
📤 Share this with fellow devs—it helps a lot!  
  
\---  
  
\## 📲 Follow Me  
  
🌟 Instagram → https://www.instagram.com/lakshman\_choudhary01  
  
💻 GitHub → https://github.com/Lakshman-YT  
  
🎮 itch.io → https://gw-tuts.itch.io  
  
🗨️ Discord → https://discord.gg/A4QAXvPD  
  
\---  
  
#Godot #GodotEngine #Godot4 #GameDev #IndieDev #GameDevelopment #Programming #HorseController #Devlog #IndieGame

## Transcript

**0:00** · Hello there. It's been around a month since I uploaded the horse controller and today I want to share the three biggest lifesavers that actually made this controller possible. Technically, the solutions are more likely 2 + 1. Two fixes from the horse controller and one from the archer. Well, if you are here only for the code, then it's already visible on the screen. But, if you are still here, let's talk about the actual problems and how I solved them.

**0:28** · So, the first issue I faced was player sliding on different devices. Yes, even though the animations were using root motion, the player speed still didn't match properly. And after digging into it for a while, I realized the real reason was API mismatch. The animation player was running on process ticks, while the player itself was running on physics ticks. And since the player is a character body, physics ticks are the correct place for movement logic.

**0:57** · At first, the issue made absolutely no sense to me. Everything looked fine, but after a lot of head scratching and testing, I finally found the fix. Using this code, I basically forced the animation related updates to sync correctly with the physics and boom, the sliding problem just disappeared completely. The whole glitch was caused by the API calls happening in different nodes. Well, honestly, this took me a very long to understand and then let's go for the second issue.

**1:27** · Yeah, again, uh the similar mismatch problem, but this time it was with twins. If you don't know what a twin is, they are basically the nodes that animate values over time.

**1:39** · In Godot, you can use them to animate almost everything. And I have used twins a lot in this controller, especially for moving and rotating the player. Now, logically, twins are separate from the player, right? So, they shouldn't really affect the character movement, but in this case, they did because once again, twins were running on process ticks while player movement was completely dependent on physics ticks. The main glitch happened during the player rotation.

**2:08** · Sometimes it looked smooth and sometimes it completely broke depending on the workflow as you can see in the video. And the fix, exactly the same concept as before. I changed the twin processing mode from process to physics for those specific twins and the solution itself looks very simple, right? But finding the actual cause was really painful because the bugs only appeared sometimes in some specific situations, which made the debugging even worse and the bug only seems to be visible when you look closely.

**2:38** · But anyways, if you ever get weird movement glitches in your game, especially with animation player or twin nodes, this might save your life. And now, moving to the final issue.

**2:52** · This was a different from the first two.

**2:54** · This wasn't exactly the engine mismatch problem. It more looked like some setup issues. So, first let's see what happened. As you can see in the video, the horse rein was not properly attached to the player hand. It kept drifting away and creating those weird ghost trails. And before anyone judge the setup, this is actually same setup we used earlier in the bow system to attach our bow string to player hand. And yes, it worked properly over there, but here, nope, it's completely broken.

**3:24** · The setup was simple. The player hand had a remote transform node that was supposed to move the rein along behind position, but unfortunately, it didn't behave the way I expected. So now, the suffering phase begins. I tried making the rein follow manually using code in both process as well as physics process, but I failed. I tried updating it after the bone modification signal so that it would run after the skeleton updates, but again, I failed.

**3:51** · I tried the function using call deferred instead of process and physics process, but again, I failed. At this point, the entire controller honestly felt doomed. I even asked for help on Godot Discord, but yeah, no luck either there. And then, finally, one last attempt. I searched for alternatives to call deferred functions and came across this call deferred thread group, and somehow it was literally magic.

**4:18** · The bones finished updating in the main thread first and then the function executed afterwards, which finally made the rain properly follow the player without glitches. And just like that, the horse controller was finally saved. The reason I made this video more like a small devlog is because I wanted to share the actual problems behind the system, not just the final results. And maybe, if someone else runs into the same issues maybe someday, then this video can save them from going through the same debugging nightmare.

**4:50** · And yeah, that's it for the video. Thank you guys for watching this video. If you enjoyed the video, then make sure to like, comment, subscribe, and as always, have a good day. Shubho.