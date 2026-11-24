---
title: "Stop Using Nodes for Everything in Godot"
source: "https://www.youtube.com/watch?v=1PnG3r1rKcs"
author:
  - "[[Firebelley Games]]"
published: 2026-04-13
created: 2026-11-24
description: "🕹️ Join the Alchemortis playtest, open to everyone for 1 week! https://store.steampowered.com/app/3967230/Alchemortis/➡️ Support me on Patreon: https://www.patreon.com/Firebelley💬 Join the Discor"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=1PnG3r1rKcs)

🕹️ Join the Alchemortis playtest, open to everyone for 1 week! https://store.steampowered.com/app/3967230/Alchemortis/  
  
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
  
Using nodes for everything in Godot can cause serious performance problems in some situations. Luckily, we have access to the rendering server, which allows you to do a lot more a lot faster. In this Alchemortis devlog, I show how I can instantiate and render 100+ items in my game within a single frame, using the RenderingServer.  
  
Music: On Board by Grumplefunk https://freemusicarchive.org/music/grumplefunk/single/on-board/  
  
#godot #gamedev

## Transcript

### Intro

**0:00** · See this screen? It used to take 115 milliseconds to render. That's nearly seven dropped frames.

**0:06** · Now it takes under 10 milliseconds.

**0:09** · Why did this screen take 115 milliseconds to render? And how did I fix it?

**0:13** · This is for my game, Alchemortis, a dark fantasy rogue-lite auto-battler, where you can create your own builds using alchemy.

**0:20** · You can wishlist the game now, and there's a playtest available now.

**0:24** · So head on over to the Steam page, give the game a wishlist, download the playtest, try it, and let me know what you think in the Discord server.

**0:31** · The link to the Steam page is in the description below.

### The Problem

**0:34** · In my game, I have cards. Each card has a shape, unique art, abilities, and several visual effects.

**0:41** · Previously, I was handling all of my cards' visual needs the straightforward way.

**0:45** · I had a card scene which contained all of the relevant nodes and materials to render everything from the card background to the art to the visual effects for various statuses.

**0:54** · As you can see here, this scene tree ended up having a lot of nodes.

**0:59** · This wasn't a problem though until I wanted to display all of the cards in this unlock screen.

**1:04** · It turns out, trying to instantiate roughly 100 card scenes like this in a single frame wasn't doable without a massive process time spike.

**1:13** · I tried a number of things to address this.

**1:15** · Object pooling, instantiating the cards over several frames instead of in one frame, and others, but all these things presented their own challenges and ultimately felt more like hacks or workarounds that were liable to break.

**1:27** · I narrowed the problem down to this.

**1:29** · It is simply not feasible to do what I was doing with the card scene and expect the kind of performance that I needed.

**1:35** · The instantiation of each card scene and the addition of all those nodes to the tree was simply taking too long, and the only way to truly fix the problem was to reduce the number of nodes being added to the tree.

### The Solution

**1:46** · I've heard a lot in Godot circles about how using the rendering server directly can improve performance, but if you're like me, that sounds kind of intimidating.

**1:54** · But after trying and failing to get these cards rendering within the time of a single frame with the other approaches, I decided to try using the rendering server, and you know what?

**2:02** · It ended up being way more straightforward than I anticipated.

**2:06** · The core idea is simple.

**2:07** · Instead of creating nodes and letting them work with the rendering server for you, you work with the rendering server directly.

**2:13** · The rendering server is responsible ultimately for drawing textures, assigning materials, and basically anything else related to drawing to the screen.

**2:20** · When you add a sprite2D to your scene, for example, what's happening under the hood is that the sprite2D is leveraging the rendering server to draw the sprite you configure.

**2:28** · The sprite2D isn't responsible for doing the drawing.

**2:31** · It's basically just a configuration object that passes its data along to the rendering server.

**2:36** · Now, that's a simplified explanation, but it's helpful to think about it in that way.

**2:39** · What this means is that any node which leverages the rendering server under the hood can be bypassed entirely by using the rendering server directly yourself.

**2:47** · Here's a quick breakdown to set up something to use the rendering server.

**2:51** · First, you need to create a canvas item.

**2:53** · This registers a new canvas item, which can have a transform, a texture, a material, among other things.

**2:59** · This createCanvasItem call will return an RID.

**3:02** · This is a resource ID that represents the canvas item.

**3:05** · The trick here is that with the rendering server, you need to manage RIDs yourself, meaning that when you no longer are using RIDs, you need to free them explicitly.

**3:14** · Once you have the canvas item, you can assign a texture or a material, among other things.

**3:19** · To assign a texture, you use canvasItemAddTextureRect, for example.

**3:23** · You can also change the transform of a canvas item using canvasItemSetTransform.

**3:27** · A transform includes not just the position, but rotation and scale as well.

**3:31** · I won't list out all the functionality of the rendering server, but hopefully you can see how the pattern works.

**3:36** · But, here's where it gets interesting.

**3:38** · You can also set canvas items created through the rendering server as children of other canvas items, so that they can inherit the transforms of their parents, just like you'd expect from node2Ds you configure in the Godot editor.

**3:51** · So with all that in place, I think you could start to see how easy it was for me to replace my cardscene node structure with an almost pure rendering server implementation.

**4:01** · Here's my new card class.

**4:02** · We could see that this still inherits control, so that I can detect mouse events and retain the possibility of re-parenting cards to other nodes.

**4:09** · However, there are no other nodes created during instantiation of a card.

**4:14** · In the cards setup method, I'm just establishing a tree of canvas items, each one designed to replace a node from the previous cardscene.

**4:22** · I've got my background canvas item, my art canvas item, as well as canvas items that are assigned materials to render some of my special card visual effects.

**4:31** · By leveraging the canvas item parenting that I mentioned before, I can also apply transformations to any canvas item I want to in order to create a scaling or positional animation, for example.

**4:42** · So after that refactor, here is the end result.

### Conclusion

**4:45** · That card screen that I mentioned before now renders approximately 100 cards in about 8 milliseconds, and that's on a debug build.

**4:53** · That is a huge improvement compared to the 115 milliseconds to render the same number of cards prior.

**4:58** · So basically, the rendering server has functionality that serves as a 1 to 1 replacement of whatever my card nodes were doing previously.

**5:05** · By using the rendering server directly, I get to bypass the overhead of instantiating a scene and adding many nodes to the scene tree in a single frame.

**5:13** · And this isn't just a slight improvement either.

**5:15** · It's a massively noticeable difference.

**5:17** · Now all of these cards render within the time of a single frame, with plenty of headroom to spare.

**5:23** · 115 milliseconds down to 8 on a debug build.

**5:27** · If your game has a similar bottleneck, the rendering server is worth your time.

**5:31** · This video wasn't designed to be a comprehensive rendering server tutorial, but hopefully I've given you a place to start.

**5:37** · Again, my game is Alchemortis.

**5:38** · Give it a wish list if the game sounds interesting to you.

**5:41** · And again, the play test is available right now for one week, which you can join from the Steam page.

**5:46** · If you try it, let me know what you think in the Discord server.

**5:49** · The Steam page and Discord are linked below.

**5:53** · Thanks for watching this video.

**5:54** · If you want to support my work, please consider wishlisting Alchemortis on Steam, subscribing to my Patreon, joining the Discord server, or purchasing one of my courses.

**6:02** · You can also sign up for my email list at firebelley.com.

**6:05** · The links for everything are in the description below.