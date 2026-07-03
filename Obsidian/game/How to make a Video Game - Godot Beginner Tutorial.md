---
title: "How to make a Video Game - Godot Beginner Tutorial"
source: "https://www.youtube.com/watch?v=LOhfqjmasi0"
author:
  - "[[Brackeys]]"
published: 2024-04-29
created: 2026-07-03
description: "► Check out Zenva's free Godot course: https://academy.zenva.com/product/godot-101-game-engine-foundations/?utm_source=youtube&utm_medium=partner&utm_campaign=partner-youtube-brackeys-2024&utm_content"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=LOhfqjmasi0)

► Check out Zenva's free Godot course: https://academy.zenva.com/product/godot-101-game-engine-foundations/?utm\_source=youtube&utm\_medium=partner&utm\_campaign=partner-youtube-brackeys-2024&utm\_content=partner-youtube-brackeys-202401  
► Get 20% off your first year (on top of any existing site-wide discounts!) with this link (first 50 people): https://academy.zenva.com/cart/?add-to-cart=1319205&coupon\_code=brackeys202401&utm\_source=youtube&utm\_medium=partner&utm\_campaign=partner-youtube-brackeys-2024&utm\_content=partner-youtube-brackeys-202401  
  
Let's make our first game in Godot! Learn everything you need to start making video games in just ONE video.  
  
········································­­·······································­·­····  
  
🖌️ Get the Assets: https://brackeysgames.itch.io/brackeys-platformer-bundle  
  
❤️ Donate: https://www.paypal.com/donate/?hosted\_button\_id=VCMM2PLRRX8GU  
  
········································­­·······································­·­····  
  
🕹️ Finished Project: https://github.com/Brackeys/first-game-in-godot  
  
● Itch (Free Assets): https://itch.io/  
● OpenGameArt (Free Assets): https://opengameart.org/  
● Kenney (Free Assets): https://kenney.nl/  
  
► Join Discord: https://discord.gg/brackeys  
  
● Website: http://brackeys.com/  
  
········································­­·······································­·­····  
  
► All content by Brackeys is 100% free. We believe that education should be available for everyone.  
❤️ Donate: https://www.paypal.com/donate/?hosted\_button\_id=VCMM2PLRRX8GU  
  
········································­­·······································­·­····  
  
🎵 Girasol - Quincas Moreira (YouTube Audio Library)  
🎵 Making a Game - Sofia Thirslund (Originial Soundtrack)  
🎵 Time for Adventure - Sofia Thirslund (Original Soundtrack)  
  
········································­­·······································­·­····  
  
TIMESTAMPS:  
  
0:00 Intro to Godot  
2:16 What should we make?  
3:22 Cooking with Assets  
5:32 How Godot works  
7:31 Player 1.0  
16:57 Worldbuilding 1.0  
23:28 Platforms  
28:20 Pickups  
34:20 Dying 1.0  
40:14 Worldbuilding 2.0  
41:58 Enemy  
51:06 Dying 2.0  
52:56 Player 2.0  
1:00:43 Text  
1:02:35 Score  
1:07:46 Audio  
1:14:16 Expoooort!!!  
1:15:41 Where to go from here?

## Transcript

### Intro to Godot

**0:00** · Godot Go. dot Gado, whichever you prefer. If you want to use it to make a game, you've come to the right place. I've been making video games for more than 14 years now, and recently I've fallen in love with Godot.

**0:13** · Godot is a great choice for many developers and pretty beginner-friendly.

**0:17** · Also, it's open source and completely free to use. Now, you probably have a bunch of ideas of games that would be cool to make, but no matter if you're dreaming of making an FPS, a 2D platformer, or anything in between using Godot, the first step is of course to install it. Now, this process might be a bit tedious, but bear with me now. We go to godotengine.org, press download latest, Godot Engine, and we're done. This is a huge advantage of Godot. It's extremely lightweight and can even run in the browser.

**0:48** · Now, you might want to unzip this folder and place it somewhere you remember.

**0:55** · But other than that, we're ready to open up Godot. So, let's double click it, and it's going to ask us if we want to look at some example projects. I'll just press cancel. Then we can press new, name our project, say first game. I'm going to place mine on my desktop under my games folder. Let's create a separate folder for first game, so hit create folder, and create and edit.

**1:18** · And here we are, a clean slate, a blank canvas. Oh, I am so ready to make this game about Well, this might be a good time to decide what our game will be about. But first, this video is sponsored by Zenva. If you're excited about Godot 4, make sure to check out Zenva Academy. They offer comprehensive beginner and intermediate courses, including a fantastic free introductory course on Godot. What's really cool about Zenva is how they combine fun and practical learning through professional video tutorials, written lessons, and interactive quizzes.

**1:46** · Plus, you'll be building real projects across various genres from RPGs to bullet hells. Zenva also has a wide range of courses on Python, Unity, Unreal, and other essential tools. With a single subscription, which includes a 7-day free trial, you unlock over 250 courses.

**2:03** · Use the coupon code below to get an extra 20% off the first year of your Zenva subscription on top of any existing site-wide discounts. The offer is valid for the first 50 subscribers, so make sure to use your coupon today to start your game dev adventure. So, in the spirit of learning the basics of the engine and giving you an overview of how you can start using it to make things, I've put together the most basic game I could imagine. Think of it like food without salt.

### What should we make?

**2:26** · It doesn't have much flavor, but it does have a player, enemies, moving platforms, collectible coins, and most importantly, it should get you familiar with the engine in no time. Also, we'll be working in 2D, but another really cool thing about Godot is that it's very easy to transfer 2D concepts to 3D. So, don't worry, if your dream game is in 3D, most of what you learn here is going to directly apply.

**2:51** · As for programming, Godot uses its own scripting language called GDScript. It's pretty fast and easy to use, but still quite powerful. We'll do a bit of programming in this video to get you started, but the main focus is really to get familiar with Godot as a whole and to quickly get a game up and running.

**3:08** · Because of this, I don't expect you to fully understand all the code you see.

**3:11** · Feel free to write after me or just lean back and observe. Our next video will be about learning to program in GDScript.

**3:18** · All right, I promised you food without salt, so let's get cooking.

### Cooking with Assets

**3:40** · Now, to make our delicious game, we need ingredients. We need things like sprites, models, textures, and sounds.

**3:47** · These are called assets, and a game engine like Godot is not so much made for creating these from scratch, but more for putting everything together.

**3:55** · It's really the stirring part of making a game.

**3:59** · Now, since I can't expect you to go shopping for assets at your local supermarket, I've used a bit of TV magic to prepare some beforehand. You can download them for free using the link below. I've bundled together sprites from the amazing Analog Studios and modified them a bit along with a pixel font, some custom sounds, and a cute little music track. It's also perfectly fine to use other assets you find on the internet. There are many great resources for free assets. Just make sure you check the license and give proper credit to the author. CC0 means that the asset is completely free to use and there's no requirement to credit.

**4:33** · That being said, making your own assets is one of the places where you can really get creative, and I highly recommend you try it out as soon as you feel comfortable. Remember, you can always use these assets as placeholders and then modify or replace them later.

**4:45** · All right, let's get our assets into Godot.

**4:50** · Importing assets in Godot is extremely simple. The file system window is where we have all the files we use in our game. By default, the only thing in here is the Godot icon. So, let's create a folder where we can put our assets.

**5:02** · Let's right-click, new folder, and name it assets. Let's also make one for scripts and scenes that we can use later. Now, we can simply drag and drop our assets into the asset folder. So, I'll select the assets folder, open up my assets here. I'm going to select all the subfolders, and click and drag them into Godot. And voila, we can now see and use all of our assets in Godot. So, now we're ready to make our game. So, let's talk about how we do that. To make anything in Godot, we use nodes.

### How Godot works

**5:33** · If you want to make a player character, we do so by putting together a bunch of nodes.

**5:39** · If you want to make an enemy, we do so by putting together nodes. If we want to make a main menu, you guessed it, we use nodes. So, nodes are the fundamental building blocks of your game, and nodes come in many types. Some display an image, others play a sound, or add physics.

