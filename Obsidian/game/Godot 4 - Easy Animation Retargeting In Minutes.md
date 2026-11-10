---
title: "Godot 4 - Easy Animation Retargeting In Minutes"
source: "https://www.youtube.com/watch?v=zCvCHO6sk3Y"
author:
  - "[[Feles Machina]]"
published: 2023-09-21
created: 2026-11-08
description: "The workflow, start to finish, passing a Mixamo animation between models. I'll explain the concepts behind what you're doing so you can make your own universally compatible animations to pass between"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=zCvCHO6sk3Y)

The workflow, start to finish, passing a Mixamo animation between models. I'll explain the concepts behind what you're doing so you can make your own universally compatible animations to pass between your models.  
  
I take some liberties in the explanation, but my intent is to make it easier to understand, so you can troubleshoot issues that come up on your own, and can more easily identify where you may have gone wrong.  
  
Godot 4.1 Stable  
Blender 3.6.2

## Transcript

### Animation transfer logic

**0:00** · all right so there's been a lot of confusion over animations and transferring animations from one skeleton to another in Godot and I want to clarify that here a lot of people are thinking of it as I've got Model A from miximo or from wherever I've got model B from miximo or wherever maybe homemade and I want to transfer my animation data from Model A to model B and if you think

**0:22** · I'm at it that way it's just I need to move animation data from A to B that's the wrong way to think about it and it will make it harder for you to troubleshoot what's actually going on and solve these problems for yourself when things aren't working what's actually going on is Godot has its own skeleton structure and you're not trying to transfer the data from one to another what you're trying to do is make one skeleton Godot compatible and then you

**0:44** · want to make your other skeleton get dough compatible and when you do the animation data also becomes Godot compatible and then you're going to save that animation data separate from the model at that point that separated animation data can be used on any model and it doesn't care as long as that skeleton has been brought into Godot and been

**1:06** · mapped that animation data knows how to work with whatever skeleton it's attached to so that's the way you need to think about it let's uh dive into it and just we have something to work with I'm going to pull up the basic y bot with just a basic idle animation so we have something to work with I'm going to download download this as fbx but again we really need to bring this into blender and turn it to a gltf first I know there's plugins I know there's all that stuff but gltf is just going to work better period gltf or glv

### Preparing assets in Blender

**1:41** · an open blender delete all this file import fbx I'm going to grab my download idle fbx

**1:56** · I have it here if I have where to press play you can see it's animated I will just immediately file export as gltf and drop that in my downloads folder as well I'll just call him test idle export

**2:17** · for my next character I'm going to bring in a model that is not coming from miximo but was made in blender and given a skeleton that is miximo like simply it has the same bones which is the same standard bone secrecy in unity or unreal the most basic game engine bones but I'll bring that over as well exporting that as gltf uh Manny Quinn blank is

**2:41** · just fine I'll I'll export step okay so now in Godot I'm in a new project here I need to add those files I'm going to click change the view so I can see where I can drag and drop in those files we'll go to our downloads I grab my test title and my Manny Quinn glbs and drop them in

### Mapping skeletons in Godot

**2:58** · all right so now we're at that important step where I need to point its skeleton to Godot to make it a compatible skeleton that can be that where we can pull out its animation data and share it so first let's uh double click this model I will click on it skeleton and we need to map its bones so I'll make a new bone map I'll select that we'll pick a

**3:19** · humanoid for its profile and look at that this Maximo skeleton already knew what to do it already mapped every single joint these are all green this is fantastic so I'll just re-import and that one's done uh Manny Quinn again this is one that I've made and so we'll see what happens I'll double click here I will click on my skeleton I will make

**3:41** · a new bone map I'll click on that to edit it select a new humanoid and look at this we've run into a little bit of an issue some of these are red and some of these are green which might mean that they are all wrong which is very likely so clicking on this oh I can

**3:56** · see that the bones that it has are likely looking at my rig and not my actual bones so let's uh like for example this is my root if I click here I can see yeah we got all these control uh empties these would be from blender from from the rig but they would have nothing to do with the actual Bones the bones are up here sometimes these have different names you'll see them with death meaning a deform bone so what I need to go through here and do is remap all these bones in here because they're all Incorrect and I don't even have a

**4:27** · root bone so this one should be completely blank so I'm going to delete that I'll pause the video for a moment and what I'm going to do right now with you guys gone is I'm going to start with the hips I'm going to click on the hips and I'll point it to the actual deform bone hips not the uh control because those things aren't going to do anything so I'm going to have to map the hips and then I'll have to select the neck spine and the next spine going all the way up my neck

**4:53** · but I will pause the video so you guys don't have to watch me go through every single one of these but I'm about to do it for all the arms and for the sake of this video I probably won't do anything uh hands related so we'll just get that going so I will pause the video real quick I will take care of this and I'll come back in a moment all right finally went through every single bone here and now they are all properly mapped to where they're supposed to be if I had left any of these red they simply won't inherit the animations um that I will pass to it later on so for example I'm not doing the left and right hands so later once I pass this model uh new animations you'll notice

**5:26** · that his hands won't actually animate because I'm not bothering to map those bones right now all right let's uh so I'll reimport and we'll keep going okay so now what we got to do is we need to separate this nla data this animation data from the miximo model and make it its own file that can be used by other models as long as they have a compatible skeleton so in Godot again I'm going to go to that miximo model that has the

### Extracting animation data

**5:52** · idle animation I will open that as its own scene you can see this animation player Works cool cool he looks just great I will click this animation button here manage animations step one is to make this unique if you try to save it without it'll just give you an error so go ahead and make unique first and then we'll save this I'll name this Idol

**6:16** · animation I'll just name the title anim so you know this is an idle animation file it's own a Reds file resource file of just that animation data I've saved that now separate um in fact if I wanted I could call this Idol animation Point here so here's our chance to actually make this easier to to read and see so I'll save that again all right now close cool we don't need

### Applying animations to models

**6:39** · him anymore we've extracted the animation data so now on my destination my model B this guy I need to just give him that animation so this will be great if my animation if my file here I'll open a new thing um if he already had animations he'll have an animation player already and you'll just add the animation to that animation player but in the case of this guy he doesn't have an animation player so I'm going to add a new one yeah animation player and I will then click here animation

**7:11** · manage animations load library and you can see I've got this anim res file this resource file let's open that up and then I highly recommend whenever you do this to now make this unique for this character as well if you don't make it

**7:27** · unique that means if you have multiples of this character running around say these are bad guys they're all sharing that same that literal same animation file and so they'll be either some will run it and some won't or one will be the only one who actually has a laid claim on that animation file you don't want to do that you don't have to be tied to that animation file so you give them the animation with the animation file and then make it unique so they're not all fighting over that same file at runtime

**7:52** · anyway look you can see he immediately took a pose if I hit play look at that it's working using the animation just fine perfect so if I had more animations uh or I wanted to add to this animation library and like build out a full animation Library again I just go to uh this I would click animation manage animations I would load library and I'd pick whatever other animation files I had it will add another entry for them in here and I will make that unique and blam he now has it right

**8:24** · I can also strip all these back out and look he now has no animations again he just has a pose so cool stuff that's all it takes good luck everybody