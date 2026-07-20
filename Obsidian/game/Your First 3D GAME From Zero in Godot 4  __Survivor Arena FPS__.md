---
title: "Your First 3D GAME From Zero in Godot 4  **Survivor Arena FPS**"
source: "https://www.youtube.com/watch?v=NJJNWGD25rg"
author:
  - "[[GDQuest]]"
published: 2025-05-12
created: 2026-07-20
description: "This easy-to-follow tutorial is the perfect excuse to get into *making a 3D game! In just 1 sitting* , you can complete a *fun and shareable* game while understanding every step and learning the *esse"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=NJJNWGD25rg)

This easy-to-follow tutorial is the perfect excuse to get into \*making a 3D game! In just 1 sitting\* , you can complete a \*fun and shareable\* game while understanding every step and learning the \*essentials of 3D Gamedev\* .  
  
✦✦ \*PROJECT FILES\* ✦✦ https://www.gdquest.com/library/first\_3d\_game\_godot4\_arena\_fps/#download-files  
  
▶︎ \*CONTINUE TUTORIAL in GDQuest's Free Library\* : https://www.gdquest.com/library/first\_3d\_game\_godot4\_arena\_fps/#creating-the-mob  
  
🎓 \*STUDY GAMEDEV WITH GDQUEST!\* : https://school.gdquest.com/godot-4-early-access  
  
🎓 \*GDQUEST'S FREE APP TO LEARN GDSCRIPT\* : https://school.gdquest.com/courses/learn\_2d\_gamedev\_godot\_4/learn\_gdscript/learn\_gdscript\_app#the-learn-gdscript-app  
  
🎮 \*FREE INTERACTIVE TOUR\* to get to know the Godot UI - https://www.gdquest.com/tutorial/godot/learning-paths/godot-tours-101/  
🎮 \*INTERACTIVE TOUR\* to get started with Godot in 3D - https://youtu.be/48ad58jucKw  
  
☛ \*Moving in the 3D view in Godot\* : https://www.youtube.com/watch?v=mK2oSutQLds  
☛ \*Godot Shaders\* : https://godotshaders.com/  
  
🗨 \*DISCORD INVITE\* : https://discord.gg/87NNb3Z  
🗨 \*FOLLOW NATHAN\* : https://twitter.com/nathangdquest  
  
\------------------------------------------  
🎬 \*CHAPTERS\*  
\------------------------------------------  
0:00 Intro: What you need to know about this tutorial  
1:08 The issue with step-by-step tuts  
1:40 Find the Easter Eggs!  
3:01 1-Setting up  
25:50 2-Coding camera rotation  
38:58 3-Limiting the mouse  
45:00 4-Coding ground movement  
1:00:45 5-Coding the jump and fall  
1:13:57 6-Creating the level  
1:47:01 7-Coding the shooting mechanics  
2:22:29 8-Creating the mob  
  
#gamedev #3dtutorial #godot  
  
\-------------------------------------------  
\*CC-BY 4.0 LICENSE\*  
Terms: https://creativecommons.org/licenses/by/4.0/  
Attribute To: "CC-By 4.0 - GDQuest and contributors - https://www.gdquest.com/"

## Transcript

### Intro: What you need to know about this tutorial

**0:00** · Many of you asked for a 3D game tutorial following the success of the 2D Vampire Survivor. So, as promised, here we are.

**0:08** · Get ready to create your first complete 3D game using Ditto 4. We'll be making a survivor arena FPS game. It's the perfect project to get started with 3D because in just one sitting, you can whip up a miniame that is really fun to play and that you can proudly share with family and friends. You'll find out how to move a character in 3D and control the camera. code mobs that move towards the player. Set up a level with constructive solid geometry, create materials, use environment effects like fog, code shooting mechanics, play sounds, and more.

**0:39** · We'll do all this in GDO, which as you may know is a completely free and open-source generalpurpose game engine. It is light but powerful and userfriendly. It takes seconds to download and run it. No registration, no login, nothing. We'll go from creating the project and importing assets all the way to exporting the game for sharing. So, you get to see the entire process and try out features you'll be using all the time when making 3D games.

**1:03** · This video is sponsored by all the new and experienced game devs who have invested in GDQU Quest study programs to learn how to make games completely on their own without relying on step-by-step tutorials. If you've followed video tutorials like this one before, you're probably well aware that they can be fun and rewarding, but there's a limit to how much you can retain from them, regardless of how well they're made.

### The issue with step-by-step tuts

**1:26** · There are great intros to gamedev, but you can keep going from one tutorial to another for a long time without really integrating the concepts well enough to go out and make games on your own.

**1:36** · That's why at GDQuest, we also make extensive study programs to really give you the foundations you need to become independent. There are several Easter eggs hidden throughout this tutorial.

### Find the Easter Eggs!

**1:46** · There are special coupons you can add up to each other for a cumulative discount on the Great Go4 starter kit. If you find them, I ask that you please keep them to yourself to encourage others to complete the tutorial. The Great Go4 starter kit includes GDQuest's foundational 2D and 3D study programs as well as Note Essentials, a powerful interactive reference covering over 100 popular game mechanics.

**2:08** · The programs are currently in early access with new modules releasing regularly on GDC, our learning platform dedicated to gamedev and built specifically around GDQ's teaching method. In addition to all the interactive learning tools available to you in GDC, many of your practices are automatically tested directly in GDO with hints to troubleshoot your work.

**2:29** · Okay, ready to complete a 3D game?

**2:31** · Before we get started, a little word of advice. To fully understand what you're doing, it's helpful to know a little bit of coding. Any language will do. If you're completely new to coding, you can check out our free web app. Learn GDScript from zero. Bear in mind that when you learn good GDScript, you're not stuck with it. Your coding knowledge is transferable to any other programming language like C. We teach GDScript because it happens to be particularly easy to pick up and it's well integrated in GDAU. So, it's a great way to get started. All right, then let's get started.

### 1-Setting up

**3:02** · Check that you have the latest stable version of GDO 4. Link in the description. Grab a cup of something, get comfortable, and let's make a complete 3D \[Music\] game. You can download the files from our website. You'll find a link in the description. Just navigate down to the download the GU files button and click it. You'll get a zip file containing the assets we'll need for the project.

**3:29** · First, we need to extract the files from it. So on Windows and Linux, rightclick it and select the extract option from your file browser. And on Mac OS, you can doubleclick the file to extract it.

**3:41** · Then you want to enter this folder, and you'll find subfolders named level, mob, and player. They are the 3D models, textures, and sounds we will use in the game. I'm going to open GDO to create a new project. And in the project manager at the top left, I'm going to click the new button for that. and name my project. So I'll call it my first 3D game. You need to place new projects in an empty folder in GDO.

**4:08** · U so you can select a path on your computer where you want to create or access this empty folder. And if you don't have one uh handy after naming the project, you can click the create folder button. It updates the project path and creates a new folder for you. As far as the renderer is concerned, we have three options. The default one is mobile and this is the one I will use here.

**4:33** · If you have older hardware, um a graphics card that is more than 8 years old, you might want to select compatibility. This will give you slightly different colors, but you'll be able to follow along fine in general. Uh and this will give you better compatibility with your computer.

**4:54** · Otherwise, you can select mobile. It has a good performance and quality ratio. So once you've selected it, you can click create and edit at the bottom right of the popup and this will create the GDO project. We land on the 3D view and this is where we can bring our assets back.

**5:12** · Remember the three folders. I'm going to select them and drag and drop them from my file browser onto the file system dock in GDO. And when I go back to GDAU, it will import the files and I can now find them in the file system doc. First, I'd like to show you how these asset files that we just copied work in 3D.

**5:33** · So, expand the mob folder and the bat subfolder. And in there, we have a file called batmod.gb. If I drag and drop it onto the scene, my little bat mob gets added to the game world. GDO imports 3D models as scenes. This is how GDO calls entities in your game and that scene is composed of nodes. These are like Lego blocks uh that I'm revealing here at the top left um that compose your characters, your entities.

**6:05** · So, for example, the bat model has the 3D geometry for the bat. This is what you can see in the scene with the the blue little bat character. A skeleton 3D.

**6:16** · This is an armature that allows us to animate the bat and an animation player that contains the bat uh flying animation that we will use in the game. I'm back with a blank slate to get started with the player controller. Now, to avoid working for a long time on this ugly gray background, I've prepared a temporary level for you.

**6:39** · It's something we'll recreate later, but for now, expand the level directory and double click on temporary level.tscn. Now, again, don't worry. You will learn to create all of this later.

**6:53** · This is just so we have something nice to look at. And also some collisions, some platforms that the player can stand on. So, we can test gravity and jump.

**7:03** · Before we run the scene and start to flesh it out with the player character, let's learn how to navigate the 3D view.

**7:11** · You can turn the view by using the middle mouse click and dragging. You can zoom in and out using the mouse wheel.

**7:18** · And you can press shift and middle mouse click and drag to pan the view. You can also click to select an object with the select mode active in the toolbar at the top and press F on your keyboard to focus the selection. This centers the view on the selection and then when you middle mouse click and drag it will rotate around the focused node.

**7:38** · Uh you can click anywhere outside of the uh selectable items the 3D geometry to deselect and press F to focus back on the world center the origin of your game world. Now let's run this scene to see what happens in the game. At the top right of the editor, there's a camera slate icon that you can click to run the current scene. And if you do, everything's gray. Why is that?

**8:06** · Well, a bit like in the real world, we need a camera to capture images. In a 3D game, you also need a virtual 3D camera to do that. So, we're going to do that by creating our player character. For that, go to scene, new scene.

**8:27** · And at the top left, you can start building up your scene from nodes. Nodes are like Lego blocks that you assemble that each have a specific purpose and feature set that they bring to your scene. We want to start with the other node option uh to add at the start of our scene. So, click that and search for character body 3D. This is the first node we want to create.

**8:51** · It's a node designed for uh interacting with the game world to stopping when you hit a wall and gives you lots of features in general to handle jumping, moving, and whatnot. Now, you'll get a warning sign that tells you the node has no shape, so it can't collide or interact with other objects. In general, when you get a warning sign in the scene dock at the top left, it means that your node is lacking some configuration, and you can hover the icon to get more information.

**9:23** · So, we need to add a shape to it uh to define how it interacts with the game world. Select the character body 3D node and click the plus button at the top left or control A, command A on your keyboard to add a new node as a child of it. We want to add a collision shape 3D node. This is a node you use to give a physical geometric shape to a given entity like our player that the engine uses to know when you're touching a wall.

**9:55** · You know what shape your character has. So let's press enter to add that.

**10:01** · And there again we get a warning sign.

**10:04** · This one tells us that we need to set the shape uh the actual shape that the collision shape should use. So for that with the collision shape 3D node selected, look at the right at the inspector and click the empty slot next to the shape property. It gives you a bunch of built-in options for what the shape should be. And we're going to choose capsule shape 3D uh which creates a capsule in the 3D view.

**10:29** · So, uh, this represents how our character will, uh, interact with walls, but also fall off ledges. A capsule is often used in games for uneven terrain and all because it allows the character to move more or less smoothly along the terrain. Now, I would really like to have the base of my character to be located where the axes meet in the world. So, you have three axes. The red line is the x-axis.

**10:58** · The blue line is the z-axis and the green line that goes uh vertically is the yaxis and they represent the dimensions of our game. Now the point where they meet uh marks the position zero of our character. So if we reset the position our character will end up in this location.

**11:22** · The reason we want this to be at the base of our player character is so that when we place the character in a level, it will sit right on top of the platforms. So, starting back from where you are, uh, with the select mode active in the toolbar above the viewport, you can see a couple of widgets like you can see arrows and circles.

**11:46** · You can click the circles to turn the character and you can click the arrows to move rather than the character the selected collision shape. So we want to move along the Y-axis and you can press control on your keyboard to snap the motion to 1 m increments. And if you do that and move up, it will perfectly snap the base of the character to this uh location I'm targeting.

