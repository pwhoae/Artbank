---
title: "The Unity Tutorial For Complete Beginners"
source: "https://www.youtube.com/watch?v=XtQMytORBmM&list=WL&index=2"
author:
  - "[[Game Maker's Toolkit]]"
published: 2022-12-03
created: 2026-07-04
description: "🔴 Get bonus content by supporting Game Maker’s Toolkit - https://gamemakerstoolkit.com/support/ 🔴Unity is an amazingly powerful game engine - but it can be hard to learn. Especially if you find tu"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=XtQMytORBmM)

🔴 Get bonus content by supporting Game Maker’s Toolkit - https://gamemakerstoolkit.com/support/ 🔴  
  
Unity is an amazingly powerful game engine - but it can be hard to learn. Especially if you find tutorials hard to follow and prefer to learn by doing. If that sounds like you then this tutorial will get you acquainted with the basics - and then give you some goals to learn the rest by yourself.  
  
The tutorial covers everything from installing Unity, to writing your first ever line of programming code, to creating UI, to building an executable game file you can share with friends. No experience is needed.  
  
\=== Files and Downloads ===  
  
Assets - https://www.dropbox.com/sh/h5vez7ltgbmfnib/AADSCiI2dEKptcR7ydv8xR2Ba?dl=0  
  
Scripts - https://pastebin.com/QiLkpeJe  
  
Unity Project - https://github.com/Britishgaming/GMTK-Unity-Tutorial  
  
\=== Sources and Resources ===  
  
(1) Time.deltaTime - https://docs.unity3d.com/ScriptReference/Time-deltaTime.html  
  
(2) Instantiating Prefabs at run time - https://docs.unity3d.com/Manual/InstantiatingPrefabs.html  
  
(3) Object.Destroy - https://docs.unity3d.com/ScriptReference/Object.Destroy.html  
  
(4) Debug - https://docs.unity3d.com/ScriptReference/Debug.html  
  
(5) ContextMenu - https://docs.unity3d.com/ScriptReference/ContextMenu.html  
  
(6) OnTriggerEnter2D - https://docs.unity3d.com/ScriptReference/MonoBehaviour.OnTriggerEnter2D.html  
  
(7) GameObject.FindWithTag - https://docs.unity3d.com/ScriptReference/GameObject.FindWithTag.html  
  
(8) GameObject.GetComponent - https://docs.unity3d.com/ScriptReference/GameObject.GetComponent.html  
  
(9) OnCollisionEnter2D - https://docs.unity3d.com/ScriptReference/MonoBehaviour.OnCollisionEnter2D.html  
  
(10) AudioSource - https://docs.unity3d.com/ScriptReference/AudioSource.html  
  
(11) PlayerPrefs - https://docs.unity3d.com/ScriptReference/PlayerPrefs.html  
  
Recommended Videos and Channels  
  
Brackeys - https://www.youtube.com/@Brackeys  
Tarodev - https://www.youtube.com/@Tarodev  
Game Dev Guide - https://www.youtube.com/@GameDevGuide  
Samyam (Best New Input System Tutorials) - https://www.youtube.com/@samyam  
Learn C# with these 9 lines of code - https://www.youtube.com/watch?v=aB9LJ9oHGOs  
  
\=== Chapters ===  
  
00:00 - Intro  
02:26 - Installing Unity  
03:42 - Step 1 - Unity UI  
06:49 - Recap  
07:11 - Step 2 - Physics and Programming  
15:30 - Recap  
16:09 - Step 3 - Spawning Objects  
27:52 - Recap  
28:32 - Step 4 - Logic and UI  
37:12 - Recap  
38:00 - Step 5 - Game Over  
43:31 - Next Steps  
  
\=== Credits ===  
  
Music provided by Epidemic Sound - https://www.epidemicsound.com/referral/vtdu5y (Referral Link)  
  
\=== Subtitles ===  
  
Contribute translated subtitles - https://amara.org/videos/SsFnt050CEaU/

## Transcript

### Intro

**0:00** · Hi, my name is Mark.

**0:01** · For years I've wanted to make my very own video games, using software like Unity.

**0:07** · Unity is the powerful game engine behind titles like Cuphead, Neon White, Tunic, Outer Wilds, Hearthstone, Firewatch, and even the Pokemon Diamond remake.

**0:18** · But I've always found that lengthy, multi-part, meandering tutorials just send me to sleep.

**0:25** · I can't learn by watching someone else - I have to get hands-on and figure things out for myself.

**0:31** · And so last year I developed a solution that actually works.

**0:35** · It's a three-step technique where you: one just learn the absolute basics of Unity.

**0:41** · Then, two, cement those lessons with simple exercises.

**0:45** · And then, three, figure out the rest as you go along.

**0:49** · And it totally worked! In the space of about a year, I went from ripping off iPhone games to working on my very own puzzle platformer about magnets.

**0:58** · And I released an interactive video essay that's had over 100,000 plays.

**1:03** · But wait, I hear you say! How do you do step one? How do you learn the basics, when the software is so complicated to figure out?

**1:11** · Well for me it was about writing down a list of things I would need to know, regardless of what game I was going to make.

**1:17** · Things like how to make a character appear and move them around the screen.

**1:21** · How to make stuff spawn in and then delete it again later.

**1:24** · How to have collisions and game over and animations and sound effects.

**1:28** · Then I learned all that by hunting through lengthy tutorials, reading the Unity docs, Googling esoteric words, and doing a lot of trial and error.

**1:37** · And so the whole point of this video is to save you that hassle.

**1:41** · This video is the tutorial I wish I had when I was learning Unity.

**1:46** · So in the next 40 minutes we're going to use the engine to make Flappy Bird.

**1:50** · Not because we want to make Flappy Bird, but because in order to remake this addictive iPhone game, we'll need to learn basically everything I just listed, from spawning objects to getting game overs.

**2:02** · This tutorial will cover every step of the way from downloading Unity, to understanding the UI, to writing your very first line of programming code, to building a game that you can share with your friends.

**2:14** · And then, when the tutorial is over, I'll share some concrete next steps that you can take in order to continue learning the rest by yourself.

**2:22** · Sound good? Then let's get started.

