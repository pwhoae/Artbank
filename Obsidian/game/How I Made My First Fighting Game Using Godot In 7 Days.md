---
title: "How I Made My First Fighting Game Using Godot In 7 Days"
source: "https://www.youtube.com/watch?v=OvmO9IEUQ_E&list=WL&index=2"
author:
  - "[[helewrer3]]"
published: 2024-05-15
created: 2026-09-25
description: "Game Link [Web Playable] - https://helewrer3.itch.io/out-punchedReddit Post Link :-https://www.reddit.com/r/godot/comments/1cpgveh/my_first_fighting_game_how_is_it/Previous Game Titles :-UnderSe"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=OvmO9IEUQ_E)

Game Link \[Web Playable\] - https://helewrer3.itch.io/out-punched  
  
Reddit Post Link :-  
https://www.reddit.com/r/godot/comments/1cpgveh/my\_first\_fighting\_game\_how\_is\_it/  
  
Previous Game Titles :-  
UnderSea Horror - https://helewrer3.itch.io/undersea-horror  
OverLand Rogue - https://helewrer3.itch.io/overland-rogue  
OverLand Action - https://helewrer3.itch.io/overland-action  
UnderRoof Jump - https://helewrer3.itch.io/under-roof-jump  
Dungeon Random - https://helewrer3.itch.io/dungeon-random  
UnderCave Grappling - https://helewrer3.itch.io/undercave-grappling  
  
Hope to see you next week!  
  
Tags -  
#gameplay #godot #gamedev #devlog #gamedevelopment #vlog #platformer #2dgames #indiegame #indiegames #dev #onetap #grappling #grapplinghook #dragon #handdrawing #handdrawn #handmade #cartoonvideo #drawing #pixelart #funny #streetfighter #tekken #kingoffighters #fightinggames #mortalkombat  
  
Music Credits -  
1\. Stage 2 - Truck Roofs.ogg - Music by MaxStack from OpenGameArt

## Transcript

### The challenges of 2D game dev

**0:00** · \[Music\] looks cool right there is however one problem 2D fighting games are some of the most difficult games to make I would say that D fighting games are very challenging it's not hard it's impossible fighting games are very hard to make I would go as far for a single developer working on a project of the scale it would take significant amount of time absolutely f are very very hard to do making

**0:25** · fighting games is brutal there are a ton of things you need to keep a track of this brutality increases exponentially when you have to make both the game and the devop all in a week honestly this they was spend on me learning Concepts that I would be using later to make my game I will not name them here but rather later on when we actually get to the usage in the video I can't draw period This is a

**0:51** · significant problem because fighting games are notorious for the graphic and animation standard so what do we do \[Music\]

### Implementing state machines

**1:20** · State machine a mathematical model that defines the behavior of a system to exist in a finite number of state and transition between set States based on a set number of input let's take an example suppose you have a vending machine a machine that is currently waiting for you to give it some coin must you give it some money it dispenses your item upon a collection of set item the machine goes backs into waiting for you to give it some coins again what we have here now is a finite seat machine having two State one waiting for coin

**1:50** · second dispensing items with arrows to describe the transition between St State boring lecture aside what are we even going to use this state machine for might ask why of course to program my player initially you are in your idle State pressing any of the directional keys will change you to walking State pressing jump key or any of these two states will take you to the jumping state which subsequently moves you to the falling State when you uh start falling once falling you can transition to any of the idle or walking State

**2:21** · depending on whether you are moving while Landing or not of course there are like five other states waiting for us but we will cross the rest when we get there H boxes prior to this game I had a vague idea what head boxes and her boxes were making a fighting game although essentially forced me to learn about them here is a basic rundown head boxes are the area where your attacks deal the damage from for example in a punch the headbox would be the area surrounding your arm the moment it is fully extended H boxes on the contrary are the area

### Hitboxes and hurtboxes

**2:51** · where you will take the damage from taking the same example as above as soon as a punch hits the body you take the damage the thir box in this case is your body as a general rule the hit boxes are made slightly larger than their hitting body and inversely H boxes are made slightly smaller than their damaged to body I can go on and on about them but this basic definition should suffice for now now that we have a system of dealing and taking damage we can finally go on

### Programming combat actions

**3:17** · to cross the bridge well on the ground if the player presses the punch or the kick button they would go to their corresponding State respectively from here they can only go back to idle State this gives a buffer flame between the player attacking and doing anything else to allow for counterplay from the opponent speaking of counterplay one we can do is block by pressing the block key while idle or walking we can enter a blocking State preventing us from taking any damage pressing kick button while in the air enters us into the jump kick state where transition to Falling State afterwards Cas you attack or take damage

**3:49** · in any of these states we move to the H state where we are stunned from taking any actions and go back to the idle State once the stun is finished let's start from \[Music\] \[Laughter\] \[Music\]

### Polishing the fighting game

**4:07** · sounds I had also thought of adding enemy AI to simulate PVE but the dying crunch got in my way so shied the game to be a PVP rather than a PVE or in other words a two-player local multiplayer choose more specifically game choose this is a term used to often describe how Snappy or fun to look a gape appears to be it includes stuff like cameras Shake particles freeze scam time slowdown etc etc among other things more specifically it can make a game look from like

**4:39** · this to this with this the game is now complete if you like the game till now do try out it their playable version from the link below and if not well enjoy \[Music\] a \[Applause\] \[Music\]

**5:30** · d \[Music\]

**6:23** · Mission completed