**12:16** · Now, this describes the physical shape of the character, but this does not give us the camera we need to see in the temporary level. So, for that, we're going to add a new camera node. We want to select the character body 3D node to add the camera as a child of it. Uh, instead of having it as a child of the collision shape. The reason for that is nodes move with their parent. So if we add the camera's child of the collision shape and we move the collision shape that will move the camera.

**12:44** · If we add the camera directly as a child of the character body, we can move the collision shape independently from the camera. Select the character body 3D node and press control A, command A on your keyboard to open the create new node dialogue and search for camera 3D.

**13:05** · Press enter to add it. And this adds the camera at the origin of the game world.

**13:10** · Now, similarly, you can click the vertical arrow to move the camera up to around the top circle of the capsule.

**13:20** · This will represent the eyes of our player. Now, if we try to run this scene uh by clicking the run current scene button at the top right of the editor, what do we get? we get a popup that invites us to save our scene. So, we're going to go to the player directory and name the file player.tscn and click save. Okay. And now this will run the scene.

**13:51** · We see all gray because we are running the current scene, right? The player scene. And in this scene there's nothing but these geometrical shapes and the camera. So, we really need to put our character inside of our temporary level so that we see the level. To do that, now that we have saved the player scene, you can expand the player directory and click and drag the player.tscn scene onto the viewport. It's going to be hard to see.

**14:24** · Uh, our character is uh gray right now.

**14:28** · And if you press F6 to run the scene that you're going to see where the player is looking. So currently it's looking at uh the back of the platform.

**14:40** · And so with the player character selected, I can click and drag on the green circle to turn it. But really, it's a bit hard to see, don't you think?

**14:49** · So, one thing we can do is go back to our player scene and give it a visual shape because the collision shape is an invisible geometrical shape that the engine uses for physics interactions, but it's not something visual we can see easily in our level. Press control A or command A to open the create new node dialogue and there search for mesh instance 3D. This is a node you can use to create a geometrical shape, but that's visual this time.

**15:20** · That does not interact with physics because in games physics and visuals are separate layers of the game if you want. So let's create the mesh instance 3D and gets located at the uh world origin. And with the node selected in the inspector on the right, you can see a mesh uh empty slot. Click it. And here we're we're going to create a new capsule mesh. And it's going to create this geometrical shape there.

**15:50** · Again, with the select mode active in the toolbar, I'm going to click and drag on the green arrow to move the capsule up. And you can press control on your keyboard to snap the shape to 1 meter increments.

**16:06** · Now we can save by pressing control S, command S on our keyboard. go back to the temporary level where I had placed a copy of my player and you can see that the character gets updated and now I have a better idea of the shape of the character but not of where it is looking. So I'm going to go back to the player scene and add a new mesh instance. Select the character body 3D node, Ctrl+ A, and I'm going to add a new mesh instance node.

**16:35** · And here I'm going to use the node just as an indicator of the camera direction. So I'll create a new mesh and I'm going to go with a uh box mesh, let's say, and move that box in front of the character and then make it a bit smaller because it's really big. So uh click the box in the inspector to expand it. And we're going to change the size property here to 0.1 0.1 on the X and Y axis to make it much smaller.

**17:07** · And this gives us um a little ruler that extends from the capsule shape. So now I can press save uh Ctrl S on my keyboard. Go back to the temporary level and I can see where the character is looking. And now if I click and drag on the green circle to rotate the character, I can see the direction it's looking at. And you can leave controll pressed on your keyboard to snap the rotation as well. When you do that to 15° increments. Okay.

**17:39** · So now that I've done that, I can press F6. And one thing you'll see is you now see the geometry in front of the camera, the box that we just added. So, I can go back to the player scene and hide this one by clicking the eye icon in the scene dock. And now, uh, I can see my level.

**18:01** · Finally, our next focus will be the player character. First, we'll attach the gun to the camera. And then, we'll make it so moving the mouse rotates the camera. We'll code the player movement with WD and space to jump. and we'll also add the reticle at the center of the screen, which the player will use for aiming. Let's get started. The first thing we'll add to the player is the gun, which will make it easy to see the lighting and decorate the game a bit more. For that, we want to head back to the player scene.

**18:33** · You could click the player tab above the viewport, or you can click the camera slate icon in the scene dock next to our character body 3D node. So, I'll click that to head back to my player scene and hide the capsule to make it easier to place the gun. In the file system dock at the bottom left, you'll find a simple gun directory. Click to expand it. And in it, you'll find yet another GB model like the bat we saw earlier.

**19:02** · It's a 3D mesh imported from Blender that you can doubleclick to open the advanced import settings window, which gives you a preview of the 3D model. So, you can see it's a very simple gun. We're going to click and drag it onto the scene. And you'll see it's uh pretty big and it's definitely not placed in the camera.

**19:26** · Well, we're going to move it to place it and scale it to make it not too big in the view. The first thing you want to do is make sure that the gun model is a child of the camera 3D node. So, uh, as mentioned previously, when you move a node, its children move along with it.

**19:44** · So, you can see if I move the camera, it moves alone. If I move the character body 3D node, the camera and the gun move along with it. What we want is when we're going to turn the camera, we want the gun to turn with it. For that we click and drag the gun model, drop it over the camera 3D node. This will repar the gun to the camera. And now if you turn or move the camera, the gun will turn and move with it.

**20:12** · Okay, the thing is uh currently the gun is far from the camera view. Uh so we need to move and rotate the gun to be in view. So, select the gun model and with the select mode active in the toolbar, you're going to click the green circle to rotate the gun 180°, you can press control on your keyboard to snap to 15° increments. And then we're going to click the red square to move the gun along the uh YZ plane.

**20:47** · And we're going to move it up to the camera like that.

**20:51** · Then you can clearly see it's pretty big. So we're going to scale the gun.

**20:56** · And for that you select the scale mode in the toolbar at the top. And then you can click and drag anywhere in the view to scale the gun down. And the way we're going to approach this gun is by making it pretty small and pretty close to the player. That way uh it will prevent the gun from uh intersecting too much into enemies and the floor. And this is a very easy way to set up an FPS game when you're getting started.

**21:23** · There are more advanced ways to separate the gun from the game world, but gets more complicated. So, we'll use this simpler approach here. It would be great if we could see what uh the player will see through the camera in the editor. Well, we can do that or that. We select the camera 3D node in the scene dock and a preview checkbox appears at the top left of the viewport. Clicking it shows what the camera sees.

**21:51** · And so the gun placement is not too bad, but uh it would be great to move it. So for that, we can select the gun model, turn on the select mode in the toolbar, and we can't do anything.

**22:05** · Yeah, in the camera preview, you cannot move selected objects. For that, you have to either toggle back out of it, but it's not great because then we have to reselect the camera and turn on the preview uh or you can split the view like this or like that or like this. You can do that by going to the view menu in the toolbar above the viewport and selecting one of the options. You can also use the shortcuts you see listed here. So, control 2 in my case, command 2 on Mac OS.

**22:35** · I'm going to split the viewports to have two stacked vertically because this way I can see a frame representing what the camera will show in the game and move the gun. What I want is for the gun to be a bit down to the bottom right corner of the camera.

**22:56** · Right now, it's a bit too far forward.

**22:59** · So, in the bottom view, I'm going to use the blue square this time to move along the XY plane and move the gun a bit down like that. Uh, now I'm going to give my gun a slight rotation so that when the player looks at the game, it feels like the gun is pointing forward. Right? So, we're kind of hacking things just so that things work for us really. You can also adjust the scale to your desired scale.

**23:34** · So, make the gun a bit bigger or smaller. And instead of scaling, an alternative is with the select mode uh active to move the gun a bit closer to the camera. And the closer you make it, the less the gun risks intersecting with the floor and mobs that we will add later in the tutorial. Now you can go back to the temporary level and press F6 to see the gun in the view. And so feel free to adjust it now or later. We'll do that a bit later on.

**24:06** · I think the rotation's a bit up. So I'll go back to the player and rotate it a bit to the right. And one thing you can do, you know, when you're on the temporary level, to not have to switch each time to run the current scene is to make this temporary level the main scene. When a scene is the main scene in your game, you can press F5 uh on Windows and Linux to run it or click this button, the play button at the top right of the editor.

**24:37** · So, I'm going to press F5, and you're going to see a popup that invites you to select the main scene, and you can click select current. Uh, and that way, even if you're looking at the player scene, and you adjust the rotation, for example, you can click the play icon at the top right to run the level scene. And I think I'm going to rotate the gun a little bit. And now, yeah, I'm satisfied with how it looks more now. We can always adjust it anytime.

**25:08** · So, that's all good. But with the gun added, we can now delete the capsule and uh the the meshes we had added for quick preview of where the player is looking. So, in the scene dock, click one of the mesh instance nodes and control or command plus-click the second one to select both. And then you can press delete on your keyboard and click okay to delete the nodes.

**25:37** · With that, I'm going to go to view one viewport and turn off camera preview to go back to being able to edit my scene pretty conveniently. Next, we'll code the camera \[Music\] rotation. In this part, you will code the camera rotation. We will do this in four steps. First, you will use the unhandled input function to track when the mouse cursor moves.

### 2-Coding camera rotation

**26:05** · Then, we will rotate the player around the Y-axis when the cursor moves left or right. We will rotate the camera around the X-axis when the cursor moves up or down. And we will finally limit the rotation around the X-axis to prevent the camera from going upside down. We'll now write the code to make the camera rotate. And for that, we're going to attach a script to our player character. So, select the character body 3D node.

**26:33** · Uh, actually, we're going to rename the node to make the name a bit clearer. So, we can uh doubleclick the character body 3D node for that. Type player, press enter, and that way when we add it to our game level later, it will be named like this. It's still a character body 3D node. The name is just a label we give to the node. So with the player node selected, click the add or attach new script icon at the top right of the scene dock to create a new script.

**27:05** · By default, it will save it based on the name uh I think of the node or of the scene in the folder where the scene is saved. You want to make sure that the language is GDScript. Uh that there is no template that we're not using built-in script. So it saves it to a file. Click create and it will create the node with one line extends character body 3D.

**27:28** · And this line means the script that we are writing inherits extends all the code in the good game engine for the character body 3D node. So it gives us access to lots of features and functions. You can control-click character 3D to access the corresponding docs page. GDO has a very rich technical built-in documentation uh that's in the engine offline.

**27:54** · So you can access and read uh everything available to you in code using that and then rightclick and close the page in the left column to get back to your script. If the autocomplete suggestions you're getting look different, that's because this tutorial does not use type hint. In GDScript, you can optionally write data types in your code to help the computer report more errors and provide better or to complete suggestions. It's called type hints. In this beginner tutorial, I don't use type hints to reduce cognitive load.

**28:24** · To turn them off and not get confused, go to editor, editor settings, and search for type hints. Click completion on the left and click the check box next to add type hints. You can turn the option back on after finishing the tutorial.

**28:42** · So, we're going to detect the mouse moving in code. And each line the mouse moves, we're going to rotate the camera a little bit. And the way you do that is using one of the input functions provided by GDAU. So, the one we're going to use is called unhandled input.

**29:02** · So you can type funk to define the function and then start typing underscore unhandled input and it will give you an autocomplete suggestion. You can press enter to accept it and this function is called automatically by GDO and it passes it all the input events that occur as this event parameter. The events themselves are when you press a key on the keyboard, when you release the key, when you move the mouse, when you click, when you press a button on a gamepad, etc.

**29:32** · So for each thing that happens, every mouse motion and so on, we're going to get a call to this function with the event that occurred passed as this event. So we can do a bunch of useful things on this event, right? We can check what kind of event we got using the is keyword. So let's do that in a condition. We type if event is and then we can check for a specific type. The event is going to be of type input event always.

**30:04** · And there are many other types of input events that derive from that that are more specific. So if we check for something more specific like input event mouse and then we can go to mouse motion. If we type that, we know that the player moved the mouse and uh that's the event we are getting. So if the event is inputed in mouse motion, I'm going to put a colon to complete the condition. Uh and then inside of this condition, we're going to rotate the character and the camera.

