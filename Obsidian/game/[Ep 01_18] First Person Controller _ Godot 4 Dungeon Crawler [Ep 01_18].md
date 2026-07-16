---
title: "First Person Controller | Godot 4 Dungeon Crawler [Ep 01/18]"
source: "https://www.youtube.com/watch?v=Elp-YTQeTTg&list=PLT26e2jOwbdg&index=2&t=2s"
author:
  - "[[The GameDev Tavern]]"
published: 2026-07-01
created: 2026-07-16
description: "Learn how to create a 3d dungeon crawler from scratch in Godot!In this first episode, we showcase the game we'll be building. We then work on our first person character controller.Play the final g"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=Elp-YTQeTTg)

Learn how to create a 3d dungeon crawler from scratch in Godot!  
  
In this first episode, we showcase the game we'll be building. We then work on our first person character controller.  
  
Play the final game here: https://gadgaming.itch.io/goblinsdencourse  
  
Having an issue? Download the project for this episode: https://github.com/nicolasbize/goblins-den-course/archive/refs/tags/v0.1.zip  
  
Enjoy your stay at the tavern!  
  
#godot #gamedevelopment #gamedev #tutorial #pixelart #dungeon #fps

## Transcript

**0:06** · Well, well, hey there, fellow traveler of the internet, and welcome to the GameDev Tavern. Is this your first visit? Come on in, grab a seat by the fire, and relax with me as we create fun little games together. My name is Nicholas, and I've been a software engineer for more than 20 years. And in the past 10 years, I've been leading several engineering teams working on chat and Gmail at Google. So today, after a long awaited one-year wait, I'm really excited to kick off a brand new course. This tutorial series where we are going to create a 3D dungeon crawler from scratch in GDAU. Now, this tutorial series is going to be somewhat advanced.

**0:38** · We're going to be covering a ton of interesting topics such as shaders, state machines, composite nodes, ragd doll physics, and so forth, all mingled with 3D graphics. And while we're going to be staying away from complex math, uh this isn't really meant for beginners who are just learning how to code. So, if you're just getting started in GDO and you haven't yet completed my other 2D tutorials, I'd actually strongly suggest that you head over there um instead and then just come right back after.

**1:02** · However, if you're already familiar with GDO's 2D world and you want to get your feet wet in this third dimension, then you'll be right at home here with this course. So, as usual, this tutorial is going to be split into episodes that last roughly 1 hour each. I think there's about 20 episodes in total. And for each episode, you will see in the description of the YouTube video, it you should be able to find a link to the project on GitHub. And this link will be a specific checkpoint to the beginning of the episode.

**1:24** · So if you ever get stuck for some reason, if your code is not working, if you're getting stuck with a an issue in your code, you can just download the project right from a specific episode and pick it right back up and follow along with me. Um, now before getting started, as is tradition in this channel, we're going to spend a few minutes showcasing the game so that you get comfortable with what it is that we're going to create together. And we're going to be building everything from scratch. And when I mean from scratch, I mean we're actually going to build absolutely everything, including the sprites, these sprites here on the wall, the textures, the 3D models, the rigs, the animations, and so forth.

**1:55** · Uh, actually, I think outside of the sound effects and outside of the music, uh, that I created a while back, we're pretty much going to do everything this time. Uh, and the reason for that is I do think getting comfortable working inside this 3D asset pipeline where you have to go back and forth multiple times between a 3D program like Blender and our program like a sprite and then a game engine like GDAU. Like all of these iterations are just something that you need to become comfortable with in order to um to be able to iterate on the game and make fine-tuned gameplay elements.

**2:27** · So, don't worry. We're going to be keeping the art very dead simple on purpose so you can follow along really easily if you're not an artist. Um, all right. Time to hop into the game, and I will show you what we are going to create.

**2:42** · And welcome to Goblins Den. So, this is meant to be a fast-paced dungeon crawler, uh, where the player is meant to go and find gears to go and make progress throughout the level. Um, as you can see here, the player starts off in this jail cell here. And uh there's a couple of things to note. Uh first of all, the art style here is kept very simple. As you can see, it's very close to pixel art, whether it be for those spider webs or even for the textures on the wall. And it is combined with 3D meshes that are very low poly to kind of combine with that same art style. Uh couple of things to note here.

**3:11** · You will notice that uh we have some nice particle effects for the lights, dynamic lighting across the board, and then some nice crackling sounds uh for the fire.

**3:21** · Here, I'm going to go ahead and make some progress. There's a couple of keys that the player can use. W A SD are the standard typical keys to move around.

**3:28** · And then I can use my mouse to move look around as well. I can press F to open the door. And as you can see, I use my foot here. So I'm kicking. Kicking is actually a core part of the game play and can be used to also stun enemies as well. As I progress into the next room here, I'm looking around and I see that there is uh quite a lot of things to look at. First of all, there are some items to pick up and these use a different material that uh that call the attention to the player. So over there there's a shield I'm going to go and pick up. And there is an axe here that I can also take uh to engage with the enemy here. This is my first enemy.

**3:58** · And I have a couple of ways to go about and uh and kill the enemies. Uh one of those is to take this barrel here and to just throw it at them. And you can see here how the barrel destroyed itself. Um we're going to be creating this concept of destructible objects which is going to be quite interesting and reusable in a bunch of other games. Another interesting topic here is that we're going to be working on ragd doll physics. As you saw here, as the enemy got um hit from behind, they got some momentum as they fell uh to on on their face towards the front.

**4:27** · Uh enemies will drop their gear and will allow the player to go ahead and pick and swap uh gears along the way. You can see on the bottom left the condition of my gear, both my shield and my sword. So, as I press the left mouse button, I can swing my uh weapon, and I press my right mouse button, I can parry with my shield. And if I time my parry correctly, I will also stun the enemy. similar to kicking them at the right moment, it will also stun them.

**4:51** · So, there's a little bit of a combination between uh getting into the right rhythm in order to provide the actions and then just uh finding objects around the rooms in order to progress and make some um and and kill the enemies. So, here I'm going to visit around. One last thing that might be interesting here is you may have noticed that uh each of those four rooms are actually the same scene. It's actually the same object, but there's some slight var variation inside all of them. For example, here we have some bones on the ground. We also have some crates at the at the end.

**5:21** · So, we'll find we'll devise a way that we can reuse some of our scenes inside our level when we do our level design, but still be able to create some variety inside each of our scenes. All right. Um lastly, here you can see that this door is slightly different than the other doors. And the reason for this is we're implementing a key system. So, users will have to find keys in order to progress throughout the level uh and go from one room to the next. Let me go ahead and hop over to this room here. And here I see that there's four enemies. We have two types of enemies that we're going to be creating.