### Installing Unity

**2:26** · Okay, let's start by getting Unity from the website.

**2:30** · Download and install the Unity Hub.

**2:34** · And then you'll need to make a free account to actually use it.

**2:38** · Once that's done, you'll be asked to install the Unity Editor - I'm using version 2021.3 for this tutorial, if you're watching a million years in the future and wondering why things are different.

**2:49** · Let's pretend I have fast internet - Neeooowwwwmm.

**2:52** · We're not quite done yet.

**2:55** · Under installs, hit the cog icon on the Unity Editor and pick modules.

**3:00** · You'll see that Microsoft Visual Studio has been ticked - this is the software we'll use to write programming code.

**3:06** · So hit continue.

**3:07** · And install Visual Studio.

**3:09** · On this screen, scroll down and tick game development with Unity, and untick Unity Hub, because we already have it.

**3:16** · Neeooowwwwmm.

**3:17** · We don't need to make an account to use Visual Studio, so skip that.

**3:21** · And don't bother loading it, we'll open it later.

**3:23** · Okay, that's all done now.

**3:25** · So in Unity Hub, pick new project.

**3:27** · Choose all templates.

**3:29** · And use 2D, Core.

**3:31** · This is an empty project, with a few configurations to make it suitable for 2D games.

**3:36** · Give your project a name, hit create, and let's get game makin'.

### Step 1 - Unity UI

**3:43** · In step one, we're going to become familiar with the default Unity user interface.

**3:48** · And as we explore the different panels, we'll make the bird appear on screen.

**3:52** · Right.

**3:53** · So this is the default screen layout for Unity, and it's split into four panels.

**3:59** · First of all, down here, is the Project panel.

**4:02** · This will contain everything that is in our game - like sprites, sound effects, scripts, tiles, fonts, and so on.

**4:10** · Some of this stuff will be made in Unity as we go along.

**4:14** · But we can also just drag and drop files from elsewhere on our computer.

**4:17** · Like, I've made some sprites for the bird and the pipe in Photoshop and I'm going to import them into my project like so.

**4:25** · I'd recommend you make your own - that's always more fun - but if you have zero artistic ability then check the description for these assets.

**4:32** · The next panel is the hierarchy.

**4:35** · This contains all of the stuff that's in the current scene - which, in most games, will be a level.

**4:40** · We're going to start by making the bird, so right click and choose Create Empty.

**4:45** · This has made an empty GameObject...

**4:48** · so what's that?

**4:50** · Well, a GameObject is essentially an invisible container.

**4:53** · It has a position in space, a rotation, and a scale.

**4:57** · Then, you can fill that container with components - to add extra features.

**5:02** · For example, if we add a Sprite Renderer component, we can slap the bird image onto the GameObject.

**5:08** · Absolutely everything in our level will be a GameObject with components - the bird, the pipes, even the user interface and the camera.

**5:16** · All of this magic happens in the third panel, the Inspector - which is for messing with GameObjects.

**5:22** · So, once we've selected our new, empty GameObject we can put a name in the top field - let's call it Bird.

**5:28** · And we can see and change the GameObject's position, rotation, and scale, under Transform.

**5:34** · We can now press Add Component, pick Rendering, and pick Sprite Renderer.

**5:40** · To make this work, we need to fill in the sprite field - so just drag the bird image from the project panel into the field and viola, we have graphics!

**5:49** · That will, of course, show up in the fourth and final panel, the scene view.

**5:54** · Here we can see what's in our current scene, and, if you want, you can use these tools to move stuff around, scale it, and so on.

**6:01** · This section has an extra tab for game view, which shows us what the game will look like from the main camera when it's running.

**6:08** · Also, from this dropdown, we can set a resolution or aspect ratio to get a better idea of what it will look like when played - so I'm going to choose 1920 by 1080.

**6:19** · Oof, the bird takes up way too much space.

**6:21** · We could scale it down, but let's actually just zoom out the camera.

**6:25** · Like I said before, the camera itself is a GameObject in the hierarchy.

**6:29** · And it has a camera component with stats we can mess with.

**6:33** · By changing the size, we can zoom out.

**6:36** · I'm also going to change the background colour.

**6:38** · Lovely.

**6:39** · We can now press the play button up here to start...

**6:42** · the world's most boring game.

**6:45** · Okay, let's make it a bit more exciting.

### Recap

**6:49** · A quick recap.

**6:50** · Unity has four panels by default.

**6:53** · Project holds all the stuff in our game.

**6:55** · Hierarchy lists all of the GameObjects in the current level.

**6:59** · Inspector lets us see and change those GameObjects.

**7:02** · And we can see the level in the scene view.

**7:04** · And a GameObject is an invisible container that we can fill with components, like a sprite renderer.

### Step 2 - Physics and Programming

**7:11** · In step two we're going to use more components to make the bird into a physics object that is affected by gravity.

**7:18** · And then we're going to write some programming code to make the bird fly up when we press the space bar.

**7:23** · So let's add another component to our bird: a Rigidbody 2D.

**7:27** · This turns our bird into a physics object, with gravity.

**7:31** · So when we hit play, the bird drops, and falls off the screen.

**7:35** · Cool.

**7:36** · We'll also want this bird to be able to interact with other objects, so let's add a collider.

**7:42** · A circle collider 2D.

**7:43** · Back in scene view we can see the collider as a green outline.

**7:47** · It's a bit off-center for me, so I'll use the offset to move it.

**7:52** · And, a little game design trick - if we make the collider a bit smaller than the image, it will let the player get through pipes even if they juuust touched the edge.

**8:01** · It gives the game a bit of leniency and makes it feel more fair.

**8:05** · The final thing to add right now: a script.

**8:08** · This essentially lets us make our own custom component - but we'll have to write it ourself using programming code.

**8:14** · Choose New Script from the components list.

**8:17** · And call it BirdScript.

**8:19** · Once it's loaded, double click the script field to open it up.

**8:23** · This will open the file in Visual Studio, which we installed earlier.

**8:27** · So, welcome to programming! It's not too scary, promise.

**8:31** · We'll take it slow.

**8:32** · We're writing in C sharp, that's the programming language.