**30:35** · I'll go back to the scene for a second to show you what we'll do. for the rotation around the vertical axis, we're going to rotate the character uh the player node. And because the camera and the gun model are children of that player node, they're going to rotate with it.

**30:54** · Then for the rotation up and down, we're only going to rotate the camera because if we rotate the player character, we're going to change the orientation of the capsule and make it move uh closer or farther from the floor, which we do not want.

**31:13** · Okay, so let's start with this rotation around the vertical axis. I'll go back to the script and inside my condition, I'm going to type rotation degrees. This is one of the properties of every 3D node doy. This is a rotation around the vertical axis, the the yaxis. And I'm going to subtract from it. So you'll see why uh in a second, but I'm going to do minus equals event.x. So a couple of things.

**31:45** · First, rotation degrees. It's a property available on every 3D node. Now when you write a property in a script like that, it's a property of the node to which the script is attached. In other programming language, you might have to write south rotation degrees. Uh but this is implicit in GDScript because the engine knows that the script is attached to the player node.

**32:15** · So it knows that when you write that, you want to access or write to the rotation degrees of the player node.

**32:24** · dot to access the Y component of that.

**32:27** · And then the part event.relative is a property of the input event mouse motion uh value. You can control-click it once again to access the corresponding documentation page and scroll down where you will see vector 2 relative right in the properties category. So that's how you know that it exists. And because it's a vector 2, it has an x and a y component that we can use in our code.

**32:55** · And event.relative.x is the horizontal mouse motion. So when we move the mouse horizontally, we want to turn the character around the vertical axis because it's uh the horizontal rotation. Now y minus equals it's just uh based on the orientation of things in 3D. you have to add or remove values.

**33:17** · If you click the play button at the top right to play the game, you will see that well this allows us to rotate to the left when moving the mouse left and rotate to the right when moving the mouse to the right. Now the rotation is a bit fast.

**33:37** · If I barely move my mouse, the camera rotates a lot. So I would really like to adjust the sensitivity of the rotation.

**33:44** · And the way you do that is by dividing this value or multiplying it by a small number which I'll do here. So I'm going to multiply this by 0.5. Let's try this. And it's a bit better for me. So this is the kind of sensitivity I want. If you want a lower sensitivity, you can lower this value.

**34:06** · Note that multiplying by 0.5 is the same thing as dividing by two, right? So you can divide if you prefer.

**34:15** · Next, we need to adjust the camera rotation when moving the mouse up and down. So, we want to turn the camera based on how the mouse uh is moving up and down. And for that, we need to access the camera node in our script because we've rotated the entire character around the vertical axis, right? But for the vertical mouse motion, we only want to move the camera, not the entire player.

**34:45** · So we need a way to access the camera node in our script. And the way you do that in GDO is by calling a function called get node. Get node allows you to access other nodes than the one to which the script is attached. And you can access them by path. Right? So when you write get node in parenthesis, goodo gives you autocomplete suggestions for the nodes in the scene. Now there is a shortcut to the function get node. So if I write for example get node camera 3D.

**35:14** · This is the same as writing dollar camera 3D. It's a built-in shortcut if you want. And there's yet another that we will use uh that has been added to good 4. It's marking a node as scene unique. So uh let's see how it works.

**35:32** · Right click the camera node in the scene dock and select access as unique name.

**35:36** · You will see a person sign added next to the camera 3D. And now you can access the node uh by typing person sign camera 3D in your code. Okay. It's not very different from the dollar is it? Well there's one important difference too actually. If I right click the gun model set accesses unique name. Now I can type person sign gun model without the camera 3D part and I can access the node just by the name.

**36:07** · If I use the dollar then I need to always use the full path like this. So this is one reason why we'll be using the person sign throughout the tutorial. Another reason is that as you can see the person sign is visible in the scene and this is a great way to see which nodes are going to be used in the script when you open a scene. So that's a reason to use this. So mark the camera as uh having a unique name and in the script we can start working with it.

**36:41** · So we're going to change the camera's rotation degrees.

**36:48** · X. Uh, this is the rotation around the red axis here that is going to turn the camera up and down. And we're going to do something similar. So, minus equals event relative.y. And with that, we can already run the scene. And if you move the mouse up and down, the camera rotates up and down. And you can also rotate laterally there. Again, it's way too sensitive right now.

**37:20** · So, I'm going to multiply this by a small value. Uh 0.2. I've used like I'm dividing it by five. And it's going to give me a more natural up and down motion that's not too jarring. Another thing that we want to add at this stage is limiting the camera rotation. Because right now, I can do this.

**37:41** · I can go down and oh I can flip the view completely right I don't want to allow the player to do that so I'm going to limit the rotation degrees and for that we can use a function called clamp that's built into GDO so there again we're going to write person sign camera 3D rotation degrees x and we're going to uh make it equal to we're not going to subtract from it as we did with minus equal before.

**38:12** · We're going to set it equal to clamp. Uh it's a function that takes three values. The value you want to limit. So this is going to be I'm going to copy the camera.rotation degrees.x. Then you put a comma. You put the minimum value that this can take that is allowed. So in my case, it's going to be something like minus 80°.

**38:40** · And the maximum value that this can take, let's say 80°. So this is going to limit the camera rotation like this up to 80. So not quite perpendicular to the ground plane going up and same going down. You can limit the range of motion more by changing this to 60° for example. Uh whatever you think works best. When you've done that, you can run the game.

### 3-Limiting the mouse

**39:07** · And if I try to go down, you're going to see I'm moving the mouse down, but it's not allowing me to go down more than this. So great, it's working. It will prevent the player from flipping the \[Music\] view. Next, let's limit the mouse movement. We will hide the mouse cursor at the start of the game and show the mouse cursor when the player presses escape on their keyboard. Let's get started.

**39:37** · we run the game, the mouse cursor stays visible. If you've played 3D games, uh it's pretty rare to leave that. So, we really want to hide the mouse cursor. To do that, we will use a bunch of functions provided by GDO. So, let's get writing and I'll explain as we go.

**39:55** · First, we want to write the ready function. This is another function defined by GDO that GDO is going to call basically when we run the scene. So when you run the scene, good recreates all the nodes that are in your level and all the scenes referenced in there sequentially and then it calls the ready function at a certain time for every node.

**40:19** · And this is used to uh run code either just once when running the game or uh when you are certain that a node like the player and all its children are available in the game and have been initialized so you can do operations on them. But here we're going to use this just to run code once on our player.

**40:42** · We're going to use the input singleton.

**40:44** · Uh it's an object that's available in all scripts globally that allows you to do input checks and changes like changing the mouse cursor. So we can write input set mouse mode. This is how you change how the mouse interacts with the game. And we're going to use the input mouse mode captured option offered to us. If you use that and you run the game, the mouse is going to disappear. It's now captured by the window.

**41:14** · And you can press, you know, depending on your computer, either super Q to uh quit the game. You can press F8 on Windows and Linux or command dot on Mac OS also to stop the running game because right now you don't have the mouse to go close the window or do something like this. And finally, uh, we're going to make it so when the player presses the escape key, the mouse gets released so they can click things.

**41:46** · So for that, we go back to the unhandled input function where we can listen to inputs and we can check if our event is pressing the escape key. We can do it like this. So after the if block, we're going to add a new block at the same level called ele. So this is going to run if the event is not a mouse motion.

**42:09** · So in case it's not a mouse motion, we check if this is a press on escape. And for that we write l if event dot is action pressed and we want to select UI cancel in quotes like that. You're going to ask what is that?

**42:28** · What are actions being pressed and why escape is UI cancel? Well, GDO has a system that allows us to label different inputs. Like uh uh in a game, you might want to jump if pressing the space key or A on a controller. And you really don't want to be checking for every key.

**42:47** · Instead, it would be much better to check if player press the jump button.

**42:53** · Well, this is what this allows us to do, this action system. So you can check if a certain action is pressed. And UI cancel is one of the many actions that come predefined in GDAU. They're designed for user interface interactions by default, but you can use it to check the escape key to see where they are defined. Let's go to the project menu, project settings, the input map tab, and there's a toggle on the right to show built-in actions.

**43:22** · So you can click it to show all the actions that come predefined by GDAU. And if we look, we can find UI cancel. And it has the escape key mapped to it. So I'm going to hide the built-in actions, close the window to go back to my script. But this is just so you know that it's not magical. This is just predefined for us to save us a bit of time. And inside of that condition block, we can use the same function input set mouse mode. So you can place your cursor on the line.

**43:55** · Press Ctrl + C, command C to copy the line. Place your cursor where we have uh the past keyword or below the condition. Control V, command V to paste the line. Then place a cursor on the line. Tab to indent it. And I'll remove the pass keyword. And that way we have a copy of the line. Problem is it's setting the mouse mode to captured. So we want to change it. But replace mouse mode capture with mouse mode visible.

**44:26** · Now if I run the game, the mouse is captured. If I press escape on my my keyboard, the mouse cursor is visible. Next up, let's add the code to make the character move forward, back, left, and right. And not only that, but in 3D, you need to do that relative to where the camera is looking. So you need to convert the input keys into forward, back, left, and right.

**44:52** · Let's work on \[Music\] that. Let's now code the ground movement. We will first define the physics process function. Then we will create input actions to label different inputs in the code. We will move the character along the ground. And finally, we'll transform the movement to be relative to the camera orientation. To code the player movement, we will define a new function called physics process.

### 4-Coding ground movement

**45:23** · So below the unhandled input function, write the fun keyword and start with an underscore and type physics process. And good will autocomplete this because this is once again a function built into good that we can uh define for the engine to hook onto and call. A game produces many images per second to create the illusion of animation and listen to player input and update the game state constantly.

**45:52** · So every game engine has a sort of function like physics process in this case that can write for the engine to to call each frame. Physics process is like physics update in some other game engines. It's a function go to calls at fixed time intervals that is designed for everything that interacts with physics in the game like our player character.

**46:18** · It has to stop when touching the wall.

**46:20** · It has to not fall through the platforms. So it needs to interact with the physics engine and when you want to move a physics thing like that you want to favor using physics process. So inside of this function we will calculate the velocity of our character.

**46:37** · This is the combination of the direction in which we want to move and the speed of the character. Let's start by defining the speed by creating a new constant named speed. A constant is just a label we put on a value. We cannot change it unlike a variable. So if I try to change the speed to four, I get an error. So this is just a way to give the name speed to the value 5.5. The value itself is going to be in meters/ second in 3D.

**47:09** · So our character will move at 5.5 m/s. Okay. With the speed, we now want to calculate the direction because to have our velocity, we need both the speed and the direction. We're going to start by getting the input direction of the player in 2D. Let's write it and I'll explain as we go. So, create a new variable called input direction 2D and uh we're going to make it equal to input.get vector.

**47:41** · So there again we see the input singleton we used above to change the mouse mode. This singleton has lots of functions to help us with input. And it takes four arguments. It takes four input actions that represent the left, right, up and down or forward and back directions the player wants to move.

**48:05** · Now, we're going to create these input actions to give them our own names and our own inputs and not use the ones designed for user interface. So, let's go to project project settings and you want to go back to the input map tab and click the add new action bar. And in this bar, you type the name of the action. This is the label you'll give to the different inputs that will be grouped under it. So, I'll start with move left. Then press enter. Type move right. Press enter.

**48:37** · Move forward because we're in 3D. So we move forward and back. Move back. Right. And this creates the input actions. You might be wondering why we have an underscore here because uh actually you don't have to but this is a convention used by GDO.

**48:56** · You know in code in GDScript we use underscores to represent spaces between words because syntactically you have to for the computer when you put a space you're writing two different things while an underscore allows you to to group words. So we use the same convention for input mappings. Now back to the input map we have the action names but we don't have any keys assigned to them.

**49:23** · So on the right side of the window, click the plus button to associate an input with the input action label. You can press the key on your keyboard and GDAU will detect it. So for example, for move left, I want the A key. And notice how GDO creates the input and writes physical in parenthesis. The input you add by default will be based on the location of the key on the querty keyboard.