**5:49** · Uh one called the goblin here, which is in green, and they have an axe and a shield. They're a little bit uh tougher to kill because they tend to block most of the shots unless we time correctly um what it is that we're doing. And then the coals here on the left hand side a little bit more aggressive, but they don't have the ability to defend. So, we have to just be a little bit careful. Now, I see that there's a weapon here that I can pick up. And um the last thing I wanted to show uh is that we have the ability to throw the current weapon which we have by pressing the R key.

**6:16** · And by doing this, the weapon will just fly over forward to whatever it can find next, whether it be a body or um or a wall. So we can actually use that to our advantage. Uh this person over there is not looking towards me. And as you can see at the bottom, there seems to be a very acidic pool of uh dangerous material that I can um kill the enemy into. So, I'm going to throw my weapon.

**6:40** · I'm going to take this weapon, go over there, try to block the shot, and you can see here that we have additional traps around the level as well. These spikes also uh are pretty dangerous.

**6:49** · These guys will start engaging me right away, so I just need to be a little bit careful. So, let's see if I can uh do this. So, I'm going to throw my weapon here, grab this one, block the shot, push this guy into the spike, and engage with the cobalts here. All right, I'm getting hit here. And as you can see here, as I engage with the cobalts, um they're they have life indicators at the top. I have my own on the bottom left.

**7:10** · And um yeah, they don't have any ways to defend themselves. So I can just go ahead and I just need to be careful here. Grab this. There you go. All right. Uh we didn't quite see it well, but uh the last enemy inside this room actually dropped a key, which I happen to take. You can see on the bottom right part of my screen, and this will allow me to make some progress in the level.

**7:32** · So, as you can see here, uh this uh uses a specific shader which we're going to create from scratch, which has this nice kind of liquid vibe to it. And I think it's a really cool effect combined with like this green, uh light, I think it it just creates for a nice atmosphere. Um all right, we're going to keep going here and let's see what else do I need to show you. So, uh let's see. So, if I kill this guy and Oh, the barrel. So if if um the the barrel is thrown against someone who has a shield, they will also get disarmed. Um all right.

**8:06** · Uh let's see what can I do here. Okay, I'm going to keep going. So once again, I have a door here that requires a key. So I'm going to go over there to open it. Um you can see here in this level that uh we can create some really interesting designs inside our rooms. It doesn't have to be square rooms. There is a lot of of possibilities with the ways that we'll be creating our walls which can create some interesting designs. Uh one part here that you will see is that we are going to implement some path finding for the enemies. So there is kind of this big pillar in the middle.

**8:33** · There's actually another enemy in the back and I'm going to run around so you can see kind of how they actually um work their way alongside the model without running into these uh uh without running into these spikes. You can see how they avoid all of those spikes. So uh they also avoid the acid traps by default. And so that also makes it for interesting movement as well.

**8:55** · All right. And I wish I could have shown you the key again, but I just picked it up right away. Okay. And we're almost done with the level here. I'm just going to finish this really quickly.

**9:06** · And uh let's see what can I do here. Can I finish with this guy? Kill him like this. And let's see. I think this guy for you.

**9:16** · All right. More. There we go. And there it is. So, this is what we're going to be building over the course of the next 20 hours. I'm really excited uh to see us work on this together. I think it's a fun fun little project. I think it looks really cool. Even though we're using like very simple assets, uh it will really demonstrate and showcase the ability of God to shine inside the 3D world. And again, we can publish this on web and you can have your friends play it. We can also have people play it on mobile. It's fully compatible. It looks awesome and I'm really excited to work on this with you.

**9:48** · All right. So, a couple of things that you will need in order to go through this tutorial. Um, of course, you will want to probably have the latest version of GDAU. I'm currently using version 4.6.3, which uh as of today on June 2026 is the latest stable version, but feel free to pick up the most recent version of GDAU.

**10:05** · And hopefully things should still be backwards compatible. You'll also need to download uh Blender. Um, currently I'm using version 4.4.3. And again, I think any version four should do as well. And then just use any image editor. Um, I currently use A-Prite, which is a paid app. Uh, I think it cost $20. I think it's very worth it if you have not invested um there, but you know, you should be able to follow along with just about any image editor as well. So, let's just go ahead and get started.

**10:32** · Uh, the objective of this very first episode is to start nice and smooth and we're just going to create our very first uh person controller from scratch. So, let's go ahead and kickstart GDO. All right. So when you start GDU, let's go ahead and click on create for a new project here and give it a name. I'm going to call mine uh goblins den uh course, but feel free to call yours whatever you want. And then importantly, the renderer. We're actually going to be picking up the compatibility. You can actually see that this is the one that has the least advanced 3D graphics.

**10:59** · Now the the main purpose again behind all of those tutorials, I love to be able to just publish those things on each.io.

**11:07** · Um, so you can just showcase those on web really easily to your friends, but you could definitely go and pick a different renderer if you wanted to do more advanced 3D. We're going to keep things very simple on our end. So, this is just more of a way to uh make sure that it's easy to distribute. I'm going to be using Git. I strongly encourage you guys to you do the same on your end, but if you're not familiar or if you don't want to learn about it, don't don't worry about that. Um, I do go into Git a little bit into the uh the soccer course, and you know, if you have not done that as well, just go ahead and pick that up. So, let's go ahead and click on create. All right.

**11:37** · Once you're in the dough, the first thing that we're going to be doing is setting a couple of project settings. So, if you go into project project settings, couple of things you'll want to do. First of all, just go over into uh 3D physics. And you want to make sure that you have the jolt physics engine picked up. This is just a much better engine than the default um goto physics. And so, just go ahead and pick that one up. And then if you scroll to um rendering textures, you'll also want to change the texture filter from linear to nearest.

**12:07** · And this will ensure that uh as we're working with pixel art, nothing gets blurry. Everything is kind of crisp and pixel perfect. You can go ahead and close. And then we're going to get started on uh our first scenes here.

**12:18** · All right. So, we're going to need a global container for our game. I typically like to create a 3D scene for this. Press F2 to rename. I'm going to call this world. And let's go ahead and save this into um let's create a couple folders here. I'm going to create a first folder called scenes. We're going to have all of our scenes down the line.

**12:34** · And then let's create another folder called world. And let's keep the default name and press save. So we have our world uh ready to go here. Let's go ahead and create a ground. So clicking on the world node, I'm going to press Ctrl+ A to create a new um subnode. And let's go ahead and find the mesh instance 3D. Let's pick as far as the mesh is concerned a box mesh. There we go. And then click on the mesh itself.

**13:01** · We're going to change the size to 10 m\* 1 m high\* 10 m u long. Uh so this is 10 x 10 x 1. I think this is fine. Let's keep the color. And let's call this uh ground. We'll be changing this down the line, but this is just for us to test the uh player controller. Uh next, let's go ahead and add a camera to the scene.