**5:55** · And we can even extend existing nodes to build more powerful ones.

**5:59** · So, in its essence, making a game in Godot is combining and extending nodes to get the result we're looking for.

**6:05** · It's a super creative and fun process.

**6:08** · But, building everything in one big world with nodes for the player, enemies, UI, and a bunch of levels all in one place would quickly become completely unmanageable and confusing.

**6:19** · Instead, we use scenes. Scenes allow us to bundle together nodes into reusable packages. A scene can be a character, a weapon, a menu. They can be as small as a single collectible coin, or an entire level. Scenes make it really easy to focus on building one part of our game at a time, and then slowly combining them to make our game larger and larger.

**6:41** · This is because we can put scenes inside of other scenes, which is called nesting, and allows us to take, say, a player scene, a platform scene, and a collectible coin scene, and put them all inside of another scene, say, a level one scene. And even cooler, since scenes are reusable, we can make a scene only once and then use it all over our game.

**7:02** · We can make many levels that all use the same collectible coin scene. And if we want to change something about our coin, we simply edit the scene, and it automatically updates everywhere else.

**7:13** · As you can see, all the nodes and scenes in our game start to resemble a tree-like structure, and that's exactly what we call it, the scene tree. And fittingly, we call the node at the very beginning of the tree the root. So, now that we know a bit about how Godot works, let's start by making the most essential part of our game, the player character.

### Player 1.0

**7:31** · Player 1.0. So, let's create a scene where we'll put everything together.

**7:36** · This is going to be a 2D game, so let's select 2D scene, and let's rename this from Node2D to game. And even though it's empty, let's go ahead and save it. So, hit control S, go under scenes, and let's save it here.

**7:50** · And now we can actually play our game.

**7:52** · It's not going to be very exciting, but let's try it out. So, let's hit play up here or simply press F5. It's going to tell us that we haven't selected a main scene. We need to tell Godot which scene to run. I'm just going to press select current, and you can see that our game scene becomes blue to let us know that this is now our main scene. And as you can see, not much is happening here. So, let's stop playing by hitting the stop icon here or pressing F8, and let's put in a player to make it more exciting.

**8:19** · So, first off, let's create a new scene by hitting the plus sign up here, and this will be our player scene. And the root node for our player is going to be what is called a character body 2D. So, let's add a new node by pressing the plus here or hitting control A, and let's search for character body 2D. As you can see, this is a 2D physics body that is specialized for characters moved by script. So, it's perfect for a player character that we want to be able to collide with the environment.

**8:46** · So, let's hit create, and now we can see our node here, but we can't actually see our player in the scene. So, let's add some graphics. Let's add another node. I'm going to hit control A, and let's search for sprite. And as you can see, we can choose a single sprite or in our case, we want to create an animated character.

**9:06** · So, let's choose the animated sprite 2D.

**9:09** · Sprites are just what we call images in our 2D world. Now, with this node selected, we can use the inspector here on the right to change properties on that node. If we select a different node, say our character body 2D, we can now see the properties on that node instead. So, our inspector allows us to change things about a node. In our animated sprite 2D, we want to add some animations, and we want to give it some sprite frames, the individual frames that will make up our animation. So, let's click here and add a new sprite frames.

**9:40** · And now, with this selected, we can see that it will open up the sprite frames window at the bottom. And in this window, we're going to press this tiny icon here that lets us add frames from a sprite sheet. So, let's click that, go into our assets under our sprites, let's find our knight.png.

**9:59** · And as you can see, I've gone ahead and packed all the different sprite frames of the knight's animation into a single image. This is called a sprite sheet.

**10:08** · It's a very efficient way of working with lots of sprites, such as when doing animation. Otherwise, we would have to create an image for each single frame, which would quickly become an unmanageable amount of files. Now, to start adding these frames in, we first need to configure the grid here.

**10:23** · Currently, it's set to 4 by 4. Let's go ahead and increase this. I've created an 8 by 8 grid here. And as you can see, each frame now has its own grid cell.

**10:33** · And let's just start by adding the idle animation. To do this, we simply click the frames in the order that we would like. So, I'm going to go from the left-hand side here and click. As you can see, it sets this to zero, the first frame.

**10:46** · Then I'm going to click the next one and the next one and the next one. And now, it goes from zero to three and will play from left to right. We can always click again to remove, and this is how you can quickly build an animation from different parts of your sprite sheet.

**11:00** · So, I'll select these four frames and hit add frames. Now, let's hit F to center our character on the screen, and I'm going to use the scroll wheel to zoom in. We can also click and drag with the middle mouse button to pan. Now, our character looks weirdly blurry. That's because we're working with pixel art, which requires really hard edges. By default, Godot is going to try to do some texture smoothing to make textures look better, but applied to pixel art, that is definitely not the case. So, let's simply disable this.

**11:28** · So, let's go to project, project settings, Let's go under rendering to textures and here on the default texture filter, let's change this from linear to nearest, which will immediately make our pixel art look crisp. Then we can select our animated sprite. Let's try playing the animation.

**11:47** · That looks great. I'm going to increase the FPS here to 10 to make it go a bit faster. I'm also going to rename the animation here to idle.

**11:56** · I'm going to enable auto play to make sure it plays right when we start the game. And finally, I'm going to take this sprite here and move it up to make it kind of stand on this line. And that's it for our graphics for now.

**12:07** · We'll add more animations later, but as you can see, we're currently getting this warning here in the scene view. And if I hover over it, it's going to say that this node has no shape, so it can't collide or interact with other objects.

**12:20** · And this is because a character body 2D is a physics node. And whenever we're working with physics, we need to define a shape that the physics engine can work with. So, let's add a new node. I'm going to press the plus sign here. I'm going to search for collision shape 2D, hit create, and here in the inspector, we can now define a new shape. I'm going to add a circle shape. I'm going to make this a bit smaller and drag it up.

**12:46** · Somewhere around there looks fine.

**12:49** · Now, you're probably thinking, well, this is pretty far from our actual graphics, but that's totally fine.

**12:54** · Colliders rarely need to be very precise, and it's a good rule of thumb to make them a bit smaller than the graphics if you need to. Having colliders that are too large is simply going to be frustrating when playing.

**13:06** · So, let's now rename the top node here to player.

**13:11** · And let's save the scene, control S, as player, hit save. And now we can go into our game scene and simply drag our player in here. So, I'm going to go to the top here and drag in the player.

**13:23** · We also need to create a camera so that we can control what is currently being shown. So, let's add a new node, hit control A, search for a camera 2D, hit create, and now if we press F, we can see that we have this huge camera viewport. This is definitely currently too large, so let's zoom in on our camera. I'm going to set the zoom here to 4 by 4, and simply click and drag our camera to be on top of the player. And now we can try playing our game.

**13:51** · And there you go. We now have a player that is playing an idle animation, and nothing else is happening. That's because we need to add a script that allows us to move around. So, let's close our game, go into our player scene, and with our player node selected, let's press this add script button. Here we can choose a template.

**14:10** · Of course, we're going to do some programming in this video, but writing player movement can quickly become a bit overwhelming. So, for now we'll use the basic movement template provided by Godot. Then later, we'll go in and modify it to play different animations and rebind input to the keys we'd like to use. As for the path here, I'm going to make sure that we put this inside of our scripts folder, and let's just name it player. Let's hit create. And as you can see, this creates a script that will move around our character.

**14:36** · I know that this might look really confusing at first, but don't worry, we'll have a look at what all this means later. For now, let's just try playing.

**14:47** · And our player immediately falls off the screen. That's because we need to give him a collider to stand on. Right now, our player has a collider, but it doesn't have anything to collide with.

**14:57** · So, in our game, I'm going to go back to the 2D view at the top here. This is where we can change from script view to 2D. Let's add a new node. So, let's hit the plus sign. Let's add a static body 2D, and this is a another type of physics body. It's the one we use for things that don't need to move. That's why it's called static. So, it's perfect for creating some ground. Let's hit create, and again, this is going to give us this warning here that it needs a shape. So, let's add a collision shape.