**49:52** · So if we go to add a key to move right and I press D, you're going to see a drop down at the bottom that says physical key code position on US square keyboard.

**50:05** · This is so that on international keyboards that might have a different layout, people have a consistent experience. They have the same for let's say keys that they can use to move forward, back and all laid out in a little cross. You have other options like to use the actual letter for applications for example, but for games most of the time you want physical key codes. Anyway, I'm going to assign D to move right, W to move forward, and S to move back.

**50:37** · The beauty of this system is that first instead of working with the letters A, D, W, etc. in your code, you can have clear labels like move left, move right, and so on. But also, you can add more inputs to those. So, I could add the arrow keys, for example. Now, if the player presses A or left, this will press the move left action. You can also add gamepad inputs. So you can click the plus here and go to joypad axis.

**51:04** · And if I go to the top of the list, I can add joyad axis zero. It's a left stick left direction. Right? So you can map as many inputs as you need to a single action.

**51:20** · I'll leave that for you to do if you want. I'm going to stick to wd in my case and close the window because now we have what we need to complete the function.

**51:32** · We need to pass our four inputs as arguments in this order. First, it's for the left direction. So, we pass in move left. That's what good calls the negativex direction. For positive x, it's the right direction. We pass in move right. Negative y is going to be move forward in our case. And finally, we're going to have move back.

**51:56** · Note that the order of these like move forward and back can be inverted depending on how things are rotated and laid in your 3D world because in 3D there are lots of conventions. Like currently my character and the camera are looking at the negative Z-axis which is forward by convention in GDO but they could be looking the other way around.

**52:25** · And you'll see that depending on where you import 3D models from, sometimes they will have different conventions between different engines and software, they will be looking to the right or the left or so you just rotate things as needed and invert the arguments in these kinds of functions as needed depending on the conventions used by the programs used to create the 3D models and the conventions you used in your project.

**52:54** · We have a 2D direction and it kind of represents our 2D direction. This blue square in the editor, the plane defined by the vertical and the the green rather and the red axis, right? Uh and we're going to convert it to the ground plane to the Z and X axis. And we need to do a bit more than that actually.

**53:19** · It's that when our character will turn, what is forward and left and right will turn with the character. So we also need to turn in a sense our input direction according to the character rotation in 3D. This is an added complexity compared to 2D. So we're going to do all that. First uh we're going to define a new variable that I'll call input direction 3D.

**53:49** · And this is going to be just a little conversion of our 2D direction into a 3D vector. So I'm going to create a new vector 3. And for the X component, I'm going to use input direction 2D.X. Then for the vertical component, I'm going to put zero. And for the Z component, I'm going to use input direction 2D.Y.

**54:14** · And this is effectively converting our value from representing the top and left right plane to representing the ground plane direction. Now I talked about the orientation of the character. One thing we can do before we change the orientation of our input direction is see how we can move the character and see why like what happens if you don't turn this input direction relative to the player. And we can do it like this.

**54:44** · We're going to use the velocity property that comes built into the character body 3D node.

**54:52** · And we could actually for this velocity calculate it multiply the direction by the speed. So as I mentioned a velocity is a value that represents the combination of a direction and a speed.

**55:08** · It's a 3D vector like our direction vector um but that's scaled based on the speed you want to move at.

**55:18** · The problem with that is that in a moment we're going to add jump and fall to the character, but our 3D input direction has a value zero on the vertical axis. And so when you multiply a a vector by a value, the individual components of the vector, the x, y, and z values get multiplied by your speed value in this case.

**55:40** · And the problem you'll have with this is uh this y value of zero is going to cancel out the jump speed or the fall speed of the character later on. So because of that we're going to split this line and change the values component by component. So we're going to write velocity.x is equal to input direction 3d.x multiplied by speed. And we're going to do the same for the Z component of our 3D input direction.

**56:10** · So press Ctrl + Ctrl +V to duplicate the line. And I'm going to select the dot X and press Ctrl D to select both copies and press uh Z on my keyboard to multiply the Z component. We are almost done, but we need one more function call called move and slide. This is a function again of the character body 3D node.

**56:34** · Again, you can control-click in GDO to jump to the corresponding documentation page of the character body 3D node and read the documentation. But the way it works in short is you change this velocity value and then you call move and slide and GDO moves the character according to the velocity and detects collisions with walls, with the floor, with other mobs that we'll add later and adjusts where the character should stop based on the calculations of the physics engine.

**57:05** · Now you can run the game and test your character motion. So I had turned my character. So I'm going to go back to the back. See that if I press W, I move forward. If I press S, I move back left and right with A and D. Uh now if I turn the camera a bit and I press W, the character still moves in the same direction as before. Right? So this is the the problem that happens. I'm pressing just W and S here.

**57:33** · And regardless of where I'm looking with the camera, the character is always moving the same way. This is because of the problem I explained earlier is that we've rotated our character, but we are keeping the same orientation of the motion regardless of where our character is looking. And we really need to turn the coordinate system, the direction with the character. So, let's do that.

**58:03** · Uh back to the script, we want to use something called the basis of the character. So I'm going to define a new variable for that below the input direction 3D that I'll call direction.

**58:18** · And it's going to be equal to transform dot basis multiplied by input direction 3D. In this project, we don't strictly have to do that. But this is uh the most generic way, general way of turning the direction vector. And then we need to use this direction variable in the velocity calculation. So select input direction 3D by double clicking it.

**58:44** · Press Ctrl + D to select both instances and type direction to replace. And now if I run the game, I can move with I'm still pressing W and S only. And you can see that the character moves according to the camera orientation. Now, what's a transform?

**59:03** · What's a basis, will you ask? Well, when we move the character, we rotate it or we um scale the character, we change one value, one collection of values. That's called the transform. The transform is a special value, a bunch of vectors that represent the orientation, position and scale of a node.

**59:29** · And the transform has a couple of subpropies if you want sub values. One is called the basis. And the basis represents um the coordinate system of the character or of the node.

**59:44** · So uh if I turn the character and you see the three axes turning with the character, this is kind of what the basis represents like the relative directions up, forward and back and left and right of the character. When we multiply a vector by that basis, we orient that vector to that basis. So um the the we convert from this coordinate system to the character's coordinate system. This is what we do.

**1:00:14** · One small note, the basis also includes scale information. So if you have a node that is scaled up or scaled down, uh multiplying by the basis will also change the scale of your vector 3 value.

**1:00:31** · So you want to be careful to use it with nodes that are not scaled unless you want that. And with that, we have the ground motion done.

**1:00:43** · \[Music\] Congratulations. Now that the character can move on the ground, we will make it jump and fall. We'll do that in four steps. We will make the character go up when pressing jump. Apply gravity to fall back on the floor. Only allow jumping when the character touches the floor. Jump higher when keeping the jump key down and add an aim radical at the center of the screen. Now, we're going to implement the jump.

### 5-Coding the jump and fall

**1:01:12** · The player can't totally cross the platforms here because the gap is not very big and the capsule of the player is pretty big. But we're going to add a jump to simulate crossing this gap. And in case you want to uh do a level layout where you have these floating platforms and the player needs to jump in your final copy of the project. So we need to add code for jumping before the call to move and slide because this function call takes care of moving the character.

**1:01:43** · We need to set the jump and fall velocity beforehand. And for that we'll be working on the velocity.y. To implement the jump, we need to first detect when the player is pressing the jump button. And for that, we're again going to define an input action to use in our code. So, let's head to project project settings, the input map, and add a new action named jump. So, you type the name in the add action bar.

**1:02:11** · Press enter to define it, and then click the plus button at the right and press the key you want to assign to the jump action. In my case, it's the spacebar. So, click okay. And then you can close. And in the code before the call to move and slide, we're going to add our condition for the jump.

**1:02:33** · So, this time we're going to add the input check directly in physics process so that it's grouped with our movement code as jump is movement code as well.

**1:02:43** · And we can use the input singleton again and access it is action just pressed function with a dot. The action we want to check is jump. And when this happens, we're going to change the Y velocity of the character, the vertical velocity, and set it to a positive value, which will make the character go up. So you can test, press space, and the character keeps going up because there is nothing pulling it down. You might be wondering why we uh do it like this.

**1:03:14** · And earlier we used the unhandled input function.

**1:03:21** · Well, you have these two ways of handling inputs in GDU. You can use the input singleton and make the checks directly where you write the rest of your movement code or update code like this. And this is good for grouping the code in one place and making the logic easy to read. Earlier we were checking for mouse motion. And the unhandled input function is a bit more powerful and it allows us to check for the mouse motion a bit more easily, a bit more efficiently. So that's why we put this mouse motion logic there.

**1:03:53** · I would also say that the code that does input checks relative to UI or general things like uh toggling the mouse, toggling the game full screen, things like these, it's common to put them in unhandled input and out of the way of the update function because there are pretty rare events that you don't want them in your gameplay logic. Okay, so the character jumps, but it doesn't fall. So, we really need to add that next.

**1:04:22** · And for that you can just apply some gravity, some downward acceleration every frame.

**1:04:31** · So above the line that checks for the jump input, we're going to subtract from velocity.y some value. So I'm going to subtract uh 20 \* delta. Okay, so gravity is an acceleration. It's a value in m/s squared. And a velocity is a speed in a given direction in meters/s. To make the two compatible, you need to apply an acceleration.

**1:05:00** · To apply the gravity, you need to multiply it by a time value. This makes the units compatible. So in that case, we use delta. And delta is typically the time elapsed between the previous frame. In the case of physics processing functions like these, delta will be a fixed value to ensure that the physics simulation in your game is stable even if the game slows down or accelerates.

**1:05:29** · So this is used for stability. One more thing you might be asking is okay why do we uh multiply this value the gravity by delta but then the velocity would just assign it like this and we never need to multiply it by delta. If you've used other game engines, often you have to apply the velocity yourself and multiply it by delta to move things. Well, in GDO, the character body 3D does it for you.

**1:05:56** · Other nodes might require multiplying by delta, but not this one. Now, you can run the game and press space for the character to jump and fall. We have a problem, though. What happens if I press space multiple times? Press. Press.

**1:06:15** · Press. And yes, the character keeps jumping. Why is that? Well, we're only checking for the jump input being pressed. And if so, we set the velocity.y to 10. We really need another condition there. And the other condition for a jump is that the character has to start from the floor. So, after checking for the jump input, we're going to use the and keyword to combine it with another condition. And that condition is going to be a call to the is on floor function.

**1:06:45** · This is a function again provided by the character body 3D.

**1:06:50** · Again, you can control-click it to access the documentation. And this one, this is a function that will return true if the character collided with the floor on the last call to move and slide. So now you have that you can run and try to press space multiple times and you can only jump if the character is already on the floor.

**1:07:11** · There's one more mechanic I want to show you for the jump. It's the ability to jump for longer or for less time based on the amount of time you press the space bar. So, we're going to add that next. After the jump input code, we need to add a new condition, a new branch, and we're going to check if the jump key was released while the character is going up. If that is the case, we're going to reset the vertical velocity.

**1:07:37** · So, we can write l. So, we're going to either run this branch or if it the player is not jumping this frame, we're going to check for the other. We're going to check for input is action just released jump. And the velocity of the character on the vertical axis is greater than zero, meaning the character is currently going up.

**1:08:04** · This is a good pretext to show you that in the input singleton you can check if a button not only was just pressed but also when the button is released right and in that case in the condition we want to reset the vertical velocity. So velocity doy is equal to zero. If you run the game now you can keep the space key pressed as long as you want or the character to jump to the full height.

**1:08:32** · But if you release the key before the player reached the peak of the jump, it's going to fall back down. So this is a nice thing for game feel. It's very common in platformers and FPS games. So there you know how to do it. Now before we move on to creating our own game level, let's add a reticle at the center of the screen that the player will use for aiming. You can uh mix and match 2D and 3D nodes in GDAU and combine them and it kind of just works. So that's what this will show us.

**1:09:01** · Uh in the file system doc at the bottom left of the screen, locate the reticle.png image.

