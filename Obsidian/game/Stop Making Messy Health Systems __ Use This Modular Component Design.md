---
title: "Stop Making Messy Health Systems || Use This Modular Component Design"
source: "https://www.youtube.com/watch?v=1aVHGuLrxpk"
author:
  - "[[DeeRaghooGames]]"
published: 2026-05-08
created: 2026-09-28
description: "Tired of spaghetti code ruining your Godot projects? In this video, we’re cleaning up your workflow by building a robust, modular health system using a component-based design. Learn how to move away f"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=1aVHGuLrxpk)

Tired of spaghetti code ruining your Godot projects? In this video, we’re cleaning up your workflow by building a robust, modular health system using a component-based design. Learn how to move away from messy hardcoding and create reusable nodes that you can drop into any entity—from players to enemies.  
  
subscribe -https://www.youtube.com/channel/UC-KLgU0nzoCCEU6W16CS3vQ?sub\_confirmation=1  
want to learn more click here: https://www.youtube.com/playlist?list=PLeD1LY8foaKA2wOGhFtZs1gt91lbZmhCS  
  
Timestamps:  
0:00 intro  
0:55 Enemy animation  
1:52 What is feedback  
2:27 Building with legos  
5:02 Player Setup  
6:14 The Test enemy  
7:25 Relationships  
9:09 Health component  
10:28 Thank you  
  
I used Ziva AI assistant for the fast prototyping of parts of this Video.  
Ziva.sh  
  
WHAT TO WATCH NEXT :  
Beginner Game Dev? Don’t Make Small Games || Do This Instead  
https://youtu.be/rd1HzPy3fP4  
  
Beginner Game Dev? Stop Making Basic Enemies || Build Enemy Systems Instead  
https://youtu.be/QXbgOX5Wl9E  
  
Finite State Machine in Godot 4.3 Made easy "From Idle to Dashing"  
https://youtu.be/yAMgT28kYsc  
  
Godot 4: Build Flexible Abilities with Composition | The Secret to Modular  
https://youtu.be/TyZsfKaIfHE  
  
How to Build a Scalable Player in Godot 4 - No State Machine  
https://youtu.be/PUcUhoV4S7A  
  
Create a Signal-Based Game in Godot 4 | Clean Architecture Tips  
https://youtu.be/lNgq1OXbUkQ  
  
Demystify Signals and Autoloads in godot 4.3 Part 1  
https://youtu.be/V35SgGAdzNE  
  
Demystify Signals and Autoloads in godot 4.3 Part 2  
https://youtu.be/kXAXHKklAX4  
  
Relationships are tricky, but with the Signal Hub, Game Manager, and Autoload, things are just fine!  
https://youtu.be/Yo7ebpOJYm8  
  
Unity To Godot Should you use C# or GDScript  
https://youtu.be/vKSzR6ei5K8  
  
Wait what ? Vibe coding SUCKS for beginners!  
https://youtu.be/7rfG9K2a3WQ  
  
More stuff about game dev- https://www.youtube.com/playlist?list=PLeD1LY8foaKBUgilTuyp2FHOn3GacQket  
  
Project files  
https://deeraghoogames.itch.io/2d-player-controlle-ladders-super-jump-hide  
  
Please feel free to share your toughs in the comments.  
#GodotEngine #GameDev #IndieDev #CleanCode #Godot4

## Transcript

### intro

**0:00** · \[music\] We've all been there, right? Looking at your game thinking, \[music\] "Why does this feel so off? Like something's missing, but you just can't put your finger on it." If it's not your code and it's not your mechanics, then what is it? It could be your feedback. And \[music\] you know what? You don't fix this by tweaking numbers alone. You fix it with systems most of us just starting out completely ignore.

**0:26** · In this video, I'm going to show you how to take this boring lifeless gameplay and turn it into something that actually feels good using a simple feedback system in Godot.

**0:37** · And keeping with the modular decoupled approach from this series, I'll show you how to build it once and drop it into any game with almost no friction.