**8:35** · And the only thing to worry about right now is these two chunks here: start and update.

**8:41** · Start is for any code that will run as soon as this script is enabled.

**8:46** · And it runs precisely once.

**8:48** · Update runs constantly while the script is enabled.

**8:51** · And it will fire off every line of code, every single frame.

**8:55** · Over and over and over again.

**8:58** · So the main thing we're going to be doing with code right now is - well, if we go back to Unity - see these numbers and text fields in the components? And how we can change them in the Unity editor? We're just going to write code to change these stats while the game is running.

**9:13** · Just as a dumb example, and we'll delete this in a second.

**9:16** · In start, we can type gameObject - that refers to this bit up here.

**9:22** · And then a dot.

**9:24** · You'll see a list appear, and many of the items refer to stuff back in the Inspector, like isStatic, tag, layer, and name.

**9:33** · So let's pick name.

**9:35** · Then write an equals sign.

**9:38** · And in quotes, give our bird a name.

**9:40** · Finally, we must always use a semi-colon to mark the end of a command.

**9:45** · And we must always save the script before we go back to Unity.

**9:48** · Now, when we run the game...

**9:50** · the name of the GameObject has been changed.

**9:53** · Nice.

**9:55** · Okay, delete that code.

**9:56** · That was just for sillies - but it shows us how we can use code to talk to the game.

**10:00** · We can write a command by choosing someone to talk to - in this game, the GameObject - and then a topic of conversation - its name - and then a command - change it to Bob Birdington.

**10:12** · We'll be doing this a lot.

**10:14** · So what we actually want to do is...

**10:16** · in the Rigidbody 2D's component, under info, we'll see a greyed-out field for velocity.

**10:22** · And we want to write some code to add upward velocity to the bird to make it fly into the air.

**10:27** · The problem is...

**10:28** · initially, a script can only talk to the GameObject's top bit and the transform.

**10:33** · Right now, this script is completely unaware of the other components.

**10:37** · So we need to sort that out first.

**10:38** · We need to make a special slot on this script for a Rigidbody2D - so we can then talk to it and send it commands.

**10:46** · This is called a reference.

**10:48** · We're going to create the reference up here, between the class name and the start function.

**10:53** · We're going to write public Rigidbody2D myRigidbody.

**11:00** · So we now have a slot to store a Rigidbody2D.

**11:03** · And we have a name that we can refer to - to make sure we're talking about this specific Rigidbody2D.

**11:09** · And because we made it public, it means we can access this slot from outside the script.

**11:13** · So, if we save.

**11:15** · And go back to Unity, we'll see that the script component now has a field for a Rigidbody2D.

**11:21** · We can drag the component into that slot, and viola.

**11:24** · We have established a line of communication between the script and the Rigidbody.

**11:29** · Okay, back in Visual Studio.

**11:31** · In update, we can type myRigidbody.

**11:34** · Then dot.

**11:35** · And now look at all the things we can talk about.

**11:38** · Angular drag, gravity scale, mass - these are all properties on the component.

**11:43** · The one we want is velocity.

**11:45** · We want to set this to a new number, and so, just like before with the name, we'll write an equals.

**11:51** · Now what we're actually writing here is a vector, which is two numbers, to represent a position in 2D space.

**11:57** · And in this case, it's used to represent a direction for the bird to travel.

**12:01** · We want the bird to go straight up, so zero, comma one would be a good one.

**12:06** · I'm just going to use Vector2.up, which a built-in shorthand for zero comma one.

**12:11** · And to give it a bit more power, I'm going to multiply that vector by a number.

**12:16** · Say, 10, which should send the bird flying up in the sky.

**12:19** · Now, like I said before, any code in update will run, over and over again, every frame.

**12:25** · So if we save the script and hit play in Unity...

**12:29** · off goes our bird.

**12:30** · Bye!!

**12:31** · That's not what we want.

**12:32** · We want this to only happen when the player hits the space bar.

**12:35** · So it's time to use the most fundamental bit of programming code: the if statement.

**12:41** · An if statement is like a gate.

**12:43** · You can surround some code with a fence, and every frame that code will be completely ignored.

**12:48** · Unless, the game meets some specific conditions that are written on the gate - in which case the gate is open, and the code is read and executed.

**12:56** · So we want to say "if the player hits the space bar, then add upward velocity".

**13:00** · To do this...

**13:01** · we can write if, and then in brackets we can write the condition.

**13:05** · This time we're not talking to a component, we're talking to Unity itself - specifically its input system.

**13:11** · So we'll write Input.

**13:13** · Then we can pick GetKeyDown, and in brackets, KeyCode.Space.

**13:18** · This asks Unity if the space bar has been pressed on this frame.

**13:22** · And then we'll finish with equals, equals true.

**13:25** · A quick note on equals signs - we use one to make the thing on the left be the same as the thing on the right.

**13:32** · And we use two if we're just checking if the thing on the left is the same as the thing on the right.

**13:37** · Cool?

**13:38** · Anyway.

**13:39** · So this code says...

**13:40** · if the space bar has just been pressed, then...

**13:43** · and then we'll use curly brackets - these are the fence in our little analogy - and put the flap code in here.

**13:50** · So, now in update - every frame the game will go to the gate and be asked "hey, has the spacebar just been pressed?" If yes, the code will fire and the bird will flap.

**13:58** · If not, it will skip the code in the curly brackets and try again next frame.

**14:02** · So - save the script and go back to Unity.

**14:05** · We can now hit play and tada: the bird goes up when we press space.

**14:10** · We have now created a character and made it react to input.

**14:14** · This is a video game.

**14:16** · Hooray!

**14:17** · However, it feels like trash.

**14:20** · The flap isn't right, and it doesn't feel like the original iPhone game.

**14:23** · So we could change this number.

**14:26** · Save.

**14:27** · Open Unity.

**14:28** · Run the game.

**14:29** · Not quite right.

**14:30** · Stop.

**14:31** · Change the number.

**14:32** · Save.

**14:33** · But that's slow and dumb.

**14:35** · Let's do something smarter.

**14:36** · First, we're going to make a variable.

**14:39** · Let's go back to the top of the script and under our reference to the Rigidbody, let's make a public float called flapstrength.

