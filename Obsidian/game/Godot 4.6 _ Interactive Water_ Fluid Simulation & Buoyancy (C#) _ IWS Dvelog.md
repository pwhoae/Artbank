---
title: "Godot 4.6 | Interactive Water: Fluid Simulation & Buoyancy (C#) | IWS Dvelog"
source: "https://www.youtube.com/watch?v=yfTjq5o6QMA"
author:
  - "[[Kextex]]"
published: 2026-05-16
created: 2026-07-12
description: "project files: https://kextex.itch.io/interactive-water-in-godot-400:00 Intro00:13 Buoyancy Physics00:54 Customizing Water Appearance01:39 Character Interaction & Chopper Downwash02:08 Underwate"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=yfTjq5o6QMA)

project files: https://kextex.itch.io/interactive-water-in-godot-4  
  
00:00 Intro  
00:13 Buoyancy Physics  
00:54 Customizing Water Appearance  
01:39 Character Interaction & Chopper Downwash  
02:08 Underwater Effects  
  
#godotengine #godot4 #gamedev #devlog

## Transcript

### Intro

**0:00** · This is a quick preview of the interactive water system for Godot 4.

**0:04** · In this demo, I want to show you buoyancy, multiple water bodies, how to customize the look, and different types of water interactions.

### Buoyancy Physics

**0:13** · The first example is buoyancy.

**0:16** · I’ve set up four objects with different densities and shapes.

**0:20** · This basketball is super light, so it barely makes a splash and just sits on top.

**0:25** · The wooden log and crate have some weight, so they float half-submerged.

**0:30** · And this anvil is just really heavy, so it sinks straight to the bottom.

**0:34** · To make this work, each object is just a standard RigidBody3D.

**0:39** · You just drop in a BuoyancyBody component, and it automatically generates voxel pontoons around the collider to handle the math.

**0:47** · I also tossed a PointImpactEmitter on them so they actually disturb the water when they move.

### Customizing Water Appearance

**0:54** · For water appearance, I’ve set up two common scenarios.

**0:58** · The first is typical clear, transparent water.

**1:01** · The second simulates murky river water with more impurities and sediment.

**1:07** · You only need to adjust two groups of parameters: Turbidity and RefDepth for visibility, and Shallow Color and Deep Color for the tint.

**1:16** · For the clear water, I only increased the RefDepth.

**1:19** · This controls how visible the underwater area is and also affects the depth of the blue tone.

**1:26** · Turbidity, on the other hand, makes the water look murky and actually increases the surface roughness.

**1:33** · So for the river water, I tweaked both of those and pulled some shallow and deep colors from real photos.

### Character Interaction & Chopper Downwash

**1:39** · For character interaction, simply add the CharacterWaterInteraction component to your CharacterBody3D.

**1:46** · As your character moves through the water, it automatically creates splashes, wake trails, and pushes foam outward.

**1:54** · I also used a DiscPressureEmitter to simulate helicopter downwash, producing continuous circular depressions on the surface.

**2:02** · All these disturbances are generated automatically and fed into the GPU ripple simulation.

### Underwater Effects

**2:08** · Finally, the underwater effect is powered by a CompositorEffect in the WorldEnvironment node.

**2:15** · It uses a compute shader that reads the scene depth buffer to calculate the waterline per pixel, ensuring it always stays aligned with the animated waves.