**0:46** · The difference is night and day. So, the real question is, what actually does gameplay feel good?

### Enemy animation

**0:56** · \[music\] Now, we'll need a test enemy to actually receive our damage. I've got the nodes already, but an enemy isn't an enemy without some basic animations. In this case, idle and hit. Usually, this is where my workflow slows down while I manually tweak keyframes. To keep our momentum, I'm going to use Ziva AI.

**1:20** · Since I'm building a modular system, I can just tell Ziva the state logic I'm looking for as a simple prompt pointing Ziva to the artwork. And in about 30 seconds, it's handled. The basic setup for these animation states. And just like that, we have our visual representation ready. Let's get back to the architecture and look at what really makes great feedback. To answer that, we first need to understand how we actually perceive game feel. What expectations do we have when we see a certain action on screen? Take this scene here.

### What is feedback

**1:52** · The player swings a sword at a slime. Instantly, your brain expects a few things to happen. From the player, you may expect impact, motion, and maybe a bit of weight behind the sword. And from the slime, you'll expect a reaction, a hit, a bounce, and maybe damage. And tying it all together, you'll expect feedback. Visual feedback like hit sparks, flashes, movements, or hurt animations.

**2:20** · And of course, audio feedback like a hit sound that really sells the impact. Now, we have a lot to cover here. So, let's get started.

### Building with legos

**2:31** · This video is part four in a series where we are building modular systems that we can use later to create our dream game. Staying in line with that goal, we're going to build a reusable system that we can drop onto any enemy, which will seamlessly connect to other systems in our game. The system that we will create today heavily relies on two core game development principles, composition and decoupling. If you look at our test enemy in the scene tree, you'll notice that we aren't using one massive script to handle everything.

**3:05** · Instead, we're using a principle called composition. Composition is the idea of building complex objects by combining smaller, single-purpose building blocks, or components. Rather than writing a giant enemy script, we have a health component just for tracking health points, a hurt box component just for detecting incoming attacks, a hit feedback component just for visual effects, and so on. So, why do this?

**3:34** · Now, these components can act like plug-and-play LEGO bricks. If we ever wanted to add a destructible crate to our game later, we don't have to rewrite health or damage logic. We can just drag and drop our health components and hurt box component onto the crates, and it instantly works. The second principle making this work is decoupling. Decoupling means that our systems don't directly rely or tangle with one another to function. They are all independent.

**4:05** · Notice how our visual elements like the damage text component, death particles component, and health bar components are completely separate from the health component. They don't need to constantly check the enemy's health every frame. Instead, they will rely on signals. When the hurt box takes a hit, it simply tells the health component to take damage. The health component lowers the HP and sends out a signal that the health changed or that the enemy died.

**4:37** · The visual components just listen for those signals and react by popping up text, updating the health bar, or instantiating particles. Because they are all decoupled, we can easily delete the health bar component or add a new sound effect component without breaking any of the core combat logic. This makes our code incredibly safe to modify and expand as our game grows. Let's take a closer look.

### Player Setup

**5:06** · Just for a bit of context, our player setup is pretty simple. It's a character body 2D with a player script attached.

**5:14** · We've got an audio stream player for the attack sound and animated sprite 2D for the animations and a collision shape 2D which the character body 2D needs to handle collisions. There's also an area 2D that acts as a player's hitbox with its own collision shape 2D for the attack range. Now, the logic is pretty straightforward. When the game starts, the hitbox area is disabled. When you press space, the attack animation plays and right at the moment of impact, the hitbox area turns on for a single frame.

**5:48** · The attack sound plays and the hit box turns off again. Now, we're not going to dive into the player code here because that's not the focus of this video. This is just to give you some context on how the enemy knows it's been hit. But later, we'll be looking at the hit box component because it's a crucial part of this system. It's also worth mentioning that this system won't be using any physics layers for simplicity.

### The Test enemy