**15:26** · So, I'm going to hit Ctrl A, search for a collision shape, and for the shape here, we're going to create a new world boundary shape. The world boundary is a type of collider that is perfect for stuff like, well, world boundaries because it's going to extend infinitely on the horizontal axis here. So, as you can see, it's currently pointing up. We could also point it to the side here, and now it's going to extend infinitely on the vertical. I'm going to hit Ctrl Z to undo that. Instead, I'm going to select the entire static body here.

**15:55** · I'm going to change to the move tool by pressing this icon here or simply W on the keyboard, and I'm going to move it down under our character. Then, I'm going to go back to our select tool, which is here or simply press Q. And while our collider doesn't have any graphics, it's going to be invisible, we can now play, and there we go. Our player now gently lands on the collider.

**16:19** · We can move around using the arrow keys and jump with the space bar. Now, our player is currently a bit too fast, and I think his jump is a bit too high. So, let's modify our script to change that.

**16:31** · Let's close our game, go into our script, and at the top here, there are two constants that we can modify: our speed as well as our jump velocity. So, I'm going to set the speed to something less like 130, and the jump velocity to say -300.

**16:46** · And now when we play, it looks and feels a lot better. So, our player is moving around, but currently, there's not much to look at. So, let's build a world to explore. World building 1.0.

### Worldbuilding 1.0

**17:00** · So, to build our world, let's begin by removing our collider here. We're going to build an actual ground for him to stand on, and let's instead add a tile map node. So, let's press new node and search for tile map. Now, the most common way to create levels in 2D is by using tiles. In other words, we build our game world by drawing different tiles onto a grid. This is a great way to work because we can create a lot of varied levels using just a few tiles.

**17:28** · The tile assets we use to paint are normally packed together into one big image just like our player was. This is called the tile set. So, the tile set is a collection of tiles that we can use to paint from and the tile map that we just created is the node we use to paint these tiles into our world. So, to start painting on our tile map, we need to add a tile set. So, in our inspector under tile set, we'll create a new tile set.

**17:52** · And if we press it here, we get to configure some things about it. The main thing you want to make sure is set correctly is the tile size. The tile set in our asset does indeed have 16 by 16 pixel tiles, so we'll just leave that as is. Now, at the bottom here, you can see that we have two tabs. We have the tile set and tile map. So, before we can start painting with our tile map, let's go into our tile set and configure this property. The main thing we want to do is drag in our tile set asset. So, let's go into our assets folder under sprites and drag in the world tileset.png.

**18:26** · It's going to ask us if we would like to automatically create tiles in the atlas.

**18:30** · We do, so let's press yes. And now let's make some more room here and we can zoom in to view it. And as you can see, it's actually gone ahead and automatically detected the grid cells that have tiles.

**18:41** · If for some reason it's made an error, we can always use our eraser here to remove tiles. In this case here, it thinks that the top of the palm tree is a bunch of different tiles. I'm going to use the eraser to get rid of these and instead go out of the erase mode and then hold down shift while clicking and dragging to turn this into one big tile.

**19:02** · It's also split up the trees into three different tiles, but in this case, it's actually something that we want because it allows us to create trees of varying heights. I'll show you this once we start painting. Other than that, I think it looks good. So, with this tile set set up, we can now go to our tile map and start painting. Make sure that the scene has the select tool and that the tile map has the paint tool enabled. And now, let's simply select a tile and start painting it in. If you make a mistake, you can always right-click to remove.

**19:32** · So, I'm just going to fast-forward through me drawing out the level here. As you can see, I begin by blocking out the most essential game parts, leaving in room for gameplay objects like moving platforms and enemies. And then, only once I'm finished with that, I start decorating.

**19:47** · And if the trick here is that you can select multiple tiles at once to paint in more than one. And you can always go into select mode in order to select large chunks and move them.

**20:08** · Now, once I'm ready to start decorating, let me just show you the cool trick with the trees here. So, let's say we want to add a tree here at the top. Well, then we can actually just paint the bottom, then choose how tall we want the tree to be, and then paint the top. So, that's one of the advantages of working with tiles is that we can also make individual elements really, really flexible. So, once you're happy with the level, let's just go ahead and press play and our player is going to fall right off. That's because we need to add a physics layer to our tiles.

**20:36** · To do this, we go to our tile map, go under our tile set, physics layers, and add a new layer. Then, with this layer, we can go under our tile set, and here we need to choose what tiles belong to the physics layer. Because we don't want to collide with everything in our tile map.

**20:55** · The trees and bushes, we just want to pass right through. So, let's go to paint here, and the property that we want to paint is the physics layer zero we just is And now, we can actually go ahead and paint onto our tiles these physics settings. So, I'm simply going to paint this onto all the different solid tiles.

**21:15** · And if you make a mistake and want to remove a tile, we go here, select clear, and now we can paint with no physics, or we can go back to the default tile shape, which is the entire tile, and paint with that, or simply hit F to do that. So, C and F are the shortcuts here. Now, there are also some tiles that we do want physics on, but where we need the collider to only be on part of the tile, such as our bridge here. So, if I zoom in on our bridge, we can see that if I just paint physics onto these, it doesn't look right.

**21:47** · Instead, we need to go in and only paint a partial collider. So, over here on the left, we can actually modify these colliders to exactly suit our needs. We can even add and remove points by clicking and right clicking. But, in this case, four points will do just fine, and that's a good shape for our collider. Then we can paint these onto the three different tiles. And then for the next one here, we can configure it. This lands up a bit. So, I'm going to paint that on as well.

**22:17** · And then for the final one here, let's go ahead and make that go in the opposite direction. And here you actually want to be pretty precise whenever you have an overlap of the colliders here. I think that looks pretty good. This helps avoid that our character gets stuck.

**22:32** · I'm also going to take the tile map and drag it to the very top so that we can always find it. And now when we play, we are indeed colliding with our environment. Awesome. Now, we probably want our camera to follow the player because he's currently just running off the screen. So, I'm going to make some room here. I'm going to take the camera 2D and simply drag it under the player.

**22:53** · Making it a child of the player means that it will just automatically follow the player node. I'm also going to make sure that the camera is still positioned right on top of the player, and we can even turn on position smoothing to really smooth out our camera follow. So, I'm going to enable position smoothing on the camera with a default speed of five pixels. And now when we play, as you can see, our camera smoothly follows our player.

**23:17** · Awesome.

**23:19** · So, now we have a first draft of our game world, but so far everything is stuck to the grid. Let's start adding some dynamic and moving elements, such as platforms. Platforms some that move and some that don't. So, whenever we're creating a new element of our game, we begin by making a new scene, and for the root node here, I'm going to hit add and search for the animatable body 2D.

### Platforms

**23:39** · This is a physics body that we use whenever we want to animate a node and still have it collide properly with other nodes in its path, which is perfect for moving platforms that should still collide properly with our player. So, let's hit create, and let's add some graphics. So, control A, we'll search for sprite and select the sprite 2D. And now we can drag in the texture we want. So, let's go under our assets, sprites, and drag in the platforms.png.

**24:09** · Let's hit F and zoom in. And as you can see, this is also a sprite sheet, and it's currently just displaying all of them. So, let's go in and define exactly which one we want to show. We can do this under region, enabled, and hit edit region. And so, we can kind of crop out the element that we want to show. I'm going to change the snap mode here to pixel snap, and I'm just going to go for a default grass platform.

**24:32** · That looks good. And now when we close it, we can see our sprite perfectly cropped out. Again, we have the warning here, so let's go ahead and add a collision shape 2D.

**24:42** · For the shape, I'm going to add a rectangle shape, and now we can simply click and drag this to configure it.

**24:48** · Then let's rename our top node here to platform and save the scene. So, control S, in our scenes folder then save. We've actually created our platform. So, in our game scene, we can drag it in, go under scenes, find the platform, drag it into wherever we'd like, and let's hit play.

**25:07** · And as you can see, it works.

**25:09** · However, one problem right now is that we can't actually jump onto the platform from underneath. To fix this, we turn it into a one-way platform. So, in our platform scene, let's select our collision shape and enable one-way collision. And now when we play, we can jump onto platforms from underneath.

