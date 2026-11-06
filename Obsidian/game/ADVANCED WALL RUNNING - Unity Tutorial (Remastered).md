---
title: "ADVANCED WALL RUNNING - Unity Tutorial (Remastered)"
source: "https://www.youtube.com/watch?v=gNt9wBOrQO4"
author:
  - "[[Dave / GameDevelopment]]"
published: 2022-03-22
created: 2026-11-05
description: "ADVANCED WALL RUNNING - Unity Tutorial (Remastered)In this video, I'm finally going to remaster my old wall running tutorial code. This wall running ability feels a lot cleaner!If this tutorial ha"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=gNt9wBOrQO4)

ADVANCED WALL RUNNING - Unity Tutorial (Remastered)  
  
In this video, I'm finally going to remaster my old wall running tutorial code. This wall running ability feels a lot cleaner!  
  
If this tutorial has helped you in any way, I would really appreciate it if you leave a like in return. And you can also subscribe to this channel if you want to see more tutorials like this one.  
  
Links:  
➤ DOWNLOAD the SCRIPT: https://www.mediafire.com/file/rfvhtoekrfce7xr/WallRunning.cs/file  
➤ GET the PLAYER MOVEMENT SCRIPT: https://youtu.be/f473C43s8nE  
➤ DOWNLOAD the PROJECT (in the free-code-dave channel): https://discord.gg/5S3bBBq  
➤ DON'T CLICK: https://bit.ly/2VcrDZt  
  
➡️ Get Access to my full MOVEMENT LAB!➡️  
➤ Trailer: https://youtu.be/9\_Q9UxK7VF8  
  
🏹 Get Access to my RANGED COMBAT LAB!🏹  
➤ Trailer: https://youtu.be/j2YplilHjCA  
  
Other interesting videos :D  
➤ THROWING Grenades, Knives and Other Objects - Unity Tutorial): https://youtu.be/F20Sr5FlUlE  
➤ FULL 3D ENEMY AI in 6 MINUTES! || Unity Tutorial: https://youtu.be/UjkSFoLxesw  
  
Support me on Patreon:  
➤ https://www.patreon.com/davegamedevelopment  
  
#UnityMovement #UnityWallrunning #UnityTutorial

## Transcript

### Introduction to wall running

**0:00** · so you want to learn how to code wall running that feels great can be controlled in multiple directions works with or without gravity and even on curved walls well search no more in this tutorial i'm going to show you step by step how to code exactly that and in a second part i'll also cover wall jumping

**0:19** · now for the base movement i'm going to use the one i showed you in this tutorial and i would recommend you to use the same but you can use your own code if you want to but now let's start with the tutorial create a new script call it wall running and to start off let's define some variables first you're going to need two layer masks to define what is ground and what is wall then create floats for your wall run force max wall run time and wall run

### Setting up variables

**0:47** · timer for the keyboard inputs all you need is floats for the horizontal and vertical axis and for the wall detection create floats for the wall check distance minimal jump height as well as raycast hit variables and booleans for the left and right side raycasts

**1:13** · now last but not least you want to get a reference to the rigid body and orientation of the player as well as one to your player movement script and now in void start you can assign these references using the get component function

**1:31** · now before the player should start any wall running movement you of course need to check if there's even a wall in range we'll do this by shooting out raycasts to the left and right side of the player the distance is going to be the wall check distance and we're going to store the information of the raycast in the variables we created so create a function called check for wall and use physics.raycast like this to perform the wall track

### Raycasting for wall detection

**2:04** · notice that this part stores the information of the object we hit for later also don't forget to call this function invoiceupdate and then there's one more check we need to perform which is checking if the player is high enough in the air to start wall running so create this spool and it's the same as before but this time the ray goes downwards and don't forget that this time you want to return true if the ray hits nothing

### State machine logic