**13:21** · So click back on world control A camera 3D and let's bring this up here. So if you press F5 now you should be able to start the game. First of all it's going to ask us to pick a default scene to start and we're going to pick the current one. That's actually what we want. Uh we want to play with the world.

**13:38** · Um you can see here first of all there's a little bit of a concern. There is no light whatsoever. And the reason for this is that by default in GDAU uh we have a pre-built uh environment lighting uh which are those two icons here. You can actually toggle them off and you'll get right back to what we were seeing when we were uh playing the game. For now, what we're going to do is you can actually take those built-in uh lighting and environment and add them to our scene.

**14:04** · So that's what we're going to be doing.

**14:05** · We'll tweak them down the line, but you can do that by clicking this uh three dot menu here. Click on add sun to scene, which is going to add this directional light. And go back to the menu here and click add environment to scene. So, this adds those two nodes.

**14:19** · And we'll be playing around with all of the uh settings here as we get into the lighting part of um the tutorial. But for now, let's just keep those as is. Uh I think it's perfectly fine. You can press F5 to just make sure that now the light is uh there. Okay, perfect. So, we're ready to go and start our character controller. So, let's go ahead and create a new scene. And typically there's a couple of things you'll want to ask yourself as we create this character controller. So first of all, every time you create a new object, you'll want to ask yourself, what type of node do I want to create?

**14:47** · Um, good has just so many different built-in nodes. And typically for anything that requires any sort of collision, um, you'll want to have some form of body, and as you can see, there's just a lot of um, bodies that are pre-built and that good offers right out of the box.

**15:03** · Um, we'll we'll want to keep control of the player. So we'll we won't want to have a rigid body 3D. these uh the movement there is generated by physics.

**15:12** · Um so we don't want to do that and we don't want to have a static body either um because we'll want that body to move and animate. So I think really the best node that good has created and built in is this character body 3D. It has a built-in function called move and collide move and slide um which really allows us to glide alongside the walls and it's just a a very handy uh node altogether. So let's go ahead and pick character body 3D.

**15:36** · Another question you may want to ask yourself is um you know if you think ahead like hey my character and my enemies are probably going to have a lot of things in common why don't I just create like a common scene and then both the character and the players can inherit from that scene and you know this is typically what I've done in the other tutorials and I think it's it's perfectly fine. I do think that as you create more complex games you will see that this model of inheritance um quickly draws a lot of limitations and uh you run into bottlenecks. you end up just creating um things that you don't want.

**16:07** · And so typically people as they build more complex games uh this is what we're going to be doing here is we favor a model called composition which basically we're going to create sub nodes. Each of those nodes will be specific attributes. So for example, we'll have a node for the equipment, a node for the health, and you can then have those nodes on the character, you can have those nodes on the enemies, and they will share those common traits and attributes, but it won't create this uh sort of uh tied inheritance model. Uh so it will actually create a lot of flexibility and freedom.

**16:37** · So anyways, we don't need to worry about that right away. For now, I'm just going to press F2, rename this to player, and I'm going to go ahead and start by saving this into uh let me go back here into scenes, create a new folder called player.

**16:49** · Actually, let's uh do character characters and let's create a player folder here and keep the name player.tscm.

**17:02** · All right, you will see that it starts complaining because this is a body wants to collide with things and so it's complaining that it does not have any shape. It can't collide or interact with other objects. The first thing we're going to do is actually uh create this.

**17:12** · So, we're going to press Ctrl+ A to create a new subnode. And let's go ahead and add a collision shape 3D.

**17:19** · And we can give that name. I think that's fine. Uh, it's complaining that it doesn't have a shape. Let's go ahead and add that on the right hand side in the menu. Go ahead and click on shape.

**17:26** · We're going to take a capsule. This is pretty typical for um, you know, for characters. It's a nice way to kind of slide against the walls. Uh, and has a nice height and so forth. Uh, click on the shape itself. We're going to make a couple of tweaks. Uh, 2 m high is a little bit too much for my taste. We're going to make our characters a little bit smaller. Um, think about all of the small people out there. 1.7 m is fine.

**17:48** · And then margin. I'm actually going to increase this because I I want to make sure that this does not go through the wall. So, let's set the margin to uh 30 cm. Uh, so 0.3 m. And um, let's see what else. We will want this uh collision shape to actually be uh starting at the origin here. So, if you go into transform, we'll want the Y position to be half of the height. You can actually go here and type 1.7 divided by two and good will do the math uh directly for you. So now it's nice uh nicely placed here. Okay, we'll actually want the camera to follow the player.

**18:20** · So we're going to make the camera a childhood of player and then we'll get rid of the one in the world. So go back on player, Ctrl+ A, click on camera 3D, and um here let's go ahead and make some changes to the position as well. Uh let's go into I think field of view is fine. Let's click on current to make sure that this camera gets picked up. And then in transform let's bring this up in the position. We'll bring this up uh by 1.5 m.

**18:50** · And by default um you can see that the camera is headed is looking towards the opposite uh direction of the z-axis.

**18:59** · This is actually the standard default um uh um paradigm that by that that we're going to follow. Basically, every character, everything kind of is facing towards a negative Z axis. Um so when we do play with Blender, we bring things in here. Um Blender has a different set of axises. This the Z axis is actually the Y-axis in Blender. So we'll just need to make sure that everything works well when we bring things from one end to the other. Um I think we're okay here. Let me uh tweak the near.

**19:27** · I want to make sure we don't look through the walls either. Let's set this to zero. I think it's going to bring this down to like the little littlest possible. 0.001.

**19:37** · And we're going to need to have access to this camera in our code. So, right click and then access as unique name so we can get started on the code. Uh actually, let's h bring the player over to the world. So, uh go back to world and I'm going to press control shift A to instantiate an object. And I'm going to pick player here. It's a bit hard to see. See, it's a little bit underground, but I'm going to bring that player up here.

**20:01** · And I should be able to delete this camera and go ahead and press F5. And I have my player uh playing as the player. So, this is the camera from the player uh point of view. So, we're now ready to get started and write the script to um have the player start to look at and move alongside the um uh move move on the ground. And for that, we're going to need to set a couple of handy keys uh and key mappings so that uh good understands how we're going to move using the WD key, the jump key and and so forth.

**20:35** · So, let's go into project project settings and here go into input map and we're going to add a bunch of actions.

**20:41** · All of the actions for our game, we're going to start adding them right now.

**20:44** · So, the first one is the movement keys.

**20:46** · So, we're going to have forward, press enter, and I'll set the keys after.

**20:50** · Let's just go ahead and add all the actions for now. So, let's uh the second one's going to be backward when you move back. Strafe left. Strafe right. Let's add a kick action. Uh a use action.

**21:04** · Running will be done using the shift key. Blocking with the right mouse key.

**21:09** · Uh let's call it just a generic action.

