---
title: "8 Godot Tips You've Probably Never Heard Of"
source: "https://www.youtube.com/watch?v=P8ssMWWQ1R8"
author:
  - "[[Firebelley Games]]"
published: 2026-07-18
created: 2026-07-20
description: "🕹️ Wishlist Alchemortis on Steam! https://store.steampowered.com/app/3967230/Alchemortis/➡️ Support me on Patreon: https://www.patreon.com/Firebelley💬 Join the Discord: https://discord.gg/4DYepmB"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=P8ssMWWQ1R8)

🕹️ Wishlist Alchemortis on Steam! https://store.steampowered.com/app/3967230/Alchemortis/  
  
➡️ Support me on Patreon: https://www.patreon.com/Firebelley  
💬 Join the Discord: https://discord.gg/4DYepmB3dj  
📺 Follow on Twitch: https://www.twitch.tv/firebelley  
📰 Sign up for my newsletter: https://firebelley.com  
  
Learn Godot with my Udemy courses!  
🌐 https://godotcourses.com  
📖 Online Multiplayer Course: https://www.udemy.com/course/create-a-complete-online-cooperative-multiplayer-game-in-godot-4/?referralCode=8F2DED9DA16B578BB079  
📖 C# Course: https://www.udemy.com/course/create-a-complete-grid-based-puzzle-game-godot-4-c-sharp/?referralCode=583E7520335B671CDBC6  
📖 Survivors Course: https://www.udemy.com/course/create-a-complete-2d-arena-survival-roguelike-game-in-godot-4/?referralCode=D91CF9C0F7D88DC90108  
  
🎮 Pick up one of my games:  
https://store.steampowered.com/developer/Firebelley  
  
➡️ Follow me on X: https://x.com/firebelley  
➡️ Steam: https://store.steampowered.com/search/?developer=Firebelley  
➡️ Itch.io: https://firebelley.itch.io/  
  
Feature flags video: https://www.youtube.com/watch?v=9Ts0psApR5s  
  
#godot #gamedev  
  
0:00 Manage Editor Features  
1:12 Self-Contained Mode  
3:00 Upgrade Project Files  
4:15 Center/Frame Selection  
5:14 Testing Feature Tags  
6:52 Quick Open Dialogs  
8:30 Override \_has\_point  
11:24 Shader Includes  
13:20 Conclusion

## Transcript

### Manage Editor Features

**0:00** · Number one, manage editor features.

**0:02** · A lot of people don't know that you can actually turn certain Godot features off.

**0:07** · And the way that you do that is you go to editor, manage editor features, that will bring up this dialog window.

**0:14** · You're going to have to create a profile first.

**0:16** · I'll call mine 2D because I'm going to turn off all of the 3D features because I only work in 2D.

**0:21** · So we click create, and then we have this checkbox list here, where we can turn off all kinds of things.

**0:28** · So if I want to get rid of the 3D tab and the asset store tab because I don't use those things, I can just turn off those elements.

**0:37** · And now you can see that those tabs have gone away at the top bar.

**0:41** · I can also turn off certain node types.

**0:44** · So for example, I like to turn off all of the node 3D, as well as navigation agent 3D, and anything else that I don't really use.

**0:52** · And what that does is when I go to add a new node, you can see that there's no spatial node here.

**0:58** · There's no node 3D, and the node 3Ds don't appear in here either.

**1:03** · So that's a way that you can streamline your Godot experience to only the features that you need.

**1:07** · It reduces the noise, reduces the clutter, makes your workspace a lot cleaner.

### Self-Contained Mode

**1:12** · Tip number two, self-contained mode.

**1:14** · Self-contained mode is a way of running Godot in a way that's isolated to a particular directory.

**1:20** · Typically, when you run Godot, Godot will write the editor settings file and any other data that it needs to your user directory, which on Windows would be in app data.

**1:29** · However, sometimes you want a fresh instance of Godot that does not have any of the editor settings brought over from your default editor settings.

**1:37** · So what you could do is you can run Godot in self-contained mode.

**1:41** · The docs say that self-contained mode is a mode that makes Godot write all editor data, settings, and cache to a directory named editor data in the same directory as the editor binary.

**1:53** · And the way that you do that is you create a file called dot underscore SC underscore or underscore SC underscore in the same directory as the Godot executable.

**2:05** · And I've actually done that for this video.

**2:08** · So this is self-contained Godot.

**2:10** · And here's what it looks like inside of the folder.

**2:14** · I've got my Godot 4.7 RC3 executable here.

**2:18** · I've created a file called underscore SC underscore.

**2:22** · The file does not need to contain anything.

**2:24** · It just needs to be present.

**2:26** · And you can see that Godot has created this editor data folder, and that's where it stores all of the project settings, the shader cache, everything.

**2:34** · If I don't run Godot in self-contained mode, I'll use my default Godot instance, which you can see here looks vastly different than what I'm showing you.

**2:43** · So I've got two versions of Godot running.

