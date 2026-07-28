---
title: "HUGE news for my TERRAIN plugin! - TerraBrush DevLog"
source: "https://www.youtube.com/watch?v=m3Iq8OZ3XZk"
author:
  - "[[spimort]]"
published: 2025-11-23
created: 2026-07-28
description: "HUGE News for my Terrain plugin for Godot! I rewrote it in C++ so it's a full GDExtension now!I also created a Live demo on itch.io that runs in the browser, so you can try it without Godot!https:"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=m3Iq8OZ3XZk)

HUGE News for my Terrain plugin for Godot! I rewrote it in C++ so it's a full GDExtension now!  
  
I also created a Live demo on itch.io that runs in the browser, so you can try it without Godot!  
  
https://spimort.itch.io/terrabrush-live-demo  
https://github.com/spimort/TerraBrush  
  
Enjoy (:

## Transcript

**0:00** · Hey, what's up? I have some huge news for my teran plug-in for Godo called Terra Brush. I'm super excited to announce that starting with the new version, the full plugin is available as a GD extension, meaning that you're going to be able to use it with any version of GDAU. For example, here I run it on version 4.5 stable of GDAU. The .NET version not needed anymore. How awesome is this? Let me explain to you why it's a big deal and why I'm really happy about this.

**0:28** · If you've been following my channel for a while now, you know that I've been talking about this plug-in for probably too long, but I'm having a lot of fun. So, me working on it, it's not really a problem. It's a free and open source project. That's pretty cool, and it got somewhat popular for some reason. That makes me really happy. It's fun to see that a lot of people are enjoying it. It's cool, but there's an issue with it. It's a C plugin, meaning that if you want to run it, you're going to need to have the GDO.NET version.

**0:56** · I mean for me it's perfect because all of my projects are in C. This is a language I really enjoy and Terra brush was created for my own use at first. The problem is for the people that doesn't use goto.net. There is something that always annoyed me with the plugin for the people that are not used to the C# language. It was not as easy as a GD extension to install. A lot of people were having issues installing it and that made me sad.

**1:21** · Not only that, but Terra Brush being a C add-on, it means that you cannot export your game, for example, for the web, which is usually perfect for game jams and stuff like that. Because of all that, some people didn't want to try it, and that makes a lot of sense. Well, since Terra Brush is reaching the 1K stars, I think it's time to change that.

**1:44** · It's go time.

**1:46** · All right, so I asked my good old friend Google, and I even felt lucky. Sadly enough though, no answers for me here.

**1:58** · But then I remembered something. I saw this awesome repository about Godo.NET.

**2:04** · This is most likely the future of net for good. I know that this repostory is still experimental right now and is not ready for release, but that really makes me want to try it because there is one feature that is really exciting and this is the fact that you can build your adden using the native AOT system from Microsoft. Basically, it allows you to build your C# code into native code without even the need to have the .NET runtime anymore.

**2:29** · Oh wow, this solution is perfect for me because it allows me to still develop in C while delivering a GD extension that can run with the default GDAU. So I started to do some experiments and that kind of worked. I was able to do the basic stuff like printing, but it didn't take too long before I hit a wall. The system was so unstable. I had so many crashes and I could not really fix the issues because of how native AOT works.

**2:56** · I haven't went ahead and tried to debug good itself, but in the current state right now, I don't think this is possible to do it. That makes me really sad because this was such a promising solution that could have been the answer to my problem. But I think I need to give up on this one.

**3:18** · Next, I guess I remembered seeing this talk from Miguel Diaza. He was talking about the origin of C and everything.

**3:26** · He's a creator of Mono Zamaran and really cool stuff like that. So he's really cool. One of the thing that he talked about is the challenge to have the C garbage collector that works well with GDAU. To be fair, this was exactly the problem I faced. So anyways, his solution to that problem is to use the Swift programming language. And I know what you're going to say. Swift is only made for Mac and iOS and stuff like that. Well, are you sure about that? The answer is no.

**3:54** · You can use Swift programming language with the platform you want. It works with iOS, Linux, Mac OS, and even Windows. And now, thanks to Miguel, it also works with GDAU. At this point, let's give it a try. We don't have anything to lose. Why not? So, I created a really basic test with a minimal project to see if it works at least. And it works. To be fair, that was not too complicated to start with.

**4:20** · And that's exciting. That's learning a new language, and it's always fun to do for me. But before to continue with this implementation of the project, I need to check something. And yeah, apparently when you build the Swift GDO, you will also need to have the runtime itself, which makes a lot of sense. But if we look at this file, it's a 200 MGB. So it means that when I'm going to deliver Terabbrush, I'm going to also deliver 200 mgabytes worth of runtime for Swift.

**4:49** · Again, that makes a lot of sense. just that I really wanted to avoid some new dependencies. So, dang it.

**4:56** · Next again, I guess. Well, I remembered also seeing Godo Rust. I don't know anything about Rust, but if I look at the project, that seems like a fun thing to do. And that project has been around for a long time now, so I'm pretty sure it's a good one. Same as for Swift. This is also exciting because this is like learning a new language. Same process as before. I made a really simple project that just prints hello world when the addin starts. Well, that was easy. That just worked first try. So, that's cool.

**5:28** · Okay, let's try it on a Windows sandbox so we can make sure it runs on everyone's computer. This is just a Windows virtual machine that has really just the minimum to run. This is perfect to make that kind of test to make sure it runs not only on my computer, but someone else computer. And sweet, it doesn't work. Apparently, no one mentions that Rust needs \[music\] to have the Microsoft Visual C++ installed on the machine. If you don't have it, it just refuses to work. And as soon as I install it on the virtual machine, well, everything just starts to work.

**5:59** · The Lware just prints out when I open Goodo. That's amazing. I know what you're going to say. Everyone probably already have this installed on their machine, but it's just a new dependency that I need to handle.

**6:13** · All right, I'm gonna go cry.

**6:15** · All right, I feel like there is only one option that I know will work, and this is to use the Godo C++. I genuinely didn't want to use C++ because it's been a long time since I've done some C++, and I really didn't want to manage all the memory and the pointers and stuff like that. But well, if this is what it takes. So after a lot of work and a lot of commits, I can say that the full project of Terra Brush that was in C before is now fully in C++. That was painful. That was long. But guess what?

**6:49** · Now it's done. \[cheering and music\] So I updated the readme and now we have the GD extension here. And for the rest of it, it's pretty simple. You just have to either download it from GitHub itself or you could probably find it on the asset lib. I'm pretty sure it's going to be updated pretty soon. And then it's about the same as it used to be. You just add the Terror brush node. The rest of it works the same way. For example, here if I open a brand new project, I download the zip from GitHub.

**7:21** · I drop it inside of my folder. After that, when you get back to GDAU, it's already installed. You don't even need to go back to the project settings and enable the add-on. Now, if I add a new scene, I should see the terra brush node. And if I add it just like that, I should see the brand new terrain menu that is in the toolbar now that allows me to either create the terrain, remove it, or update it and stuff like that. Like it used to be, you can now sculpt the terrain. Oh, wow. And it works with default godo.

**7:51** · How amazing is that? There is also another cool thing here is that you can add the web export here and if I press play it will open the browser with our cool terror brush scene. Okay, this is really fun. But there is also another fun thing now. I added a terror brush editor node that you can link to your terrain node.

**8:14** · When you do that and you press the play button, it will allow you to do the editing but inside of your game. This is perfect to let your players create their custom map. Of course, all the UI elements of Terror Brush also works in game, but you could create your own to fit your style. A, but guess what? All of this also works in the web. This is amazing in my opinion. Okay, all of this was a really long process and a hard job to do, but at the end, I think it was worth it. All of this was not possible to do in C before.

**8:44** · So, I think it's a really cool improvement. But guess what?

**8:48** · I think I have an idea. Now that we have the web export, I think it would be really fun to have a live demo of Terra Brush that runs on each io that let you just play with it just like that. It's a preconfigured terrain that let you just play with it with some textures and some foliage and some trees just to have fun.

**9:06** · Of course, you can do more in good, but I like the idea of having it almost like a game. Well, it's available right now on H.IO. You can try it. Please let me know if you do. Anyways folks, that's all I had to show for this vlog. I hope you enjoyed it and we're going to see each other on the next one.

**9:29** · \[music\]