**1:09:09** · It's in the player directory. Then I'm going to go to the 2D screen by clicking 2D at the top of the screen and click and drag the reticle.png image onto the viewport. You want to press the alt key before you release the mouse click. That way good will ask you what kind of node you want to create. So by default it will select sprite 2D and we want to create a texture wctck. A sprite 2D is a texture image with a position, rotation, scale and so on.

**1:09:41** · And so is the texture wctck. But the difference is it's much easier to keep a texture wctck one of these green nodes here centered on the screen at all times. So that's why we will use it here. So let's click okay to add uh the reticle. And you'll see when you select the reticle node, which is a texture wctck, that it has some green pins when you select it with the select mode active. These pins tell the engine at which point to anchor the texture.

**1:10:12** · So when the game window resizes, the node will preserve the margin relative to the pins. Currently, it's anchored at the top left of the game window. And we want to change that to always be centered in the game window. For that, with the note selected in the toolbar at the top, you want to click this icon for the anchor presets. I'm not sure how to describe it, but click it.

**1:10:39** · And you're going to see a list of icons to anchor the node in different places. you want to select the center one and this will force the node at the center of the screen. So depending on where you drop the texture, selecting this center preset will have moved the texture to the center of the screen. Now depending on your screen resolution, the reticle might be way too big on the screen. I have a pretty big display for recording, but you might want to scale this down.

**1:11:11** · To do that, select the reticle node and in the inspector dock on the right, you want to change the expand mode. And I guess well, we're just going to change the expand mode. So, change it from keep size, which forces the node to preserve its minimum size, to ignore size. And then you can press shift, alt, click, and drag on the corner handles to resize the node down interactively.

**1:11:37** · Another thing that's useful at this stage is controlling the game resolution and the game stretching mode. To do that, we can go to project project settings and we go back to the general tab. This tab contains all sorts of project settings as the name suggests and options you can use to change how the engine behaves.

**1:12:03** · And in the display section on the left, you will see the window subsection in which you can control the base resolution of the game and its scaling mode. So it's a good time to change the viewport width and height. This is the resolution of reference for the game.

**1:12:20** · And to make it simple, a very common one is 1920x 1080.

**1:12:27** · Changing this affects the rectangle used as a reference for 2D graphics. You can see that now our reticle is not centered anymore. So we have to go back to the scene, select the reticle and reenter it.

**1:12:43** · Going back to the project settings, this size here is mostly used as a reference, but it's also going to be the base definition at which the 3D graphics of your game are going to be rendered. We can check that by going down to the stretch category and changing the mode from disabled to viewport. The viewport mode is going to use the viewport width and height and stretch the image to fit your screen. So even if the screen is very large, it's going to render at this resolution.

**1:13:13** · And this is really good for 3D games as a default because most of the performance cost of 3D games is the resolution. So if you don't use this option for people with a 4K screen, but maybe not super powerful graphics card, your game might be too heavy at launch and be sluggish, and they'll have to go to the options to change the resolution and whatnot. while a smaller resolution might give a better base experience. With that, you can press uh F5, run the game to see the result.

**1:13:46** · And I don't know if you can notice it on the video because we downscale it for YouTube, but my game is rendering at a smaller resolution.

### 6-Creating the level

**1:13:57** · \[Music\] Now, in this part, you will create the environment. You will first create a platform for the player to walk on. Add a sunlight and a blue sky. Improve color balance and contrast using the environment. Add fog to give depth to the scene. Design a material to control the platform's color and texture and duplicate platforms to assemble the level. Now that we have the player movement in place, it's time to learn to make the level.

**1:14:27** · As promised, we will look at how to create the material, change the colors, create the environment, the lighting, the fog, and you will be able to make the little level yours. So, let's get started. Let's first add the platform, and we will then add the lighting material and design the level. We're going to create a new scene for our level. So, go to scene, new scene, and click 3D scene.

**1:14:54** · Rename the root node to game and go to scene, save scene, and save the scene at the root of your project. I'm going to fold the player folder and let's get to work. So, for the platform, we're going to use a CSG box 3D node. So, click the add child node button at the top left of the scene dock. Can press control A, command A on your keyboard, and search for CSGbox 3D. Press enter to add it.

**1:15:27** · And this creates a box with six handles that you can click and drag to resize the box in the corresponding direction.

**1:15:35** · CSG is short for constructive solid geometry. And it's a technique used by different engines like Unreal, the Source Engine, or GDAU to prototype game levels. You can then export that geometry and have artists design final assets in programs like Blender. It's useful because it lets us quickly prototype the level and we can add collision shapes very easily to platforms and geometry we create with this. So let's resize the platform.

**1:16:04** · And for that we're first going to turn on snapping in the toolbar at the top. So click the snap button. You can press Y on your keyboard to toggle it. And once you've done that, moving or doing resize operations on the box will snap to one meter increments. So if I click and drag on one of the resize handles, it will snap to the grid. Let's resize the box by clicking and dragging on the sides.

**1:16:32** · And little tip, you can press Alt on your keyboard while doing so to resize symmetrically.

**1:16:40** · Notice how when I resize the box in the inspector at the top right, this changes the size property of the box. So, I'm going to drag it vertically. And there is a slight delay. But when you move or interact with something in the editor, very often you're just editing properties of the node that update in the inspector. So, you can also change the property in the inspector to see the change reflected in the view.

**1:17:07** · For example, if I select the Y channel of the size and set it to 10 m, the box becomes taller. Okay, so I have a starting point for my platform. I want to move it down so that the top face aligns with the game grid. This will make it easier to then place other assets on top. And uh it can be difficult with snapping to do that.

**1:17:31** · So when you have this kind of problem where you can't perfectly align the thing, press the shift key down to snap to smaller increments, in this case to 0.1 m increments. And this allows us to perfectly align the platform with the game grid. Okay, so we are now ready to add our player to the scene. So for that, in the file system dock at the bottom left, expand the player folder and click and drag player.tscn tscn onto the platform.

**1:18:03** · This will create an instance of the player scene, which is a reproduction. Scenes work like templates that you can nest into one another. They are like blueprints, prefabs in Unity.

**1:18:17** · This is how they might be called and you can nest them into one another to compose your game. An important note, when you do that, when you drag and drop a scene onto the viewport, GDAU adds the scene instances and the nodes as siblings. This means that if I move the platform, it will move independently from the player. You could also add the player as a child of the platform so that it moves with it. Nodes move with their parents by default.

**1:18:47** · I'm going to click and drag the player onto the game node to make it a sibling of the CSG box again. And this is important because when you build your level, often you don't want the player to be attached to a single platform. So you can easily move it to different locations for testing, for changing the start position, and so on. Okay, the player is a bit small compared to the platform. So, uh, I'm going to make sure that I have select mode active in the toolbar at the top.

**1:19:19** · And then you can click on the CSG box geometry to select it. Then, we want to change its size.

**1:19:28** · So, I'm going to do that in the inspector. This time, I click the field for the X-axis and type 10. Then, I'm going to press tab to move to the Z field and set it to 10 as well and press enter to confirm. So that's how you can quickly change properties in the inspector using tab or keyboard navigation. Now we can run the scene and what do you think will happen? I'm going to press F6 and the character falls.

**1:19:55** · So in games there's a difference between the visual and the physics layers of the game. Currently, we have a box that's visual and the gun that's attached to the player that are visual things, but they don't have collision information, unlike the player that has a capsule shape. So, we need to turn on collision information for the platform for the player to not fall through it. With the CSG box node selected, click the check box next to use collision.

**1:20:27** · And now you can run the scene again by clicking this button at the top right or pressing F6 on Windows and Linux and the player will stick to the platform and you can move over it. So that's a step forward. Now when running the scene you can see that it's all gray and this is because we don't have any lights in the scene. It's different in the editor because by default, GDO gives you a preview sunlight and environment.

**1:20:57** · You can click the sun icon and the globe icons in the toolbar above the viewport to get a faithful idea of what the scene will look like when running it. So, we need to add some lights and an environment to change the gray background. Now, oh by the way, the box is blue right now because it's selected in the editor, but by unselected, you can see it's gray as in the running game. So, as a child of our game node, let's add a new directional light 3D.

**1:21:33** · Can press control A, command A, uh to bring up this window anytime, and press enter when you've selected the directional light 3D node. And this adds a directional light as the name suggests. It's like a sunlight that gives a uniform directional light to the scene. I'm going to move it up a bit and rotate it to angle it. And you can see a white arrow in the scene that represents where uh the light is coming from.

**1:22:01** · So you can angle it down to give some light to the top face of the platform. Okay, that's fine. But the scene is still pretty gray. So, let's add an environment to change the background and some of the uh lighting of the scene.

**1:22:21** · Add a new world environment node to the scene as a child of the game node. And this is a node you can use to give a specific level or scene a specific environment. An environment encompasses many things like what is drawn in the background, what kind of ambient light is applied to the scene. So currently the shaded areas are gray but you can change that with a world environment.

**1:22:49** · You can change some visual effects that are built into GDAU like fog and so on.

**1:22:55** · Um by default the node doesn't do anything because you need to add an environment to it in the inspector. So click the empty slot next to environment and add a new environment resource as a child of it. Then click the newly created resource to reveal all its properties. I'm going to make the inspector a bit larger. And you can see there is quite a lot. So the first section background is for the background. You have the ambient light to change uh how shaded areas behave.

**1:23:30** · And then you have a bunch of post-processing effects built into the engine that we will not all get into.

**1:23:36** · We'll focus on the tone map and the fog here, which are two of the most common ones. Let's start with the background.

**1:23:44** · So, click the background category to expand it. And you can see that the mode is set to clear color. Uh game engines every frame usually clear the game window or the screen and draw what's called the clear color. It's the gray you can see in the background. That's the default clear color in GDAU. And then the engine draws on top of that color to paint the screen. We can change that clear color for the entire project.

**1:24:14** · But with the world environment, we can we can better control the background per game level. That's what we'll do here.

**1:24:22** · So click the drop-own to change the option to custom color. This will bring up a color picker that you can click.

**1:24:31** · And then you have a circle and a slider you can use to pick the color. So I'm going to click the slider on the right and pull it up to make the tone a bit lighter and reveal the color wheel. And then click and drag to go select a nice color. So for this project, I want a pretty bright blue. And I'm going to go with something like uh this. Just pick a color that you like or basically the sky.

**1:25:01** · And you will notice that it also affects the shaded areas in the game. So it makes the shaded face of the platform a bit blue. This is because by default the background applies what's called ambient light. You can see that if you expand the ambient light category, the source is the background.

**1:25:22** · And so this color from the background gets added a bit to the shaded areas, giving them a bit of a tint and making them a bit lighter. We can add a bit of warmth to the shadows by changing the ambient light source. So click the drop-own menu next to source and select color. And then you can click the color picker below the drop-own menu. And I'm going to click and drag on the slider on the right to make the tone brighter.

**1:25:53** · And then I want to select a somewhat beige or orange color to make my platform a bit warmer so it contrasts a bit more with the background. And you'll see the effect will be especially nice once we've added the fog and the materials.

**1:26:12** · Next, we can change the tone map. It's a postprocessing effect built into the engine that's widely used in 3D games.

**1:26:20** · So, click the tone map category in the inspector to expand it. And by default, it's set to linear. We can change it to filmic to make the image a bit more contrasted. Um, this will make the image quite a bit nicer. And then you can play with the exposure to make the light brighter or the image darker. and with the white to change what amount of brightness of the pixels corresponds to white uh in the image.

**1:26:49** · So usually when you lower the white point the image becomes a bit brighter and often a bit more contrasted and as you increase the white point it becomes a bit less contrasted and a little darker. You can leave the values by default or tweak them to your liking. The advantage of using the ambient light and tone map uh with a simple color is that this is a very lightweight rendering technique and works great for stylized art like the one we have in this project.

**1:27:20** · Okay, I'm going to fold the background ambient light and tone map categories to focus on the fog. This is the last effect we will turn on. So expand the fog category and turn on the enabled property to enable the fog. Uh this makes everything gray because now the fog is being applied to the scene and covers the background. So it simulates fog in the scene and it is more visible if you have more geometry.

