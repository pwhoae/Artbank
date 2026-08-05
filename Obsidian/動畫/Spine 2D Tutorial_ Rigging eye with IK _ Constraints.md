---
title: "Spine 2D Tutorial: Rigging eye with IK | Constraints"
source: "https://www.youtube.com/watch?v=pyjYqNMiDWo&list=PLZOZR9OAkzE3T_irm8ighD0fSxtZIkgBj&index=12"
author:
  - "[[Armanimation]]"
published: 2021-06-08
created: 2026-08-05
description: "Spine 2D Animation Coursehttps://www.armanimation.com/spine-2d-animation-course---------------------------------------------------------Rigging eye in Spine 2D for blinking and looking around using"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=pyjYqNMiDWo)

Spine 2D Animation Course  
https://www.armanimation.com/spine-2d-animation-course  
\---------------------------------------------------------  
Rigging eye in Spine 2D for blinking and looking around using IK and transform constraints.  
Download the project: https://www.armanimation.com/product-page/cat-eye-rig-in-spine  
  
You can support us here  
\---------------------------------------------------------  
Youtube https://www.youtube.com/channel/UCL-JqRiHFVRn-iuJn3Gpyfw/join  
Patreon https://www.patreon.com/armanimation Join our Discord https://discord.gg/DQtrjv2Kb2  
\---------------------------------------------------------  
https://discord.gg/DQtrjv2Kb2  
https://www.facebook.com/armanimationn  
https://www.instagram.com/armanimationn/  
https://twitter.com/WArmanW  
  
Art by Vahe Abelyan, check him out on Behance  
https://www.behance.net/vaheabelyanart  
  
  
Timestamps:  
Intro (00:00)  
Making decision (00:34)  
Rigging blinking (02:18)  
Rigging pupils (07:30)

## Transcript

### Intro

**0:05** · Hi everybody, welcome to this chanel My name  is Arman, I animate 2D characters using Spine.

**0:10** · In this video I will rig an  eye in a complex way and will help you better understand when and  how complex you want to rig an eye.

**0:17** · I plan to release this video as instant Premiere  so we can watch it together at the same time!

**0:23** · And when premiere ends you should automaticaly be  led to the live stream where we will be rigging a new eye from scratch so you can see  the full process and ask your questions.

**0:32** · Cool, Lets get started..

### Making decision

**0:35** · Check it out we have a cute cat  drawn by my friend Vahe Abelyan, I will put the link to his  portfolio in the description.

**0:42** · Before starting lest divide  rigging into 3 sections Blinking, looking around and working combined with face 3D controller Today we will be rigging for first two,  for 3rd one you can watch another video, I will put the link on the screen Now let's name the cat Piso

**1:03** · And do some thinking whether we need to  rig the eyes or not. we need to see if Piso Appears on the screen big Or maybe it's important  character, perhaps tutorial guide check if Piso Appears many times  throughout the progression of the game or maybe it Interacts with the environment by  looking at different characters or objects.

**1:30** · If none of the above is the case for you  maybe just draw some extra states like closed, smiling even looking up or down and switch them  in the animation, without any rig at all.

**1:45** · for example I animate monster legends  character using 2 states for eyes opened and closed. and they  are pretty much important characters and appear many times in the game and enough big to do the eyerig, but they have 1000 of monsters in the game, so the process  got optimized timewise, since rigging the eyes takes solid portion of the total rigging. So make your decision well.

**2:17** · ok, let's do the rigging.

### Rigging blinking

**2:18** · We will be starting from blinking functionality.

**2:23** · Let's see how the layering was done for Piso You can see that we have shines of  the eyes separated in different layers so we can also move them with the pupils, And  we have opened and closed states for the eyes.

**2:41** · I would use open states when eyes are opened  if they are a little bit beautiful than this.

**2:48** · But i think this state I can achieve also with  close states by deforming and binding the mesh to the bones, Sometimes characters come with  bottom eyelids, like this guy and it helps us to do more realistic look and achieve more emotions,  but don't worry we can also go without bottom eyelid and rig just top one. In our case we will  be throwing this open states since they are simple and we can achieve similar look by just rigging  the closed state so let's open close state.

**3:31** · And next thing I would go and mesh the eyelid I  will be rigging one eye and the next eye you can do yourself, since i'm going to share  this project and you can play with it but now I'm going to speed up and mesh  this eyelid, I will be doing it detailed to be able to open it smoothly let's see it.

