---
title: "Easy Realistic Water In Godot Tutorial"
source: "https://www.youtube.com/watch?v=ZgpgwbJGe78"
author:
  - "[[Majikayo Games]]"
published: 2024-03-11
created: 2026-07-12
description: "This video shows how to easily create a realistic water material with just the default tools and classes provided in Godot. Let me know in the comments if you have any questions :)If this tutorial h"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=ZgpgwbJGe78)

This video shows how to easily create a realistic water material with just the default tools and classes provided in Godot. Let me know in the comments if you have any questions :)  
  
If this tutorial helped you, consider supporting the channel on Patreon or KoFi:  
https://www.patreon.com/MajikayoGames  
https://ko-fi.com/majikayogames

## Transcript

**0:00** · It's super easy to add realistic water to your Godot scene. First, add a mesh instance 3D to your scene.

**0:07** · Then, add a new box mesh to your mesh instance 3D.

**0:12** · Add a new standard material 3D to the mesh instance.

**0:16** · Open the material settings and go to albedo and set to a water color.

**0:21** · Make sure to add some transparency to it.

**0:23** · Next, go into the roughness of the texture and lower it to a very low value.

**0:28** · This will make it shiny. And make sure to go into transparency, enable transparency, and set depth draw to always.

**0:36** · After that, you can go into normal map, enable it, and then add a new noise texture 2D.

**0:43** · Adjust the settings of the noise texture, make it seamless, and click as a normal map.

**0:48** · Make sure to add a fast noise light to your noise texture.

**0:53** · Once you added a noise texture to the normal map, copy the texture, and then scroll down to refraction.

**0:59** · Enable it, and paste the texture into the refraction texture, too.

**1:03** · Now we have something that looks like a realistic water texture that you can use in your scenes.

**1:07** · To keep the texture consistent as you scale it, you can go into UV1, turn on triplanar, world triplanar, and then scale it down to an appropriate value.

**1:17** · Then, you can scale the mesh instance to whatever you want in your scenes, and the textures won't get distorted.

**1:23** · As an optional final touch, you can right-click the standard material and convert it to a shader material.

**1:32** · Then, in the vertex shader, you can find the line where the UV1 triplanar poses set, and then add time to it.

**1:44** · This will make the texture move around.

**1:45** · You can multiply it by a small value to make it go slower.

**1:52** · And that's how to add realistic water to your scenes in Godot.