**1:27:50** · But we're going to use the fog to give some verticality to the scene. So it's not a problem that we have single platform. I'm going to pan the view a bit. And first we'll change the light color to be blue. So I'll click the light color. And I'm going to go with a somewhat dark blue. And you'll see it tints the environment only like the sky because the fog is meant to be like in depth of the screen. But we'll make it vertical.

**1:28:22** · And to make it vertical, we want to change the height uh property and the height density, the last two sliders. So for the height, I'm going to choose something like uh.5 m.

**1:28:37** · And height density, we have to increase it to see the effect. So 15 something like this. And you'll see now the fog applies vertically on the platform. And you can increase the density to make the fog denser. And you can then play with the height. If I click the the pin, it goes a bit too fast. But if I click and drag around the top part of the field and then drag left and right, I can change the height of the fog. So you can see the density of the fog changes how tight the fade of the fog is.

**1:29:10** · So I'm going to lower the density a bit to um have a nice gradient. And then I'm going to play with the height so that it doesn't go up to the top of the platform, but it does cover the bottom of the platform. And it's gonna basically add that nice gradient to all our level. Then let's see what happens if we change the density of the fog. If we increase it, it increases the fog like in the depth axis. I actually don't want that too much.

**1:29:42** · So, I'm going to lower it to a very small value so that the fog is mostly vertical in our level.

**1:29:51** · And I think that's good. We can play a bit with the color to make the sky brighter again. And we are good to go.

**1:30:00** · We can now work on the material of our platform to not make it look flat and bland. Let's add a material to our platform to change its color and control its shading. First select the CSG box 3D node with the select mode active. You can click the box in the view and in the inspector on the right you will see a material property with an empty slot next to it. This is where we add the material. So click the empty slot and select new standard material 3D.

**1:30:29** · The standard material is a resource provided by GDAU that gives you lots of options for shading. So it's an allpurpose material uh that can use in many many cases most of the time actually. Click the icon that you see of the the sphere here to expand the material properties in the inspector and you will see it has really many many options uh to really fine-tune the shading of objects.

**1:30:59** · Uh here we're going to focus on the albido and UV1 for some simple uh shading to get started with the platform. Albido stands for the main color of a surface. So expand the albido category and click the color uh slot to open a color picker where you can change the main color of the platform.

**1:31:25** · You'll notice that the the main color changes and the fog remains unaffected. Also note that uh when you select the CSG box, there's kind of a blue overlay over it. And this changes the colors that we see. You can see a preview of the material in the inspector on the right. So we could work with that to shade the platform, but it's good to see how it will look like in the view as well. Uh but without the overlay.

**1:31:54** · So to turn off the overlay, we need to change the viewport settings by clicking the perspective menu at the top left of the viewport. And you're going to see a view gizmos option. And you can turn off the checkbox to remove the overlays and the edit handles in the view. So now we have a more faithful idea of what the platform looks like. I invite you to pick a color that you like.

**1:32:21** · Uh I'm going to go with something blue green a little darker maybe something like this. And next we're going to uh apply a texture image on top of this color. So the albido color is going to tint the surface of roll. You can combine it with an image that will be projected onto the object that will give it a pattern.

**1:32:46** · You could use the image alone if the image has color information, but you can also use a grayscale image and tint it with the color. This is what we will do here.

**1:32:59** · So, in the file system dock at the bottom left, look for the checkboard uh image. You can start to type checkboard in the search bar at the top of the dock. You'll find a file named checkboard.png png and you can drag and drop it onto the texture slot in the inspector on the right. And when you do that, you will start to see large faint squares over the surface.

**1:33:24** · Um, if they are not visible enough, it might be because of the color because sometimes if the color is too bright or too dark, the overlay will not work properly. So, you need to find um tone where the checkboard pattern is visible. And for that, um, medium intensity color can work well. So, I'm going to go with a green a bit like this. Now, the pattern is really large.

**1:33:53** · So, to control how a texture image gets applied to a 3D mesh, we use something called UVs. They are coordinates that map the texture onto the geometry. and they work by unwrapping the geometry onto a 2D plane to tell the computer how to apply the texture image. Anyway, we can fold the albido category and go down to the UV1 category, which controls the scale of those UVs and the scale of the texture.

**1:34:27** · As a result, can click and drag on the scale slider and increase the scale to make the texture repeat more. This is not increasing the scale of the texture.

**1:34:39** · It's increasing the scale of those UV coordinates. And this is why when the value increases, the pattern doesn't get larger. It gets repeated more times. So that's one way to do things.

**1:34:52** · There's another feature that we can use in here called trip planner. If you turn it on, it's going to change the scale of the UVs. And so we need to lower the value back down. Actually, we can reset the scale back to one. Trip planner is a really powerful feature built into the standard material that allows good to project uniformly the texture from the top sides and um uh yeah, from the top and sides uh onto 3D geometry.

**1:35:24** · And this allows you to create a uniform texture mapping around your level, whether you have uh boxes or round geometry, and to make it consistent everywhere without having to worry too much about these this UV thing. So, we're going to use it here. And you can see that it it really maps the checkboard nicely.

**1:35:49** · And then if you duplicate the the box, um the pattern continues perfectly onto the different boxes because of this projection. I think let me see if we can trigger this.

**1:36:05** · If I go back to the material and turn off the trip planner mapping, um you can see that as I scale the UVs, the squares on the different objects uh have some form of seam, some location where they don't have the same size and they don't match perfectly. If you use trip planner mapping, you don't get that problem, however, because the projection is uniform all across the game world.

**1:36:35** · So this is really suitable for prototyping for terrains, right? Tripler mapping that is. So we're going to turn it off. Notice one thing. So I duplicated my box here and the material is assigned to both. And then if I change the setting on the material of one of the two boxes, it updates on the other box.

**1:37:00** · This is because materials and more generally resources that are attached to nodes in GDO are shared by default. So if you change the settings in one place, it's using the same resource on other copies of the mesh and so everything will be in sync. This is unlike nodes in the scene doc which each have their own set of properties. And with that we have the material.

**1:37:27** · We can add a couple of platforms and then we can move on with the kill plane and shooting mechanics. In this part, we will create a little level, an arena for our player to walk. This is mostly to learn to duplicate and move shapes to do a bit of level design. So, we're going to make different platforms like this one and connect some of them by bridges or with floating platforms.

**1:37:57** · With the CSGbox 3D node selected, you can press control D or command D on your keyboard to duplicate the node. A second copy appears in the inspector and it's selected immediately.

**1:38:11** · So, you can move it using the move or select mode. Now, we don't see the handles to resize the platform because we turned off the gizmos when designing the material. So, let's click the perspective menu again and turn on the view gizmos checkbox to bring back the overlays. This allows us to resize the new platform and make it longer, larger.

**1:38:34** · You know, you can make it however you'd like. Think of this part. We are in here as doing a little platform level, you know, for the player. Okay. So, I'm going to make uh large platforms like these. So, I'm going to press control D, command D. And I invite you in this part to make the level however you'd like.

**1:38:56** · I'm going to make the platforms pretty uh spread out. I'm going to do kind of a square shape, right, for the the main level and have some bridges or floating platforms for the player to jump. Um, connecting them, you can do one thing that's very useful. You can go to the perspective menu once again, and at the top of the menu, you have options to change the view. You can use the top view to look at the level as if it was a drawn map from the top down.

**1:39:26** · And it gives you a much better sense of the gaps between the platforms. So I have three platforms. I'm going to press control D, command D um to duplicate the platform again. And I'm going to make this one a bit larger by clicking and dragging the dot.

**1:39:46** · Sometimes, you know, when you have the select mode active, the circles can get in the way. You can press W on your keyboard to switch to the move mode or click the icons in the toolbar at the top. And so, let's say this is kind of what I want. And now I want to add little platforms that are floating between the main platforms. So, I'm going to again work from my node. I'm going to press command D or control D to duplicate.

**1:40:15** · And then I'm going to move the platform to be somewhere, you know, in the center of the gap between the other platforms. And then alt click and drag on the handles to resize my platform. And I'm going to do the same in the other axis. And this resizes the platform uh symmetrically around the center. Now, if I use middle mouse click and drag, I'm going to jump back to the perspective view where I can see that the platform is very tall.

**1:40:46** · You can keep it like that or you can make it much thinner to make it look more like a floating platform, right? And it's between the two platforms. Actually, the gap is pretty large. So, I think I'm going to need two or three of these. I'm going to make them a bit thinner and duplicate this one.

**1:41:09** · And actually, I'm going to make them thinner again because otherwise the player will be able to walk over the gaps because the player has a certain width. Okay, so these floating platforms now I would like to give them a different color to make them stand out from the rest of the level. So, I'm going to click one of the platforms and in the material slot, I'm going to rightclick and click make unique.

**1:41:34** · This is going to create a new material that is not linked to the rest of the scene where I can change the color. So then I click the material to expand it. Go to the albido category and I'm going to click the color slot and change the color to something like yellow for example to make it a bit brighter. So you can see that now the material I could edit without changing the color of other platforms.

**1:42:03** · If I select my other platform that still has the material shared with the main platforms. If I go change the albido color, it's going to change uh in sync on every platform.

**1:42:18** · Let's now see how to save materials to make them easier to edit anytime and also to reuse across game levels more easily. So, select the bridge. Uh I'm going to select the one with the yellow material. And in the inspector, right click on the material and select save as.

**1:42:39** · This allows us to save the material as a file that we can edit anytime from the file system dock and reuse across scenes. Uh so I'm going to save it in the level file and I'm going to name it bridge.t. Uh t res the extension stands for text resource and this is because GDO saves all the data as text while you are working on your project.

**1:43:05** · So if I rightclick and select open an external program, you'll see that the data is all as text. This makes it editable in case you have a problem. Uh this makes it easier to store as part of version control systems the systems we use to track uh changes in a game project and work with a team.

**1:43:26** · And also note that upon exporting the game by default, good converts all that to binary resources to make the files faster to load and not editable. So once we have this file in our file system doc, we can doubleclick the file to open the material anytime in the inspector.

**1:43:48** · And you can see that now the material takes the entire inspector and I can change the properties like the color and it changes anything that's using the material like my bridge in this case. So now if I select the other bridge I can click and drag the bridge.tres file onto the material slot and it's going to use this file or both of the bridges. And I'm going to go back to a yellow color for them. And now everything updates in sync.

**1:44:20** · You can also click and drag the file onto meshes in the game world. And you can see a preview of the material. And you can assign the material this way. We're going to do the same for the other platforms that are currently blue. I'm going to rightclick on the material slot, select save as, and I land in my level directory. And I'm going to save this one as platform.ts.

**1:44:48** · And now the platform material is saved as a file separate from the scene. So we can reuse it in any game level. And I can change the color. And you can see that it automatically updates every location where the material was used, not just the one platform from which we saved.

**1:45:10** · Because basically we took the material that was shared between these platforms and saved it dumped it to a different location the platform file. So uh for this one I'm going to go for green color again. And with that we have the materials ready for our scene. Now, I invite you to run your scene and play a bit with the player locomotion to have fun adding some platforms to your level, adding some bridges.

**1:45:41** · So, you can duplicate the platforms and move them.

**1:45:46** · Remember that you can duplicate the nodes with control D or command D on Mac OS and um navigate around the view and shift the platforms and everything, you know, to just shape the level a bit. Just one note, when we add the mobs, they will not be able to move up and down and track the player really because this is a bit beyond the scope of the tutorial.

**1:46:11** · So, avoid having too much uh play with heights unless you want the player to have some safe spots to jump to. But yeah, do that. And I'll see you in a second with the completed level. Here is my little level completed. It's nothing fancy. It's very simple.

**1:46:28** · I opted for bridges that you can cross by walking over and some gaps that force the player to jump and that will complement the shooting mechanics and mobs following you and forcing you to move around that we will add a little later. The point of this is really to show you how to use the materials, how to prototype a game level with CSG boxes. And next, with that done, we can move on to the player shooting mechanics.

