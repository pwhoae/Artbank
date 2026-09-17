---
title: "Anatomy Of A Projectile"
source: "https://www.youtube.com/watch?v=SkZOXnp0A60"
author:
  - "[[onetupthree]]"
published: 2026-08-14
created: 2026-09-17
description: "projectiles... project these tiles...Compilation SFX by Jasyon Nghttps://www.youtube.com/channel/UC4fyWNkK27T4gORgtVvFBighttps://twitter.com/jaysonngmusicShork Turret by Dennis Skoddahttps://ww"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=SkZOXnp0A60)

projectiles... project these tiles...  
  
Compilation SFX by Jasyon Ng  
https://www.youtube.com/channel/UC4fyWNkK27T4gORgtVvFBig  
https://twitter.com/jaysonngmusic  
  
Shork Turret by Dennis Skodda  
https://www.artstation.com/dennisskodda  
https://twitter.com/sir\_smitz  
  
Target Dummy by Rafles (Rubfish)  
https://www.rubfish.com/  
  
Throwing Knife by Eric Wallbank  
https://sketchfab.com/3d-models/throwing-knife-8e47c2ff42894aa1bac12af46d08aced  
  
Shuriken by MEDOMAI  
https://sketchfab.com/3d-models/shuriken-4-pointed-throwing-star-8b41ff2b4fb44fd8a7d4a0ae4a41e483  
  
Bow & Arrow by paburoviii  
https://sketchfab.com/3d-models/stylized-metal-bow-and-arrow-2086d354229b4f3bae1d18a48f08c91c  
  
Pirate Bomb by Mohammad Abu Baker  
https://sketchfab.com/3d-models/free-asset-pirate-bomb-a8888d0011dd4cc097d925178729bbca  
  
BGM by Kevin MacLeod (Incompetech)  
https://incompetech.com/  
  
Patreon  
https://www.patreon.com/onetupthree  
  
#realtimevfx #vfx #games #gamedev #visualeffects #gaming #unity #projectile  
  
00:00 - 00:32 Intro  
00:32 - 01:12 Getting Started  
01:12 - 02:55 Head  
02:55 - 04:17 Trail  
04:17 - 05:38 Support  
05:38 - 06:02 Buildup  
06:02 - 07:37 Muzzle  
07:37 - 09:29 Movement  
09:29 - 10:28 Impact  
10:28 - 10:46 Compilation Intro  
10:46 - 11:23 Three-Hit Tom  
11:23 - 11:54 Stickman  
11:54 - 12:35 Shork Turret  
12:35 - 13:19 Outro

## Transcript

### Intro

**0:00** · Hello everyone!

**0:01** · Welcome to another installment of VFX Anatomy where we look into the structure of VFX in games and how we can build upon them :) This series is more of a theoretical breakdown answering “why” rather than “how” components are built.

**0:14** · Though there may be times where I explain the technicals behind certain parts.

**0:17** · Today we’ll be focusing on arguably the most common VFX in games, the projectile.

**0:23** · It’s versatile and it’s straightforward (most of the time).

**0:26** · Nothing beats harnessing a ball of energy and hurling that into an unsuspecting target.

**0:30** · So where do we start?

### Getting Started

**0:32** · PROJECTILE To form our projectile, we have to learn about the medium that it comes from.

**0:39** · What elements do we want to reinforce?

**0:41** · Are there any shapes we can draw inspiration from?

**0:43** · Or in other words… We have to know the story behind the weapon or mage that produces our projectile.

**0:50** · Our weapon can be a simple bow, a mage’s staff, a gun, or our resident wizard, Bob.

**0:56** · What goes on in Bob’s head when he makes a projectile?

**0:59** · The LORE is important for driving the visuals of our projectile.

**1:03** · We always want each component to reinforce the same idea to make the entire piece cohesive.

**1:09** · And with that, we can start thinking about our projectile.

### Head

**1:12** · HEAD The head is the part that has the most visual weight in our projectile.

**1:18** · Visually, it is the part that tells the player, “Oh, this is the projectile!”

**1:23** · And gameplay-aly, it also usually determines the projectile’s hitbox.

**1:28** · There are plenty of ways to go about forming the head.

**1:30** · One way is to use abstract shapes, and the sky is the limit when it comes to this approach.

**1:35** · But if you find yourself in choice paralysis, one thing you could consider to help narrow down is Spiky weapon? Maybe consider a pointed head.

**1:44** · Blocky environment? Perhaps some flat ended shapes will do.

**1:47** · Ball-themed game? Play around with balls.

**1:50** · Aside from that, the gameplay is also something you can consider for your shape.