**21:11** · Um because it's also used for both using and picking up uh weapons. So, this is going to be the left mouse key. throw is going to be uh the R key and jump, I think. Uh oh, and then restart. So, if you die, we'll also allow the user to just restart the level from scratch. I think this is all of our actions. Let's go ahead and assign keys and mouse um buttons to these. So, I'm going to press the plus key here. Forward, I'm going to press the W key and press okay. And then let's go through them one at a time.

**21:42** · Backward plus S key. Okay. strafe left plus a key. Okay. Uh strafe right is going to be D key. Kick is going to be F.

**21:56** · Use is going to be E.

**21:59** · Run is going to be left shift.

**22:02** · Uh block here is going to be uh so if you go to mouse button, right mouse button here. And then action, we're going to do mouse left mouse button.

**22:15** · Throw is going to be R.

**22:18** · Jump is going to be space. And restart is going to be uh let's just reuse R.

**22:24** · That should work.

**22:27** · Okay. So, I'll pause here for just a second. Making sure you have all of these. Forward, backwards, strafe left, strafe right, kick, use, run, block, action, throw, jump, and restart.

**22:42** · All right. So, go ahead and click on player. And then we're going to press this plus key here, this plus uh icon here in order to create a script. Let's keep this name by default and click on create. And we're now ready to start working on our character. I'm going to go ahead and zoom in here just to make sure you can see this properly uh on YouTube. I think it should be fine. And I always like to give my scripts uh class names because they're typically easy to reference in other areas. Uh I'm going to call this player. We're actually going to make a couple of tweaks uh because I want to enforce strict typing.

**23:11** · I think this just a good habit to have whenever you work in GDScript. All right. And you can do this by going into project project settings and then if you scroll down to debug GDScript there is two settings that I like to set. One of them is unus signal here which is currently emitting warnings. I'm going to set that to ignore. The reason is in our codebase we will have classes that will just define signals meant to be used across the entire codebase but those classes themselves won't be using those signals.

**23:38** · So it's going to trigger a warning. We just don't want to see those. Uh so let's set that to ignore for now. And then the other uh setting that I like to set is the end type declaration. So set that from ignore to warning. This kind of enforces our code to be pretty clean with strict typing across the board. Let me just uh illustrate with a quick example here. Uh let me go into the ready function and I'm going to declare a variable called t. And I'm not going to define a type. I'm just going to assign a value of two. Let's go ahead and print it. If I press F5 now, it's going to issue a warning here.

**24:06** · And if you close this and go down, you can see, hey, that the variable T has been declared, but it doesn't have a type.

**24:13** · And so this kind of prevents you from having like nice autocomplete and so forth. So I always like to just have typing across the board. You can add typing uh by one of two ways. First way is to have GDO try to guess it by itself. You can just do this with a semicolon with a colon and then the other path is just to manually indicate the type. So now when you press F5, the warning is gone. So, we're going to be using this across the board. Okay. So, we want to be able to um start doing our first person view. There's basically two components to this. One of them is looking around and the other one is moving around.

**24:43** · So, let's go ahead and start with um maybe let's start with looking around. So, looking around is basically what we want to do is we want to capture the uh mouse's motion. Here you can see my mouse moves across its x-axis and an xyaxis. It's a you know 2D canvas. Um, and the way that good works is basically there is a very handy um builtin function where you can catch any sort of event that is happening in your game whether it be your mouse moving your mouse clicks um joyad or gamepad uh input and so forth.

**25:15** · So we can invoke this by going to the underscore input function. Oops.

**25:25** · And here we want to be able to let's just go and filter out the type of event that we are seeing. Okay. We want we're focused on an event type called input event mouse motion.

**25:37** · Okay. And we can um there's two properties as part of this. You can look into the documentation here.

**25:44** · But one of them that is interesting for us is the relative uh property. This is basically the mouse motion relief to the previous position. So every single frame we're going to see this give a vector 2 the number of pixels that have been moved towards the left towards the right and then towards the top or towards the bottom. Actually let's print this. It'll be easier to see. So whenever we are moving the mouse when the mouse is we're capturing this input. Let's go ahead and print out um our event relative.x and event relative.y. So both of these are floats. So let's go ahead and uh format this in a nice way.

**26:28** · All right. If you press F5 now, oh actually let me just pause here for a second so you can see the code because this is just a nice way to form uh formulate strings where basically you pass in the type of variables that you need to indicate and then you just declare them in a table after. All right, pressing F5 here. So, whenever I m move my mouse, I'm going to bring this up. Move my mouse towards the left, you can see here that the x value shows me the number of pixels that have been moved towards the left. And then same thing on the y-value.

**26:55** · So, when I bring my mouse towards the left, I have negative values for the x, which means that there's, you know, an amount of pixels that are being um crossed through. So, we're going to be using this, and basically, we'll want to rotate our character uh according to these motions. So if I go into the 3D view here, just to take a second a little bit, I'm going select my player and um so here what you can see is when I move my mouse towards the left, I want to rotate my player this way, right?

**27:25** · Like I want to start looking towards this axis here. And you can see here the rotation angle is positive. So when my mouse moves towards the left, I'm going to have a negative value for my X here.

**27:35** · Uh I want I want to have a positive angle. Uh, so I'm going to reset this to zero and I'm going to go into the code and we're going to just write the code for this. So we want to rotate the camera, uh, sorry, we want to rotate the player alongside its Yaxis here.

**27:53** · So rotate Y and minus event.relative.x.

**27:58** · So my my mouse motion on my horizontal motion will rotate my camera. You can go ahead and try this. Press F5. And you can see that while the rotation works well, it's actually pretty jaring. It moves way too fast. And the reason for this is because the argument given to the rotation here is uh in radians. And just radians is just a different scale to measure angles. But just as a quick um reference, basically pi, which is 3.14, uh equals a semi- turn 180° angles. And so two pies is 360.

**28:27** · So you can imagine that when I move my mouse left a little bit and I do like six pixels between two frames, I've done um you know 720° uh difference. So we want to multiply this by a very small amount so that we actually have smaller uh increments of rotation. So for that we can introduce a variable called uh mouse sensitivity uh sensitivity and I'm going to make this a float and I'm going to set that to 0.002.

**29:02** · Feel free to play around with this value and see what works best for you. And then I'm going to multiply it here.

**29:07** · Okay. So go ahead press F5. And you can see now the motion is much more acceptable. Again, like depending upon, you know, how fast you want the player to be able to move, you might want to set a different value. And ideally, you would even make this a setting and have the player kind of play around with this and cells, see what feels more comfortable to them. Okay, so we have done the horizontal rotation. Now, let's work on the vertical rotation. Now, the main difference between the two here is that when I move my mouse up or down, I actually don't want to rotate the entire character, right?