**14:46** · A float is a floating point number - basically a number that can have a decimal place.

**14:51** · And then back in our update code, we'll multiply the vector2.up by flapstrength, instead of 10.

**14:57** · Now, back in Unity, you'll see that the script component has a new field: flapStrength.

**15:03** · And we can change that whenever we want to make the game feel different.

**15:07** · We can even change it during the game, but note that anything you change while the game is running won't save when you press stop.

**15:13** · This means you can play with values to your heart's content without worrying about screwing up your game.

**15:18** · So, if we mess with the flapStrength, and also the gravity scale on the Rigidbody, we'll hopefully get to something that feels good.

**15:25** · Ah, changing numbers back and forth: honey, that's game design!

### Recap

**15:30** · Recap time.

**15:31** · We can use code to change the properties of a component, while the game is running.

**15:36** · A script cannot talk to the other components on the gameobject, by default.

**15:40** · You have to make a line of communication by storing a reference to that specific component.

**15:45** · We create the reference in code, and then fill it in Unity by dragging and dropping.

**15:50** · Code in start runs once, when the script comes into existence.

**15:54** · Code in update runs continuously, every single frame.

**15:57** · But, we can use if statements to skip some code, unless a condition is met.

**16:01** · And we can use public variables to change certain values in Unity's inspector - even while the game is running.

### Step 3 - Spawning Objects

**16:09** · Okay, so the secret to Flappy Bird is that while it looks like a bird is flapping along through a world of pipes - it's actually not.

**16:17** · The bird stays completely still and the pipes move across the screen.

**16:21** · So in step three we're going to make pipes spawn into the world, move across the screen, and then delete themselves.

**16:28** · We'll start by making the object we want to spawn.

**16:31** · This will be two pipes which move across the screen, from the left to right.

**16:35** · Let's make another GameObject called pipe.

**16:38** · Put it exactly on the bird for now, to get the sizing right.

**16:41** · And then we'll make another object within this one, called top pipe.

**16:46** · This is a child of the first GameObject's parent.

**16:49** · This way we can nest multiple GameObjects, and move all of them at once just by moving the parent.

**16:55** · So let's repeat what we did for the bird.

**16:57** · Add a sprite renderer for the pipe image.

**17:00** · And add a collider - a Box Collider 2D, this time.

**17:04** · We don't need a RigidBody because it's not going to be affected by physics.

**17:07** · We can then move it up above the bird - but keep the X position as zero.

**17:13** · Finally, we can duplicate this whole top pipe object.

**17:16** · Call it bottom pipe.

**17:18** · And flip it upside down by changing the Y scale to minus one.

**17:22** · Then move it down below the bird.

**17:24** · As you can see, if we mess with the pipe parent GameObject, both pipes move, scale, and rotate along with it, with the parent as the pivot point.

**17:34** · So let's add a script to this parent's object to make it move across the screen.

**17:40** · We'll start by creating a variable for moveSpeed.

**17:44** · If we give it a number here, it will fill this as the default value in Unity.

**17:49** · But we can always change it there, later.

**17:50** · Then we'll write code to move the object, in update.

**17:53** · Now it would be lovely if we could just type transform.position.x, and change this number directly - but, no, boo, you have to change the entire Vector in one go.

**18:04** · Oh, and this time we're gonna have to use Vector3, instead of Vector2, because the transform has three numbers.

**18:11** · Even though we're making our game in 2D, Unity is still fundamentally a 3D engine and so it's keeping track of the object's depth with the Z value.

**18:20** · So, here's what we'll do.

**18:22** · We'll take the current transform.position.

**18:24** · And then equals.

**18:26** · We want to add to its current position, so write transform.position again.

**18:30** · And then plus.

**18:31** · And finally, in brackets, we'll do Vector3.left \* moveSpeed.

**18:39** · Back in Unity, press play and vroooof.

**18:41** · That's way too fast.

**18:42** · Now, you might think that you could just change this moveSpeed variable down to a really small number like 0.001.

**18:49** · And that will work - but that's not actually the problem here.

**18:53** · You see, code in update just runs as often as it can.

**18:56** · In fact, if we check the stats in Game view, we'll see the game is running at over 1,000 frames per second.

**19:02** · Heh, sorry PlayStation 5.

**19:04** · 120 fps? Pfft, that's got nothing on Flappy Bird.

**19:07** · And the real problem is that the game may run at different speeds on different computers, and we don't want the pipe to move faster or slower depending on your rig.

**19:16** · Real games have actually made this mistake - in Dark Souls 2, weapon durability was once tied to frame rate, so your swords would break twice as fast at 60 FPS, compared to 30 FPS.

**19:29** · That was a whoopsie.

**19:30** · Luckily, it's a pretty easy fix.

**19:32** · We just multiply it by Time.deltaTime.

**19:36** · This ensures the multiplication happens the same, no matter the frame rate.

**19:40** · We didn't need it for the velocity code because physics runs on its own little clock, but otherwise we will need it.

**19:46** · if you want to know more - about this, or anything really, the Unity docs are a good place to check.

**19:51** · You'll find info and sample code.

**19:53** · Okay, now with that fix in place, our pipe moves smoothly across the screen.

**19:58** · Lovely.

**19:59** · Next, we want to create a system that will continually spawn new pipes.

**20:03** · To start, take the parent GameObject from the hierarchy and drag it into your project.

**20:09** · This creates a prefabricated GameObject.

**20:12** · Or prefab.

**20:13** · This is like a blueprint for a GameObject and we can create new versions of this entire GameObject- with all its children, components, and properties.

**20:21** · Oh, and before we move on, we can delete the original in our hierarchy now.

**20:25** · Bye bye.

**20:26** · Let's make a new GameObject called Pipe Spawner.

**20:30** · We'll put it just to the right of the camera.

**20:33** · And we'll make a script for it.

**20:35** · The purpose of this script is to spawn new versions of the pipe prefab every few seconds.

**20:40** · And because the pipe already has code to move left, the pipe will automatically move across the screen as soon as it spawns in.

**20:47** · We're going to write some code to spawn that prefab we just made.

**20:50** · So we'll start by making a reference to the prefab.