**25:27** · However, the player is currently passing behind the platform.

**25:32** · This is because the platform is currently after the player in the tree.

**25:36** · This means that each frame, the player is drawn first, and then the platform is drawn on top. We could just move the player in the tree, but I don't want to depend on that. Instead, we fix the draw order by changing the Z index of the player.

**25:51** · So, in our player scene, we go under ordering and set the Z index to something higher like five. By default, all visible nodes have a Z index of zero because they all have the same index, they are drawn according to their order in the tree. So, by setting the Z index to a higher value like five, we ensure that our player will always appear on top. And now if we play, we can see that our player passes in front of the platform.

**26:17** · So, our platform is working, but it's currently just hovering there. We might want some platforms to move around to increase difficulty. So, let's use animation to do that. I'm going to leave this platform here as kind of a static platform. I'm just going to place it there. Then I'm going to place another platform over here by simply dragging it in. This is the platform that I would like to move back and forth. In fact, let me just go into the tile map and make this gap even larger.

**26:45** · There we go.

**26:46** · So, to add animation to this platform only, we simply select it, add a new node, and we want to use an animation player. Let's hit create. And now we can add a new animation and let's name that move.

**26:59** · Animation players in Godot are extremely powerful because they allow us to animate pretty much anything. In this case, we just want to do something really simple. We want to go to our platform and make a keyframe under transform for the position. So, I'll hit the key right here and hit create. Then we can go forward in our timeline here to say 1 second, move our platform to the right. So, I'm going to click and drag. I'm also going to hold down shift to kind of snap it to one axis. Let's move it to there. And let's add another keyframe.

**27:31** · And now we can see that if we play, the animation plays. We also want this to loop, so I'm going to select loop here. However, this is going to loop in a way that it snaps back to the original keyframe. Instead, let's press it again. And now you can see that it's going to start ping-ponging back and forth. If this is currently too fast, we can simply increase the length of our animation. So, here's the length. Let's set it to 1.5 instead and drag our last keyframe to the end. And there we go. We now have a moving platform.

**28:01** · Let's just make sure that we set it to auto play and now when we play the game and go to the place where we made our platform, we can see that it's moving back and forth.

**28:12** · And if we jump onto it, the player will smoothly follow it. Really cool and there's already so much you can do with this.

### Pickups

**28:20** · Next up, pickups. Now, let's add a coin that we can pick up. Again, we start by creating a new scene. Let's create a new node and let's this time search for area 2D. This is a type of node that we use whenever we don't want to collide with other objects, but instead we just want to define an area in which we can detect collisions. So, we simply use this to detect if another body enters, such as the player character. Let's create an area 2D. Let's also add some graphics.

**28:49** · So, control A, search for sprite, and we'll select the animated sprite. Under animation, let's add some new sprite frames, select it, and let's load in from a sprite sheet here. I'm going to use the coin.png.

**29:04** · Zoom in on this. And this only has one grid cell on the vertical, and horizontally it has 12. And now we can click from left to right or simply click and drag and add the frames. Let's hit F and zoom in.

**29:18** · Set the FPS to 10 and hit play.

**29:21** · And that's our coin animation. Let's make sure that this auto plays. And just like a normal physics body, an area 2D also needs a collision shape. So, let's add a collision shape 2D. And then for the shape, let's just choose a circle shape.

**29:37** · Decrease the radius a bit, and that's actually all we need. So, let's select our area and rename it to coin and save the scene.

**29:45** · And now we can simply drag it into our game.

**29:48** · So, under scenes, I'll take the coin and place it around the level.

**29:53** · You can always use control D to duplicate. And now if we play, we can see that the coin is here, but nothing happens if we enter the area.

**30:04** · So, it's time to make our first script.

**30:07** · So, in our coin scene, we select the coin node and hit add script. This time for the template, let's just choose the default template. And for the path, let's make sure that this goes under the scripts folder.

**30:19** · I'll create. And this is what it looks like when we create a default script in Godot. We can see that we've created the script on an area 2D node and that it's automatically made two functions for us that we often use, ready and process.

**30:34** · Currently, both of them only have the pass keyword, which means do nothing.

**30:39** · So, this script, if we run it, will do absolutely nothing. Now, the ready function is called right when our node enters the scene tree, which is just at the start of the game. So, we can put code here that we want to happen immediately. Let's try it out by printing a quick message to see if it's working. So, I'm going to write print, then in parentheses and quotes, I'm going to put I'm a coin. And if we play now, the print doesn't do anything in our game, but it does show our message, I'm a coin, in the output window.

**31:11** · This is also referred to as the console, and it's where we see messages such as prints and errors. However, you might also notice that the message displays multiple times. That's because we currently have multiple coins around our game, and the script runs for each and every one. So, since we have five coins, it displays I'm a coin five times.

**31:32** · But, we don't want anything to happen when we start the game. So, I'm actually just going to remove these two functions. Instead, we only want to do something once our player enters the coin area. And for this, we use a signal.

**31:45** · Signals allow us to trigger code based on events that happen in our game. Godot has many built-in signals we can use. If we select our Area2D node and go to the node tab, we can see all the signals on this node. We want to use the body entered signal, which is triggered whenever a physics body enters the area.

**32:05** · Since our player has a CharacterBody2D node, this is going to trigger the signal.

**32:10** · So, to connect it, we simply double-click it and hit connect. As you can see, this creates a new function in our script called on body entered with a green arrow that shows that this is triggered by a signal. So, let's here try writing a print function that says something like plus one coin. Now, when we play and enter the coin area, it's going to print plus one coin.

**32:35** · However, this message will actually display no matter which body enters the area. If we take one of these coins here and put it in the way of a moving platform, for example, this will also trigger the message. So, now right when we play, we can see that it starts displaying the message and will do so every time the platform passes through the area. To change this, we can either use code to check what body enters the area, or we can simply put our player on a separate physics layer. Let's try that out.

**33:05** · So, under our player, we'll go to the inspector, go to collision, and here we can change the physics layer from layer one to two. Let's hit control S to save, and then in our coin, we can also go under collision. We can actually have the coin itself stay on layer one. We don't need a separate layer for that yet, but we want to make sure that it only detects colliders in layer two. For this, we use the mask. The mask defines what layers a node collides with. So, let's set that to layer two, because that's the layer that our player is on.

**33:39** · That should actually do it. Now our coin will only detect collisions from our player.

**33:44** · And instead of just displaying a message, let's also remove the coin from our scene when we pick it up. So, in our script, after printing one coin, let's add a new line. We'll call the queue free function, which is simply going to remove the entire coin scene from our game. And indeed it does. And our knight can now start gathering some coin. Now, depending on what type of loot we pick up, we want different things to happen.

**34:10** · In this case, I want to display a score that increases when we pick up a coin.

**34:14** · But we'll look at that when we get to text. First, I think something a bit more pressing is dying and restarting our game. Dying 1.0. So, we happily move along in our world until suddenly we miss a jump and fall into the abyss. And then nothing happens. Let's change that.

### Dying 1.0

**34:32** · The first thing we want to do is limit our camera so that it doesn't follow our player when we fall down. Luckily, this is really easy to do. We simply select our camera under the player, go under limit, and here we can set a position limit for the left, top, right, and bottom part of our camera. In our case, we need to set a limit for the bottom position. To do this, we can use the ruler tool here at the top or simply press R and measure from this base line here to where we would like the limit of our camera to be.

**35:02** · I think a good value would be somewhere around, say, 120. So, I'll simply go back to select mode and put in 120 pixels on the bottom. I'm also going to enable smoothing, and now when we play, we can see that our camera will follow the player, but whenever we fall off, it's simply going to stay put.

**35:23** · Next, we need to detect that our player has entered a dangerous area and restart the game. In other words, we need to create a kill zone. I'll show you a really cool way to do this that allows us to reuse the same kill zone for more than just falling off the map, such as for a spike traps, enemies, all kinds of elements of danger. And when we want to create a reusable element, we start by making a scene. Then, to detect if we enter an area, we again use the area 2D node, and let's make sure to set the collision mask here to two.