**29:33** · Um, if I did that, then the whole body would actually be moving, and that's not what we want. we just want to move the head or in our instance we just want to rotate the camera. Uh so let me go ahead and re revert this change here and I'm going to zoom in on the camera and I'm going to uh go into the local space here. So you can see these are the local base for the camera. You can see it has a different xy and uh zaxis than uh the global transform here.

**30:04** · Uh so what we want to do is we want to be able to rotate the camera on its x-axis here, the red axis. When I move my mouse up, I want this to go towards uh the top. And as you can see here, if I go look at the rotation. So again, when I move my mouse up, the y is going to be negative and the angle is going to be positive. So similarly to what we did for the rotation, we're going to have to we're going to need to have a negative sign here. So let me go ahead and revert and go back into the script. Uh we're actually going to need a reference to the camera. So, one quick way to do this is to right click on the camera 3D, click on access as unique name.

**30:36** · And we can now have access to this in the code pretty easily. We can actually there's a short handy way to do this. If you press control on your keyboard, click on the node and drag into the code, it will actually create an unre variable right away. I'm just going to rename this to just camera. That's all that we need.

**30:53** · And here we'll want to rotate the camera alongside its xaxis minus event.relative.y.

**31:01** · This is the the vertical uh movement of the mouse. And then we'll multiply this by a mouse sensitivity.

**31:09** · Okay, go ahead and try this out. And you should now have full degrees of freedom.

**31:13** · Now, you're quickly going to see that there's a little bit of a problem. As soon as your cursor leaves the window, uh nothing is captured anymore. And the reason for this is because this input method only gets triggered whenever the mouse moves inside the canvas, inside the app. Uh so we actually don't want the mouse to move that much. And there is a handy way for GDO to lock the cursor at the very middle of the of the screen and to actually hide it. So this is what we're going to do. That way we can then have like full freedom.

**31:39** · Um I don't think that code actually belongs in the player code, but that's okay for for now. We'll just set it there and then we'll just move it down the line.

**31:48** · So, inside the ready function, we're going to set the um believe it's input dot set mouse motion. I'll set mouse mode and it's captured here. So, this is going to take the cursor, keep it at the center, and hide it. So, if you press F5 now, you should be able to uh look around, and this should behave much better.

**32:13** · Um, now that you're able to move around with a lot more freedom, you're actually going to see the last problem that we have, which is that the player can keep looking up independently. And same thing, you can keep looking down.

**32:24** · So, unless you're a really good gymnast, that's not what typical uh human bodies do. So, we'll want to clamp, we'll want to limit the rotation of the camera to a certain value towards the top and towards the bottom. So again, you know, I'm going to create some cons for this uh because I've played around with this already, but feel free to create some exported variables and play around with those values to see what fits best to you. I'm going to call the first one max angle lookup.

**32:49** · And again, this is supposed to be in radians. So a quick and easy way to convert between the degrees and um and radians is to use a method called degrees to radians. And I usually like to do this. I think it's easier for me to reason about. Um, so we won't be able to go further than 70° looking up and looking down.

**33:13** · I'm going to say minus 70 as well. So now I'm going to clamp the value of my rotation. Let me just bring this down a bit. Oh, I can't. Okay, let's go here.

**33:23** · Camera rotation.x equals clamp. We can say clamp F because it's a float.

**33:34** · and max uh value look down and max value lookup.

**33:42** · Okay. Uh let's zoom here. I'm going to zoom back once. Okay. I'm going to pause here for a second so you can see the code and go ahead and press F5. And let's just double check that the player is now limited to how far up or down they can see. All right. So, this is actually it for all of the uh vision of the player. You can actually reuse this code anywhere. It's a very generic. You can use that in any sort of firstparty um view games that you may have. I'm just going to remove this print. I don't think we'll need it anymore. I was just to explain the um the event. Okay. So, we are in a good spot.

**34:13** · Now, we can start working on the game characters motion.

**34:19** · So, using wd and moving the body around.

**34:22** · uh for that I'm going to do to do a small recap on transforms because I think it's really important concept to understand in order to do 3D inko. So I'm going to take this room here as an example since it has multiple characters looking in various directions. So in game development pretty much every single object can undergo one of three space operations. It can be moved around which is indicated here by the position.

**34:44** · It can be rotated and it can be scaled.

**34:46** · And good packs all of these three concept into a single object called the transform. And and to be a little bit crisper um that object is really split into two subobjects. So the transform contains something called the basis and something called the origin. And uh those are a little bit harder to see in the editor, but they're really meant to help us understand um the local environment, the local space for each of these objects. So the transforms origin is actually the position. That's exactly the same thing.

**35:14** · Um, and I'm not sure why they're using two different names for this, but if you already worked in GDAU, uh, those objects are exactly the same in memory. And the global transform origin is exactly the same thing as the global position. Uh, but think of it as, you know, this is our world view right here. Think of it as the position of the axis that is local to uh, each character.

**35:36** · So that's the transforms origin. The transforms basis, the second part of the transform is the actual local coordinate system of an object. And you can actually see it inside the editor by pressing the T key or by press seeing this button here to use the local space.

**35:50** · As soon as I press this, you can see that the axis here around the characters have shifted. They're not aligned anymore with the world view. You can see here that inside the world, my Z axis is going this way. Whereas for my character, my Z axis is going towards the their back. And this is something that is uh really important to understand.

**36:09** · These local axis are actually super useful for us because whenever we work with characters for example, well those represent directions that are actually meaningful to the character. So going forward for this character actually means going towards its local minus z axis, right? This is the z axis for this character. So going forward means going alongside the negative z axis. Going to the right well just means follow your x-axis, your local x-axis. If you want to go to the left just means follow your negative x-axis.

**36:35** · And this is super important to remember because we will always uh do movement inside our code looking at it thinking of it from the perspective of the individual characters. Uh we want to make them move according to a direction that makes sense to them. So for example uh on our end if we wanted to move this character forward from where they are we would be multiplying their speed by their forward direction vector which is right now the negative transform.basis.z.

**37:03** · So keep that in mind as we create our first person controller. uh it will be super helpful to understand why we're multiplying uh the transform.basis and not using the position like we might have done inside the 2D world.

**37:16** · All right, so now that we know how transforms work, let's go ahead and figure out how to apply those in order to move our player inside the scene. So for this, let's go into the script. And if you remember, we inherited from this special class called character body 3D.

**37:31** · Let's take just take a minute to figure out how that class actually works. So I'm going to press control on my keyboard and then click on this name here. So it shows me the documentation for character body 3D. So character body 3D is a 3D physics body which means that it will collide with other bodies which is specialized for characters that are moved by script and that's really critical. This means that we are the ones moving the character. It's not going to be moved and affected by the laws of physics. So whenever we work on our gravity for example, we'll have to actually manually uh write the code for it and um and move the player ourselves.

