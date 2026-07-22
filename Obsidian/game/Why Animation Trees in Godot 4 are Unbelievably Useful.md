---
title: "Why Animation Trees in Godot 4 are Unbelievably Useful"
source: "https://www.youtube.com/watch?v=iElHZhOxGYA"
author:
  - "[[Bitlytic]]"
published: 2024-09-18
created: 2026-07-22
description: "In this video we go over the basics of Animation Trees in Godot 4. We rebuild a top down animation set with idle, run, and attack animations from simple to complex. Animation Trees are unbelievably"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=iElHZhOxGYA)

In this video we go over the basics of Animation Trees in Godot 4. We rebuild a top down animation set with idle, run, and attack animations from simple to complex.  
  
Animation Trees are unbelievably useful, and I use them all the time and would highly recommend using them yourself.  
  
  
Discord - https://discord.gg/skPc32bUfA  
  
Resources:  
Character Sprite Pack by PixelBoy - https://pixel-boy.itch.io/ninja-adventure-asset-pack  
Tileset by RGS\_Dev - https://rgsdev.itch.io/free-cc0-top-down-tileset-template-pixel-art  
  
Chapters:  
00:00 Project Overview  
00:14 Adding Animation Tree  
00:34 BlendSpace2D  
01:29 Controlling it through code  
02:19 Switching to Animation State Machine  
03:03 Adding Idle State  
03:53 State Machine code  
04:31 Expressions & Automatic Conditions  
05:04 Attack State  
05:37 Switching to AnimationNodeBlendTree  
06:54 AnimationTree Active tips  
07:11 Done :D

## Transcript

### Project Overview

**0:00** · Hi, this is what we're working on today So we have this character who can move up, down, left, and right And has an attack animation for each of those directions If you've ever used a similar sprite, You probably have a setup like this: Where we grab the last facing direction, convert it to a string, And then play an animation based on what we're doing And today we're going to recreate it using an animation tree So the first thing we'll do is add an animation tree The animation tree needs to know about our animation player, so we'll go ahead and assign that

### Adding Animation Tree

**0:23** · And then we have to decide what tree root we wanna use The tree root can be as simple as a blend space, Or as complex as multiple nested state machines We're gonna build up as we go, so let's start with something a bit simpler First we're going to recreate the run animation, so we'll select a BlendSpace2D If I click on this, and then open up the "Animation Tree" panel We can see our blend space here Basically the way this works, we define animations in this space And based on which one we're closest to, it'll play that animation And we can select this tool to add animations Since we're doing run first I'll add run up, down, left, and right

### BlendSpace2D

**0:54** · And that's almost all we need, we can see that if I drag this up here, We're running up, down, left, and right But there's a small issue we can't see just yet See, if we drag this to a midpoint between the animations, It doesn't exactly work And that's because the "continuous" blend mode is meant for 3D animations Something where you have animations that can blend between each other Instead, we want to use one of these two options, "discrete" or "capture" These two behave very similarly, Discrete makes it so whichever animation you're closest to is the one it plays, But you can see every time we flip between the animations, it'll start from frame 1 Capture is almost the exact same except that it will start from the same frame you left off on

**1:27** · For our case, I'll just use discrete And of course, we want to set this value through code, So instead of using the old animation, I'll detach the script and give it a new one I'll call this one "player\_animation\_tree" And first, I'll set up the script like this: So I've just exported the animation tree and grabbed the player, And we can assign the animation tree by dragging it in We can click on this and see we have this "parameters" section If we wanna set those, all we have to do is access the animation tree,

### Controlling it through code

**1:51** · And call the ".set()" function And then we can click on this, and drag it over into the function Then all we have to do is set the variable we want In this case, I'll just grab the player's velocity and normalize it And if we open the game, running left and right works But there's one issue: if we run up, we look down, and if we run down, we look up The main reason for this is that in Godot, -1 is up, at least in 2D We can either fix this by flipping the velocity inside of the script, Or we can just flip the animations in the tree I prefer to do it in the tree, so I'll go ahead and do that And that works fine But what about the idle animation?

### Switching to Animation State Machine

**2:21** · For that, it would be really nice if we could have a second blend space to choose from And we're gonna do just that We're gonna switch this over to a state machine, but before I do that, I really don't wanna recreate this blend space So we can select it, and choose "Save As" I'll put this in the animations folder as "player\_run\_blend" Then, we can change the root of the tree to a state machine And if we wanna load in our space from before, can right click and choose "Load" I'll go ahead and change this to say "Run" And if we hit the play button, we'll set this as our currently active state So, for a basic overview, the way this works is we can create a transition from "Start" to "Run"