**35:52** · We only want to check for the player, which is on layer two. And we won't add a collision shape here. That's because we want to be able to reuse this for all kinds of elements that might have different shapes. Instead, let's simply go ahead and rename this now to kill zone and save it as a new scene. Then, in our game scene, we can add it by dragging it in or simply pressing the link button here and selecting the kill zone. And then in here, we'll add the collision shape.

**36:23** · So, I'm going to hit control A, collision shape, and for the shape, we'll use the same world boundary shape that we used earlier for the ground.

**36:32** · Now, let's make sure to select the kill zone node itself, go into move, and use the move tool to position it down here at the bottom.

**36:41** · I'm going to place it pretty far down, so we're sure we don't hit this by accident. Well, I mean, we're going to be hitting it by accident, so let's make sure we don't hit it on purpose.

**36:51** · Well, I mean, I don't know. Anyways, I'm going to place it down here a good bit away from our level. And now we can add a script to make something happen when we enter the area.

**37:01** · So, in our kill zone, let's select it, add a new script. For the template here, I'm just going to select empty, and the path, let's put it under the scripts folder.

**37:11** · And now we have this empty script to play with. I'm going to connect a signal, so go node, make sure we have the kill zone node selected, and again, we'll use the body entered signal. So, let's double-click it, hit connect, and it's going to create a new function on body entered, in which case, we can go ahead and print that you died. And now if we play and jump down, it's going to print that we died.

**37:40** · Now, instead of immediately restarting the game, let's add a small delay. We do this using another node called the timer node. So, let's add a new node, search for timer, and under the inspector here, we can choose some different things about it. Let's set the wait time to something like 0.6 seconds. Let's also make it a one-shot to make sure that it doesn't loop. We can then start this timer in our code. To do that, however, we first need a reference to it.

**38:09** · Luckily, that's as simple as going to the top of our code, clicking and dragging the timer node, and holding down control while releasing. This creates a variable called timer that automatically finds the node using this path. Now, if you haven't worked with paths before, they are actually quite simple. They specify a way to get from one node to another in the tree. So, if we look at this example tree, to get from the game node to the camera, the path looks like this. It goes through the player and ends with the camera.

**38:39** · And in our case, where we just want to get from the kill zone to the timer right underneath, we don't have to go through any other nodes, so the path is simply timer. Again, right now we're brushing over concepts such as variables and functions pretty briefly, but you can learn more about programming and what all this really means in our upcoming video on GDScript. For now, just know that using this click and drag method, we can now access our timer node using the name timer.

**39:08** · So, to start our timer, we make a new line and write timer. dot start.

**39:14** · Of course, we now need to trigger some code when our timer runs out. And again, we can use a signal for this. So, with our timer node selected, let's go under node, and here's the timeout signal. So, let's double-click that and hit connect, and this creates a new function called on timer timeout that runs when the timer ends. And then, in here, we can simply restart our game.

**39:37** · To do this, we first access the scene tree, so get tree, and tell it to reload, so reload current scene. So, our player enters the kill zone and triggers the on body entered function. This prints a message that we died and starts the timer. When the timer runs out, it triggers the on timer timeout function, which then reloads our scene and restarts the game. And indeed, when we play and jump off the map, we fall down and the scene restarts.

**40:08** · Great.

**40:10** · It's an infinite loop.

**40:12** · Help me.

**40:13** · I'm stuck.

### Worldbuilding 2.0

**40:15** · World building 2.0.

**40:17** · Let's expand on our game world a bit now that we have more elements to work with.

**40:21** · First of all, I want to make sure that we stay organized. So, let's take some of these nodes and categorize them. The easiest way to do this is by simply adding a new node. For this one, I'm just going to select the base node here, hit create, and now we can rename this.

**40:35** · I'll make one for, say, coins and simply take all of the coins and drag them under that node. We can do the same thing for platforms and any other elements that are cluttering up your scene. Now, I'm going to paint in a bit more level and change the things that I don't like.

**41:01** · And I'll put in some more gameplay elements.

**41:05** · I'll also paint in some background tiles. But to do this, we need to add another layer to our tile map. So, not under our tile set, but under the tile map itself, we have this layers. And this is the one we've been painting in.

**41:17** · Let's just call this mid for midground and add another one that we can call background. Let's move this to the top to make sure that it's drawn first. And now when painting, we need to select the right layer to paint on. So, let's select the background and then we can start painting in some background tiles.

**41:37** · A nice trick here is to use the rectangle tool to paint in a lot of tiles at once.

**41:47** · And now our game looks a lot better. It has a background and a whole new part of the level that we can explore.

**41:53** · And of course, this process is just about trying things out and making changes until you're satisfied.

### Enemy

**41:59** · Enemy A proper hero, of course, needs a good enemy. So, let's make one. Let's create a new scene. And since this enemy doesn't need to collide with anything, we can just go ahead and use a node 2D as the base. Let's also add an animated sprite, so I'll search for animated sprite 2D. Let's go to animation, add some new sprite frames, select them, and let's load in from the sprite sheet here. In the pack, there's both a green and a purple version of the enemy.

**42:24** · I'm just going to choose the green one, and this is a 4 by 3, and I've included three animations here, one for the enemy kind of waking up, an aggressive idle animation, as well as one where the enemy takes damage. So, I'll use the idle animation here. Let's add these four frames. Let's hit F and zoom in.

**42:44** · I'm also going to move this up. Set the animation to auto play and the FPS to 10. And now, if we preview, we have an animated slime. And this is where things get really cool. Because we made our kill zone into a reusable scene, we can simply use it for our enemy as well. So, at the top here, I'll add in a new scene. I'm going to select the kill zone, and now all we need to do is give this a collider, so control A, search for a collision shape. Let's add in a rectangle, fit it to fit our enemy.

**43:12** · By the way, I'm holding down Alt to scale uniformly, and with that, we can simply rename our top node here to slime, and save it as a scene.

**43:24** · Now, in our game, we can drag it in. I'm going to place it over here.

**43:28** · And if we play now and move to the enemy, we can see that just by throwing together a couple of nodes and reusing our kill zone, we've successfully added a new element of danger to our game. If we enter the enemy, we can see that indeed our game restarts. Of course, currently dying doesn't look very exciting. We'll fix that in the next chapter, but first, let's make our enemy move back and forth. We could, of course, do this using an animation player, just like we did for our platforms.

**43:55** · However, I think it would be cooler to make a script that moves our enemy to the right until we get close to a wall, in which case it changes direction and starts moving left. This way, we can simply drag and drop the enemy between any two walls in our game and our script will do the rest. So, let's start by making our enemy move to the right. So, I'll go into the slime, add a new script, use the default template, and place it under the scripts folder, and hit create.

**44:21** · Let's get rid of the ready function, and instead we're going to be using process.

**44:27** · Just like movies, video games display motion by drawing frames and showing them in quick succession. While movies show frames at a fixed rate, most often 24 frames per second, video games generally try to draw as many frames as possible to get a smooth result. How often this happens will depend on the system the game is running on and what is happening in the game. But unless the game is lagging, it should draw a new frame at least 60 times per second, and often much more.

**44:54** · Before the computer can draw a new frame, however, it first has to update the state of the game. What has happened since the last frame? It does this for all the nodes in our game. Then it draws a new frame.

**45:06** · This is referred to as the game loop, because it happens over and over again, and it is really the driving force of our game.

**45:14** · Godot, of course, does this automatically, but we can add functionality to the game loop using the other function in the template, process.

**45:21** · Unlike ready, which only runs once, process runs every frame. This makes it perfect for doing things over time, such as moving an enemy. We simply make sure to change the position of the enemy a tiny bit each frame.

**45:34** · So, in our script, we can simply remove the pass keyword, and instead access the position of our slime, more specifically the X coordinate of our position, and add one pixel to this every frame. Then in our game, let's go ahead and place a slime close to our player so that we can see this happening, and play.

**45:54** · And as you can see, the enemy just shoots past us on the screen. Now, one problem with this that might not be obvious, other than it's moving way too quickly, is that we're increasing the X position every frame by a fixed amount.

**46:06** · And because our frame rate can vary, this means that the enemy will sometimes move faster than others, which is not very good. To fix this, we use this little thing here called delta.