**38:04** · Um the main API, the main function that's available by character body 3D which is super useful is this method called move and slide. Basically when you call move and slide, uh goodo tells you that you it will take care of all of the collision detection and slide against the walls and slide against the ground um as needed. So this is just super handy. it will avoid us from writing a bunch of uh boilerplate code ourself. So let's figure out how move and slide actually works. I'm going to go ahead and click. Move and slide means that it's moving the body based on a vector 3 called velocity. This is a property of character body 3D.

**38:35** · Um and if the body collides with another, it will just slide alongside the other body rather than stop immediately. So again, this is just super handy. That's exactly what we want for our character. If you click on velocity here, it will give you a little bit more details about this vector. It's a vector um typically in meters per second is actually what we're using on our end uh which is used during the calls move and slide. So the only thing we need to do is to set this velocity vector and then call move and slide and then good will just take care of everything else.

**39:04** · And then a quick note that's a pretty important here is that a common mistake is setting the property to the desired velocity multiplied by delta which produces a motion vector. So if you remember in my other tutorials, uh we typically had to multiply our movement by delta in order to have frame rate independent movement.

**39:22** · Um here good is telling us I'll take care of this all you know already. So just give me a velocity meters per second. Don't need you don't need to think about the frames. It doesn't matter how often uh you you're calling um where you're calling things. Just give me a velocity meters per second. So a quick example here. If I was to go into my process method and indicate a velocity of let's do vector 3. So this is just one one m/s towards the towards the sky. And let's call move and slide.

**39:56** · If I press F5, I should now have the uh the player just start floating away at 1 m per second. Okay. So this just indicates that move and slide is working accordingly. And if we had, you know, some some um colliders up in the sky, you would automatically slide against them. So again, it's just super convenient. So now we just need to figure out how do we set this velocity vector. And basically, again, just going back to what we learned about transforms. Um here, um velocity and movement slide, they don't care about what the player is. So we don't care about the transforms origin.

**40:26** · The only thing we need to know is the directional vector. So where are we headed? So, if I go into my character view here, and I'm going to go into the local space. Again, you can do that pressing the T key, and I'm going to rotate this a little bit.

**40:40** · Basically, um, as I press the WD key, I'm going to have my player move forward, backwards, to the left, and to the right. So, it's going to again apply this, um, translation transform that we talked about earlier, and we're going to apply it to the basis of the character.

**40:57** · Um, and automatically then we will have the desired velocity. So I'm going go ahead and press Ctrl +-Z once again. Go back to the initial state. Let's go into the script. And here we'll want to first capture what the user is uh typing.

**41:11** · Actually before getting there, something that's very important here, we put move and slide as part of process. And there is a second method that is also called as often as possible called physics process. The main difference between the two, and you can look at the documentation as well, is that physics process is actually executed every single frame where it's able to do all of the collision detection and all of the physics magic. And this is sometimes skipped. Um, if your scene is extremely heavy, if there's a lot of computation happening, this may not be executed 60 times per second.

**41:43** · This one, it's it's guaranteed. It's going to go as fast as possible. But what that means is we probably want to do the movement and the collision detection of the player as part of the physics process. Otherwise, we may actually go through walls or go through doors and so forth. So, let's go ahead and set this here. And um and again, this is very very important.

**42:02** · Every time you do movement uh and collision detection and so forth, it has to be done as part of physics process.

**42:08** · The one part that we'll want to try to capture as much as possible though is the players input on the keyboard. uh we don't want that to be part of physics process because in case a frame gets dropped uh because again if your scene is complex then we'll have what's called a a ghost mapping. So basically the player will you know hit a key and it may not be captured because we'll have skipped the frame. So because of this we're actually going to capture the input uh of the player as part of the process method. We're going to buffer that and then we're going to use that variable's uh value as part of the physics process.

**42:40** · So let's go ahead and introduce a variable called input direction.

**42:46** · Maybe just input there should do. And for now it's just going to do a vector 2. And this is going to represent what the player is hitting. W A SD. Uh so if the player presses W, then this is going to be vector 2.up. If the player presses D, it's going to be vector 2.right and so forth. Um there's actually a very handy method to fill this in and we'll fill it as part of the process method here. So we can actually get rid of this input deer equals input.get vector. This will actually fill it exactly what we want.

**43:17** · You can actually go into the documentation again and this basically you specify four actions the negativex positive x negative y and positive y and it will just return to you this normalized vector um where you know think of it as a circle and if you press w uh w is going to be you know the the up direction is going to be the right direction and you can also have diagonals as well but because we're only using wd and we're not using like a joyad or um something that's a lot smoother we'll only have eight possible values we can actually print the content.

**43:48** · It might be a little bit easier. So, get vector. So, here we're going to need the names of the actions that represent the various keys of movement. So, if you remember, we had set those up in project project settings here. So, we're looking at those four.

**44:00** · Strafe left, strafe right, four backwards. So, my negative X is going to be strafe left.

**44:08** · Positive X is strafe right.

**44:11** · negative y is going to be backwards and forward.

**44:18** · Okay. And let's go ahead and print the content of this uh vector.

**44:22** · And uh because I don't have access to my mouse, you'll need to look here down here in the console to see the result here. So when I press the A key, you can see my vector is minus 1 0. When I press the D key, it's 1 0. If I actually press both at the same time, it will cancel themselves out. So zero. Then W and S will produce the exact uh same thing.

**44:41** · Okay, so we have this 2D vector that represents what the player is hitting on the keyboard. And we want to actually translate this into a three-directional vector. We want that to um correspond to forward, backwards, right, and left. And you can see here that in 3D the Y is actually going up. So we're going to transform our, you know, keyboard Y into a uh into a Z. And because of the way that God's orientation system works, you can see that going forward means negative Z and going backwards means positive Z.

**45:13** · So we're going to have to make sure that when we translate our 2D input vector into this 3D space that we um that we properly capture all of this.

**45:23** · So again into the script here and I'm going to remove this print statement.

**45:28** · And then as part of the physics process, let's go ahead and translate our 2D vector.

**45:35** · Uh I'm going to call this input 3D maybe in this 3D space.

**45:42** · So it's a vector 3. So input deer do.x.

**45:46** · This is correct. We don't want to move it on the vertical ax on the vertical axis. And then if you remember backwards this and forward need to be reversed because of the way that the Z axis is headed. So this is going to be minus input deer.y.

**46:02** · Okay. So we now have a threedimensional uh vector that represents the keys that the player is pressing. And so all that we need to do now if you remember what we talked about with transform is just simply multiply the basis by this new uh translation vector.

**46:19** · So our velocity is transform.basis basis multiply by this input 3D space and you can kind of press F5 and see if this works.

