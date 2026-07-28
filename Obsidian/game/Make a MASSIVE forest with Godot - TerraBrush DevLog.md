---
title: "Make a MASSIVE forest with Godot - TerraBrush DevLog"
source: "https://www.youtube.com/watch?v=iIBWgnprhYU"
author:
  - "[[斯皮莫特]]"
published: 2025-01-28
created: 2026-07-28
description: "In this devlog, I talk about how I improved the trees system in TerraBrush, my Terrain plugin for Godot.You can download the plugin here : https://github.com/spimort/TerraBrushWant to support me?"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=iIBWgnprhYU)

In this devlog, I talk about how I improved the trees system in TerraBrush, my Terrain plugin for Godot.  
  
You can download the plugin here : https://github.com/spimort/TerraBrush  
  
Want to support me?  
https://ko-fi.com/spimort  
  
#godot #devlog #tree

## Transcript

**0:00** · so in my last video I talked about how I improve the grass intera brush now that this is done I think it's time to talk about the trees the easiest way to paint trees is to take your scene and drag it into the object definition update the terrain and select the appropriate tool and you're good to go bye have a great

**0:19** · time all right I'm kidding obviously we can do more we can continue to paint the forest here but let's have a look at what's happening when you add more trees quickly we can see that the more trees you add the less frame you have don't get me wrong it's not a bad way of doing the trees here but it's not suitable for what I want to do a huge Forest at this rate I'm already below 60 FPS it

**0:41** · probably won't take long before my computer starts a fire to be honest I can't blame it the way it works is that one instance of this tree is placed everywhere on the map so obviously that takes a lot of resources for some use case that's perfect because I create the

**0:57** · exact same tree we have here and I add it to the terrain so let's say you have a script on this tree well this script will also be created this is good for something that is interactable or have some behavior in the game the problem we have right now is the amount of trees we're creating so what can we do well I

**1:15** · created a new strategy to place the trees and this is the oak tree multi Mees right at the start we can see that it looks a little bit different but look at the frames we have here it's way different we have a lot of frames available and we can paint everywhere in

**1:30** · the terrain we have way more frames than before and we are really far from hitting that 60 FPS Mark okay but how does it work well remember the two we had before I took the same one and I created four version of it obviously the first one is the original one the second one has less vertices the next one has

**1:49** · even less vertices okay it doesn't look that good but this is mostly for the sake of the demonstration here and while the last one is just an image on the quad mesh billboard it of course so so let's see how we can use these with the terrain the first thing to do is to set up the LOD list in the terrain basically this defines when to display which mesh for example here the first version of the tree the most detailed one will be displayed on the first 10 m the second

**2:15** · version of the tree will be displayed on the first 50 m for the next one is going to be displayed on the first 200 M and the last one on the first 1,000 M cool so the last thing to do is to set up each mesh for each LOD level in the example here I created four LOD levels

**2:33** · so I should set four meshes so just like that we have a huge terrain with a lot of trees obviously the performance you're going to get will depend on what you configure on your terrain if you use a mesh with more details more vertices or of course the L list you're going to configure this demo was a quick example of what you can do it was only created using the decimate function of blender much better meeses could be used here to create even better results anyways

**3:00** · that's all I had to show for this video I hope you enjoyed it and we're going to see each other on the next one \[Music\]