**46:18** · Delta is the amount of time that has gone by since the last frame. If we're drawing many frames per second, delta gets really small. And if we lag out a bit and are not drawing as many frames, delta becomes bigger. Because of this, we can use delta to compensate for variations in frame rate. If we have a high frame rate, we want to only move our enemy a little each frame.

**46:39** · And if we have a low frame rate, we want to move it a lot.

**46:43** · In other words, we can multiply our movement by delta to make it independent of the frame rate. Now, delta can be a bit hard to wrap your head around at first, but don't worry. You'll get the hang of it. A good rule of thumb is that whenever we have a speed value that we can adjust, such as our one here, we should probably multiply it with delta.

**47:02** · So, in our script, we simply go plus equals one multiplied with delta. Now, what this essentially means is that we're going to be moving one pixel per second, which is not very fast. So, let's instead change this to something like 60. And we can actually store this speed in a constant at the top of our script, just like in the movement script. So, here I'll write const speed and set it equal to 60. Then we can simply use speed here instead of hard coding the value.

**47:31** · This makes it easy to change constants right at the top of your script. And now, if we play, we can see that our enemy is moving at a reasonable rate, and we know that this speed won't change from system to system.

**47:45** · So, let's get rid of this extra slime here, and instead make this one actually change direction whenever we face a wall.

**47:53** · To do this, we need a way to control the direction we're currently moving in. So, let's create a variable that does this.

**47:58** · We create a var call it direction and set it equal to one by default. Then, if we need to go in the opposite direction, we'll set it to -1 instead. And to actually apply this, all we need to do is multiply it into our speed. So, we'll go direction \* speed \* delta. This is a really standard way of doing movement. We simply add on to our position in a direction multiplied by speed and delta. So, now all we need to do is check if the enemy gets close to a wall.

**48:27** · And for this, we'll use a new type of node, the ray cast node. Ray casts are invisible rays that we can shoot out to detect collisions. So, inside of our slime here, let's add a new node of type ray cast 2D. And as you can see, it draws an arrow to represent this.

**48:46** · Let's move the starting point here to the center of our enemy, and let's have it shoot out to around here. I'm going to rename this to ray cast right. I'm then going to press control D to duplicate. I'm going to have this shoot out in the opposite direction and rename this to ray cast left.

**49:07** · Now, in our script, we can reference these nodes just like we did with our timer. We simply select them both, click and drag, and hold down control while releasing. As you can see, this creates two variables, one ray cast right and a ray cast left. Then, every frame before we move our slime, we will go ahead and check if we're currently colliding to the right or to the left.

**49:28** · If ray cast right. is colliding, if this ray cast is hitting something, well, then colon, and then make sure to indent here with the tab. We will set our direction to be -1.

**49:43** · If we're colliding on the right, we want to move to the left. And we'll add another one of these if statements. So, if ray cast, you guessed it, left. that colliding, well then we'll set our direction back to one. And that's it.

**49:58** · Our enemy is now ping-ponging back and forth between the two walls. And this is happening completely automatically through script. Really cool. Now, the only thing that is left is to flip the enemy sprite when it changes direction.

**50:10** · Luckily, if we go inspect our animated sprite here, under offset, we have this flip H property, which will simply flip the sprite. So, let's control this through our script. In our script, we'll get a reference to our animated sprite 2D. This creates a variable called animated sprite 2D. I'm just going to get rid of the 2D here to make the name a bit shorter. And then, whenever we are colliding on the right here and we change direction to move towards the left, we will also go to our animated sprite and set the flip H property to true.

**50:44** · And when we are colliding on the left and we're changing direction again, well then we'll go to our animated sprite and set flip H back to false. And that's it. That's our entire script. Let's find our enemy here and hooray, we've made an enemy and a slimy one at that. But of course, dying to the enemy could definitely look cooler. So, let's fix that. Dying 2.0.

### Dying 2.0

**51:08** · Let's start by adding a slow motion effect when we die. We can do this by changing the time scale of the entire game. So, inside of our kill zone, we'll open up the script here and right after we opened you died, let's modify our time scale. So, we'll go engine .time\_scale and set it equal to 0.5. This means that we will go at half speed. Then when our timer runs out, let's set this back to default because otherwise we will actually still be slowed down when our scene reloads.

**51:37** · So, we'll go engine .time\_scale and set it back to the default one. And if we play this now, this is actually already much better. Notice that it also takes twice as long before the game restarts because everything in our game slows down, including our timer. But, I think it could be even cooler if we remove the player's collider to make him simply fall off the map. To do this, we need a reference to the player. We actually already have this here.

**52:05** · You'll notice that after the on body entered here, there's a variable called body.

**52:12** · This refers to the body that entered the area. And since the only thing that enters the kill zone is our player, body is our player. So, we can actually add a new line here that goes to our body, and then we simply need to get the collision shape node under our player. So, we'll do {dot} get node, and we'll search for the collision shape 2D, and we can remove it. So, call {dot} queue free on that node. Again, queue free means to remove that node.

**52:41** · So, here we're accessing our player, getting the collision shape node, and removing it.

**52:48** · And now, if we find our way to some danger, boom, we are hit and we fall off the map. Queue the sound effect.

### Player 2.0

**52:57** · Player 2.0.

**52:58** · So far, we've been using the character movement template pretty much as is, but we need to modify it in order to add animation to our player as well as change the key bindings that we use to move. So, what are we looking at here?

**53:13** · Well, the top two lines define two constants with our speed and jump velocity. There's also a variable here that defines the gravity based on our project settings. By default, this is a value of 980.

**53:27** · So, we have these three values, but the meat of the script is really inside of this physics process function. Physics process is very similar to the process function we used for our enemy. However, while process is great for a lot of things, there is one part of the game engine that really struggles with not knowing how many times per second it is going to be run. That is the physics engine. Physics in general need to update at fixed intervals to avoid janky behavior.

**53:53** · Luckily, physics process solves this problem because it runs at a fixed rate, 60 times per second by default. This is independent of your game's actual frame rate and helps physics run smoothly. We use it for anything that involves the physics engine like moving something that should collide with its environment such as a player character. So, in this function a few things are happening. If the player is not standing on a surface, we add gravity. If we press the space bar and the player is on a surface, we jump.

**54:21** · And then we get the direction we need to move in based on what arrow keys are pressed and move accordingly. Now, let's start by rebinding some input keys. For this, Godot uses an action system. We create actions for anything we want to do in the game. Jump is an action, so is move left or move right. We can then bind keys to these actions. Let's try it out. So, let's go to project, project settings, input map. And here we can add some actions.

**54:49** · I'm going to add a jump action as well as a move left and a move right. Then we can use the plus sign over here to bind a key. So, to my jump here, I'm going to hit plus and then it's listening for input. So, I'm going to press the space bar and hit okay.

**55:06** · Now, as you can see, space is now bound to jump. For move left, I'm going to bind the left arrow key and I'm also going to bind the A key. So, we can use vast for movement as well. As you can see, there's no problem binding multiple keys to the same action, which is really handy. I'm also going to bind right arrow to move right as well as the D key.

**55:28** · And now we can use these actions in our script. By default, Godot uses some built-in actions that are meant for navigating UI. This is why it says things like UI accept here. Let's replace these with our own actions instead.

**55:43** · And as you can see, it will actually help us by auto completing here. So, I'm going to put in jump for my jump action.

**55:49** · And then for moving left here, I'm going to change to move left. And for moving right, I'm going to change to move right. And now we can use the keys bound to our actions to move around, which in my case are both the vast keys and the arrow keys.

**56:05** · Awesome. The next thing we need to do is to update our player graphics to face the direction we're moving in and to play the right animation. Let's start by flipping our sprite based on direction.

**56:15** · So, just like with our enemy, we first need a reference to the animated sprite node. Again, here we can simply click and drag and hold down control. Again, I'm going to remove the 2D from the name to make it shorter, and then we'll add some extra code to our function. Now, this line here defines a variable called direction that is based on our input. If we don't press any buttons, direction will be zero. If we press move right, direction will be one. And if we press move left, direction becomes minus one.