**46:32** · Okay. And you can see here it's kind of hard to see but I am moving just very very slowly. So for that we're going to introduce a speed uh variable.

**46:43** · And actually it might be a good time to do a little bit of a challenge here. So figure out how to increase the velocity by introducing a variable uh that will allow you to go a little bit faster. And actually um let's take it even one notch further. We're going to be using the shift key to run. So let's introduce two variables. We're going to have two new exported variables. Let's call one walk speed, the other one run speed, and we'll set those to maybe 3 or 5 meters/s. And then we want to uh affect the velocity according to um what the player is typing.

**47:14** · So go ahead, take take a few minutes, see if you can figure this out by yourself, and then you can compare your solution to mine.

**47:25** · All right, so hopefully you were able to figure out the challenge. So I'm going to go ahead and introduce two new variables. The first one is going to be called run speed, which is the float.

**47:35** · I'm just going to keep this in alphabetical order.

**47:38** · Something I like to do, but it's absolutely not mandatory. And then walk speed, which is also a float. And for our player here, let's set run speed to 5 meters/ second, walk speed to 3 m/s.

**47:51** · And all we need to do is basically multiply that velocity. So let's say we wanted to do walk speed and press F5.

**47:57** · Now you can see that it's actually going uh a lot faster. But we actually want that to either be walk speed or run speed depending on whether the player is pressing the run key. I think it's run that we called it. Yeah, run key, the shift key. So for that we can just introduce a new variable called target speed and we're going to use the uh turnary operator. You can write that in three lines if you want but otherwise this is kind of a handy way to write uh code here. So if action is pressed uh run otherwise walk speed.

**48:33** · Okay, I'm going to wait here for a second so you can capture it. So, I introduced two variables, run speed, walk speed, and then here I have a I have a turnary operator, and I'm just multiplying my velocity by this target speed. Go ahead and press F5. Let's go ahead and try this out. So, if I'm not pressing shift, and then if I'm pressing shift, I should go a little bit faster.

**48:51** · Okay. Well, it's starting to shape out and uh and look pretty good. The one thing now that looks a little bit jarring is, you know, the velocity becomes instantaneous. As soon as I press my W key or my shift key, or if I stop pressing them, I instantly go from zero to the desired speed. We probably want to smooth this out a little bit.

**49:09** · So, let's go ahead and introduce a an acceleration um variable.

**49:20** · So, this is in meter per uh second squared. So uh basically every second by how much should it move the speed in terms of meter/s. I typically like to set this to about uh 10 times the uh speed here. Let's try 30. So that means that within 1 second it will go from 0 to 30 seconds from 0 to 30 m/s but because we're only going at maximum of 3 m/s it will take us 100 milliseconds. So a tenth of this to reach the top speed u and I think 100 millisecond is fine.

**49:53** · It's just enough to kind of remove the jarring aspect. But if you feel that's too fast, just you can reduce the acceleration. All right. So, how does how do we introduce the acceleration here? Well, this is um let's not go into the velocity directly. Let's call this desired velocity. This is where we're going to head towards and let's check whether the player has uh you know has has entered any key. So if input 3D space uh equals vector 3.0.

**50:22** · So if the player has not entered anything, let's go ahead and bring the velocity towards the uh vector 3.0 and we'll have the acceleration times delta.

**50:39** · Otherwise, if the player has pressed something, then we are going to move towards our desired velocity.

**50:50** · at a speed of acceleration delta.

**50:54** · All right. And this should work. Go ahead and press Oh, I'm going to wait a second just to so you capt capture the code here.

**51:01** · So, it's going to take 100 milliseconds to go from full speed to zero and then 100 millconds to go from zero to full speed. Here, press F5. And you should now see that things a little bit less sharing. And you don't want to have um acceleration be too slow, by the way, because otherwise it will just feel that you're gliding. I mean, it may actually suit the game if you're, you know, playing on like a different ground surface, like an ice or something like that. Okay, so this works pretty well.

**51:27** · Um, let me just get rid of the uh variables here. Okay, no static type.

**51:33** · That's great. We can actually infer this. And then delta is not used. Let's just have an underscore here.

**51:40** · Okay, and press F5. Just double check that all of my warnings are gone. Um, okay. So, we have working semi- workinging movement. I would say the the last big piece that we're missing is uh jumping.

**51:54** · So, vertical motion. Um, so vertical motion is um is is a little bit similar to what we did here except it's not going to be captured by the WD keys.

**52:04** · It's just going to be captured by whether the player has pressed the space key. And for that we'll need to detect whether the player is on the floor or not. Uh character body 3D actually introduces this very handy method called is on floor. Uh where is this? Here we go. Which returns true if the body has collided with the floor on the last call of move and slide. Otherwise it returns false. So we can actually print this real quick. Uh let's go here.

**52:33** · print is on floor and it's going to return false. So the reason for that is because we're not processing any sort of gravity. If you remember we we're moving the bodies ourselves. So right now the the body is floating in the air. So we'll want to make sure that we process gravity. So let's go ahead and um let me create two separate methods for this.

**52:58** · So let's have one called check jump input and the other one called process gravity.

**53:12** · Okay, let's create those two methods and you know down the line I'm going to be creating a bunch of additional methods.

**53:16** · I I love to have things well um put in their own isolated methods here. So function check jump input.

**53:28** · All right. And you're probably wondering like why are we checking input as part of the physics process when we mentioned that there could be an issue with ghost keys. Well, this is because we first need to check whether we are actually on the on the floor. So if is on floor and input is action just pressed. Be careful this is just pressed. Whereas here we were looking at uh is action pressed. Here we want to capture just a single press of the jump key. This is the jump action. Then let's go ahead and affect the velocity.

**53:59** · So velocity doy and let's introduce a variable called jump force.

**54:08** · So I'm going to go all to the all the way to the top and let's introduce a variable here.

**54:14** · This is going to be a float in meters per second. How how high up the player uh jumps. And okay, it's complaining because we're missing this method. Let's go ahead and create it real quick.

**54:30** · Okay. So, jump force. I'm going to set this to um 12. And then we're also going to need gravity.

**54:44** · It's also a float. And this we're going to set this to maybe 0.98.

**54:52** · Um, okay. Going down here. So, if we're not on the floor, then let's go ahead and affect the velocity on the other way.

**55:08** · All right. So, uh I believe this should work. So, let's go ahead and press F5. And I believe that our player should go through the ground. There we go. Okay. So, uh falling forever. And the reason for that is because we haven't created a collider. So if you go back to our world view here, if you go to the 3D scene, well, we have this mesh. This is just a visible mesh. There's actually no uh collision. Um so for that we can introduce a static body. So click on world, ctr+ a uh click on static body 3D.

