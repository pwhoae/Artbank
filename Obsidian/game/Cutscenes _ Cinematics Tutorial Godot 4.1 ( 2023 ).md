---
title: "Cutscenes / Cinematics Tutorial Godot 4.1 ( 2023 )"
source: "https://www.youtube.com/watch?v=m_K1reBP6r8&t=19s"
author:
  - "[[Lukky]]"
published: 2023-09-27
created: 2026-08-16
description: "Consider a subscriptionProject link : https://github.com/lukky-nl/Demo-Cutscene-for-Godot-4.1"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=m_K1reBP6r8)

Consider a subscription  
  
Project link : https://github.com/lukky-nl/Demo-Cutscene-for-Godot-4.1

## Transcript

**0:01** · foreign so I've gotten a couple of questions about cutscenes and cinematics in Godot and how to set them up so I built this little demo scene and created a little cutscene in here animating some stuff it's actually super easy to set up in Godot like most things but I just want to break down this scene that I built and show you guys how to set up something like this from scratch so first let me show you what this scene turns into when it's run

**0:34** · \[Music\]

**0:59** · all right so as you can see there's a couple things going on we got the camera swoop coming in a little fov change the lightning flashing and we've got of course the sound effects the rain the little Eerie Zone playing and then the

**1:14** · Thunder which is synced up with the lighting effects so how you would set up something like this it's super easy within this animation player I just have one giant animation that is the cutscene and you can animate almost anything in Godot with an animation player so positions uh

**1:33** · fov with the camera the visibility of the directional light which is the thunder the lighting of the sky the color of a couple of label notes these are the level notes are basically the text elements you saw you can see the color

**1:51** · of these labels get animated and that's how I made that fade you see that lucky presents right here it's just me animating the alpha Channel over color so you can see here it's completely visible and then Fades out again and you can see the background's audio files here come up as waveforms it's super handy for timing certain things with certain sound effects like for example the thunder you can see right here and just keyframed the

**2:20** · the light to the audio track of the Thunder it's very easy to set up this way and the whole animation is about one minute because we've got some extra tender flashes like if the game was waiting for the player to press space or something so now this giant animation might be a little bit intimidating but let me show you how to set it up from scratch so I'm just going to create a new scene in this project

**2:50** · and I'm going to show you how to set something up like this so I'm just going to create a 3D scene I'm gonna call it world and I'm just going to place a couple meshes in here some right click ADD child notes mesh I'll just add a plain mesh and make it really big so anyway 20.

**3:18** · and then I'll add in oh and subjects so I'll just add in a cube and then right here on the top I'm gonna add in the sun and the world environment so the game will look exactly like the viewport so just add some an environment and that's our little demo environments which I might actually give the cube a color

**3:47** · just so it stands out a little more going into mesh material standard material albino I'll just make it a soft blue beautiful so let's set up a cutscene for this of course you're going to need a camera so I'm just going to right click ADD child node camera 3D

**4:13** · or right here and we're not in the floor so I'm just going to move it out and actually need to enable gizmos yours will be enabled I just disabled them for this scene because if you enable gizmos here you can see there's a lot going on

**4:30** · doesn't matter your Christmas will be enabled so you'll be able to see the camera so first thing let's animate this camera swooping into the cube so I'm going to move it off to the side a little bit and if you want to see what the camera is going to see you can click the little preview icon and if you still want to manipulate the position and rotation of the camera you can go into your camera no 3D transform right here and play with the values manually

**5:00** · so let's end that animation I'm gonna add another note to the world so right click ADD child notes animation player and then we're going to click on this animation button down here and create a new animation and let's just call this

**5:15** · scene so a default animation is one second of course a cutscene is going to be longer than that so let's just set it to 20 seconds and let's add in our first keyframe of the camera being right here now if you're coming from blender this will be very intuitive but you might need to get used to it if this is your first time animating within this animation player you can animate anything you see all these little Keys next to every aspect that's something you can animate by just clicking that key click and create you now have a keyframe

**5:48** · for that position so if we go to I don't know \[Applause\] five seconds into our animation and we change the position of that camera like we come in lower and closer and more to the side

**6:09** · like that and we click again on the little key next to position we've now animated the position of the camera and you can go as crazy as you want with these things you can add rotations you can manipulate the field of view of the camera to get more dramatic effects but just doing this is the essence of creating a complete cutscene let's animate a couple more things in this scene I would like the cube the rotate as well so I'm just going to grab this

**6:41** · Cube mesh and go into the transform and keyframe the rotation give it a 280 degrees rotation here on that five second Mark and key that as well and now you can see we got two elements animating and by doing this and animating anything you want so for example the world lighting or the environment lighting

**7:08** · you can create complete cutscenes and the last thing is of course just starting the animation I just have this super basic script setup checks for me pressing the spacebar and then place the animation can grab any animation player within any piece of code and just reference it by dragging it in so in any function that you want your cutscene to start playing just grab that animation player by dragging it into your code I'm going to play

**7:36** · when you open the brackets it will show all the animations you have on that animation player so you can just select the one that you want so yeah that's just a super quick breakdown of this effect and how to set up something similar if you guys have any more questions let me know the support has been really awesome on this channel lately I'm really stoked to make some more content for you guys and I hope to see you guys in the next one until then bye