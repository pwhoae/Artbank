---
title: "how to add 3d walking sound in godot 4 .godot tutorial."
source: "https://www.youtube.com/watch?v=fE-Z8ZlVvzU"
author:
  - "[[GameStick]]"
published:
created: 2026-07-06
description: "Thank you all for watching and being part of this game development journey with me! Your support means a lot, and I hope these tutorials are helping you leve..."
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=fE-Z8ZlVvzU)

Thank you all for watching and being part of this game development journey with me! Your support means a lot, and I hope these tutorials are helping you leve...

## Transcript

**0:00** · adding a walking sound to the player is quite simple and I'll show you exactly how to do it so to do this first add a character body 3D then add a collision shape and mesh instance also add a camera and the audio stream player node now create a new capsule mesh then add a capsule Collision also set the camera position now create a platform with a static body node add a mesh instance and add a collision shape create a new box mesh and resize it also add a box-shaped collision and

**0:39** · resize now select audio stream player and drag and drop your walking sound and make sure to enable the loop and the sound is like that now create a simple script for your player under the else statement drag and drop the audio stream player then use .play() to play the audio and that's it now you have a player with a walking sound effect if you find it helpful make sure to like And subscribe for more tips see you in the next one