**55:37** · This is going to complain saying hey I need to have a shape. Let's take the ground here. So click on ground and then as part of the mesh you can actually create a collision shape directly. And let's give this as a sibling. try mesh is fine. Click on create. This is going to create our collision mesh. You can then click this and drag it into the static body. So now we actually see there is a collider here. And so our player should not go through the ground. Press F5. And now the player is is stuck on the ground.

**56:07** · And if you go beyond the limit, it should actually fall through. So this is fine. And you can actually double check in process here. If you were to print is on ground or is on floor, you should now see that the value turns to true as soon as I'm uh hitting the floor. Okay. And if I press the space key, you can actually see that I'm jumping. Now, it may seem like it's working.

**56:31** · However, you may notice that the movement feels a little bit odd, a little bit junky, especially if you use the WD keys at the same time as you're jumping. And I want you to try to figure out, look at the code and try to figure out where the problem is. What is affecting our velocities? Why? Um, we're only we're only affecting it here, but there's somewhere somewhere else that is actually impacting the way that we're jumping.

**57:01** · So hopefully you're able to uh look at the code and see that hey, when we're changing the velocity here, we're actually changing the entire vector x, y, and z. So first of all we're just you're just assigning uh we just want to play with x and z but here we're also moving towards vector uh velocity y is moving towards zero and velocity is moving towards this desired velocity here the target speed the run speed. So this actually doesn't make sense. We actually don't want to affect the y uh aspect of the velocity here.

**57:30** · And so we can just break this down into the x and z uh coordinates. So velocity x equals velocity uh cause move towards velocity.x.

**57:46** · And so here we're going towards zero.

**57:55** · Let's do the same thing for y uh for z sorry.

**58:00** · And then when we do have an input entered let's go ahead and affect velocity.x X desired velocity X at a speed and we'll do the same thing for Z.

**58:20** · Okay, I'm going to pause here for a second so you can see the code.

**58:23** · I might zoom back a little bit because I feel like it might be easier to see everything. So hopefully you can still see this on YouTube. Okay, so here we're going and affecting the X and Z coordinates and bring them towards zero.

**58:36** · Otherwise, we bring them towards the desired velocity. Go ahead and press F5.

**58:38** · Now it should work a little bit better.

**58:40** · And you should see the movement is a little bit a lot less jarring at whenever you're pressing the uh left and right key.

**58:47** · Okay. And so that's it. We now have like a working, you know, basic working character controller. The last thing we'll do as part of this um episode is to add a small indicator reticle in the middle in the center. so it can be easier to see what the player is looking at. All right, so go ahead and open up your uh image editor of choice. On mine, I'm going to be using a sprite. I really love this app. I do think that if you want to invest in your game development journey, this is one app that's really worth uh paying for. It's about $20. Uh you can actually get the source code and compile it yourself.

**59:18** · But again, like as a way to support the people who are building this, I think it's always great to uh invest a little bit and I think $20 is is just well worth it. So anyways, pick up your image editor of your choice and I'm going to create an image that's just uh a small cursor.

**59:32** · We're going to make this 10 by 10 pixels. Uh have the background as transparent. And I'm going to zoom in here. I'm going to pick the white color.

**59:41** · And then I'm going to go into my filled ellipse tool, which is a shortcut is shift. And I'm just going to drag um from top left to the bottom right. I'm going to go ahead and save this. And I'm going to go into my folder here. and we're going to create a brand new folder called um assets. And in there, we'll put all of our meshes and sounds and uh textures and so forth. And then I'm going create another folder called textures.

**1:00:10** · And inside this textures folder, I'm just going to call this cursor.png.

**1:00:15** · Press okay. And it will save it. And I'm going to go back to GDO here. And you should now see the uh texture appear here. Um all right. So, for this, we're going to need to create a new canvas layer, uh, where we're going to be able to have all of our 2D stuff. We're actually probably going to create a brand new scene for that. Uh, so let's go ahead and click plus. And let's call this user interface. I'm going to um call this UI.

**1:00:43** · And let's go ahead and add control A a new texture rect. We're going to call this um what did I call it?

**1:00:57** · Cursor.

**1:00:59** · Okay, I'm going to zoom in here a little bit. And then I'm going to drag my image into the texture property here. You can see it's actually a little bit bigger than what it should because by default a texture rect has a transform of 40x 40.

**1:01:12** · I'm going to revert this to 10x 10 and then I'm going to go into stretch mode.

**1:01:17** · I'm going to keep that to keep to enforce the size. And then in the layout mode, I'm going to go into anchor and I'm going to anchor it to the center of the screen. Okay. I'm going to go ahead and press Ctrl S to save. I'm going to go into scenes. And here I'm going to create a new folder called UI.

**1:01:35** · And I'm going to save this scene here.

**1:01:37** · And now back into the world. We just need to introduce our UI here. So we're going to need a new canvas layer. Ctrl+ A canvas layer. This is another area where we can draw things and we want to make sure that we don't uh we we always have the UI on top of the game. Uh and let's go ahead and introduce our UI.

**1:01:56** · Actually, we may want the UI to be the canvas layer. Let's do that. Let's go back to UI here. Uh and then right click on UI and then change type. And let's make this a canvas layer instead.

**1:02:10** · Okay. And then let's go back into the world. Remove this canvas layer. going to click into the world scene control shift A to instantiate or you can also click this button here and let's instantiate the UI here. Okay, you cannot really see it but if you switch over to the 2D view that's where you will see what the UI looks like. So now if you press F5 you should now have that reticle the cursor in the middle that indicates what the player is looking at.

**1:02:35** · It may feel a little bit big. I don't know how you feel. Feel free to make it a little bit smaller if you think that's too big but um my vision is pretty terrible. So anyways, so if you're still here after this very long video, well, huge congrats on making it through this very first video of this brand new tutorial series. And look, the scope of this game is going to be quite big, a lot bigger than the other tutorials. So we probably won't have the luxury to go as slow as what we did today. And we're probably going to start going a little bit faster and faster every time during every episode.

**1:03:01** · So you know, make sure that you fully understand all the concepts and all the code that we're writing on a daily basis. Um, if there's anything you didn't understand today, please go ahead and and hop over into the comment section, holler there, and I'll be sure to respond as fast as possible. Um, all right, that's it. So, you know, this channel is still quite new, so if you're interested in learning more about how to create games from scratch, and if you want to support the channel, you already know what to do.

**1:03:25** · Just go ahead and hit those like and subscribe buttons. Let the YouTube gods and algorithms know that this is a channel that's worth watching. So, as you can see here, our ground looks quite boring. So, I think in the next episode, we'll actually start creating our 3D environment with texture walls and ceilings and um and grounds. And it'll be a good way to start introducing our 3D pipeline just when we're going to go from a sprite to Blender and then from Blender to GDAU. Um you'll see the game will start to look already much better.

**1:03:54** · All right, that being said, time to take a quick break and I'll see you in the next episode. Cheers.