---
title: "Save Time in Godot"
source: "https://www.youtube.com/watch?v=ceE_BWWNHnA"
author:
  - "[[Picster]]"
published: 2026-06-24
created: 2026-08-24
description: "In this quick tutorial/overview I cover my favorite ways of saving time in my everyday work.I'm also testing a bit of a new format - let me know if it works for you.Parts:00:11 - Better Keyboard"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=ceE_BWWNHnA)

In this quick tutorial/overview I cover my favorite ways of saving time in my everyday work.  
  
I'm also testing a bit of a new format - let me know if it works for you.  
  
Parts:  
00:11 - Better Keyboard shortcuts for the three most important things  
01:56 - Helpful Keyboard shortcuts in the script editor  
04:30 - Disable Folding  
06:20 - Hot Reload & Remote Scene Tree  
08:14 - Show in Tree / Show in Filesystem / View Owners  
  
Music provided by Chillhop Music  
Aso - Breathing Room  
https://chll.to/1d24338e

## Transcript

**0:00** · Welcome to another tutorial. It has been quite a while, so let's jump right in and not waste your time because saving time is today's topic. \[music\] The first tip, better keyboard shortcuts. I have three keyboard shortcuts that I really recommend. For me, it really makes a difference. I don't have to think about them so much.

### Better Keyboard shortcuts for the three most important things

**0:17** · They're very easy to reach with my fingers. I don't have to do some weird movements. Those are control one, control two, and control three. I quickly show it. So, in the engine, you can go to editor, editor settings, and shortcuts. And here you'll find all the editor shortcuts.

**0:32** · \[music\] And what you want to add is a quick open scene and quick open script. I have that on control one and on control two. To add a new shortcut, you can press the plus button here, and then just press control one, press okay, and then you have the shortcut. What I also would suggest is that you also go in here and then press control one because by default, control one and control two, and I think control three, \[music\] is bound to other stuff.

**0:58** · And I want to have control one for quick open scene, control two for quick open script, and control three for toggle comment.

**1:08** · \[music\] So, if I'm in the editor and I have a script, then I can just mark some area, press control three, \[music\] and then I comment it uh it out, or I can press control three again and I disable the comment. That's super helpful.

**1:22** · \[music\] And also, for example, if I want to edit, I don't know, I want to go into the elevator, I can press control one, I get a list of all the scenes, \[music\] then I can type in elevator.tscn, and I get the list, I \[music\] press enter, and I have the scene open. By the way, you can press middle mouse button here to close it like in any tool. And the same goes with control two.

**1:46** · I can \[music\] quick load scripts. Uh again, just press enter, then you open a script, and there you have it.

**1:53** · \[music\] And up next are more keyboard shortcuts that I really like. Let's start with control shift F, which searches in all your files. Sometimes there's a little checkbox here. I never really understood, honestly, uh, where this comes from. And that checkbox says TSCN, so it also, um, searches through your scenes, which you usually don't want to do because scenes can be \[music\] really big. And if you have that option enabled, then it will take forever to search.

### Helpful Keyboard shortcuts in the script editor

**2:20** · But the good thing is, what I \[music\] really like to do is if you double click something or you mark something \[music\] and then you press control shift F, then you already have that word in here, and then you can press find. Yeah, for example, if I mark \[music\] this and I press control F and press find, then I will get all the matches in all the other files, too. And then I can, yeah, refactor it pretty easily with replacing in all files, or I can just look up where something is used.

**2:49** · Uh, of course, you can also control click on stuff. I don't know if you knew that, but you can control click on things. Then you jump \[music\] to that function, or you can control click on properties \[music\] of a class, and then you will get taken to the documentation.

**3:05** · Control click here, then I will I then I'm taken to the documentation, or I can press F1 and search the documentation. But I think everybody should know that one. The next one is control D, which is pretty cool. I mark something, I press control D, then I get a selection of all those, uh, yeah, occurrences in the code, and then I can just, I don't \[music\] know, paste, for example, clipboard or just type and replace it.

**3:31** · Very similar to that is control shift down and up, which does a multi-line selection. To cancel it, you can press escape.

**3:40** · \[music\] It's also very, very nice, especially if you combine it with the other shortcut, which is control \[music\] left and right, and control shift left and right. Then you can just mark multiple things, and that can be very, very powerful if you want to replace certain \[music\] things.

**3:57** · Or, for example, if you're up here and you want to replace multiple things, I can go like the multi-line selection, then go to the right, to the right, and now I already am at the right \[music\] place to, for example, replace all the variable names or add an underscore or something. That's super useful.