**20:54** · Up here, we'll type Public GameObject pipe.

**20:58** · Then in Unity, we'll use the same drag and drop method to fill the slot, but this time, instead of a component, we'll drag the prefab from the project panel.

**21:07** · Now, Unity has a nice built-in method for spawning new GameObjects.

**21:12** · We'll type Instantiate, and then open the brackets.

**21:15** · In here, the command is asking for some extra details.

**21:19** · we can actually flip through these to find different, I dunno, recipes? I guess? Number 4 looks good - it will create an object at a specified position and rotation.

**21:28** · So, for the GameObject, we can type pipe.

**21:31** · For position we can just type transform.position to get the position of the object holding this script.

**21:37** · That will make it spawn on top of the spawner.

**21:40** · And for rotation, let's just use transform.rotation so, again, it's the same as the spawner.

**21:48** · Let's run it and oh my god, that's not what we want.

**21:51** · Spawning works great, but they're coming out every single frame - and we want them to come out on a nice interval that we can control.

**21:57** · So, back to Visual Studio.

**21:59** · What we're going to do now is to write some code to make a timer.

**22:03** · this will count up for a specified number of seconds, run some code, and then start the count again.

**22:09** · To do this, we'll need to make a couple variables.

**22:11** · A spawnRate is how many seconds it should be between spawns.

**22:15** · And then a timer is the number that counts up.

**22:18** · We can make this one private as we won't be changing it in the editor or anywhere else.

**22:22** · In update, we'll do another if statement.

**22:25** · This time, if the timer is less than the spawnRate, then we want to make the timer count up by one.

**22:32** · So we'll take the timer as it currently is, and add Time.deltaTime to it.

**22:37** · This creates a number that counts up every frame, and works the same no matter what your computer's frame rate is.

**22:42** · We can actually shorten this by changing it to +=, but, don't feel like you need to make your code as short as humanly possible just to avoid getting sniffy YouTube comments.

**22:52** · If timer = timer + is easier to read and grasp, then that's absolutely fine.

**22:57** · You can always swap to the other version in the future when you feel more confident.

**23:01** · Now, before I said an if statement is like a gate.

**23:05** · And we can add another gate to the side of it, with else.

**23:08** · This means, if the condition isn't met, then skip the code - and do the code in else, instead.

**23:14** · So we'll put the spawn code in here, and also reset the timer to zero.

**23:20** · So now, every frame, it asks if the timer is less than the spawn rate.

**23:24** · If it is, then count the timer up.

**23:26** · If it's not - i.e.

**23:28** · the timer has actually met or exceeded the spawn rate, then spawn a pipe and start the timer again.

**23:33** · Put this in Unity and - pretty good.

**23:35** · I'm happy with that.

**23:36** · The only problem is...

**23:38** · we have to wait ages for the first pipe to spawn.

**23:41** · It would be good if this came out immediately, right?

**23:44** · Now, we could copy and paste the spawn code into start, so it happens once in start.

**23:49** · And then happens over and over in update.

**23:52** · But that's a bad idea.

**23:53** · You should generally try to avoid having the same, or even similar code in multiple places.

**23:59** · What happens if we want to change how the spawn works? We'll have to find and change it everywhere.

**24:05** · No good.

**24:06** · Instead, we can put the spawn code in a new function, and then just run that function.

**24:10** · So here, below update - but above the final curly bracket - we'll make a function called void spawnPipe().

**24:17** · And then cut and paste the Instantiate code into there.

**24:21** · Now we can just write spawnPipe, with empty brackets, in both update and start.

**24:26** · This will run all the code in that function when these lines are executed.

**24:30** · And with that done, it will make a pipe as soon as the game begins, and will make new pipes every time the timer maxes out.

**24:37** · Perfect.

**24:38** · However - this is a pretty boring game, right? The pipes always come out in the middle.

**24:44** · we want them to come out at random heights.

**24:46** · So, remember that when we wrote the instantiate code, we had to pick a position for the object to appear? We'll change that value.

**24:52** · Right now the pipes always spawn on the same position as the spawner.

**24:56** · We want the X value to be the same...

**24:58** · but for Y, we want to pick a random point somewhere above or below the spawner.

**25:03** · So let's create a public variable for a heightOffset, maybe 10.

**25:08** · And then we'll make a float called lowestPoint.

**25:11** · Because we're making this variable inside the function, rather than at the top of the script, it means it can only be used within the function.

**25:18** · But, also, it means we can set it by doing a calculation.

**25:22** · so we'll do equals transform.position.y - heightOffset.

**25:28** · And then we'll make another one for highestPoint, but this time it's plus heightOffset.

**25:34** · That gets us these two numbers.

**25:37** · Then we'll replace the transform.position in our Instantiate code.

**25:41** · We're gonna write new Vector3, we have to write that whenever we're specifying our own numbers for a vector.

**25:47** · and then in brackets we'll specify the X, Y, and Z values as three different floats.

**25:53** · For X, we want this to be the same as the spawner, so we'll do transform.position.x.

**25:58** · But for Y, we can do Random.Range.

**26:01** · And in the brackets for that, we can supply a minimum and maximum point to pick from.

**26:05** · That's lowestPoint and highestPoint.

**26:09** · Then a 0 for Z.

**26:10** · And close the brackets.

**26:14** · Back in Unity....

**26:15** · nice! The pipes will spawn anywhere between these two numbers.

**26:19** · Oh, one last thing.

**26:21** · Every time these pipes spawn they'll appear and move left....

**26:25** · forever.

**26:26** · Which isn't great practice - they're off screen and doing absolutely nothing, and yet they're still in memory and running code every frame.

**26:32** · And if too many spawn they'll start to spill out the side of your monitor and make a right mess of your desk.

**26:38** · So let's fix that.

**26:40** · Now we could make a timer, and delete the pipe after a few seconds.

**26:43** · But instead, we'll check the X position of the pipe, and delete it if it goes past a certain point.

**26:49** · We'll borrow the bird to find out the X coordinate of the left of the screen.

**26:54** · Looks about minus 45.

**26:57** · In the pipe move script, we'll add a float for a deadzone.

**27:01** · -45.

