---
title: "Godot 4 Multi Mesh Tutorial"
source: "https://www.youtube.com/watch?v=SIIshqX913s"
author:
  - "[[Gwizz]]"
published: 2026-06-10
created: 2026-07-26
description: "Quick tutorial on how to use Multi Mesh to reduce draw calls in Godot 4!Documentation:https://docs.godotengine.org/en/stable/classes/class_multimesh.html"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=SIIshqX913s)

Quick tutorial on how to use Multi Mesh to reduce draw calls in Godot 4!  
  
Documentation:  
https://docs.godotengine.org/en/stable/classes/class\_multimesh.html

## Transcript

**0:00** · Hello everyone. In this tutorial, I will be showing you how to use multi mesh in Godot 4. Multi mesh is a useful tool for when you have a lot of the same object in the scene, such as trees or rocks. It allows you to reduce what is known as a draw call, and this can significantly boost your performance. To get started, going to create a new multi mesh instance node.

**0:16** · Now, we could put the script on here.

**0:17** · However, I like to keep it separate. So, I'm going to create a new node 3D.

**0:22** · Let's just call it multi mesh. Now, let's add script.

**0:27** · Next, let's go to reference our multi mesh instance.

**0:30** · I'm also going to create a variable for our mesh instance count. So, export variable mesh count.

**0:38** · This will be int. I'm going to set it to 100 for now. Next, in our ready function, we'll initialize a new multi mesh.

**0:45** · Variable multi mesh gets multi mesh.new.

**0:51** · Now, we can set a few properties.

**0:53** · First thing I'm going to do is set the transform format.

**0:56** · Multi mesh.transform format.

**1:01** · Set this to be multi mesh.transform 3D, since we're working in 3D today.

**1:06** · Next, I'll set the multi mesh count.

**1:08** · Multi mesh.instance count. Set that to be our mesh count that we set earlier. Next, we need to load in our mesh that we're going to be using.

**1:17** · I'll be using a tree model that I created earlier.

**1:21** · Drag that in.

**1:23** · Multi mesh.

**1:25** · mesh will be assigned to my multi tree.

**1:28** · Next, we can do cool things such as randomizing the position. So, I'll do a for loop. For I in range, pass in our mesh count.

**1:39** · Set a variable T for our transform 3D.

**1:46** · T.origin will be a vector 3.

**1:54** · For the X, I'll do rand f range -50 to 50. For the Y, I'll do zero for now.

**2:05** · And then for the Z, I will also be doing a random range between -50 and 50.

**2:10** · Then we can assign this value to the multi-mesh by using multi-mesh .set instance transform, passing the instance index, and also our transform. Now, after we've set all the properties to our multi-mesh that we want to, we'll do multi-mesh instance . multi-mesh gets our multi-mesh. Now, you may have noticed that we don't have any materials on our trees yet.

**2:37** · We can fix this by going back over to our script. My tree model has two materials, one for the leaves and the other for the trunk. So, I'll go ahead and reference my leaf material and my trunk material. Then we can do multi-mesh .mesh .surface set material.

**2:55** · Set the first index zero to be my trunk.

**3:00** · And then do the exact same thing referencing index one for the leaves. Then we can reload that scene.

**3:13** · You can see we have materials on all of our trees. Now, let's say that we want to snap all of our trees down to a terrain. Well, we can achieve this by using a ray cast query. So, we'll do variable query.

**3:23** · Set this to be physics ray query parameters 3D .create.

**3:32** · Now, we need to pass in the position of our mesh. So, I'll be putting these into their own variable.

**3:38** · Variable X.

**3:41** · And I'll be doing variable Z the same thing.

**3:46** · X and Z.

**3:49** · Now, I can do vector 3 X and then 1,000 for our ray cast and Z.

**4:00** · Then we'll do the same exact thing in the opposite direction.

**4:04** · So, minus 1,000. This will give us plenty of range on our ray cast. Then we'll push our query into a result variable results gets get world 3D dot direct space state dot intersect ray query. And since we're using this to set our position, I'll be moving the T origin assignment to below the result.

**4:30** · And instead of zero I'll be doing results dot position dot Y. And in the event that our ray cast doesn't hit and we don't have a result, we'll first check if results then we will assign using the result. If not we will bounce back to our zero. And after reloading the scene, we'll see that we have all the trees connected to the ground where they're supposed to be. And because this is a multi mesh and we're running in a single draw call, 10,000 meshes loads in just fine and I have no frame stutters.

**5:01** · And here's 100,000. Anyways, guys, if you have any questions or comments, please leave them down below and don't forget to like and subscribe. Thank you.