**1:54** · A weaker one might have a very basic shape such as this circle and the stronger it gets the more pointed and stretched it gets.

**2:02** · Maybe the projectile explodes in all directions on impact, so you might consider a head that looks like this.

**2:07** · Implementation-wise, I usually use a stretched billboard, also known as the velocity-aligned billboard, with just a liiittle bit of forward velocity, so the billboard can actually align with a velocity and point forward.

**2:19** · Unfortunately, I don’t know how to implement this from scratch but Unity has this setting in the particle system’s renderer module and Godot has it in the GPU Particle’s drawing properties.

**2:30** · The main downside to this is the particle does NOT look nice when you are looking at it head-on.

**2:36** · So keep the camera views in mind when going for this approach.

**2:40** · If your weapon allows for it, the head can also just be an actual object.

**2:44** · Some examples are an arrow from a bow, a thrown shuriken, or a silly lil bomb.

**2:49** · The implementation for this is straightforward as these can all just be meshes with standard materials.

### Trail

**2:55** · TRAIL The trail gives the projectile some directionality.

**3:00** · It usually lags behind the head, hinting at where it came from and in turn can hint at where it’s headed.

**3:06** · The head can also help with this aspect if the shape is non-uniform but the trail makes it much more apparent.

**3:13** · Apart from directionality, the trail can give more information about the projectile by highlighting certain traits.

**3:19** · It could be highlighting a projectile’s speed.

**3:21** · A slow projectile usually has a shorter trail compared to a much faster projectile (assuming the same trail duration) since the faster one covers more distance before the trail dies off.

**3:29** · It could also be highlighting the LORE.

**3:32** · Is our projectile drawn from a specific element like lightning? Is it smoky?

**3:36** · Maybe it’s a holiday themed projectile?

**3:39** · Like what we did for the head, drawing inspiration from the themes behind your projectile can help in making your trail.

**3:45** · The technique I’ve found myself doing for most of my projectile trails is using the trail renderer or any equivalent in your engine.

**3:52** · Let’s take Unity’s particle ribbon trail component for example, I can play around with the trail width, color, and noise, among other things.

**4:02** · Couple these with a flipbook or a panning noise texture and you can add a lot to your trail. :) On top of this, you can add some directional blur to the trail and possibly the head’s texture to fake some motion blur giving your projectile a more dynamic look.

### Support

**4:17** · SUPPORT The support is the small details that reinforce characteristics of both the head and the trail, tying everything together. :) Let’s take this projectile as an example.

**4:29** · This is supposed to be the fastest projectile ever.

**4:32** · Unfortunately, it doesn’t look like that right now. So let’s change that.

**4:37** · First, we’re gonna give it some coffee and add some jittering to the head.

**4:41** · Then we can support the head by adding a spiky aura around it and a cone of wind, adjusting the intensity as needed.

**4:47** · We can also add smaller particles to break the shape up and give it a more dynamic feel, on top of being an additional trail.

**4:55** · Next we can add rings around the projectile for a shockwave type effect.

**4:59** · And finally, since our projectile is close to the ground, we can add some poofs of dust going back and out from the projectile.

**5:08** · There are plenty of ways to support your projectile of course so think of it as a challenge on how you can push your creativity given the constraints you’ve placed for yourself either in your portfolio piece or the constraints you’re given in the world that the game has established.

**5:23** · And there we have it! Our projectile is complete. If you have any questions, comments, or suggestions WRONG BUZZER NOISE Even though we’ve completed the projectile itself, there’s actually a lot more stuff around it which are just as important.

**5:34** · I’ll be explaining each one in order of their appearance, starting with BUILD UP The build up is our way of telling a player that a projectile is about to spawn. Building anticipation in the player and letting them think about how to react.

### Buildup

**5:48** · This should be proportional to the power of your projectile. So the more powerful your projectile is, the longer or more grand the build up can be.

**5:57** · Or if the projectile is weak enough, maybe a build up isn’t even necessary.

### Muzzle

**6:02** · MUZZLE The muzzle is the burst of energy that represents the instant that the projectile is spawned.

**6:09** · The burst of energy is usually in line with the projectile’s path.

**6:13** · A forward burst reinforces both the power and the directionality and a backward burst can further emphasize the power involved in spawning the projectile.

**6:21** · A rule of thumb is to make sure that the muzzle doesn’t take too much attention from the projectile either by balancing out how extreme it looks or by making the duration relatively short.

**6:31** · You can let the muzzle have its moment but the projectile should take the stage shortly after.

**6:36** · Let’s take this projectile right here for example.