**56:44** · So, we can use this variable to check if we are moving left or right. I'm going to make some space in the code here and make my own comments as well.

**56:52** · So, use a hashtag for a comment. This here gets the input direction, which can either be minus one, zero, or one. And this down here actually applies the movement. So, in between, we can add a section that flips the sprite. To do this, we check if our direction variable is greater than zero. Well, that means we're moving to the right, and we can set animated sprite. flip horizontally to false.

**57:21** · If this is not the case, well, then we want to check if our direction is less than zero. For this, we can use the else if or elif keyword. So, else if our direction is less than zero, well, then we'll set animated sprite.flip\_h to true.

**57:39** · And now if we play this, we can see that our player sprite indeed faces the right direction.

**57:45** · Now, let's add some animation. So, let's go to 2D view, select our animated sprite, and let's add two new animations. One called run and one for jumping.

**57:56** · In our run animation, I'll add some new sprite frames. Select our knight.

**58:01** · Remember, this is 8 by 8. And I'll simply add all of the frames in the run animation, which stretches over two lines here.

**58:09** · I'll add those frames, set the FPS to 10, and play.

**58:14** · Looks good.

**58:15** · Then for the jump animation, I'll also add a sprite frame.

**58:19** · And there are a bunch of different ways to go about this, but in our case here, I think we should actually play our jump animation whenever we're just in the air. This means that this will also play when we're just falling off a platform.

**58:31** · And for this, we could use a very quick looping animation or simply a single frame. I actually like this one from the roll animation, so I'm just going to use that. Then in our script, we can of course play these animations. So, after we get the input direction and flip the sprite, let's add a new segment which is going to play animations. And here we also need to check our direction variable.

**58:53** · More specifically, if our direction is equal to zero, well, then we're standing still, and we can go ahead and play animated sprite. play the animation called idle. If this is not the case, so else, well, then we want to play animated sprite. play the run animation.

**59:16** · And that's actually it.

**59:18** · If we now start running, we can see our run animation being played. Finally, we just need to add our jump animation.

**59:24** · And here we can use a built-in function of our character body 2D, which is to check if we are standing on the floor.

**59:30** · So, at the top here, we'll check if we're currently on the floor, is on floor.

**59:37** · Well, then we want to go ahead and play our idle or run, so I'll cut this using control X, paste it in here, make sure you tap in. And if we are not standing on the floor, well, then we're in the air, and we can go and play animatedsprite.play our jump animation instead.

**59:55** · So, if we're on the floor and our direction is zero, well, then we're playing idle. If it's not zero, well, then we're playing run. And if we're not on the floor, we aren't doing any of those things, we're just playing the jump animation. And that's it. Now, if we play, we have a fully animated knight.

**1:00:14** · I like to think that she's a former princess who got so tired of waiting to be saved from the big bad dragon that she took matters into her own hands. Who better to save some princesses from a dragon than someone who knows dragons like your own back pocket?

**1:00:29** · But, feel free to make up your own story. And that reminds me, story. We need a good way of communicating story, hints, and other valuable information to the player. And to do this, we need text. So, let's add some text elements to our game. Text. There are multiple ways of working with text in Godot, as part of a larger UI or as an integrated part of the game world. For this game, I decided to try making the text part of our world. In Godot, a text node is called a label. So, let's add one. Let's hit control A and search for a label.

### Text

**1:01:02** · Let's focus on it.

**1:01:04** · And as you can see, this creates kind of a bounding box for our text. So, I'm going to put it over here and scale it up a bit. Let's add some text in the field here. I'm going to put in a gameplay hint. And as you can see, the text looks really blurry. That's because since we're using pixel art, we're actually zoomed in really, really far, which makes the otherwise smooth text appear blurry. So, we can fix this by using a pixelated font with hard edges to match our style.

**1:01:31** · I've of course included some in the assets, so let's go under theme overrides on our label, fonts, and here we can drag in the pixel operator font. We can also change the font size under font sizes here. Enable that. And I'm going to set mine to eight. Note that we have to use multiples of eight in order for the text to appear crisp. So, you can see if I change this to nine, it becomes blurry again, but we can use 16, 24, 32, and so on.

**1:02:01** · I'm also going to go to the colors here and change the font color using the color picker.

**1:02:07** · And now we can place these text elements around our game to provide story or gameplay tips.

**1:02:13** · Once we're happy, we can categorize all of them under a node, so let's create a node, call it labels, and drag all of them under that.

**1:02:21** · And now when we play, as you can see, they appear as a natural part of our game world. And just like with sprites, because the player character has a greater Z index, it will draw on top.

**1:02:32** · So, let's use one of these text elements to display our current score.

### Score

**1:02:36** · Score and points.

**1:02:38** · To create a score or a coin counter for our game, we need two things. A script that keeps track of our current score, and a label to display it. It's common practice to place game-wide variables such as a score inside some kind of game manager. So, let's make one. We'll hit control A to add a new node. Let's rename it game manager, and I'll place it right at the top here. The reason why we're using a regular node and not a node 2D is because we don't need our game manager to have a transform, in other words, a position, rotation, and scale.

**1:03:10** · Now, let's add a script to our game manager. We'll use the empty template, and for the path here, let's put it inside of our scripts folder and let's also rename it with non-capital letters.

**1:03:22** · Great. And let's create a variable for our current score. So, we'll write var for variable, name it score, and default it to zero. Now, so far in our code, we've only used the built-in functions of Godot and some that we made with signals. In this case here, we want to create our own function that adds a point to our score and displays it. So, I'll write func for function. We'll name it add point, open and close some parentheses, and put a colon.

**1:03:48** · Then, on a new line, we'll write score plus equals one to increase our score by one and print our current score.

**1:03:58** · Now, unlike ready, which runs at the start of our game and our signal functions, which run when a signal gets triggered, this function currently has nothing that calls it. So, right now, our function is here, but it isn't being run. To change this, we need to go into our coin script and tell it to call this function whenever a coin is picked up.

**1:04:17** · So, inside of our coin script, we need a reference to our game manager. But, if we just click and drag while holding down control, we get this really weird-looking path. This is because the game manager is higher up in the tree than the coins. And it's generally bad practice to use paths like this that try to access nodes at the same level or higher in the tree. Luckily, because our game manager is a one-of-a-kind and we're sure that there will always be only one game manager, we can solve this by marking it as unique.

**1:04:48** · So, let's right-click our game manager and select access as unique name. As you can see, this creates a percentage icon next to the game manager, letting us know that it's a unique node. This makes it much easier and safer to get a reference to the game manager because now, when we drag it in, instead of a dollar sign with a weird and unpredictable path, we get a percentage sign, which means that Godot quickly finds the node via its unique name instead of using a path.

**1:05:15** · One limitation of this is that you can only access unique nodes from within the same scene. If the game manager and the coins were in different scenes, this wouldn't work. Now in our function, we can replace the print line here with game manager, access our game manager, and call the function add point.

**1:05:36** · And now when a body enters our coin, it's going to go to the game manager and run our add point function. And if we play, we can see that every time we pick up a coin, it increases and prints our score in the output window.

**1:05:51** · Finally, we can use what we learned about labels in the previous chapter to create one for displaying our coins. I'm going to make a little place for this in our level.

**1:06:05** · For now, I'll just put in some text that says you collected X amount of coins.

**1:06:09** · I'm also going to change the auto wrap mode to word. Now we can wrap our text and the horizontal alignment to center.

**1:06:17** · Finally, I'll use a bold a font.

**1:06:21** · Now we can take this label and rename it to something like score label. And since we want to change it from our game manager, let's drag it right under our game manager.

**1:06:32** · Now in our script, we get a reference by clicking and dragging, holding down control, and instead of printing our score, we'll go into our score label and access the text property and change it to you collected and then here I'm going to add the number, add the score onto that amount of coins.

**1:06:55** · Notice how I make sure to add spaces between the words. And while this looks good, it's actually going to give us an error. And that's because we need to change this score here from a whole number variable called an integer into a text variable called a string. Again, we'll talk much more about variables in our video on GDScript. But for now, we can cast this using STR for string, and then wrapping it in parentheses.