**2:55** · And when we start the game, we will go from "Start" to our initial state We can also add different animation states in here, And change between them as we need So, let's go ahead and add a new one I'll go ahead and add a new BlendSpace2D I'll call this one "Idle" And set this up the same way we set up the other one We'll choose discrete and add idle down, up, left, and right animations And if we wanna test that this works, all we have to do is click the play button And then move our cursor around like so: How do we move between these states?

### Adding Idle State

**3:22** · Well, if I draw a transition between run and idle, It'll go immediately Instead, it would be nice if we could transition between these based on a condition So I'll select the transition, and go under "Advance" and set a condition We'll just call this "idle" Then, we'll do the same for run, Create a transition from idle to run, and set the advance to "run" And we can even test this, If we select the animation tree, we can see that we have conditions now called "idle" and "run"

**3:45** · If we turn on idle, it swaps to idle, And if we turn on just run, it'll swap to run We can see that now, we also have a blend for idle and run So, we'll need to make a little bit of code change to account for this Back in our script, I'll go ahead and add another .set() function, And pass in the idle blend space parameter We'll also need to make a change to this parameter, since it's no longer the top level node

### State Machine code

**4:04** · So I'll go ahead and get rid of that, and drag in the run blend space And then of course, we need to set our conditions So we can set up idle based on whether we're moving and then call the two .set() functions For the first one we'll pass in idle, and for the second we'll pass in run And one last fix for this, we'll add a last\_facing\_direction And if we're moving, we'll set that to the velocity.normalized() And instead of passing in the raw velocity, we'll pass in this last\_facing\_direction And that works, we can see that we can idle in four directions But it's kinda annoying to set these parameters separately, since they're basically testing the same thing Wouldn't it be nice if we could test the player's velocity inside of the tree?

### Expressions & Automatic Conditions

**4:39** · Well, we can. So let's take a look at expressions So for the first thing, we're gonna change this "Advance Expression Base Node" to the player And then back inside of the tree, instead of using this condition, We can simply test "velocity" So if velocity evaluates to true, we'll go from idle to run And here we can check !velocity And of course get rid of the condition We no longer have to set these here And that works perfectly.

**5:01** · Expressions are like automatic conditions run against the base node But we have one more state to add in Let's add a new blend space, I'll call this "Attack" And I'll set this up the same way (Down, up, left, right animations) Back in here, we can transition from either run or idle to attack,

### Attack State

**5:18** · When the player's attacking "variable" is true And for that, it's just a variable I'm storing on the player when we're attacking And I'll do the same for run Then I'll just choose to go back to idle when we're done attacking For that, we can just check !attacking The last thing is to set the blend position for the attack And just like that, we have our 4-direction attack But of course, that's not the last thing trees can do Having a state machine of animations is cool, but what if we wanted to slow the animations down?

### Switching to AnimationNodeBlendTree

**5:44** · With an animation player, you could just set a timescale variable With an animation tree, it takes a little more work So for the last layer of complexity, we're gonna go ahead and add that I'll go ahead and save off the state machine like we did with the blend space before, Then we'll set the root node to an AnimationNodeBlendTree This is the most complex of all the nodes You can have a set of the other node types and have those output to whatever animation you want So for the basic setup, we can load in our state machine from before,

**6:10** · And directly connect this to the output, I'll also name this "PlayerStates" And just like when we moved the blend space before, we also have to update the parameters in here And you can see that all of those belong to this "PlayerStates" variable now, so we can just add that here And if we open the game, it still works One of the cool things we can do with this is add a TimeScale node Then, we can connect it to the output and run the state machine through it So, if I want to play all of the animations at quarter speed, I can just set this to 0.25

**6:37** · And you can see that it runs really slowly And just like any other parameter, we can set this through code We can do that the same way by adding the .set() function and dragging it over So for this one, all of the animations are gonna play five times as fast Something like that is really useful if you wanna change animation speed based on how fast the player is moving

### AnimationTree Active tips

**6:55** · If the animation tree isn't working, make sure the active state is set here Sometimes it can be really annoying to have this active when you're working on something, So you can disable it, and instead of your ready function, You can call animation\_tree.active and set it to true This is something I do all the time There are a bunch of different nodes you can play around with, and a bunch of different setups you can use But as far as animation trees go, that's the basics That's about it for now :) (Join the Discord in the description)