**27:03** · And then a simple if statement - if transform.position.x is less than deadZone, then destroy the GameObject that holds this script.

**27:15** · Run it in Unity and, bam, they're dead.

**27:18** · Let's do one more thing, just as a teachable moment.

**27:22** · Just before the destroy line, let's write Debug.Log, and in brackets, Pipe Deleted.

**27:29** · Then, back in Unity, you'll see one other panel I skipped during the UI demo - it's a tab next to project, called console.

**27:37** · Then when we run the game...

**27:39** · every time a pipe is deleted, our message is sent to the console.

**27:43** · This is a wonderfully useful way to debug our code, because we can find out exactly what the code is up to.

**27:51** · Recap time!

### Recap

**27:52** · GameObjects can be turned into prefabs, by dragging them from the hierarchy, and dropping them into the project.

**27:58** · You can then drag these into scenes - I use prefabs to create levels in my puzzle game, for example.

**28:04** · Or you can make a spawner to instantiate new ones during the game.

**28:08** · Timers are a great way to make code happen on a certain interval, but always use Time.deltaTime to keep things consistent across different computers.

**28:17** · If statements can have an else gate, to make code fire if the condition is not met.

**28:22** · You can also have else if, to make more complicated gates.

**28:26** · And you should try to delete GameObjects if they're no longer needed, to free up memory.

### Step 4 - Logic and UI

**28:32** · Okay, our next step is to keep track of the player's score, and show it to the player on the user interface.

**28:38** · Then, we want the score to go up by one, every time the bird goes through the pipes.

**28:43** · So, remember that a GameObject doesn't have to be a physical thing in your game world like a character or an enemy - it can be a completely invisible manager that's just keeping track of critical data like health, or time, or score.

**28:56** · And then, we can make that information visible to the player, using a user interface.

**29:01** · So let's start by making the UI.

**29:03** · Like everything else, it's a GameObject in the hierarchy.

**29:07** · This time go down to UI and pick text - which may be under legacy.

**29:12** · We'll need to zoom really far out on the scene view to actually see the UI.

**29:16** · To make sure the UI looks the same on every device, we'll pick this new canvas GameObject and set the canvas scaler component's UI scale to scale with screen size, and choose a sensible reference resolution - I'm gonna use 1080p again.

**29:31** · We can then move our text around.

**29:33** · You'll notice that UI has a rect transform, rather than a normal transform.

**29:37** · The most important thing to note is that you don't really want to mess with scale of elements - instead, change the width and height.

**29:46** · I'll then increase the font size and set the default text to 0.

**29:50** · And then check it all looks nice on the game view.

**29:53** · Okay, now we want to make a script that will store the player's score, and change the number on the UI to that score.

**29:59** · We'll make a GameObject called Logic Manager.

**30:03** · And we'll give it a script.

**30:05** · This script is going to keep track of high level information like the player's score.

**30:10** · And it will have various meta-level functions that we can run.

**30:13** · So we'll delete start and update, we don't need them in this script.

**30:17** · We can always add them back later if we change our mind.

**30:19** · We want to store a number for the player's score.

**30:22** · This time, we don't want a float because we only ever want round numbers.

**30:25** · So let's do an int, instead.

**30:28** · That's an integer.

**30:29** · No decimal places.

**30:30** · And because we want to update the UI text we just made we will, as always, have to make a reference.

**30:36** · Except...

**30:37** · text doesn't seem to be a thing?

**30:40** · Ah, well.

**30:42** · By default, a script only loads in the stuff you need for basic Unity functionality - but if we go up to the top and type using UnityEngine.UI;, we can now access more functionality - in this case, UI stuff.

**30:56** · Now we can make a reference to text.

**30:59** · We'll need to drag the text component into this field back in Unity.

**31:02** · Because we're referencing a component on another GameObject - the text on the UI - the best way to do this is to just drag the whole GameObject into our slot.

**31:11** · This will automatically find the text component for us.

**31:14** · Handy.

**31:16** · So now we want to make a function.

**31:17** · And we'll call it addScore.

**31:19** · And because we're going to run this function from other scripts, we'll set it to public void.

**31:25** · This function needs to do two things.

**31:27** · Add one to the player's score.

**31:29** · Easy enough, we know how to do that now.

**31:32** · And change the text on the UI to be this number.

**31:37** · Oh, the text box is looking for a string - a sequences of characters - and our score is an integer.

**31:44** · They look identical to us humans, but robots are fussy.

**31:48** · Easily fixed, mind you, by adding .toString() to the game score.

**31:52** · To make sure this works, let's give ourselves the power to run this function from Unity itself.

**31:58** · All we need to do is write ContextMenu, and a name, above the function.

**32:05** · Now, in Unity, while the game is running, hit the little dots on this script and pick the function.

**32:10** · Nice! This sort of thing comes in real handy for testing.

**32:15** · Okay, so now that we know the function runs, we specifically want to run it when the bird goes between the pipes.

**32:20** · And the way to do this is collisions.

**32:23** · Now if two objects have colliders, they will bash into each other - in fact, in our game, the bird will already crash into the pipes because we've added colliders to both.

**32:32** · However - you can also have invisible colliders, called triggers.

**32:35** · They don't create an actual collision, but they do let you know that two objects have touched - and you can run code at that moment.

**32:42** · So we're going to put a trigger in between the pipes, so we know that the bird has passed through them. And then at that moment, we'll run addScore.

**32:50** · Let's open up the prefab for the pipes.

**32:53** · We'll make another GameObject called middle - and it needs a box collider.

**32:57** · Let's make it this sort of shape.

**32:59** · And this time we'll tick the box isTrigger.

**33:02** · Finally, let's add a script to this new middle GameObject.

**33:06** · Beneath Update, type ontrig, and the autocorrect will help us type out OnTriggerEnter2D.

**33:13** · Just press tab to autofill.

**33:15** · Anything in this function will run whenever an object first hits the trigger.

**33:19** · There's also OnTriggerExit and OnTriggerStay, for future reference.

**33:24** · And its in here, that we want to run the addscore function we wrote earlier...

**33:28** · except.

**33:28** · ah.

**33:29** · once again, this script doesn't know about any other scripts in the game, until we make a reference to it.