**2:46** · One is using the self-contained mode with its own isolated settings.

**2:51** · And then the other is my typical Godot setup that I use for the development of my game, Alchemortis, which you can wishlist.

**2:58** · The link is in the description below.

### Upgrade Project Files

**3:00** · Tip number three, upgrade project files.

**3:03** · If you're constantly updating Godot or at least upgrading from one version to another, there's a good chance that how Godot stores data changes.

**3:12** · Godot may change how it writes or what data it writes to a scene file or to resources of various types.

**3:18** · And the problem is that you're not necessarily going to get that up-to-date data written to your files until you upgrade the project files.

**3:28** · So what you can do to get all of your files, your resources, your scenes, everything, up to date with your current Godot version, you can go to Project, Tools, and then you click this Upgrade Project Files button.

**3:41** · This will give you a warning here, and it will also tell you what it's going to do.

**3:45** · It's going to regenerate the UID cache, load and re-save every text or binary resource, and re-import every resource.

**3:53** · So before you do this, it's very important to create a backup.

**3:56** · I recommend using Git, but at the very least, at least make a copy of your project directory and store it somewhere safe.

**4:03** · And then if you click this Restart an Upgrade button, Godot will do exactly what it said it was going to do.

**4:09** · So that's a great way of getting all of your files and imports up-to-date with whatever Godot version you're currently on.

### Center/Frame Selection

**4:15** · Tip number four is center and frame selection.

**4:19** · So I've got a color rect here just for demonstration purposes.

**4:22** · Let's say that you're panning around your scene here, and you're trying to find where this color rect is, and you just can't find it.

**4:28** · If you have the color rect or whatever node selected in your scene tree here, and then you hit F by default on the keyboard, that will center that object in your view.

**4:40** · Or more accurately, it centers the view around the object.

**4:44** · You can also do Shift F to frame the selection, which means that the viewport will be zoomed in to perfectly bound whatever it is that you're looking at.

**4:55** · So again, that's F to center the selection.

**4:58** · That will not change your zoom settings on your viewport, but if you press Shift F, that will bring it into a nice, more full screen view there.

**5:07** · So that's a great way of getting your viewport camera to center on the thing that you want to look at.

### Testing Feature Tags

**5:14** · Tip number five is adding feature tags to your editor running instance.

**5:20** · If you don't know what feature tags are, I have a video going over that that's linked in the description below, but basically they're a way that you can tag certain builds so that you can conditionally do things in your code base based on those tags.

**5:34** · So what I've set up is I've set up a script here where I'm setting this label text in my scene to I'm a demo if OS.hasFeaturedDemo or else I'm setting it to I'm a default.

**5:46** · And if I run this scene, you can see that this says I'm a default.

**5:50** · But what if I want to test what happens if I have the demo tag set?

**5:55** · I can do that by going to debug, customize run instances, and then I can add to the main feature tags list here.

**6:04** · So if I want to test the demo tag, I can put demo right in there.

**6:08** · And if I have multiple tags, I can use a comma separated list.

**6:12** · So I may have demo and play test.

**6:14** · But if I want to just test what it looks like with the demo tag, I click okay there.

**6:19** · And then if I run the game, you can see that this says I'm a demo now.

**6:22** · So this is a great way of testing your feature tags during development because typically those tags would only be set at export time.

**6:32** · So you would export a game that has no tags and then you'd export a version of the game that has the demo tags.

**6:38** · And you might conditionally do things based on those tags.

**6:41** · But if you just want to test if those tags are working without having to build the game, that's how you do it.

**6:47** · You go to debug, customize run instances, and you can change those tags right there.

### Quick Open Dialogs

**6:52** · Tip number six is the various quick open dialogs.

**6:56** · There are a couple of quick open dialogs that allow you to easily and quickly search and find various file types.

**7:03** · The first one is the quick open scene dialog, which by default is opened with control shift and O on windows and I believe it's the same on Linux as well.

**7:14** · And this will allow you to quick select a scene.

**7:17** · So if I've got a bunch of scenes in my game, I can search by name.

**7:21** · So I could search main and then I can hit enter to open that.

**7:24** · Of course, I already have it open.

**7:26** · But again, it's Control-Shift-O.

**7:27** · This will allow you to search any scene in your project.

**7:30** · And it also has the ability to enable fuzzy search.

**7:34** · So if you don't quite remember the name, you can just start typing something.

**7:37** · And usually that narrows down the list pretty well.

**7:41** · The second type of quick open dialog is the resource dialog.

**7:45** · So if we hit control P by default on Windows and Linux, that brings up the select resource dialog.

**7:51** · And that is basically the same thing as the open scene dialog, except it includes resources.

**7:57** · So this will also include scripts, images, audio files, shaders, all that kind of good stuff.

**8:04** · So if you want to search for one of your resources, you can use control P to bring up this window.

**8:11** · And the third type of quick open is the quick open script, which is control alt o by default on Windows.

**8:19** · So again, that's control alt o. And this is the same thing again, except it restricts the type that you're searching to only scripts.

