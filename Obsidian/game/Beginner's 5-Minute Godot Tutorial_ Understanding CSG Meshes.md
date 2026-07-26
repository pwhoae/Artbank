---
title: "Beginner's 5-Minute Godot Tutorial: Understanding CSG Meshes"
source: "https://www.youtube.com/watch?v=C1RDrE6OOJw"
author:
  - "[[Ralf Bierig]]"
published: 2022-12-11
created: 2026-07-26
description: "This is the first video of a new series of 5-minute TUTORIALS on important Godot concepts and practical skills. They all focus on the most important stuff only.Today we talk about CSG Meshes – I  co"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=C1RDrE6OOJw)

This is the first video of a new series of 5-minute TUTORIALS on important Godot concepts and practical skills. They all focus on the most important stuff only.  
  
Today we talk about CSG Meshes – I cover 3 things:  
1) What are CSGs, and why should we care?  
2) What kind of CSG Meshes exist and what are CSG primitives?  
3) How do we use them (e.g., in a small demo scene) and what are they good for?  
  
Contents of this video:  
\==================  
00:00 - Intro  
00:12 - Overview  
00:34 - What are CSGs?  
01:09 - CSG Analogy in Blender  
01:41 - CSG Primitives  
02:56 - Using CSGs in a Scene  
05:18 - Outro  
  
Like, subscribe, and hit that bell to let me know what you think and stay in contact!  
  
  
Music:  
  
Dance, Don't Delay by Twin Musicom is licensed under a Creative Commons Attribution 4.0 license. https://creativecommons.org/licenses/by/4.0/  
  
Source: http://www.twinmusicom.org/song/303/dance-dont-delay  
  
Artist: http://www.twinmusicom.org

## Transcript

### Intro

**0:00** · this is the first video of a new series of five minute tutorials on important godo Concepts and practical skills they will be focusing on the most important stuff only today we talk about CSG measures I want to cover three things first what are csgs and why should we care second what kind of CSG meshes

### Overview

**0:24** · exist and what are CSG Primitives and third how do we use them for example in a small demo scene and what are they good for let's Jump Right In so what are csgs CSG stands for constructive solid geometry and that is basically a way to add complex to create complex structure out of simple one I'm adding here a CSG box

### What are CSGs?

**0:47** · and I have in the inspector here with height and depth I have a way to add and use Collision that's nice and I have an operation Union intersection or subtraction and that is basically what this is all about a easy way to create complex structure out of simple one because I can apply this three operation to any CSG shape there is an analogy in

### CSG Analogy in Blender

**1:10** · blender where I have Boolean modifiers here I have two cubes and to one of those cubes I added the Boolean modifier and here again I have intersect Union indifference so I create a difference to cube number two which is this one and when I remove this then I can see a cutout in Cube number one so I create a complex structure out of a simple one and that is basically godo's answer to

**1:40** · that feature so what kind of CSG shapes can I create well we have seen the Box already and when I create a new node I can actually see there are two types the CSC primitive we have six of them and we have a CSG combined we will talk about the combiner in a minute let's talk about The Primitives I created a new scene here with the six

### CSG Primitives

**2:01** · different types of Primitives when I click on the cube here I can see here three orange dots and I click on them and I move them I can change its shape and I have three and here with the cylinder I have two thickness and height then I have the polygon that has four by default so I could make something like a ramp

**2:22** · and I can also add more polygons I can make them five or six of them and then change the shape accordingly here I just have one for the sphere and for the Taurus Taurus I have two and then there is the CSG mesh which is kind of hiding in between right it has no shape because I'm I have to go to the inspector and pick a mesh here

**2:47** · just like with the mesh instance I have to kind of Select it here I can have a plane for example and these are the six Primitives for CSG meshes so let's build a small room with the CSG shapes that we have learned about so here I have a CSG box again that is a ROM with five by

### Using CSGs in a Scene

**3:06** · five meters 2.4 meters high like a typical room height and I want to cut out an empty space I have a separate CSG box again these are Primitives CSG box is one of those Primitives and I want to kind of sink in this empty

**3:22** · space box that are called empty space and I expect that to be cut out but nothing happens even though I have picked subtraction I want to subtract this empty space from the room but it doesn't do anything it doesn't matter what I pick here so why is that well you remember when we looked at this

**3:42** · notes we can see The Primitives and then we also have this CSG combiner and the CSG combiners function is to basically tell godo that we want to perform a Boolean operation here so I have a CSG combiner and I move this in the CSG combiner I move this into the CSG combiner and

**4:04** · now there are children of the CSG combiner and then I can see that the operation is being performed and I just move that down a little bit and now I have the room cut out I can keep going so I add another box and I want to kind of use that to make two doors here I take subtraction and then I have two tools because I can duplicate that and make

**4:35** · more and so you can see here that I can use this principle very quickly to make larger levels this is great for prototyping most importantly you can easily

**4:54** · change your level around these doors do not have to stay they can be moved they are very flexible they can shift something and I can try that out in my game and if I like it I can go to blender and make it more uh can make it prettier and then create a proper level but this one I can create in minutes and that is the real strength of this method I hope you liked the video please leave a comment subscribe and hit that notification Bell and I see you soon