**4:16** · \[music\] On your mouse, if you have a mouse with a mouse button three, like a \[music\] And, yeah, also forth. If you have a second button, there you can jump back and forth, which is also super useful.

**4:29** · The next tip is unfold properties. That one is maybe a bit controversial. I would say \[music\] it's for more advanced Godot users that already know a couple of properties from different nodes, \[music\] but it can also be useful to have it as a beginner because sometimes all those folding things that I'm about to show can be a bit confusing and you look for a property, but you can't find \[music\] it. It's a bit hard sometimes, especially on nodes that have a lot of properties. You can see here on the right that all those property categories are folded.

### Disable Folding

**4:59** · So, now I can, of course, unfold them and go into that, but sometimes it can be really a pain, especially on some nodes that have a lot of stuff. For example, the particles, you will have this endless list of nested stuff, and I had a hard time like, "Okay, where was this one thing again?" \[music\] You have to go into everything and then search for something. It's super \[music\] annoying.

**5:26** · And I really didn't like that. So, there's the setting called disable folding, and if I disable this, everything is always unfolded all the time. It can be sometimes a bit overwhelming, especially on nodes like the particles, but I personally like seeing everything. I can just scroll over if I don't like it. I always see everything. I save so many time \[music\] clicking around and notes. And one more thing I haven't talked about yet is the favorites for properties that you often need. There are a couple of properties that I need all the time. \[music\] For example, the position.

**6:00** · And if I want to attach that to the top, I can right-click and say favorite property. And now I have it here in the top. \[music\] And that is for every node. For example, in the node 3D, it also has a position. So now it's always in the top.

**6:13** · And if I want to undo that, I can just \[music\] remove that. And now it's back down again. Another tip that is really helpful, especially when I work on the look of the game, \[music\] is the remote scene tree. And of course, if you run your game, you will usually have access to all the things even if you're not in the remote scene tree. If you, for example, have a material and that material is saved as a resource, you can \[music\] just change properties and you will see in your game, thanks to the hot reloading, how that new property looks.

### Hot Reload & Remote Scene Tree

**6:42** · But sometimes you have materials that are always unique. For example, if they use a viewport texture, \[music\] then connection will basically be broken. And the only option that you will have is to go into the remote scene tree. And when I will change stuff here, it will update in the game. Thanks to the hot reload, which is really amazing.

**7:01** · Sometimes it can be a bit hard. And what I recommend there is to use the always on top option. For Windows, there's a utility so you can attach a window to the top \[music\] every time. And if you have installed a Windows PowerToys, then you can just press Windows key, control, and T. And now the window is always on top. You can see it by this little blue border.

**7:23** · And if I go back to the editor, I will still see the game. And now if I, for example, go in here, let's just move this window. If I go in here and I change some properties, for example, increase the glow \[music\] or something like that, then I see it like in real time. I get a preview of how stuff looks, \[music\] which is really good if work on the look of your game. But uh sometimes, like I said, it's it doesn't connect, you could say. And what you can do is go to the remote scene tree, and here you get a view of what's going on in your game.

**7:54** · And there you also see, for example, your auto loads. You can check all the properties in real time. And of \[music\] course, you can also go in, you can play around with the remote values. And yeah, you get a real-time update. \[music\] With using those methods, you can iterate much quicker on things. You \[music\] can try out different looks very quickly.

### Show in Tree / Show in Filesystem / View Owners

**8:14** · The next thing that a lot of people don't know is um the functions of showing something in a scene tree, showing it in the file system, or view owners. It's especially important if you are in a foreign project you just jump in, \[music\] or maybe you haven't looked in some part for quite a while, then you can just right-click \[music\] here in this tab of the scene and say show in file system.

**8:36** · And then you will be taken to the position of the file system.

**8:40** · \[music\] And here you can also right-click and say view owners. And that will show you all the dependencies, which can be quite important, especially if you refactor something, if you change stuff around, if you are unsure if a script is used \[music\] uh by by which scenes. That works also in here. If you have a scene, uh you can, of course, click it and then say \[music\] show in file system. Or you can just from this view, you can right-click and say show in file system. \[music\] That also works.

**9:08** · Originally, I had one more slide planned, \[music\] and that was about the 3D workflow, about things that I use to import 3D things from Blender, and how to improve \[music\] and uh reduce friction, yeah. But I noticed that it's too big of a topic to just have like one slide in one video, and then quickly rush over it. We'll make a video about it very soon. I can \[music\] just say that it there are a couple of tricks that I really recommend to have a good workflow for 3D stuff.

**9:37** · Wanted to keep the video short. I wanted to try out this new format \[music\] of using a little bit like a slideshow thing. I hope you liked it. Let me know in the comments and yeah, see you next time. Bye.