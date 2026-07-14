---
title: "Debugging Stutters in Godot 4"
source: "https://www.youtube.com/watch?v=81ZJ-YlpwEQ"
author:
  - "[[Octodemy]]"
published: 2026-02-27
created: 2026-07-14
description: "An important skill to have is how to debug stutter and performance issues in your games.Godot makes it really easy to find bottlenecks and problems with your game's performance. So learn how to debu"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=81ZJ-YlpwEQ)

An important skill to have is how to debug stutter and performance issues in your games.  
  
Godot makes it really easy to find bottlenecks and problems with your game's performance. So learn how to debug and fix those annoying stutters.  
  
····················································································  
Want to support me?  
🌐 Patreon: https://www.patreon.com/Octodemy  
····················································································  
  
  
#godot4 #godot #godotengine  
#godot4.6 #godotnews #godot3d  
  
CHAPTERS:  
0:00 Intro  
0:12 Debug and enable Profiler  
0:29 Investigating the stutter  
1:20 Testing a theory  
1:39 The real problem  
1:58 A half solution  
2:15 Alternative solution

## Transcript

### Intro

**0:00** · So I was playing around with this scene when I started noticing a very consistent stutter around the start of the testplay which is a good time to show how you can debug these kind of things as well as what the fix was for this specific problem.

### Debug and enable Profiler

**0:12** · To debug stutters, or any performance issues in Godot, we start off by going to the Debugger tab, Selecting the Profiler, and enable autostart.

**0:18** · And in older versions of Godot, you can also enable it after starting the game.

**0:23** · Now let's play it and wait for it to happen.

**0:25** · A big spike, well above our 60 fps line.

### Investigating the stutter

**0:29** · We can click on the spike to see what is that.

**0:32** · It seems the proccess time here is double the normal values.

**0:35** · So to find out what is really happening let's scroll down the list.

**0:39** · And look at the script functions.

**0:42** · There is our spike.

**0:44** · It happens when the player enters the shooting range through the area signal and it fires the cannon ball.

**0:49** · Let's also change the time to self.

**0:51** · And now it is clear the lag happens inside the fire\_ball function.

**0:54** · It seems the cannon ball spawn is causing this.

**0:57** · But this function doesn't do anything special. Is just spawns a preloaded scene.

**1:03** · A CharacterBody3D cannonball with a GPUParticle attached to it.

**1:07** · But here is what is really strange, this only seems to happen once at the start of the game.

**1:10** · Very similar to how shader cache only stutters to compile them once, then never again.

**1:16** · But this is happening every time the game is loaded. Like the shader never cached.

### Testing a theory

**1:20** · So to test it out.

**1:21** · I fake spawned the cannon ball at the start of the scene.

**1:26** · And look at that... The stutter is suddenlly fixed.

**1:29** · Nothing at all.

**1:30** · Now, this solution is not very good because every wall cannon is fake instanting a ball at the start and adding up to the scene loading times.

**1:37** · So let's investigate some more.

### The real problem

**1:39** · And as it turns out, the reason for the spike is the GPUParticle3D.

**1:43** · Even removing the mesh material, just by having the ParticleProcessMaterial here can causes this problem.

**1:49** · And there is an old bug report of this exact issue too.

**1:51** · Specific to vulkan shader compilations.

**1:53** · But with way worst spikes back them.

**1:56** · So with that in mind, let's change the rendering device from vulkan to directx12.

### A half solution

**2:01** · Which is the newly default driver for windows.

**2:04** · And just by doing that, the spike... lessens.

**2:08** · You can still see it here, but it is very soft, and it keeps the game at 60fps at least.

### Alternative solution

**2:15** · Now, let's try one last thing.

**2:17** · Instead of preloading the scene, let's just load it instead.

**2:21** · And funny enough. There is no spike at all.

**2:25** · Which is a good lesson to not overuse preload.

**2:28** · Beside strange problems like this, preload can cause cyclic dependencies and break your game if you are not careful.

**2:33** · And if you still need to use them and happens to see these spikes.

**2:36** · And can always fake instance them at the start when the loading happens.

**2:40** · But that's it, just a quick note on this very specific strange problem and how to debug your games.

**2:44** · I hope you liked this video.

**2:46** · And until next time.