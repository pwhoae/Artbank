---
title: "I Created an Advanced Parkour System for My Game"
source: "https://www.youtube.com/watch?v=2QrLTJlPbQ0"
author:
  - "[[endeetree]]"
published: 2024-10-25
created: 2026-08-15
description: "Parkour in Velkyn is so much fun - I need to limit my own playtest time! :DWishlist VELKYN on Steam: https://store.steampowered.com/app/2728320/VELKYN/Welcome back to the character controller seri"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=2QrLTJlPbQ0)

Parkour in Velkyn is so much fun - I need to limit my own playtest time! :D  
  
Wishlist VELKYN on Steam: https://store.steampowered.com/app/2728320/VELKYN/  
  
Welcome back to the character controller series, where I take you behind the scenes of Velkyn, my Zelda-inspired indie game. From wall-jumping to climbing and dodge rolling, I'll break down how these mechanics work and why they're essential for dynamic player movement. Join me for this hands-on exploration of Velkyn's parkour features!  
  
Discord: https://discord.gg/G8SMR6T2Gb  
X/Twitter: https://twitter.com/endeetree  
Threads: https://www.threads.net/@endeetree  
TikTok: https://www.tiktok.com/@endeetree  
Web: https://www.endeetree.com/  
  
About:  
Welcome to my channel. In real life I'm a software developer and in my free time I create video games. This channel shows my progress in the shape of devlogs and other gamedev related videos. Have fun here!  
  
#endeetree #gamedev #indiegame #indiegames #gamedevelopment #indiedev #unity #unity3d #madewithunity #devlog #blender #velkyn

## Transcript

**0:00** · \[Music\] \[Music\] okay this is my

**0:15** · vision imagine a classic Legend of Zelda dungeon with puzzles enemies and a bit of platforming but your character can do parkour or you explore an open world in which you can make countless discoveries by using your movement mechanics in creative way cool movement mechanics if implemented well give players a really good feeling they feel Superior they feel ahead of all adversaries how cool it is not only

**0:40** · to Simply Crush an enemy but to dance with it to play tricks on it to always be one step ahead of it this is my vision for my game velcon for the entire game world and especially for the combat system as you can see I've already implemented a few Basics wall jumps ledge grabbing Dodge rolling crawling I could also Imagine something like jumping over enemies or sliding down a

**1:05** · hill this is how wall jumps work in my game if the character has gained enough velocity is jumping before reaching the jump Apex and there's a wall parallel to them a wall jump can be performed by repeatedly pressing the jump button jumps and wall jumps are meant to be fun and don't give the player any invincibility frames so they won't cost any stamina \[Music\] here you can see the sensors that check whether the character is close enough to and almost parallel to a

**1:40** · wall ledge grabbing also works via sensors and various additional checks the condition for ledge grabbing is that the character is not grounded and that there's a wall in front of them with a reachable edge I can recognize the edge using a number of so called Ray costs these are rays that are shut from a specific point in 3D space in a defined Direction sometimes with a specific maximum length when a ray collides with

**2:03** · an object I get the exact point of the Collision once I've received several of these points of information I can check where the edge is located and whether the character has enough space to stand after climbing climbing doesn't require any stamina as

**2:19** · well however what will consume stamina is Dodge rolling I'm not sure yet whether Dodge rolling will simply make the character's hitbox smaller or just giving the player a few eye frames I'd be interested in your opinion here should Dodge rolling Grand eye frames or do you guys have another idea in the next and last video of the character controller series I will explain more about combat and Dodge rolling is there

**2:42** · anything specific you'd like to know then let me know in the comments that's it for today's video feel free to subscribe to my channel if you'd like to see more interesting videos about game development and my game welin in the future please also wish list weling on Steam nowadays small developers like me hardly have a chance to achieve proper visibility for the game every wish list counts thank you guys so much and see you in the next video bye-bye \[Music\]

**3:15** · \[Music\]