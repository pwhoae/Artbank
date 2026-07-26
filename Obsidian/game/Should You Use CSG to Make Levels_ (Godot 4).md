---
title: "Should You Use CSG to Make Levels? (Godot 4)"
source: "https://www.youtube.com/watch?v=S5kRpEKIh38"
author:
  - "[[PiCode]]"
published: 2024-09-01
created: 2026-07-26
description: "What is CSG in Godot? Should you use is for making level? How's the performance?Resources:- The post taking about performance: https://www.reddit.com/r/godot/comments/n09m8k/csg_for_level_building_"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=S5kRpEKIh38)

What is CSG in Godot? Should you use is for making level? How's the performance?  
  
Resources:  
\- The post taking about performance: https://www.reddit.com/r/godot/comments/n09m8k/csg\_for\_level\_building\_in\_godot\_40/  
\- The game that was shown at the start of the video: https://picode.itch.io/the-scalling-doors  
\- Cool prototype textures: https://github.com/PiCode9560/Godot-Prototype-Texture  
  
Music: "Robobozo", "Limit 70", "Feelin Good", "Electrodoodle", "Beauty Flow", "Mining by Moonlight" and "Envision" all by Kevin MacLeod (incompetech.com)

## Transcript

**0:00** · This is a level I made Using CSG How's the performance?

**0:13** · What is CSG?

**0:16** · Constructive solid geometry (CSG) Also known as "Boolean operator" is a tool that combines shapes to create more complex ones Let's try using it Add a CSG shape Add another one as a child Change the operation to change how they interact

**0:48** · Hey, I made something A toilet maybe?

**0:54** · Why use CSG?

**0:55** · CSG is an easy and fast way for prototyping or making simple levels You could easily add collision to it You can even make interior levels by flipping faces

**1:17** · This level only took me 5 minutes to make However, it's not good for making very complex stuff So, you can also just use it to create the layout of the level And then, export it into blender And use it as a base for creating a level How's the performance?

**1:45** · Well...

**1:47** · According to this post, "If you don't move CSG nodes during gameplay\*, run-time performance is roughly the same as if you modelled something in blender" Really?

**2:02** · Let's test it!

**2:05** · By spawning a bunch of CSG boxes in a grid

**2:27** · Looks pretty good!

**2:29** · It only lagged when spawning it.

**2:31** · Its fine after a second Now, let's try moving them around Yeah... Pretty bad Good enough for making static levels Give it a try!

**3:05** · It might save you some time prototyping or making levels Especially during game jams