**6:18** · The test enemy also uses a character body 2D, but it does not have any script attached to it. That is because it basically does nothing. It just sits there and waits to detect being attacked. The components node itself is just an organizational container that uses a node 2D to group these behaviors together, keeping the enemy scene tree clean and organized. If you want a new enemy type, you don't need to write a new script. You just drag and drop the components you want it to have onto this components node.

**6:50** · You will notice that I have used base nodes for the health component, hit feedback component, and the sound component because a base node doesn't have a global position property and these systems do not depend on the global position of the enemy to function. However, for the damage text component and the death particles component, I used a node 2D because these components do need to use a global position property, which the node 2D has.

**7:21** · Not to worry, this will all make sense when we take a closer look at the code. The children of the components node are highly decoupled, but work together through signals. The central pillar of this system is the health component. So, there are few things to take note of.

### Relationships

**7:39** · First, almost all components require a reference to the health component to function. Rather than directly telling a sprite to flash or a sound to play, the components simply listen to the health component. When the health component emits a signal like damaged or died, the other components react automatically.

**7:59** · Second, I've made a deliberate choice not to hardcode the dependency references. Everything is linked via @export variables in the inspector. This makes it easier to see the relationships, and you can drag and drop these nodes without changing the code.

**8:15** · And third, each component starts with class name. This unlocks a range of powerful benefits. For instance, these classes appears directly in the add nodes menu. It allows you to strongly type variables like @export var {colon} Health Component, improves autocomplete, and removes the need for preloading by giving you global access. In short, class name registers your script with Godot's internal system, so the entire project instantly recognizes what a health component is from anywhere.

**8:53** · Now, let's take a look at what each component does. And don't worry if anything's feels confusing along the way, I'll be uploading the completed project to the project's itch.io page, so you can explore the code for yourself, especially if you enjoy tinkering.

### Health component

**9:11** · The health component stores max health and current health. It handles calculations for taking damage and optional healing. When its health drops, it emits signals like health changed, damaged, and died, but it does no visual or audio work itself.

**9:27** · The take damage function uses an int value called amount, which represents how much damage the actor should warnings to remind us to properly assign key variables in the inspector, helping to avoid runtime issues. The function then clamps the current health between zero and max health using clamp I, ensuring that the value never drops below zero or exceeds its limit.

**9:56** · After updating the health, it emits a damaged signal with the damage amount followed by a health change signal to update anything listening, like UI or other systems. Finally, if current health reaches zero, it emits a died signal. And if the actor is still a valid instance, it calls Q free to remove it from the scene. And then optionally, I've added a heal function.

**10:24** · This is optional, so we may not be looking at this any further. And that's the core brain of our system. It's clean, it's modular, and it's completely invisible to the player. \[music\] But right now, if our enemy takes damage, the code knows it, but you the player doesn't. \[music\] There's no flash, there's no sound, and there's no feedback. Now, because we built this using signals, like damaged, health \[music\] change, and died, we set ourselves up for something much more exciting.

### Thank you

**10:52** · In the next \[music\] video, we're going to plug these signals in and add the juice as we build modular components for hit flashes, floating numbers, and even add a health bar and animations, all without touching this core script again. The complete project is already up on the itch.io page. If you want to poke around the code early, along with the links to the rest of the series and the Ziva \[music\] AI assistant in the description. Otherwise, I'll see you in the next part \[music\] where we bring this system to life.

**11:22** · If this video made you stop and think about how you're learning to do, and not just what you're building, then you're exactly who this channel \[music\] is for. I make videos for developers who want to understand their code and have the discussions that tackle the difficult topics. So, if that sounds like you, \[music\] hit subscribe.

**11:43** · You'll feel right at home here. And before you go, answer this in the comments. Do you organize your systems into reusable components like this or project specific scripts? And how would \[music\] you expand this system? What feature would you add next? I'd really like to know. Until next time, happy coding. \[music\] Keep experimenting and I'll see you in the comments. This has been The Ragged Games.