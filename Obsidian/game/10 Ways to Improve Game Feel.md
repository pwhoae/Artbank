---
title: "10 Ways to Improve Game Feel"
source: "https://www.youtube.com/watch?v=qCj9CZoAvFY"
author:
  - "[[Design Diary]]"
published: 2024-06-03
created: 2026-07-22
description: "10 ways to improve the feel of your indie game. This video breaks down how to make your game feel great to play by taking an in-depth look at specific techniques you can apply to a variety of games. G"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=qCj9CZoAvFY)

10 ways to improve the feel of your indie game. This video breaks down how to make your game feel great to play by taking an in-depth look at specific techniques you can apply to a variety of games. Game feel is very important, especially in action games, because it's a key component in making the player character feel tactile and responsive to play as. If the character in your game feels dull and lifeless, the techniques in this video should help you improve how your game feels to play.  
  
Most of the clips use the game feel demo found on the Deepnight Games website to demonstrate, so credit to them for developing such a useful tool. It's available at https://deepnight.net/games/game-feel/ and I highly recommend checking it out for yourself after watching.  
  
Contents  
00:00 Introduction  
00:19 Deepnight Games Tool  
01:27 Movement  
01:52 Bullet Spread  
02:29 Particle Effects  
03:29 Lighting  
04:30 Impacts  
05:25 Enemy Hit Reactions  
06:51 Squash and stretch  
07:31 Dashes  
08:02 Screenshake  
08:59 Summary  
  
Footage used from Celeste, Deepnight Games website and my own game project.  
  
Background Music from YouTube Library:  
Somnia by Reed Mathis  
Pure Potentiality by Benjamin Martins  
The Three Elements by I Think I Can Help You

## Transcript

### Introduction

**0:00** · Hello and welcome. In this video, I'm going to talk about 10 ways you can improve the feel of your game as an indie developer. Game feel is about the small details that make a game feel great to play on a moment-to-moment basis. So, I created this to help developers get these details right in their own games. So, tip number one, I did some research online and I came across a really useful tool on the Deep Night Games website, which was created by Sebastian Bernard. Hopefully, I'm pronouncing that right.

### Deepnight Games Tool

**0:31** · So, this is a demo project, not a real game, but it's a demo of a platformer character that is designed to help developers improve the feel of their games. This demo gives you the option to toggle on or off various details that affect how the player character feels to play without changing any of the actual gameplay mechanics. After watching this video, I highly recommend playing around with it for yourself to see what extra techniques you can learn. Here, you can see the character with a lot of details that bring them to life.

**1:00** · And here, you can see what they look like with the same mechanics, but a lot less effort put into making them feel good to players.

**1:09** · Even though what's happening is the same, we're shooting the same number of bullets from the same gun and running around as the same character, it just looks so much more dull and lifeless than the previous example. So, in this video, I'm going to use this tool to demonstrate a lot of examples because it's so useful. So, tip number two, move the player character when certain are performed to make those actions have more weight to them. See, here I've turned on two little details.

### Movement

**1:35** · The first one is a shake effect when the player shoots the gun, and the second is that the character gets slowly pushed back when they shoot.

**1:46** · This has the effect of making the bullets feel like they have some weight and recoil behind them. Number three, this one is more specific to characters in games that use guns, but it's about adding some spread to bullets.

### Bullet Spread

**2:00** · This makes guns feel more realistic and again like they have a bit of recoil.

**2:05** · Depending on your game, you could make it so that the spread gets bigger the longer the player hold down the trigger like in many military style FPS games.

**2:14** · Unless your weapon is literally a laser beam, you probably don't want all the shots to go in exactly the same place because your players will intuitively know that that's not how most guns work.

**2:25** · You want a bit of spread because it just makes the weapon feel a bit more realistic. Tip number four is use particle effects. Here, you can see that there are now trails added to the bullets and a muzzle flash effect around the gun which makes this weapon look so much better than before. When each action the player does creates particles that linger for a short time after the action, it feels like they're having more of an effect on the world around them. This doesn't just apply to guns.

### Particle Effects

**2:52** · You can apply this to explosions, magic spells, weather effects, sword swings, and almost anything that you want to draw attention to in your game. Most modern game engines that are available nowadays contain some sort of tech that allows you to create particle effects. I really suggest learning how to use these and apply them to your project. So, I've added some particle effects to the rocket launcher in my game.

**3:17** · So, here's a video of the weapon without the particle effects added. And here's the exact same weapon with some particle effects added and no other changes made to the mechanics. Tip number five is to use lighting. Again, referring to the example of our character shooting the gun, we've now enabled a halo of light around the player character when they shoot and there's an additional screen wide flash on each shot to really accentuate the weapon.

### Lighting

**3:43** · If your game has any guns or anything that's on fire or anything really that projects light in real life, you can make those things feel more believable by making sure those features interact with your game's lighting system to make them feel like a believable part of your game world. When you use lighting effects, make sure you use them in moderation though, so you don't disorientate players with all your fancy lighting. In a more realistic title, you will need to be a bit more restrained with how you use lighting to preserve the realistic tone of your game.

**4:14** · Here's a short clip showing how I updated the rocket launcher again with some lighting effects. This is what it's like before.

**4:23** · And then this is what it's like with lighting effects added to the scene.

### Impacts

**4:32** · This one's all about impact.

**4:34** · Specifically, when an attack or a projectile hits a surface.