### 7-Coding the shooting mechanics

**1:47:01** · \[Music\] In this part, we will set up the gun and the shooting mechanics. There are quite a few steps involved there. First, we will set up the bullet scene. Next, we will place and orient the bullets and their spawning point. We will code the bullet forward motion so that it moves in the direction it's facing. We will delete bullets when they travel too far so they don't clutter the game world.

**1:47:27** · We'll make bullets move independently from the gun. We will shoot bullets when the player clicks. And then we'll make bullets shoot automatically at fixed time intervals. With that, you will have a complete weapon. And you'll have learned to spawn things, orient them, and make them move independently from each other. Let's get started. So, let's get started by going to scene, new scene to create a new scene. And our bullet will need to detect when it touches a mob. So for that we will use a special node called area 3D.

**1:47:59** · Click the other node button in the scene dock and look for area 3D and create that node. The area 3D can detect and report when it overlaps with something which is useful for simple bullets. I'm going to rename this to bullet 3D just to make the name a bit clearer. As a reminder, to rename something, you doubleclick the name in the scene dock. Type your new name and press enter.

**1:48:26** · You can press control S, command S to save the scene as a new file. And we're going to save it this time inside of the player directory. So, I'm going to double click that and save the file as bullet 3d.tscn. You can see a warning sign in the scene dock at the top left. This indicates that the node is missing some configuration.

**1:48:51** · Nodes like area 3D need a collision shape to function just like the character body 3D we used for the player. So let's add that. Add a new node by clicking this button or pressing control A command A and look for collision shape 3D. In the inspector, we need to set the collision shape we will use. So click the empty slot and then click on new sphere shape 3D to create a little sphere. Well, it's not that small actually.

**1:49:22** · Uh although we can't visualize it very well here. The next thing we will add is the mesh that we've prepared for the bullet, the projectile. So in the file system dock at the bottom left, bold the level directory, expand player projectile, and inside you will find a projectile model.gb. GB file. This is an imported model for the projectile. So you can click and drag it onto the scene and this will give you an idea of the projectile size.

**1:49:54** · Now you will notice that it's a bit strange with a black ball at the center and a gray mesh behind that. It's because to give the projectile nice visuals, we prepared what's called a shader program. This shader is going to allow us to control the color of the bullet core and to have a little animated trail around it. So for that we need to kind of open or expand the imported projectile model by GDAU.

**1:50:25** · You can click the open and editor icon in the scene doc to do that and see what good tells you. It says that the scene was automatically imported. So you cannot modify it directly. To make changes to it, you need to create a new inherited scene. And this is a good opportunity to introduce inheritance in scenes in GDO. When you create one of those scenes like our bullet, you can create a new scene that will take everything that's present in the bullet 3D scene and add or change things on it.

**1:50:59** · It can add new node or change node settings. And so for imported models, we need to do that to modify them. So let's click the open in editor button and select new inherited. And this will will create a new scene tab where you can see the imported 3D model for the projectile in yellow. Uh, I'm going to rename this to projectile 3D and save the scene inside of the player/ projectile directory.

**1:51:30** · So, I'm going to enter that and ensure that the name is projectile 3D and click save. This saves our projectile scene.

**1:51:42** · Now, we can access and customize the projectile 3D model that was imported from Blender. In the file system doc in the projectile directory, you'll find a projectile.gdshader file. It's a program that's used to control the drawing of 3D models and pixels on the screen on the graphics card. Learning how to code that is again beyond the scope of a tutorial like that as it's pretty technical, but we've provided it to change the drawing of the projectile.

**1:52:16** · So, we're going to add a new material to our projectile mesh using this provided shader because materials like the ones we added to our platform use a shader under the hood. So, let's go to the inspector with the projectile node selected. Expand geometry. And here you will see a property called material override. Uh the mesh may have a material assigned to it. So the mesh is the 3D geometry of our projectile and we can change that.

**1:52:48** · We can replace that with the material override property. So I'm going to click on the empty slot and select not new standard material but new shader material this time. This creates a material preview like before. You can see that now our projectile is all gray.

**1:53:09** · and we're going to click the newly created shader material resource to expand its properties and reveal a shader property. This is the program that will be used to draw the bullet.

**1:53:21** · I'm going to click and drag projectile.gdshader onto the empty shader slot. And now you can see instantly it turns black and the trail starts to animate. You can then expand the shader parameters to reveal the variables, the properties that the person who coded the shader exposed for you to edit the material. So, we can change the tail and the head color of the bullet.

**1:53:47** · I'm going to click the tail color and with the um color picker, I'm going to pick a pretty bright yellow or yellow orange. And for the head color, I'm going to go with a darker orange tone. And with that, we have the bullet visuals. The reason I'm showing you how to create a shader material is because you can find many open-source shaders on this website, go toshaders.com.

**1:54:16** · Uh, for example, this effect to create an old school TV display. You can click those shaders and then go find the code right there that you can copy, save in a GDS shader file and then you can use it in a shader material resource as we just did. We also made our own little repository of open- source shaders that you can find as good shaders on GitHub.

**1:54:41** · Uh you'll find the link in the description and there are a bunch of demos in this one with the shader materials pre-created in GDO. Back to GDO. Let's go back to the bullet scene to see that our projectile did not change. When we created this new projectile 3D scene, we created a new file that's different from the instance of the projectile model we had added to our bullet scene.

**1:55:07** · So now in the file system doc, we can locate the projectile 3D scene and we're going to drag and drop it onto the bullet node. This is another way of instantiating a scene.

**1:55:21** · And we can select the old projectile model, press delete on the keyboard, and confirm that we want to delete the node.

**1:55:28** · And with that, we have the projectile visuals. We have one more thing to change. The collision shape for the bullet is a bit big compared to the model. And in general, you'll do something like this when creating areas or collision zones. You'll first create the area and the note setup, then add the model, and then you can change the collision shape to match the model. Now, with snapping on uh the increments to resize the collision shape are a bit big.

**1:55:56** · So, you can press Y on your keyboard or click the snap icon in the toolbar to toggle snapping off and then click and drag on the collision shape 3D handle to resize it. You can make it a little bit bigger than the 3D model to help the player touch enemies and damage them. Uh, but you don't want it to be too too big or sometimes it will look like you've damaged enemies without even touching them. With that, we are ready to add the spawning point to the gun and make it shoot bullets.

**1:56:28** · We have to head to the player scene where the gun lives.

**1:56:34** · So, let's open the player scene. And I want to show you a new trick. On your keyboard, you can press control shift O or commandshift O to open the quick open scene picker. This allows you to search all the scenes in your project very quickly and press enter to open the selected one. So, if I start typing player, I'll find player.tscn and I can press enter to open it.

**1:57:00** · This is equivalent to going to the file system doc and going down to the player folder, locating player.tscn and doubleclicking it. Now, I'm going to select the gun model in the view to see the gun. And what I want to do is to tell good where the bullets should spawn from. And for that we can create a new node that will place as a child of the gun and place in front of the gun. So let's create this.

**1:57:32** · It can be a child of the camera or the gun model. It's the same thing. It just has to move with the camera. So I'm going to select the camera 3D node and press control A, command A, and add a new marker 3D node.

**1:57:48** · This is a plain 3D node with a location, rotation, and scale that draws a little marker in the 3D view. So, it's perfect for spawning points. Select the marker 3D node and move it until it is in front of the gum nose. You'll want to turn the camera to see that because depending on the perspective, you know, it can be difficult to place it accurately. So it's normal if you have to turn the camera several times and adjust until the node is right in front of the gun.

**1:58:21** · Okay. So you want this cross here to be at the entrance of the gun. Um because we'll see the gun from the back. It's okay if there's a bit of space between the gun and the marker. Right? You will not see it. This is just where the bullet will spawn. You can test the effect by selecting the marker 3D node and creating a bullet 3D instance as a child of it. So you can click and drag the bullet 3D scene onto the marker 3D node to create an instance. And you'll see it'll be rotated the wrong way and way too large.

**1:58:53** · So we will adjust that in a moment. I'm going to press command Z or control Z to undo. I want to show you another trick though to create scene instances. With the marker 3D node selected, you can click this instantiate child scene button at the top left of the scene dock or press control shift A, command shift A on Mac. And this opens the same search window we had for quickly finding and opening a scene.

**1:59:23** · This time it's to create a scene instance. And so you can look for your bullet 3D scene and press enter. And this will instantiate the bullet as a child of the selected node. So this is a very powerful trick to quickly add things to your scene when working on largeo project. So the bullet is too big and it's not looking in the right direction. As I think I've mentioned before, we need the bullet to face along the Zaxis like this.

**1:59:53** · But the model of the bullet is facing towards the positive xaxis. So we can go back to the bullet 3D scene and turn the bullet around and also scale it because it's way too big. So click the icon to open in the editor uh next to the bullet 3D scene instance to jump to the bullet 3D scene. And we can see if we select the projectile 3D instance that it is facing towards the red axis towards the right.

**2:00:27** · And instead we need the projectile to be facing towards the negative Zaxis which is uh the forward direction. So for that select the projectile 3D node and with the select mode or the rotate mode active you can rotate the bullet. Uh, you'll want to turn snapping back on to snap to 15° angle increments. So, I'm going to press use snap here and rotate around the vertical axis to turn the bullet to face along the blue line.

**2:00:59** · The next thing I want to do is scale it down. For that, I can use the scale mode in the toolbar. You can press R on your keyboard to turn it on. And you can click and drag. then anywhere in the viewport to change the scale.

**2:01:15** · So I'm going to make it about half the size or you know a little bigger than that 40% smaller and then I'm going to select the collision shape 3D node and I'm going to go back to the the select mode and click on the handle uh well I'm going to press shift on my keyboard to make the collision shape a bit smaller. Actually, I'm going to turn off snapping again. Uh, zoom in and click and drag on the handle to make the sphere a bit smaller. Okay.

**2:01:45** · Now, if I save the scene by pressing Ctrl S on my keyboard and go back to the player scene by clicking the player scene tab.

**2:01:56** · Now, we see the updated bullet. Well, it's still way too big. So, I'm going to make it smaller again. Go back to the scene. Select the projectile. Um, and I'm going to with scale mode, uh, make the node smaller again. This time I'm going to save, go back, and yeah, the size is about right. It It does not leak outside of the gun. It's pretty big, but as it moves in the distance, um, it's going to be less and less visible.

**2:02:22** · So, I'm going to keep this size and go back to the bullet scene, select the collision shape again, and resize it to fit the bullet node. Now that we checked the size of the bullet, we're going to add some code to make it shoot forward.

**2:02:38** · Automatically, it's just going to move forward and then we will move on to coding the shooting mechanics when the player clicks. Before we get coding, let's clean up some of the scene tabs that we have up there. To do that, you can click the tab that you want to close, revealing its close button, and then click the close button. You can also middle mouse click, for example, the projectile 3D tab. I'm going to middle mouse click and it will close instantly. With that, we can attach a new script to the bullet and get coding.

**2:03:10** · So, select the bullet 3D node, click the attach script button at the top of the scene dock and create the script in the default location. Our script extends area 3D. This is the type of node we created for the bullet 3D node. And this gives us some nice features to detect when the bullet is touching something.

**2:03:30** · This will allow us to damage enemies. Now uh for now we're mostly going to move the bullet first and for that we will define two constants for the speed and range of the bullet uh and then move it forward. So to define constants which are names given to values in our code, we can type const.

**2:03:53** · Then I'm going to name it speed and set it equal to 55 m/s.

**2:03:59** · I'm going to add a second one for the range of our bullet like how far it can travel before it gets deleted. It's going to be 40 m. And to keep track of how far the bullet traveled, I'm going to define a variable which we can change each frame. So I'm going to call it bar traveled distance. And with that we can move the bullet forward. To move an area or a physics body, we want to use the physics process function.

**2:04:27** · It allows us to synchronize the simulation between the player and the bullet and everything happening with physics in the game. So let's define the function by writing funk underscore physics process and you'll get autocomp completion. Can press enter to confirm. In this function, we're going to change the position of the bullet each frame. As for the player before, we need to move the bullet forward based on where it's looking.