**1:07:19** · And now when we play and pick up some coins along the way here, once we get to the end, it says, "Great job, you collected six coins." And if I pick up another one, it's going to update to seven.

**1:07:33** · Awesome. And I don't know about you, this is great and all, but I think it's distinctly lacking a bling sound when we pick up a coin.

**1:07:42** · Bling bling bling.

### Audio

**1:07:46** · Bling. Audio.

**1:07:48** · One of the things that often get overlooked when making a game is audio.

**1:07:52** · But music and sound effects are a huge part of building the mood of your game.

**1:07:56** · This is of course a beginner's tutorial, but let's at least get our feet wet, or should I say our ears wet? Nope, I shouldn't. Let's at least add a music track and a pickup sound for our coins.

**1:08:07** · Now, in the assets, I've included a music track as well as a few sounds. And to play these, we need a new type of node, the audio stream player. So, let's add a new node, search for audio stream player 2D. Let's rename this to music.

**1:08:24** · Then we can take our music track here, Time for Adventure, and drag it into the stream slot. We're also going to set it to autoplay. And by default, this is not going to loop. To change that, let's double click it. This is going to open up our audio importer. Here we can preview our music track.

**1:08:42** · Groovy. Anyways, we can loop. So, let's enable loop here and hit reimport. Now, by default, all sounds are played fairly loud, and since this is background music, we probably want to turn it down a bit. We can do this by adjusting the volume on each individual audio stream player, or we can use the audio tab here at the bottom. This is actually a fully functioning audio mixer, and we can add different buses to control our audio.

**1:09:08** · Let's add two, one for our music as well as one for sound effects. And then we can simply route our music here into our music bus. So now we can control the volume of our music using this slider.

**1:09:20** · I'm just going to set it to -12, and we have music.

**1:09:25** · Unfortunately, it's going to restart whenever our scene is reloaded. A quick fix for this is to take our music node and make it into a scene. So, click and drag it into our scenes folder, hit save, and then we can add this scene as an autoload. Autoloads are global scenes and scripts that we want to persist throughout our entire game, no matter which scene is currently loaded.

**1:09:46** · So, let's remove music here from our game scene, and instead go to project project settings, autoload, we'll click the little folder here and navigate to our music scene, and hit add. We've now registered our music scene as an autoload, which means that if we now play, even though our music scene isn't in our game, it automatically loads and start playing our track. And even better, it doesn't reset when our game restarts.

**1:10:14** · Now, to add a pickup sound, we go to our coin and add an audio stream player. Let's rename this to pick up sound, drag in our coin sound, and set the bus here to sound effects. And now we can actually play this sound through script. But since we are removing the coin immediately by calling the Q free function, the sound won't actually get a chance to play.

**1:10:40** · We can of course fix this by adding code that waits until the sound has finished playing, but then we might get weird functionality where we try to pick up the coin multiple times while it's playing, and it will still be visible until the sound is finished.

**1:10:54** · So, let me show you a really cool trick to get around tricky timing things like this without writing any code. That is using an animation player. So, let's add an animation player.

**1:11:06** · And here we'll create a new pickup animation.

**1:11:10** · And the first thing that we want to do when we pick up the coin is to hide the coin sprite. So, I'll go into the animated sprite 2D and this will change the window, so I'll go back to animation here. And now under visibility, I get to keyframe the visible property. Now, when working with animations that don't need to play until later in the game, it's nice to be able to go back to the default values after animating. By default here, our coin should be visible. Now, this is pretty cool. If I just create a keyframe here for the default value, Godot is going to ask to create a reset track.

**1:11:41** · If we say yes to this, Godot is automatically going to create another animation track called reset that will simply reset this value to its default state. So, now in our pickup animation, we can keyframe frame it to whatever we want. In our case, when we pick up the coin, we want it not to be visible, so I'll disable that, keyframe it, and then if we want to go back to our default values, we simply go to our reset track and there it is. It goes back to default. So, let's go to our pickup. Let's also modify our collision shape.

**1:12:12** · We don't want to be able to collide with it while it's playing the sound. So, let's simply go ahead and add a default key here for the disabled property.

**1:12:21** · Hit create. And now we can set disabled to true and add a new key. We can also go into our pickup sound here and let's add a default key for the playing property. Let's hit create. And now since the sound plays pretty quickly, I I can't actually reach the key in time, so we can go down here instead. I'm just going to scale this up a bit. Go down here to the value, the keyframe here, and change it to on. So, we can actually modify the keyframes here as well.

**1:12:49** · So, now we have our pickup animation and if we go to reset, we can see that everything goes back to default. So, that's just a nice way of working with animation. So, now we play the sound, disable the collider, and hide the sprite. After 1 second though, we can go ahead and remove the coin from our scene. So, all of these keyframes here are on second one. Let's put them over to right at the beginning of our animation at second zero. And then after 1 second here, we want to remove our coin.

**1:13:19** · And this is a really cool part about the animation system is that we can actually add another track here, a call method track, that is used to calling functions. So, on our coin, we want to call a function and I'll right click right where we want to do that.

**1:13:36** · Insert key and the function that we want to call is the queue free method, which is right here. And so now, after 1 second, it's going to call the queue free method on our coin without us writing any code. And voila, all the things we could have done through code are all inside this animation. And again, to get back, we simply choose reset. Now, all that is left is playing the animation through script. So, in our script, we'll get a reference to our animation player.

**1:14:03** · And then instead of directly calling queue free, we'll go animation player.play pickup.

**1:14:09** · And if we play now, we can hear our music and we can hear our pickup sound when we run into the coins.

### Expoooort!!!

**1:14:16** · Awesome.

**1:14:17** · Export. Finally, we are ready to export.

**1:14:21** · Really incredible that you made it this far. You can feel very proud. So, let's get our game out of Godot so we can share it with others. Godot can of course export to many different platforms, but I'm on a Windows computer here, so let's go ahead and make a quick Windows build. The first time we are exporting our game, we need to download the export templates. These are a little large, so to keep Godot lightweight, they aren't included by default. To To them, we go to editor, manage export templates, and hit download and install.

**1:14:51** · And the export templates are installed and ready to be used, so we'll close, go to project and export. In this window, we'll add a build platform, so let's go add Windows desktop. We'll enable embed PCK, which will export it into a single file. Then we scroll down. As for the product name here, I'm going to type in Princess Dragon Slayer.

**1:15:13** · And we can hit export project. I'm simply going to put this on my desktop, uncheck export with debug, and hit save.

**1:15:20** · This warning is not a problem. We'll hit okay. And now on the desktop, we have this firstgame.exe.

**1:15:26** · We can open that up, and voila.

**1:15:29** · We made a game.

**1:15:40** · Woohoo! And that's it. Congratulations on making your first dish, or I mean game, in Godot. If you don't understand everything or aren't sure about where to go from here, don't worry. That's totally normal. It takes a little while to become familiar enough with the tools to feel really free with them. Never hesitate to use the documentation, tutorials, or code examples you find online. When I started out, I spent a lot of time remixing other people's scripts before I started to write my own. Now, where do you go from here?

### Where to go from here?

**1:16:10** · Well, that's totally up to you. But if you want to continue adding to this game, here's the list of things that you can try out. Expand the level. See how far you can get using just what you know now. I think you'd be surprised with how much fun gameplay you can get out of just these simple elements. Add effects, like an animation or particles when picking up a coin, or more sound and music. Add more danger elements, like spikes or traps that turn on and off.

**1:16:34** · Most of these are just variations on the kill zone we've already made. Add a main menu, more enemies, give the player a weapon, or add power-ups. You can also expand on the game manager, for example, to use it to switch scenes. A common way to do this is by turning it into an auto load, just like we did with our music track. Or perhaps you want to improve player movement by adding coyote time and double jumps. The possibilities are endless. Also, don't forget to check out Zenva Academy. Be among the first 50 people to use the coupon code below to get 20% off the first year of your Zenva subscription.

**1:17:05** · And that's it for making your first game in Godot, and I wish you the best of luck on making your second one.