**4:39** · Up until now, we have just deleted the projectile and done nothing. But now let's enable the features in the demo for bullet impacts.

**4:46** · There's a small flash when the projectile hits the surface and chunks of the wall fly out in each direction.

**4:53** · This makes it feel like each bullet is chipping away at the surface of the wall. This can be an easy effect to forget about as it's largely superficial, but seeing chunks of a wall fly off when you shoot it just makes the gun feel far more impactful than when the bullet just disappears on hitting the wall.

**5:09** · Out of all the tips in this video, I feel like this one makes a far bigger difference than people give it credit for. This applies to things beyond guns as well. If you're swinging a sword and you hit a wall, you probably still want an effect or some chunks to fly off to really accentuate that hit on the wall.

### Enemy Hit Reactions

**5:25** · Tip number seven, so now let's focus on the enemies. As you can see here, when I shoot the enemies in this clip, they get destroyed by the bullets, but they feel like lifeless squares more than actual enemies. In a fast-paced game, I might not even realize I've hit the enemy because there's absolutely no feedback given to the player on a hit. So first, I've enabled a flash effect on a hit so the player knows that their attacks are connecting, which is already a big improvement.

**5:51** · In this next clip, the enemy is pushed back by the attacks, which helps to make those bullet impacts feel more weighty.

**5:57** · This is also something you can apply to melee combat. Small weapons like a dagger might have minimal knockback, but big weapons like a spear or something may have a lot. This will make each weapon feel different and also differentiates them in terms of their mechanics as well. A classic way of making damage feel more impactful is through adding blood effects.

**6:17** · There are particles from the initial impact, and then the blood sticks to surfaces, which leaves a grisly aftermath after each enemy that the player defeats. Lastly, instead of just deleting the enemies when they're defeated, you can have corpses spawn instead. These fly backwards when the enemy is killed and then settle afterwards. If you don't want the corpses of enemies to stick around after death, maybe for performance reasons, you could have them explode or fizzle out in a burst of particles instead.

**6:44** · Defeating enemies is something you want to feel rewarding, so something has got to happen when you kill them. They can't just disappear.

### Squash and stretch

**6:51** · Tip number eight, use squash and stretch to make your characters feel more bouncy and alive and not just dull and lifeless. This can be applied in multiple places. First, when I hit these enemies here, you'll notice that they now get squashed horizontally. That is, they get thinner but taller. This makes it feel like you're shooting an enemy made out of jelly or maybe something living that reacts to being shot. You can add this to the player character as well to make their jumps feel more believable. In this clip, you can see how the player gets squashed and stretched as they jump, which makes their jump feel just a lot more bouncy.

**7:24** · Squash and stretch is useful to both convey impacts and the power of movement.

**7:30** · Point number nine, so we've covered jumps and attacks, but how would you make a dash feel really satisfying to perform? This demo has got us covered there as well.

### Dashes

**7:39** · So, here's the basic dash move with no special effects applied to it. And here's the dash move when we add in the squash and squeeze from the last point as well as a particle effect over the player character. This dash is the exact same speed and distance as before, but it feels a lot faster because of the extra effects that we've added to the player to really sell the speed and motion. Tip number 10 is to use screen shake. Screen shake can be used to accentuate sudden movements or impacts.

### Screenshake

**8:09** · In particular, this demo adds a screen shake effect when the character lands from a large height. This has the effect of making them feel heavy, which makes a lot of sense considering that it looks like they're wearing some sort of armor.

**8:22** · There's also a screen shake effect when we shoot the gun, which helps us to feel the recoil. Screen shake can also be useful to make explosions and other powerful attacks feel more dangerous, almost like you can feel the vibrations through your monitor. Screen shake should be used sparingly though. Too much of it can obscure your player's view of the action, which usually isn't a good thing. In addition to this, some players may suffer from motion sickness that could be made worse by screen shake.

**8:49** · So, if you want to use this effect a lot in your game, it might be good to put in an option to reduce or disable it if players want to.

### Summary

**8:59** · So, let's go through and summarize the 10 points I've covered in this video.

**9:03** · First up, move the player character when actions like attacks are performed to make them feel more weighty, add some spread to guns or attacks to make them feel more realistic, use particle effects to make attacks and other actions look more visually interesting, use lighting. Good use of lighting brings game environments to life and helps your game feel a lot less flat.

**9:25** · Pay attention to what effect occur when a projectile hits an object. It's easy to overlook this as it's quite superficial, but adding an effect here really helps bring your game to life.

**9:35** · Next, get your enemy hits right. Have your enemies flash white, get pushed back by attacks, use blood effects or particle effects, and don't forget corpses or death animations. Don't just have the enemy instantly disappear.

**9:49** · Use squash and stretch to make your characters feel bouncy and alive.

**9:53** · Add extra effects to dashes that make them feel really fast. This is a critical move in many games, so they should feel great to perform.

**10:02** · Use screen shake, but not too much of it so you don't disorient tight players.

**10:06** · And lastly, try out this demo for yourself on the Deep Night game's website.

**10:11** · There has been a lot of work put into it, and it's really great. And there's some even more stuff in it that you can learn from the demo that isn't in this video. Check out the link below and try out for yourself now. Thank you for watching, and I hope you learned something useful in this video that you can take back into your own projects. As always, please leave a comment letting me know your feedback about the video, and I'll see you in the next one.