**33:34** · So we can write public LogicScript logic.

**33:38** · But back in Unity, you'll quickly realise that you can't drag the script into this slot.

**33:44** · You can't drag it from the project panel - we can only talk to an instance of a script that lives on a GameObject.

**33:49** · But we also can't drag from the scene into the prefab.

**33:53** · That's because the pipe doesn't exist in the scene yet, it will only exist when the game is running, and the spawner starts making pipes.

**34:01** · So, instead, we'll need to fill this reference using code.

**34:04** · and this needs to happen when the pipe first spawns.

**34:08** · To do this, we'll need to help the code find the logic script.

**34:12** · To do this, take the Game Logic object, and look at the top of the inspector: you'll see tags.

**34:18** · From the drop down, choose add tag.

**34:21** · Make a new tag called, say, Logic.

**34:24** · And make sure you go back to the GameObject and actually set this new tag.

**34:29** · You will forget to do this approximately eight thousand times in your Unity career, so look forward to that.

**34:34** · Now, back in the PipeMiddleScript, under start we can write logic = GameObject.FindGameObjectWithTag("Logic").

**34:46** · this will look for the first GameObject in the hierarchy with the tag, Logic.

**34:51** · In our case, there will only ever be one in the scene, so we know it will always find the right one - but do be mindful of that.

**34:57** · And then we can add .GetComponent\<LogicScript>(); So, as soon as a new pipe spawns, it will look through the hierarchy to find a GameObject with the tag Logic.

**35:10** · Then, it will look through that object's components to find a script of the class LogicScript.

**35:15** · And if it finds one, it will put that in our reference slot.

**35:19** · It has done the exact same thing as dragging and dropping the component in the Unity editor - except it has done it instantly, during run time.

**35:27** · Excellent.

**35:28** · So now, the pipe's middle script can find and talk to the logic script.

**35:35** · And if we write logic.addScore, this will run that code.

**35:40** · Back in Unity, hit play and if we did everything right, the score will go up by one when we pass between the pipes.

**35:47** · Oh, and just for future proofing and whatnot, let's make sure that it was actually the bird that went through.

**35:53** · We'll do this by putting the bird on a layer, and checking if the colliding object was on that layer.

**35:59** · Go to the bird's GameObject and this time, instead of the tag, we'll change the bird's layer.

**36:05** · Make a new one, remember to actually assign it, and make a note of the number.

**36:10** · Now, on the pipe's middle script, we can add an if statement around addScore, and check if the collision that just happened was with a GameObject on the bird's layer.

**36:22** · One more bit of future proofing, while we're on the subject.

**36:25** · Go back to the Logic Script.

**36:27** · And, let's take the AddScore function, and in these empty brackets we'll write int scoreToAdd.

**36:34** · And then instead of adding one, we'll add scoreToAdd.

**36:39** · Then in the pipe middle script, we can write a 1 in the brackets after addScore.

**36:44** · Right now this does exactly the same thing as we had before.

**36:48** · But, as you can surely guess, you could later add some other goal in the game that adds, say, 5 to your score.

**36:54** · This allows us to make a function more versatile, as it can be used in different ways, from different places.

**37:00** · Part of being a good programmer, I think, is making stuff less rigid, and keeping it open for future ideas.

**37:07** · This makes it easier and faster to iterate on your designs.

### Recap

**37:12** · Right! Recap!

**37:14** · UI is just another GameObject, but if we want to reference any of these components we'll need to add using UnityEngine.UI to the top of the script.

**37:22** · GameObjects can be completely invisible things, merely there to keep track of rules, logic, score, and so on.

**37:29** · If we want to a reference a component when one of the GameObjects is not in the scene, we'll need to find that component during run time.

**37:36** · One way to do this is to use tags, findGameObject, and GetComponent.

**37:42** · A public function can be run from another script, as long as you have a reference to that script.

**37:47** · And we can even pass in variables when that function runs.

**37:50** · And Collisions and triggers can be used to make stuff happen when two objects touch.

**37:56** · Speaking of collisions, let's move on to the next step...

### Step 5 - Game Over

**38:01** · The final step is to add a fail state.

**38:03** · When the bird hits the pipes, the game is over.

**38:06** · We'll do this by making a game over screen, and have it appear when the bird crashes into a pipe.

**38:12** · The game over screen will have a button, which we can use to reset the game.

**38:16** · First, let's make that game over screen.

**38:19** · On the canvas GameObject, add a new empty one called game over screen.

**38:25** · Then, in that parent, add a text for game over.

**38:30** · And also a a button - that's also under legacy.

**38:34** · Resize it.

**38:35** · And change the text on the button - the text can be found as a child on the button itself.

**38:43** · So back on the button GameObject, on the button component, you'll see this bit that says On Click.

**38:50** · This is an event, and it allows us to call a public function on a GameObject.

**38:55** · So let's make a function for restarting the level.

**38:59** · We can put this code in the logic script, underneath our addScore function.

**39:04** · You could make a seperate script if you want, but I think this is fine.

**39:08** · Let's make another public function called restartGame, and in here we'll write code to restart the scene.

**39:15** · Just like before with the UI, if we're managing scenes then we'll need to add a line the top - this time, using UnityEngine.SceneManagment.

**39:23** · Now in our function, we'll call up the SceneManager and then, dot, LoadScene.

**39:29** · This is looking for the name of a scene.

**39:31** · Literally the filename.

**39:33** · But because we want the current scene we can simply type SceneManager dot GetActiveScene, brackets, dot name.

**39:40** · Close off all the brackets.

**39:44** · Now back in Unity, add an event to this button.

**39:48** · Then drag in the logic GameObject.

**39:51** · and find the restartGame function.

**39:57** · Give it a test and...

**39:58** · nice.

**39:59** · Every time we press the button, the game begins anew.

**40:02** · Now obviously we don't want this to be on the screen all the time - just when we fail.

**40:06** · So, we can just take the whole game over screen GameObject and disable it with this checkmark.

**40:13** · Then we'll make it show up when the bird hits into the pipes.

**40:16** · Let's write the function first.

**40:18** · Again in the logic script, let's make a public function for gameOver.