**2:36** · next create a function called state machine and we'll start off by getting the horizontal and vertical keyboard inputs and now we're basically going to define when the player should enter the wall running state the conditions for this are there has to be a wall on the left or right side you need to be pressing the w key and the player has to be above

**3:01** · the ground if this is all true we want to start a wall run but for this we're going to need a few more functions so create a start wall run function a stopwall run function and also a function for the world running movement now before we continue you have to understand that i usually handle all the speed limitations in the player movement script and then add forces in separate

**3:27** · scripts so quickly open the movement script and add a float for the wall run speed a state called wall running and a bool with the same name now in the state handler you can easily add this wall running state

### Player movement integration

**3:45** · and by the way if you did not follow along with the sliding tutorial just use move speed equals wall run speed and now that the speed limit is set up in start wall run you can just set the wall running bool of the player movement script to true and now let's call the wall running movement the hardest part here is to find the forward direction of the wall because this has to work no matter how your wall is rotated for this we're going to use

### Wall running movement

**4:13** · vector3.cross a function that takes in the right and upwards direction and then returns the forward direction now the right direction is also called the wall normal it's just a direction pointing away from the wall and this one is easy to get because we already stored the raycast hit information so just add the new vector3

**4:36** · called wall normal and if the wall is on the right we want to use the rightwall hit.normal otherwise the left wall hit the normal and as explained for the wall forward we're just gonna use the cross product of the wall normal and the upwards direction which is transform dot up now you can add force with rigidbody.addforce in the wall forward direction multiplied with your wall run force and using force mode dot force and for now we're just

**5:07** · gonna turn the gravity off and set the rigidbody's y velocity to zero also in stopwall run you want to set the wall running bool to false again now obviously you need to call these functions somewhere so go back to your state machine and in the wall running state call start wall run and if you're not in this state call stopwallrun

**5:34** · and now you can open fixed update and while you're wall running you can call the wall running movement function also don't forget to call the state machine invoice update now switch to unity assign a wall run speed add the wall running script and also set the rest of the variables and to keep it simple i'm just using what is ground for both layers just make sure that your walls have the what is ground layer selected

### Unity component assignment

**6:05** · if you're now at play you can see the wall run is already working but if you try from the other side i'm wall running backwards finding the forward direction is great but sometimes we want to use the exact opposite so basically if the player is facing somewhere here we want to use the forward direction whereas when the player is facing here we want to use the backwards or minus forward direction so

### Fixing wall run directions

**6:32** · add these two lines to find out which direction is closer to where the player is facing and there you go you can now wall run in both directions and this even works on curved walls however if you try to wall run on the outside of a curved wall you lose contact so quickly head back to your script and inside of the wall running movement function you want to push your player towards the wall by using

### Adding wall adhesion

**7:03** · rigidbody.addforce the opposite of the wall normal times 100 and using forcemode.force and you only want to add this force if the player is not currently trying to get away from the wall which would mean there's a wall on the left and he's pressing d or there's a wall on the right and he's pressing a

**7:24** · now we're almost done but as promised i'm also going to show you how to create diagonal wall running which is really important because it gives the player a lot more control so there's different ways how to code this but what i recommend is to create key codes for upwards and downwards while running in my case that would be shift and control

### Diagonal wall climbing

**7:47** · and then you also need two bools with similar names and a float for the wall climb speed in your state machine you can now assign the inputs like this and in the wall running movement function when you want to run upwards just set the y velocity of your rigid body to your wall climb speed and the

**8:11** · opposite applies to when you want to run downwards now set the wall climb speed to something like 8 and there you go you just coded quite advanced while running and i know i haven't showed you how to code wall jumping yet and there's also a few other things you should add if you want to improve your wall run ability but i'm going to cover all of that next week in a second tutorial remember that

### Final tests and next steps

**8:35** · you can download the full project file with everything already set up over my discord server and now thank you so much for watching if this tutorial has helped you in any way make sure to leave a like in return and don't forget to subscribe so you won't miss out on the second part you