**4:08** · Now that I have it meshed I will be needing to add  a bone and bind the mesh to it so that bone can control open and close of the eye. Before that you  need to make sure that all eye parts are in one bone I will be calling it eye root and make sure  that everything that is inside, is isolated. Later with face 3D, you will just need to move this  bone by constraining it to the face controller.

**4:39** · Okay, let's create a bone, let's select  this as a parent and create a bone.

**4:45** · After that I will select the mesh, bind it to  eye root and eyelid bones, and let's give it all, back to the root. Now with add brush tool,  with feather 100 and maybe a little less size, we can start pushing it. But before that, we need  to move it as simulating the already opened state, but this needs to happen after we bind it. So the  mesh knows that initial binding pose, the bone was here, so now it moved here. If we now give  it the value to this bone points will move up.

**5:35** · After basic weighting, we will go and  do some polishing with direct mode, I will speed up this process.

**6:06** · Now I have it bound. I will maybe do some  adjustments here, at this edge, by adding some vertices and polishing the bindings, but  now I need to compare with the original design.

**6:20** · Let's open it and see if our rig allows us  the same state I see something comes out from here so I will be definitely fixing it,  as well I will smoothen out these sections.

**7:02** · Okay, I think I'm happy with the result, you can  go and smoothen even more but this is working for me, I can achieve nice smooth blinking  with this bone, Remember that you can also do rotations for this bone and also scaling.  Okay, now we have the blinking, next we will be needing to do to rig of the pupil. To achieve the  looking functionality. let's see how we do that.

### Rigging pupils

**7:36** · Before rigging, make sure that the face has  carved out windows for eyes, that will cover the unnecessary part of the eyes. You can also  go with clipping but I wouldn't suggest it.

**7:49** · If you can avoid it just do it, it is performance  heavy. So to do the rig for pupils I will need all the setup inside another container  bone, for that I will select eye root bone, create that bone, this will contain the IK,  target and etc. So now I will create another bone this will be our IK and immediately  we can create a target for it.

**8:24** · Right away, just hit compress, so it compresses but not stretches.  This will give us nice functionality, to move it in a circle and you can see that radius is  remaining still when we go out while it compresses when we move target inside the  circle. So now we need to create a pupil bone for that I will select  the container bone, with create tool, just holding ctrl I will select the image that  will immediately put it into newly created bone.

**9:03** · I am going to put this bone  into this arm of the IK.

**9:11** · And maybe move it here.

**9:15** · Yes and make sure that it is on the bone  and not up or down, to avoid unnecessary distortions. Now when we move it, you can  see that pupil is moving in a circular way.

**9:31** · It's not what we want right, now but we can  tweak it very easily, just select this bone then we need to disable rotation, so this  way when we move it it's not gonna rotate, and next, you can see that it gets scaled,  because the parent bone gets scaled.

**9:50** · We need to also disable that scaling inheritance.  Cool, now we have pupil moving perfectly.

**10:00** · Let me demonstrate, I will put this target  inside the container bone, when we have a circular movement we can go with this setup, but  sometimes when it comes to a different design, where the eyes are elliptical, we can go and  scale this, on one axis, and when we move it you can see that it moves in elliptical way. You can also of course rotate  it, to match the design of the character.

**10:41** · Now let's move it back. Next we will be doing  the shine. For that I will go and mesh the shine.

**10:50** · And maybe separate this section and leave other parts untouched. let's bind it to  this bone container and this one. This is our main moving bone, we will be working with this  guy I mean we move this one, but whatever we bind or constrain, we will go and put it  here. Okay, now let's adjust the weights.

**11:18** · Let's first move all points to the container  and give a little bit to the purple.

**11:27** · Add some more values to this  section. okay let's test it.

**11:34** · cool I think I like it. Yeah, now let's move  it in the middle and constrain this eyelid to that bone. Remember I was saying that  we are working with this bone when constraining So this is the case. We need to hit  match, to save this distance between those two bones, and after that we can specify  what values we want to link to this bone and how much. Cool, let's see, okay I like it, I like it. Maybe a little bit less a little bit more.

**12:16** · You get the idea. What we can do  more is to mesh this pupil and when we move to this side it could go and squash, like a ball  in a similar manner and also we could go and separate this iris, maybe add another  depth, it depends how big is your character eyes and how much time you have maybe you want  to experiment by yourself so it really depends.

**12:51** · okay I think I will leave you here, if  I did everything correctly and you are watching this premiere first time with me, you should be navigated to another stream.

**13:03** · Where I will be streaming another character  and doing the same rig, just with another character.

**13:11** · You can go and ask any questions and it will be one hour long, Cool meet you here thank you