### Override \_has\_point

**8:30** · Tip number seven is the overrideable has point method for control nodes. So here's a problem. If I wanted to detect my mouse entering and exiting a control node area, I'm only able to do that on the rectangular area of the control. So here I've set up a script in my ready method. I'm connecting to the color rects, mouse entered and mouse exited signals. And I'm just changing the label text as handlers in there.

**8:58** · But what I really want to do is I want to detect only the mouse entering the circular area that I've drawn here.

**9:05** · So let's see what happens.

**9:07** · If I do this by default, as soon as I touch any area of the rectangle or the square here, even if I'm touching the blue parts and not the red parts, it's gonna say that the mouse is inside.

**9:18** · But I don't want that.

**9:19** · I only want to detect, for example, a hover state if I'm inside of the red area, not the blue area.

**9:27** · So what you can do is you can override the hasPoint method.

**9:31** · The Godot docs say this about hasPoint.

**9:33** · It's a virtual method to be implemented by the user.

**9:36** · It returns whether the given point is inside this control.

**9:39** · If not overridden, default behavior is checking if the point is within the control's rect.

**9:44** · So this is gonna be incredibly useful for determining if we want Godot to actually emit those mouse enter and mouse exit signals for our control.

**9:53** · So what I'm gonna do is I'm gonna open up this script and I'm just gonna very quickly implement that hasPoint method and I'll show you what's going on there.

**10:01** · All right, so I've implemented that hasPoint method.

**10:04** · And essentially, if I wanna check if the mouse is within that circle, this point that comes into hasPoint is a local point.

**10:12** · So this point will be local to the control node that's handling it.

**10:18** · And in this case, my color rect is 200 by 200, which means that the circle is at the center with a radius of 100.

**10:26** · So my hasPoint method looks like this.

**10:29** · If the center point distance to the local point of the mouse is less than or equal to the radius, which is 100, then we're gonna consider that control as having that point.

**10:43** · And so now if I go into the game, you could see that if I hover over the blue areas, it is not saying that the mouse is inside.

**10:50** · It's only when I enter the red area, the circle, that it says mouse inside.

**10:57** · So this is a great way if you have oddly shaped controls.

**11:00** · For example, in my game, Alchemortis, I have a couple of instances where I have a very particular mouse detection area that I want, but it's really hard to use area 2Ds for that input picking because my game is so control node heavy.

**11:14** · So the hasPoint is a great way of providing your own custom logic to tell Godot when the mouse should actually be considered as inside of the area.

### Shader Includes

**11:24** · Tip number eight is shader includes.

**11:27** · If you don't write shaders, then maybe this isn't applicable to you, but a shader include essentially allows you to share code between shaders.

**11:36** · So I've set up a very basic shader example.

**11:38** · I've attached a shader material to this color rect, and I'm essentially just saying in the fragment function that the color is gonna be white.

**11:46** · So I'm setting every pixel of this texture rect to white.

**11:50** · And then just as a very simple example, let's create a shader include.

**11:53** · So I'm gonna right click on my resource directory or whatever directory I want, create new resource, and then we can look for shader include here.

**12:03** · That will give us that shader include resource.

**12:06** · I'm just gonna call this example.gdshaderinc, create that.

**12:12** · We've got our shader include file now.

**12:14** · So I'm gonna define a function that returns a vec4, and I'm gonna call it getColor.

**12:18** · And for this, I'm gonna return a vec4, and we're gonna set the red channel to one, the green to zero, the blue to zero, and then the alpha to one.

**12:32** · Okay, so we've got a very simple function here called getColor that returns red.

**12:38** · So now if I wanna include that shader include in my main shader over here, I just do pound include, and then we point it at the shader include location.

**12:50** · So this would be example.gdshaderinc.

**12:55** · That shader include code will be included in this shader now.

**12:59** · So now I have access to getColor.

**13:02** · So instead of doing vec4 1.0 here, I'm gonna do getColor.

**13:07** · And that changes my color rect to red.

**13:10** · Now, obviously, this is a very, very simple example.

**13:13** · But it shouldn't be hard to see how you could use this to share common functions between all of your shaders.

### Conclusion

**13:20** · OK, that was eight Godot tips and tricks that you may not have heard of.

**13:24** · Did I teach you anything that you didn't know?

**13:26** · Leave a comment below letting me know.

**13:28** · Also, if you could check out my game, Alchemortis, on Steam, I would appreciate that.

**13:33** · Give it a wish list if Rogue Light Inventory Management auto-battlers are your thing.

**13:37** · Thank you all for watching, and I'll see you in the next one.

**13:41** · Thanks for watching this video.

**13:42** · If you want to support my work, please consider wishlisting Alchemortis on Steam, subscribing to my Patreon, joining the Discord server, or purchasing one of my courses.

**13:50** · You can also sign up for my email list at firebelley.com.

**13:53** · The links for everything are in the description below.

**13:56** · \[MUSIC PLAYING\]