**2:04:57** · As a reminder, if I go back to the scene, if I rotate the bullet, it's axis, it's forward direction is going to turn with it. And in code, we can access the uh right, top and front and back axes of the node using the transform.basis property. We can add to the position each frame. And if we go back to the scene, the forward direction of the bullet is not positive Z.

**2:05:27** · It's the minus Zaxis. So I'm going to add minus transform basis Z. This is the direction. And we can multiply that by the speed multiplied by delta.

**2:05:48** · speed time delta represents how much we want the bullet to move in one frame.

**2:05:54** · And the transform.basis multiplies that to move the bullet in the direction it's facing.

**2:06:02** · Now, if you go click the run project button at the top right of the editor, you're going to see the bullet go forward. It's moving forward relative to the gun. And this is why we had a bullet instance in the player scene to be able to test it. Now if I run again, you can see the bullet keeps going. Probably it disappears in the video, but it is still there. If I go back to GDO and look at the scene dock, there are two tabs that appeared, remote and local.

**2:06:31** · If I click the remote tab and I expand the nodes, I can see a view of the nodes at runtime in my running game. I can see where are scene instances and what nodes they contain. So, if I expand the character body 3D node, which is the the player instance, and the camera and the marker, I can see that my bullet is still there.

**2:06:55** · It stays there. And if we make the player shoot bullets really fast, they're going to accumulate there and eventually slow down the game. So, we want to delete the bullet when it reached a limited range. So, back to the bullet script. I'm going to increment the travel distance each frame. And once it is higher than the range, delete the bullet. So first we increment the travel distance. We're going to write the variable plus equals to add to it. And the travel distance is speed time delta.

**2:07:28** · We don't need to keep track of the direction. We just want to know the number of meters traveled by the bullet regardless of the direction it was in.

**2:07:39** · Then I'm going to use a condition. If the travel distance is greater than the range value, I'm going to destroy the bullet. And to do that, we call a function named Q3. It's a function that deletes a node. And it happens only if that condition is true. With that, if I run the project, the bullet is going to disappear after a while.

**2:08:03** · I can confirm this by going back to GDAU, heading to the remote tab, and if I look at my expanded player scene, camera, and marker, you can see that the marker does not have a child bullet. So, it confirms that the bullet was deleted. Now, I want to show you a very common and important gotcha. Look at what happens if I lower the speed of the bullet and run the scene. And now, when I turn the view, the bullet turns with it.

**2:08:34** · This is because the bullet is a child of the camera. So if I go back to the player scene and to the 3D view, you can see that the bullet is a child of the marker 3D. That's a child of the camera. So if I offset the bullet and I rotate the camera, the bullet rotates with it. There are a couple of options to uh avoid this problem. We can in our code make the bullet a child of a different node that is not part of the player scene so that the bullet does not rotate with the camera.

**2:09:04** · Another option is in GDO to select the bullet 3D instance and go to the inspector to the transform category and go down and check top level. This is going to make the bullet node move independently from its parent even if it is a child of the camera. If we run the scene with this option on, you're going to see now the bullet moves independently from the camera.

**2:09:31** · Uh the view is a bit bugged because well when you use this feature in your code now the position of the bullet everything is independent from the camera. So you need to use code to make sure that it is moved to the position of the marker. But we will do that when we add the shooting mechanic next. Note that it is not enough to change the top level property on the instance of the bullet. This changes the property only on this bullet inside of the player scene.

**2:10:02** · But we want every bullet the player will shoot in the game to have this property. So for that we go to the source scene which is kind of the template or reference for every bullet the player will shoot. So click the bullet 3D scene tab at the top of the viewport. Select the bullet 3D node and in the inspector we go down to the transform category and turn on top level. Okay, with that we can save the scene and we're all set to start coding the shooting mechanic.

**2:10:33** · In this part, we're going to write the code to shoot bullets. I'm first going to delete the bullet instance we have in the scene because it's a placeholder for testing.

**2:10:45** · So, select the bullet 3D node and then I'm going to press shift delete on my keyboard or you can select it uh in the scene dock and press the delete key and confirm to remove the scene instance.

**2:10:58** · Then we can go to the player script. And at the bottom of the script, we're going to add a new function that will shoot one bullet. I'm going to call it shoot bullet. In this function, the first thing we need to do is to create a bullet instance. Uh, this process involves a couple of steps.

**2:11:17** · Uh, when you click and drag the bullet scene onto your scene dock or onto the game world, good loads, creates an instance of the scene, and adds it as a child of either the player or the node onto which you drag the scene. In code, these are three different steps that we need to code.

**2:11:39** · So first we need to load the bullet scene from the file system. For that we can use a function called preload. This is a very handy function that loads things as soon as the game is running.

**2:11:54** · And we need to pass the path to the bullet to the function to load it. For that you can click and drag the bullet 3D.tscn file from the file system dock into the parenthesis. And when you release it, inserts the path to the file. You actually don't have to do it like that. You can let go uh create a variable, a constant for you with the pre-loaded scene. For that, you remove the line and you click and drag the bullet 3D.tscn file.

**2:12:22** · And before releasing it, you press the control or command key on your keyboard down and you release. and it's going to insert a new constant that is named and that holds a reference to the loaded scene. A common question when seeing this code is, uh, okay, but we're going to call this function shoot bullet each time the player shoots a bullet. Aren't we loading the file every time? And the answer is no.

**2:12:51** · GDO is only going to load this file once and virtually replace the function call with a loaded resource.

**2:12:58** · Actually, when you load things in GDU, it smartly load them once and as long as they stay in use, it keeps them in memory. Now, we can create an instance of the bullet by writing bullet 3D.instantiate. Instantiate is a function that's part of loaded scene resources. And we can store the newly created instance in a variable to do different things to it like moving the bullet, adding it as a child of another node, etc.

**2:13:28** · So I'm going to define a new variable called new bullet and it's going to be equal to bullet 3D.instantiate. And below that, I told you the third step is to add it as a child. So, we're going to add it as a child of the marker 3D node. As we did before for the camera, we're going to make this node have a unique name.

**2:13:50** · So, we rightclick the marker 3D in the scene dock and select access as unique name in the drop-own menu. This allows us to write person sign marker 3D in our code to reference the marker 3D. Then we can write a dot to access the nodes functions and call add child on it to add the bullet as a child of the marker. In parenthesis, we're going to pass our reference to the new bullet which is in the new bullet variable.

**2:14:22** · So this is going to create a node and add it as a child of the marker. But as mentioned right before, when we do that, now that our bullet is stored as top level, it's going to not move the bullet to the marker. So, we need to add code to do that. And not only that, the player is going to move and rotate in the game world. So, we not only want to move the bullet to the marker, we also want to orient it to the marker.

**2:14:53** · And we can do that with one line of code. So, back to the script, we're going to add a new line after adding the bullet as a child of the marker. And it's going to be like this. We're going to write new bullet dot global transform is equal to marker 3D dot global transform. The global transform represents the position, rotation, and scale of a node or an entity in a single value.

**2:15:23** · This is how game engines usually handle moving, rotating, and scaling things under the hood. And these are available to you. We could use several lines of code to change the position and rotation separately. But uh we can use this value that's quite convenient. So this says take the position, rotation, and scale of the marker and assign it to the new bullet. So basically move the bullet and rotate it and scale it like the marker, but the marker is not scaled. So, it's just going to move the bullet and rotate it to the marker.

**2:15:55** · At this point, we can already start coding the shooting mechanic. We'll add more to the function in a moment, but let's go back to the physics process function.

**2:16:08** · And at the end of it, we're going to add code to shoot the bullet. First, we need a new input action to represent shooting. So, we're going to go to project project settings input map. And in the new action bar, I'm going to type shoot and then click the plus button to the right of the action. And you can actually click inside of the bar that says listening to input and it's going to detect the left mouse click. Then I click okay and close. This uh allows us to use our new shoot input action.

**2:16:39** · And how do you think we can write the code for the shooting mechanic? Try to pause the video and do it yourself as a short exercise. And I'm going to give you the solution now. So we can write if input is action just pressed just like we did for the jump, but this time in parenthesis, we're going to pass our shoot input action colon. And then we call the shoot bullet function.

**2:17:11** · This is going to create a gun or rifle like shooting mechanic where the player clicks once to shoot one bullet. We can run the game by clicking the run project button at the top right or in my case pressing F5. And when I click it's going to shoot one bullet that moves forward. It's going to move up to a certain distance and then it's going to get freed automatically.

**2:17:41** · And note that you can go back to the bullet 3D script anytime. Uh you can double click it in the file system dock if needed and change the speed to a value like yeah 20 is going to be a bit better. And then when you click the bullet are going to move much faster and disappear when they get to the maximum range. Now currently to shoot the bullet I have to click each time individually.

**2:18:06** · What if you want the bullet to shoot automatically when the player keeps the mouse button pressed? Well, for that we can use a timer node. So, in the scene doc, select the player node and click the plus button to add a child node. And you're going to look for the timer node and press enter to add it. The timer node is going to uh cycle by default for 1 second uh as indicated by the wait time in the inspector.

**2:18:34** · And each time it cycles, it's going to emit a signal, a little message that we can react to called timeout. We're not going to use this property of the signal. In this case, we're going to turn on its oneshot property, which makes it not cycle.

**2:18:53** · Instead, it plays once. and we can check if it is stopped or active to know if the player can shoot a bullet or not. The wait time is going to be our cooldown time between the bullets. So, for example, if you want to shoot one bullet per second, you set the wait time to 1 second. If you want to shoot two bullets per second, you set the wait time to 0.5 seconds, and so on. The lower the wait time, the more bullets the player can shoot. I'm going to go with something like 02.

**2:19:25** · So around five bullets per second. With that, we can start using the timer in our code. So I go back to the player.gdscript. And to access the timer, I'm also going to rightclick the node in the scene doc and select access as unique name. And then in the shoot bullet function, um, each time we shoot, I'm going to start the timer. This is going to make it run for 0.2. in 2 seconds.

**2:19:54** · And then we'll make sure that while it's running the timer, we prevent the player from shooting in the uh physics process function. But first, in the shoot bullet function, I'm going to add a new line, write person sign dot start. It's a function of the timer that starts it, makes it run or uh the duration of wait time.

**2:20:17** · And so with that, we can now check if the timer is active and our physics process function to change the shooting mechanic. So first, we're not going to only check for when the action shoot is just pressed.

**2:20:35** · Instead, we're going to use a different variant of the function. It's is action pressed. This function is going to be true and pass the condition as long as the shoot action. So the left mouse click is pressed down every frame. So if we just use this one and I play the game, you'll see I'm shooting loads of bullets. This is because each frame the condition is true and I'm shooting a new bullet. So we need to add more to this condition to limit the shooting mechanic.

**2:21:05** · So after this first uh condition, I'm going to add the end keyword to combine it with a second requirement. And I'm going to get my timer node with person timer dot and it has a function called is stopped. If the timer is stopped, it means it's not running. So the cooldown time is passed and we can shoot a new bullet. And I'm going to run the game. And now when I keep the mouse button pressed, I'm shooting bullets automatically. Cool.

**2:21:39** · Notice that uh I'm still running the temporary level that I was showing at the start of the project. Uh so I'm going to actually set our new level to the main scene. So that pressing F5 in my case or clicking the run project button plays our level. For that, from the file system dock, you want to locate your game scene, your game level, and rightclick the file and select uh set as main scene in the menu.

**2:22:09** · You'll see the file name turn blue. This indicates that when we click the run game or run project button, it's going to run this scene. Okay, great job. We're more than halfway through. We now have an environment, a gun, a first person character controller that can move, jump, aim, and shoot. Not too shabby.

### 8-Creating the mob

**2:22:33** · All right, let's keep going. To make sure this tutorial stays up to date, we hosted the rest of it on GDQuest's brand new free library. Click here to continue watching completely for free with no login required. In this part, we will work on the mob. We will make it follow the player around. Let's get started.