**6:39** · I’ll make an initial muzzle version that I feel takes a tad too much attention and explain the changes I would make to balance it out.

**6:46** · We’ll let this play one time.

**6:49** · And then we’ll pause it right here.

**6:52** · As you can see, the projectile is already a fair distance away from the caster but there are still parts in the muzzle that linger.

**6:58** · There are also some parts that have a secondary movement like the expanding ring, the wind curl appearing after a slight delay, and the panning animation on the backwards wind cone.

**7:08** · All of these can take attention away from the projectile.

**7:12** · Here’s some changes I made to make it feel more balanced.

**7:15** · And we’ll pause it at around the same time.

**7:17** · Already we can see that there are way less components fighting for attention in this frame.

**7:22** · I removed the slight delay from the ring and the wind curl.

**7:26** · I reduced the opacity of both wind curls.

**7:29** · I reduced the lifetime of the backward specks.

**7:32** · And I slowed down the panning speed of the wind cone.

### Movement

**7:37** · MOVEMENT There are three aspects to the projectile’s movement.

**7:42** · There’s the speed, the path, and the easing.

**7:46** · Depending on how you handle it, the speed can be determined by an actual velocity value that you set, or you can set a time that the projectile takes when travelling from point A to point B.

**7:56** · For most of my portfolio pieces, it’s usually the latter.

**7:59** · The shorter the travel time, the faster the projectile is.

**8:03** · The path aspect is pretty straightforward.

**8:05** · Your projectile can go straight from point A to point B, or it can deviate and follow a curve instead.

**8:12** · Anything thrown up of course must come down due to gravity if you go for a realistic approach but when you start playing around with curves, you get more into the magical side of projectiles.

**8:25** · And just for fun, here’s all the shown paths played at the same time.

**8:30** · The last aspect, easing, can surprisingly have a huge impact on how your projectile feels.

**8:35** · The most common easing types are linear, ease in, and ease out.

**8:40** · Linear is achieved by moving the projectile at a constant rate from point A to point B. Not much to write home about.

**8:47** · The other eases are where it gets more interesting.

**8:50** · Ease in has your projectile start out slow and then work its way up to max speed shortly after.

**8:56** · This easing is a great way to add even more anticipation to your projectile.

**9:00** · Ease out has your projectile move very fast at the start and then slows down towards the end.

**9:05** · This easing gives your projectile a more explosive introduction and delaying the anticipation towards the end of the sequence.

**9:12** · Of course you can deviate from these however you want and go crazy with your easing. Try to ease into it though.

**9:20** · Try to ease into it though.

**9:22** · And again, here’s all the shown easings played at the same time.

**9:27** · And last but not least, we have the IMPACT Like the muzzle, it is a burst of energy but this instead signifies the death of your projectile (and maybe your target).

### Impact

**9:36** · I usually like emphasizing some forward directionality, with forward being the velocity of the projectile before the impact.

**9:43** · And to top it off, I add some generally outward moving particles.

**9:48** · And of course, this part should also be proportional to the power of your projectile. The more powerful your projectile is, the more extreme the impact looks and feels.

**9:57** · And finally, here it is all played at the same time The impact can also be gameplay driven. For example, it may cause a secondary effect like an AOE behind or around the target upon impact.

**10:08** · Or maybe your projectile inflicts a status effect that impedes the target somehow.

**10:12** · Again, feel free to go crazy with it. :) Sometimes though your projectile won’t hit anything, maybe due to a duration or a range constraint.

**10:21** · For this we still have to think about making a relatively simple effect to give feedback that this projectile has run its course.

### Compilation Intro

**10:28** · And with that, our projectile is actually complete!

**10:32** · I’ve taken these concepts and applied them to a bunch of different projectiles.

**10:36** · Weapons or characters shown will have their information displayed on screen and will be linked in the description below.

**10:41** · Without further ado, please enjoy this compilation of projectiles. :)

### Three-Hit Tom

### Stickman

### Shork Turret

### Outro

**12:35** · That’s it for the video. I hope this helped you out one way or another :D If you have any questions, comments, or suggestions, please feel free to leave them below!

**12:43** · You may have noticed that for some parts in the compilation, I went against or ignored my own points in the video.

**12:49** · That’s because this is only meant to be a loose guide for your own projectiles to help you get started if you’re feeling lost! :) Take what resonates with you personally and feel free to disagree or question points if it goes against your intentions with your VFX.

**13:02** · Thank you to all my lovely patrons for the support!

**13:07** · And to you for watching this video.

**13:09** · Take care and I hope you have a great one :D