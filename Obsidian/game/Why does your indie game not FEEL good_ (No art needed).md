---
title: "Why does your indie game not FEEL good? (No art needed)"
source: "https://www.youtube.com/watch?v=wZUPCSuqklM"
author:
  - "[[Dannycopo42]]"
published:
created: 2026-11-06
description: "This video was made to help people struggling with ideas for different kinds of polish they can add to their game - and to provide some more specific advice ..."
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=wZUPCSuqklM)

This video was made to help people struggling with ideas for different kinds of polish they can add to their game - and to provide some more specific advice ...

## Transcript

### Intro

**0:00** · good games are fun to play even without the gameplay now this may sound a bit weird but give me a second to explain what i mean look at a game like enter the gungeon take out the enemies items rooms and health bar and all you're left with is the player and their guns the game is still fun to play my interest is

**0:18** · maintained even though there's nothing to do there must be some sort of addictive chemical oozing out of your monitor just begging you to mess around for hours on end if only it was that simple today i'm going to take you on an adventure to learn what makes games fun before the content is added so here we have a test scene classic

### Setup

**0:36** · developer setup blue square vs red square gun that shoots bullets and bloom with a little bit of lens distortion to compensate for the lack of an artist pretty boring right so how do we make this fun well our journey starts with two magical words that say player feedback

**0:53** · alright let's analyze this what can the player do in the scene they can move shoot and hit the enemy let's analyze the second one shooting what happens when you shoot a gun recoil by slapping a quick side change animation onto this gun it instantly feels much better to shoot however the camera remains unaffected using this

### Animation

### Screen Shake

**1:12** · little script for screen shake that i've passed down many many projects we can now make the gun feel like a gun quick side note the base position in this script should be changed if the camera moves and it's a little bit of a basic script as one instance of screen shake will override another so you should ideally make your own design for your own larger projects moving on there seems to be something obvious that we're still missing \[Music\]

### Sound Effects

**1:40** · much better using a program called the lab chip i generated a sound effect and slapped it into the scene without any need for pesky sound engineers or dodgy looking websites i made sure the sound is nice and punchy but doesn't last too long for that feeling of an immediate impact look how much fun this blue cube is having now it's really starting to feel like we're playing a game the next little trick i'm going to show you is probably one of my favorites the white flash now in this code i'm adjusting the color

### White Flash

**2:05** · value of the sprite renderer however this doesn't work with traditional sprites as the colors come from the texture in this situation the correct way to do things would be to either swap in an alternate sprite or set the renderer's material to one of the hidden font materials in unity which kind of glitches it down and makes the sprite turn completely white this plus an extra little sound effect makes the impact of the bullet so much more satisfying and impactful one thing to keep in mind when adding all this polish is when to stop while

**2:32** · player feedback is important there is a point where there are too many things going on for the player to accurately track the game state this is especially true with a loud sound effects and screen shake so it's important to apply these effects in moderation and only for the most relevant of events it also especially applies to our next effect the time freeze usually you want to

### Time Freeze

**2:50** · reserve this for large impacts such as the player taking damage or a huge destructive blow you can see the difference it makes here but done wrong it can cause a huge disruption to the game flow and just generally annoy the player the one final little bit of detail i'm going to add to this scene is some particle effects and trails i added some blood that shoots out of the enemy when it takes damage and the bullet trail here helps emphasize its speed

### Particles

**3:14** · particle effects are great fighting detail but if they stick around for too long they can be very visually noisy and make it difficult for the player to focus on things like dodging or other fast-paced elements of your game if we zoom out on the scene we can tell just how much more fun it feels to play around with than before and it could definitely provide a foundation to some solid engaging gameplay i hope that this short little example video gave you an idea of some cool effects to add to your game if it did please let me know by subscribing and i hope to see more crunchy games in the future

### Outro

**3:50** · you