**40:22** · We'll need to make a reference to the game over screen GameObject.

**40:27** · And fill it in Unity.

**40:31** · And then we can simply type gameoverscreen.SetActive true in this function.

**40:38** · So we want this function to trigger when the bird crashes into a pipe.

**40:42** · Back on the bird script, let's reuse that code from before to access the logic script from the bird script.

**40:49** · Yes, we could drag and drop the reference in Unity, but hey, we've written this code now.

**40:53** · And then we're going to do a similar thing to the trigger code, but this time we'll use OnCollisionEnter2D, because the pipes are solid objects, and not set to be triggers.

**41:03** · And when that collision occurs, trigger the game over script with logic.gameOver.

**41:09** · Back in Unity...

**41:10** · it kind of works, but we can still play in the game over screen.

**41:15** · Not ideal.

**41:16** · So, I've talked about a few key variable types, already.

**41:20** · Floats and ints are numbers.

**41:22** · And string is usually for text.

**41:25** · The other important one is a bool, short for boolean.

**41:29** · This is a really simple type that is either true, or false.

**41:33** · On, or off.

**41:34** · Yes, or no.

**41:35** · It's a great way to simply check or change something's state.

**41:38** · So let's have a bool called birdisalive, and make sure it starts as true.

**41:44** · Then when the collision happens, we'll set birdisalive to false.

**41:49** · And finally, we'll add an extra condition to our very first if statement.

**41:53** · We're going to say if the space bar has just been pressed and...

**41:57** · written with two ampersands...

**41:59** · and birdisalive is equal to true.

**42:02** · Actually, we don't need to add this equals equals true thing.

**42:05** · It does the exact same thing without it.

**42:07** · But, again, it's up to you - maybe it's easier to read this with the full code written out.

**42:11** · Anyway, now, the bird won't flap if it's dead, which seems quite logical to me.

**42:17** · The final thing to do is to build the game.

**42:19** · Which is really easy. Pick file, build settings, and build.

**42:23** · Pick a folder on your hard drive.

**42:24** · And let Unity do its work.

**42:26** · Then you can open this file to play your game! Amazing.

**42:31** · In a very short period of time, we have made a pretty functional game.

**42:35** · And what’s more, we’ve learned loads of fundamental lessons about Unity.

**42:39** · We have made a character that moves in response to our input.

**42:43** · We have spawned in new objects on a timer.

**42:46** · We have created a UI that shows a score, and made that score tick up when conditions are met.

**42:51** · And we've got the ability to get a game over, and start again.

**42:54** · Now, I should note that there are different - and perhaps better ways to do pretty much everything in this tutorial.

**43:01** · For example - I used Unity's old way of checking for inputs, and the company has since developed a much, much better Input System.

**43:08** · But it's a lot more complicated to use - so this simple method is great for now, and you can look into the new input system later down the line, when you feel more confident.

**43:17** · That's how it went for me.

**43:19** · There's also TextMeshPro, which has replaced the old legacy UI system - so you'll want to graduate to that, at some point, as well.

**43:27** · Anyway, these are lessons that will be useful, for making all sorts of games.

### Next Steps

**43:31** · But...

**43:32** · the game isn't quite finished yet.

**43:34** · There's still a few more things to figure out.

**43:36** · Though, I don't want to tell you how to do everything.

**43:39** · So i'm gonna give you some suggestions for how to finish up the game, but I want you to try and figure it out for yourself.

**43:43** · So first of all, we need to have a game over if the bird goes off the screen.

**43:48** · That shouldn't be too hard.

**43:49** · There's also a bug where the score can go up, even after a game over.

**43:53** · Try to solve that one too.

**43:55** · We also want sound effects.

**43:57** · I want you to add an Audio Source component to the logic manager.

**44:00** · fill it with a sound effect file.

**44:02** · Reference it on the script.

**44:03** · And have it play when the score goes up.

**44:05** · Then, i want you to play around with the particle system to make clouds appear in the game.

**44:11** · Next, open the animation window, and add some flapping wings to the bird.

**44:15** · Then i want you to add another scene to make a title screen, so the game doesn't immediately launch into the action.

**44:21** · Here's a clue: you'll need to add this new scene to the build settings window.

**44:25** · And finally, if you want a real challenge - use PlayerPrefs to save the player's high score to the hard drive, and draw that on the UI as well.

**44:35** · For each one of these, you will probably want to Google the relevant terms, read the Unity docs, watch some quick tutorial videos, or ask for help in the comments down below.

**44:45** · Next, you could expand on Flappy Bird.

**44:47** · Get creative and add in ideas or designs that weren't there in the original iPhone game.

**44:53** · For example, with a little messing around I gave the bird the ability to shoot out a missile, and then I added targets to the pipes.

**45:00** · You've now got to hit the target with a missile to open a gap you can flap through.

**45:04** · It's pretty cool, and adds a lot more depth to the simple game.

**45:07** · In fact, I'd love to see how you might expand on the original game.

**45:10** · If you make something interesting, record a bit of footage, pop it on YouTube, and drop a link in the comments.

**45:17** · I might feature some of them in the future.

**45:19** · And then, finally, I'd recommend that you take another simple game and try to remake it in Unity, like we just did right now.

**45:25** · This is a great technique because you don't have to worry about art or design...

**45:30** · just code.

**45:31** · And the problem-solving puzzles you'll face are a perfect example of what real game development will be like.

**45:38** · Good candidates for this include Pong, Space Invaders, Breakout, Pop the Lock, Angry Birds, various WarioWare mini games, and that dinosaur game that plays in Chrome if your internet's broken.

**45:51** · So, in this video I wanted to teach you the fundamental concepts behind Unity - but, the rest is up to you.

**45:58** · Luckily, I reckon this sort of hands-on, self-directed, learn from your mistakes style of learning is the most fun and effective way to make stuff stick.

**46:08** · But we’ll see!

**46:10** · Let me know how you got on in the comments down below.

**46:13** · And if you want to watch my game development story - which is still ongoing, promise - then click here, for episode one of Developing.

**46:22** · Thanks very much to my Patrons - they're the reason you don't get mid-roll ads in a looong video like this one.

**46:28** · You can help support GMTK at Patreon.com.