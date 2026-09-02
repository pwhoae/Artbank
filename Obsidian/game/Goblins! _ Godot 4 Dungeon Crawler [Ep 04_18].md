---
title: "Goblins! | Godot 4 Dungeon Crawler [Ep 04/18]"
source: "https://www.youtube.com/watch?v=8vKzfsgLOIk"
author:
  - "[[The GameDev Tavern]]"
published: 2026-07-07
created: 2026-09-02
description: "Learn how to create a 3d dungeon crawler from scratch in Godot!In this episode, we create our first enemy, the infamous Goblin.Play the final game here: https://gadgaming.itch.io/goblinsdencourse"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=8vKzfsgLOIk)

Learn how to create a 3d dungeon crawler from scratch in Godot!  
  
In this episode, we create our first enemy, the infamous Goblin.  
  
Play the final game here: https://gadgaming.itch.io/goblinsdencourse  
  
Having an issue? Download the project for this episode: https://github.com/nicolasbize/goblins-den-course/archive/refs/tags/v0.4.zip  
  
0:00 Introduction  
1:35 Creating the enemy scene  
4:25 Creating / applying the goblin skin  
11:20 Fixing UV issue and character scale  
16:35 Sword mesh  
22:24 Sword texture  
24:59 UV unwrapping the sword  
33:25 Bringing the sword into Godot  
38:00 Goblin sword challenge  
40:13 Fixing run animation  
42:55 Weapons clipping through the walls  
46:10 Axe mesh  
52:54 Painting the axe within Blender  
1:02:40 Conclusion  
  
Enjoy your stay at the tavern!  
  
#godot #gamedevelopment #gamedev #tutorial #pixelart #dungeon #fps

## Transcript

### Introduction

**0:05** · Well, hey there traveler and welcome back to the GameDev Tavern. It's been a while. Come on in and warm yourself by the fire. Grab a nice cold drink as we create fun little games together. My name is Nicholas and this is the fourth episode in the tutorial series where we create a 3D dungeon crawler from scratch in GDAU.

**0:22** · And welcome back. So, in this episode, we are going to create our very first enemy and we're going to be placing them into our world. And then I think we'll have enough time to start focusing on the equipment. So we'll probably have a shield and a sword and that will be need to be pretty dynamic um as this is going to be a core feature for our game. So we'll spend a little bit of time just talking about that before building it.

**0:42** · Now as I mentioned in the first episode, rather than creating a common class for both the player and the enemy uh some form of common class that would serve both um both of those child classes, I'm actually going to be creating completely independent classes. you'll see that some of the node structure might look the same, but then at the end of the day, you'll see that there's going to be enough subtle differences that, you know, making an inheritance model is just going to be a little bit more painful than um than it should be.

**1:04** · And so, we're going to be using a composition model, meaning that we're going to be creating uh nodes that will represent uh specific shared attributes and you know, like the health and the inventory, and then we'll instantiate those nodes for both the player and for the enemies. And so all of the common uh logic will be part of those nodes. And uh but that way there won't be like any shared code between the player and the enemy um in in the in the base class itself. So let's go ahead and start by creating a brand new scene for our enemies.

### Creating the enemy scene

**1:35** · I'm going to create an other node and I'm going to pick character body 3D. Let's go ahead and rename this.

**1:43** · Uh I'm going to rename this to uh guess we could do enemy maybe goblin.

**1:50** · And let's uh start by saving. Let's go into scenes, characters. Uh let's create another folder called enemies. And let's save this as goblin.tsn.

**2:01** · Oh, it's going to complain because it doesn't have a collision shape. Let's go ahead and add this. A collision shape 3D. It's going to complain because it doesn't have a shape. Let's go ahead and add a capsule shape. And inside the properties, let's make this uh let's let's keep the same proportions what we did for the player. So 1.7.

**2:19** · And then in the transform, you want to move the Y position by 1.7 divided by two. And this should be centered here.

**2:28** · Um, all right, this looks good. Let's go ahead and drag our character uh mesh into our uh player here, and it should be facing the right way. The only problem here is that, as you can see, it doesn't have the right skin. And we're going to change this right away. Um so you can right click here editable children and if you click on character you will see that um we have the ability to change the material. So by default it has uh the default material that we've been using in the surface here. We cannot change this. This is part of the mesh but we can actually override it.

**3:00** · And this is exactly what we're going to be doing here. We'll override with a new standard material 3D. And we're going to apply a new texture to that material.

**3:08** · So, um, we can actually just place this enemy right now in the world and see what it looks like cuz I don't think we've been able to do this since, um, since we started. So, let's go into our world here. And I'm going to remove this player. Remember, this is the one that um, you know, that we we created just to look at um, what it looked like. And let's instantiate an enemy. I'm goingick click on world, control shift A, and let's find the goblin scene. And let's bring the goblin uh, maybe here.

**3:36** · And we can rotate it a little bit. So it, you know, of course there's no logic attached to it, so it shouldn't do anything except play the uh idle animation. Oh, actually think if you go back to goblin, go into animation player, let's make sure that the idle animation is played by default here.

**3:52** · Okay. And you can press F5 to start the game. And we should be able to see our enemy using the wrong skin. Um, and in its idol animation. You can see here the shadows look okay. And the skin looks okay. I definitely think that the the characters are too big. We're probably going to change this uh down the line.

**4:11** · But for now, I think um we are ready to go into a sprite or whatever um image editor you're using and we're going to start by taking the player skin. We're just going to create a copy of it and we'll just uh change the colors on the pixels. So, let's go into a sprite right now.

### Creating / applying the goblin skin

**4:28** · All right. So, into a sprite, let's go ahead and make a copy of this uh skin.

**4:33** · I'm going to do file, save as, and I'm going to call this skin-goblin.png.

**4:38** · And okay. And then I'm going to make sure that I've loaded up my palette.

**4:45** · And uh let's start by the swatch here.

**4:48** · So this is meant to be the skin color.

**4:51** · So let's go ahead and make some changes for that. Um I'm going to start by taking this green here, and I'm going to press G to replace the color. And I'm going to uncheck continue. So it replaces all the colors. And we'll make some changes down the line, but at least for now, we'll have some continuity. Uh we'll just swap the colors. Let me use the various shades of green. This one, this one, and this one. And then this is supposed to be the uh armor. Uh I think the goblin might want to have something made out of leather, maybe.

**5:20** · So we'll just use some brown shades of brown here. So let me just use this this and actually let me use the dark brown here and then come down here and we'll use that for highlights. All right. Um okay.

**5:39** · So let's make a couple of changes here so that it looks a little bit different from the uh player. So start by taking this dark green here B. And I'm actually going to go uh below here. And then I'm going to take this lighter green. And then go above. This will just be the highlight of the head. But the goblin's not going to have any hair. And then let me take this uh do I have like a dark I don't have a dark black. Let me \[clears throat\] change this actually for the eyes. I'd rather have like a dark black. And I'm going to set uh let me set maybe \[snorts\] here this.

**6:13** · And then let me replace the various shades of brown here. So, we'll have this one, this one, and this one. There you go.

**6:27** · All right. Taking the black here. I'm going to uh create the eyes. So, let's do maybe one, two, and maybe a little bit of highlights at the bottom here.

**6:38** · And then here, let's also remove all the hair. We'll just do some uh shade towards the bottom here. And let me use this lighter green to do some highlights above the head here.

**6:53** · Maybe something like this. And me fill this up here.

**6:59** · Okay. And then let's go ahead and have like some form of ear. And here. And then yeah, maybe another portion of the ear. Okay. We'll come back here. We'll see how it looks. Um, okay. The legs actually would love for them to just be mostly skin. So, I'm going to zoom in here. Here, press U.

**7:19** · And let's go ahead and have this dark.

**7:22** · Uh yeah, let's let's do something like this. And then we'll just um just use some of the highlights here.

**7:30** · So, like the flesh is going to be a little bit uh non-uniform. Add some couple of highlights. This is again like this is meant to really show a lot of of pixel art. That might be a little bit too much. Actually, I'm going just remove this. Okay. And what else can we do? So, let's see.

**7:49** · Let's uh h I think this is Yeah, this should be okay. Let's do the same on the um on the other leg here. So, you oops.

**8:03** · Let's create a shape here. And then let's fill this in green. And maybe again we'll just have like a couple of uh highlights here.

**8:15** · All right, we'll see how this looks.

**8:17** · This should be fine. And then here, I guess I would love for this to be kind of a mixture of skin. This kind of looks like a checkboard. Um, so let's tweak this a little bit. I'm going to reuse this green. And I'm going to press U. And let's create something like this. I actually don't think I actually think we only use like this portion of the texture. We'll have to see. We'll have to play around with it and see how it looks for now. I'm just going to go pretty fast and um yeah, just do a little bit of random uh things here and there. We'll see how it looks like. Maybe some highlights on the side.

**8:50** · Maybe here to the towards the top. And uh yeah, let's uh let's see. And then here again, I'd love to have some form of leather. So maybe I'll uh yeah, I guess we we could try this and see. Let's do on the other side here.

**9:05** · You let's create is uh skin content. And let's have a couple of highlights here.

**9:13** · All right. And I think this is should be good enough to try. So let's go ahead and save. And then let's hop over back into GDO.

**9:21** · All right. So into GDO, make sure that you are selecting the goblin. And then you want to select the uh mesh here for the character. And you'll see here that we cannot actually modify the surface here. Um, one way we could do is when you double click on the mesh here.

**9:35** · There's if you click on materials, you can actually uh use a different material, use it externally, but uh we actually going to not do this. Like by default, it's going to be the skin of the character of the player. And then we're going to override the texture here. We can do this by going to surface material override and then click on standard material 3D. Um, now a couple of things you want to do. First of all, you want to um click on this arrow here and you want to uh make unique. Uh this may not be enabled by default for you.

**10:05** · So if not, just go ahead and and check it. This will allow you to actually make some changes as part of the material override. So the first thing we'll want to do is change the texture. So into the albido property, go ahead and drag the goblin skin that we have just created.

**10:21** · And it should be h it doesn't look half bad. So, um it's uh yeah, it will \[snorts\] actually look a little bit crisper. The one thing you need to do if you scroll down to sampling, you want to change the filter from linear map to nearest. And now you have a crisp uh crisper uh enemy. Okay.

**10:42** · Uh let's see. Oh, looks like we have a little bit of an issue here with the UV wrapping. So, we're going to go into uh Blender in just a bit and check it out.

**10:51** · All right. How's that look? Um, I mean, I think it looks okay. There's like sufficient green and brown. Let's go ahead and fix this UV wrapping. So, this happens when we've um taken an entire face and brought it down to a single pixel, but the pixel is actually uh between two colors. So, it's it's kind of hesitating right now between two colors. I actually think we should see a problem with for the for the player as well. Uh, let's go into Blender. We can actually fix this and then we'll reimpport the mesh.

### Fixing UV issue and character scale

**11:21** · Um, all right. So, into Blender here, uh, I'm going to, uh, select my character mesh, press tab, and three to go into face select, and select this face here. And let's see what's going on here. Where where is it? Uh, oh, right here. This is the problem. So, you can see it's between two colors. So, I guess when we're playing with the player, the two colors are close enough.

**11:47** · You cannot really see it. going to do is press G to grab and then just bring it out to where you want it to be. We want it to be in the center of the square.

**11:54** · So, this should be much better. Let's go ahead and tab out and then select the armature shift select the character uh control S to save file export glTF and then go back into your uh meshes characters and select your character.gv.

**12:13** · Okay. And then you can go back into GDAU.

**12:17** · All right. back into GDAU. Uh we can see here that the mesh has automatically been reimpported. If that's not the case for you, you can just go ahead and find your mesh, the character.gl, and then just click on reimpport here. Um, all right. So, now that we've applied the mesh, I actually not a huge fan of the feet, uh, again, feel free to make some changes on your end. I think the armor looks okay. And press F5 to start. And we should now be able to see our enemy.

**12:43** · And, uh, yeah, looks like an enemy so far.

**12:46** · um good enough kind of pixel art. So, \[snorts\] I think this uh this should be fine to move forward. Again, I'm actually excited to see what you guys have created so far. So, don't hesitate to put that in the comments below and I'd love to kind of see how far you've gone. All right, so now let's go ahead and talk a little bit about the equipment.

**13:04** · One thing I did notice when we were playing the game is that the um enemy doesn't animate. So, make sure to go into animation player and pick the idle animation. and we're going to set that as uh to autoplay unload. Now, if you play the game again, we should now see the uh character animate here. All right. So, for the rest of this episode, we're actually going to start laying the foundation for our equipment system, which will serve as the basis for our um combat mechanics.

**13:30** · And we're going to be creating our equipment system in a way that will allow us to create as many weapons and shields as we want in the most flexible matter. Um and to illustrate this, we'll start by maybe just focusing on weapons. you'll see that, you know, creating shields is exactly the same way. So, the best I we're probably going to start with the art again this time. So, we're going to hop back into Blender. We're going to create a sword and an axe. I'm also going to probably scale these characters down a little bit so it looks a little bit better. And then we'll start by placing these equipments um so we can make sure that things look okay.

**14:02** · All right, so let's hop over into Blender.

**14:07** · All right, so back into Blender. The first thing I'm going to do is just uh scale these characters down a little bit. So for that I'm just going to uh select the mesh and then press tab to go into into edit mode and then S to scale down. Uh you can see here it kind of distorts it um alongside its center which is not really what we want. If you go here to the top you can select the uh pivot point. We want to pick the 3D cursor since it's going to bring everything towards the bottom. Let's go ahead and scale this down. Actually let me go here. So let's see. This is 2 m.

**14:34** · We wanted it to be about 170 m high. So let's go ahead and scale it down to roughly this much here. Uh the head should be around here. \[snorts\] And then uh tab out of edit mode. Let's go ahead and select the skeleton. Tab to go into edit mode. Select all and scale it down as well. So it kind of maps to the new uh shape here. All right. And this should work. Let's go ahead and export our mesh and our skeleton. So, back into object mode. I'm going to select my skeleton, select my character, control S to save, file, export glTF.

**15:10** · And I think everything should be Yeah, everything should already be there. Uh, character. And then let's just go back into GDO real quick just to make sure that everything's okay.

**15:20** · All right. So, into GDO. It's kind of hard to see, but the player the character should have been a little bit lower down. because the the camera is uh you know still at the same spot. You should now see the enemies. Okay, this looks a little bit better, right? Like those are uh more to the size that we want. Okay, great. So now let's hop over into Blender. We're going to create a new um file for our uh sword.

**15:40** · And one, so similarly to how we did different skins for the enemies and the characters, you could also do different skins for swords. And for that, basically, you would use a different texture for uh various swords. Um, I don't know if we'll get too much into it because again, the objective of this tutorial isn't to create like a variety of of objects, but hopefully you can figure out how to do this on your end if you wanted to.

**16:09** · So on on my end, I'm probably going to reuse the same global texture file that we had created initially and that we used for the walls. We're just going to reuse that for the various weapons that we're going to create in the game. Um, but just know that like, you know, this just makes it a little bit more painful if you wanted to swap one texture for another for just an object. So for now, let's go back to Blender and I'm going to uh open up the same file that we had used to create our walls and reuse the same texture file.

### Sword mesh

**16:35** · All right. Right. So, in Blender, I'm going to go ahead and start a brand new file. And we're going to create a simple sword here. So, I'm going to press A on my keyboard to select all of my existing objects. X to delete. And then I'm going to zoom in here. And let's go ahead and create a brand new one. Shift A. Let's start with um see what would be best for a sword. I think I used a cylinder if I remember correctly. And I'm going to take the number of sides. I'm going to bring this down to um 10. I think 10 \[clears throat\] looks okay. Let's see this. Oh, maybe let's do eight actually. There you go.

**17:08** · That is really low poly. All right. Tab to go into edit mode and then S to scale down.

**17:14** · Let's bring it down to about here. Then let's rotate it alongside the X-axis.

**17:19** · So, RX 90°.

**17:22** · Let's zoom in here a little bit. And let's squash it vertically. So, S Z. And bring it to about here. Yeah, something like this. That's going to be the shape of the uh blade. So, I'm going to press three to select this face. Gy, let's bring it to about here.

**17:41** · How does that look? Looks okay. And then uh E to extrude again. Let's bring it to about here. S to scale. Zero to bring it to a single point. Let's select all the vertices here. Or actually, press A to select all the vertices. M to merge by distance. And let's set this to 0.1. Oh, too much. 0.01. 01. There we go. So, we removed all the vertices here that were just merged. All right. So, this is the first part of our blade. I don't actually think we need this one here.

**18:11** · So, I'm going to delete this face. And let's move on to the next part. So, A to select this shape. G Y. Let's bring it over there. Then, let's create um the I don't know what that part is called. I guess the the part above the handle. So, shift A to create a new shape. Let's create a cube. is to scale it down something like this. Scale it down on the Z axis like this. Uh let's scale it up on the X axis something like this.

**18:41** · Ctrl R to create a loop cut. Increase the number of uh number using the mouse wheel. Uh select and then right click and then SX to bring this to about here.

**18:51** · I think it should be fine. And then let's go ahead and select this edge and shift select this edge. GY. Let's bring this up a little bit. And then maybe we scale Z0. How does that look?

**19:08** · Yeah, that's should be fine. And then select this edge. And select this edge.

**19:12** · And let's do GY. Bring it up a little bit. And maybe SX to bring it inwards a little bit. All right. The more detail we provide, the less blocky it will feel. Just going to select this face and then just bring it a little bit closer towards center here. All right. So, that should be good enough. I'm going to um press L to select this selection here.

**19:35** · Gy. Let's bring it up to about here.

**19:40** · How's that look? Yeah. And let's create the handle. So, shift A. And for the handle, I'm also going to use a cylinder. Uh I think eight vertices should be fine. Let's um rotate it.

**19:52** · Oops. Rotate it on the X- axis by 90 degrees. Scale it down and to about yeah something like this. 3D. Select this face. Gy. Let's bring this uh to about here to do the size of the handle.

**20:06** · It might be too big. Let's bring it back a little bit. And then let's uh double A to unselect everything. L to select this one. L to select this one. G Y let's bring it uh towards here. Okay.

**20:20** · Let's select this face. and E to extrude.

**20:24** · Go here. S to scale. About here. E to extrude. And there we go. All right.

**20:30** · This is going to be our sword. Let's see. How are the proportions? Uh handle feels big compared to the blade. So maybe it's a short sword. But actually, let me fix that real quick. So I'm going to press uh L to select this face. GZ.

**20:43** · Uh sorry, GY.

**20:45** · Oh, I also have this face selected.

**20:47** · Double A L to select this face. Gy.

**20:50** · Let's bring it to about here. And I'm going to select this face here. Gy. I'm going to bring it back a little bit. And then double A L to select. Gy to about here. I think this handle will be better here. Then two to go into uh edge mode. Alt to click on this edge here. Gy to bring this inside the sword.

**21:14** · All right. How does this look? Oops.

**21:21** · Not too bad. Things should be okay. Uh handle still feels a little bit big. I don't know. Well, I'm actually excited to see what you guys come up with. So, don't hesitate to show me. Uh maybe I bring this face back a little bit like this. And then maybe the feel like the sword isn't long enough.

**21:40** · So, going to vertex mode. I'm going to select these vertices. Shift select these vertices. and then gy and something like this. All right, how does this look? All right, that looks good enough. Let's uh go back into edit mode.

**21:55** · A to select everything. Gy. And we're going to bring this here. So, think of this is where the hand of the characters is going to be. All right, I think this is good enough for us to get started.

**22:05** · I'm going to press Ctrl S to save. And I'm going to save this inside my Blender folder. I'm going to call this gearb blender. We'll we'll put all of our gears in here. So, um, we'll put the swords and the shields. All right, let's hop over into, uh, a sprite, and then we're going to reuse our texture file and just, uh, create some texture that we can use for this.

### Sword texture

**22:26** · All right, so in, uh, let's see, a sprite or whatever image editor, I'm going to be reusing uh, this texture here. Maybe I'm going to use uh, so if we have like other types of walls, maybe I'll I'll have them here. Maybe I'll use these two here. Uh so I'm going to sect the white color to start with and then let's uh create a big long uh yeah something like this. This is always where I get I get quickly lost in terms of what to do.

**22:57** · And then maybe we create some form of shade. So I'm going to start with this blue here B. And something like this.

**23:08** · Okay. And then let's take the next blue here.

**23:13** · And let's go up a little bit.

**23:17** · Okay, let's take uh what's the next one?

**23:20** · I think this one.

**23:29** · And then let's take the last one here.

**23:35** · All right. The idea is just to kind of show uh that there is some form of shade over time. So, I'm going to be uh doing a little bit of um a little bit of bayonmetrics uh manually. So, this just allows to almost fake different types of colors without using a different palette. I think it really meets the uh the retro style. All right, I think this should be good enough. Let's see what this looks like for the blade.

**24:05** · Let me just create uh something for the handle. So, for the handle, maybe we're just going to have it's going to be um some form of maybe some form of checkerboard to kind of see the stripe, the leather stripes. So, let me go here and I'll just create maybe a 4x4 to select.

**24:32** · Uh yeah, this should be fine. Okay, let me take this blue here. And then I'm going to start doing something like this. Maybe the dark brown.

**24:42** · Is this a dark brown, too? Yeah, let me use this one instead.

**24:47** · And maybe the lighter brown to finish it off.

**24:54** · All right. And this is going to be it.

**24:55** · So, I'm going to save and then I'm going to go back into Blender.

### UV unwrapping the sword

**25:00** · And uh let's uh let's load that material. So, I'm going to go into material. Again, we're going to use the default material that came with the scene. We just need to set it up properly. So, we've we've done this a couple of times. So, hopefully, you know, this is becoming more and more familiar with you. Uh, shift A to create a new image texture node and open the um texture which we just created, the tension texture. Connect the color channels. Set the interpolation to closest. Uh, and move back into the 3D viewport.

**25:30** · Open up a brand new window on the side. By the way, you could do AUV editing. By the way, I I kind of like to open my own and to do my own custom setup, but any Blender uh uh expert will tell me that's probably the not the right thing to do. And then I'm going to go into UV editor here. Uh and I'm going to press Z on my keyboard, material preview, go into tab mode, and let's go ahead and start painting. So, I'm going to look it from above and three to go into face select mode. I'm just going to select these and press U.

**26:00** · And this time I'm going to say I'm going to set project from view and zoom in here. You can see that it actually creates the UV unwrap exactly the way you're seeing it on the screen. Um so this kind of maps the shape that we have here. So we're just going to try to bring it close to here and see if we can map the various uh vertices. So S to scale down, G to grab.

**26:22** · Uh let's make sure you have UV around the pixels corner. And then let's go ahead and fix the vert vertices. I'm going to take uh so A to select. Let's take this one. G to grab. I guess yeah, I guess it's okay to, you know, shouldn't take too long.

**26:42** · Let's take these and bring it here.

**26:52** · All right. If there's a faster way to do this, I'd actually be very curious to see. Okay. How does that look?

**26:59** · That doesn't look too bad. It does look like the pixels are not square. So, we can actually fix that pretty easily if I select these here. And I'm going to take this and I'm going to bring this down.

**27:09** · And that should increase the size of the pixels until they become square. All right. How does that look? I think this looks a little bit better. Okay, great.

**27:17** · And that's going to be it for the blade.

**27:18** · We just need to do the other side. So the other side we could do a mirror modifier or um maybe just go through the exercise of doing it again just to become comfortable with the aspect of UV wrapping. So just going to select all my uh shapes here and U project from view.

**27:35** · A to select R 180 to go on the other side. G to grab. Let's go over there. S to scale down.

**27:43** · And I'm just going to Oops. I think I scaled it down too much. Let's see here.

**27:47** · and G to grab. And let me just realign each of these here. So this one goes here.

**27:57** · I think if you scale it down too much, the vertices blend together. So if you're trying to get something a little bit more precise, then it can be a little bit painful. We got these G to bring them down.

**28:09** · All right. And let's bring this one here.

**28:20** · All right. And how does this look?

**28:24** · Okay. I think I think it should be okay.

**28:29** · Yeah, if uh any any Blender expert here would let me know uh what I can do better here, that would be fantastic.

**28:35** · All right, we'll do the same thing for the handle here. I'm going to go and look from above. Select all of these um faces. view and let me do a cube projection this time.

**28:47** · No, never mind. Let me do a project from view. It'll be easier. A to A to select, G to grab. And you see when I grabbed and moved, it actually uh merged some of the vertices together. So, uh let me start again. U project from view. And I'm going to scale this up a little bit and then bring it to my handle. And then I'll just do some manual. Uh so s z uh sorry y there we go and let me map each of these vertex here. G to grab G to grab.

**29:30** · All right. How does that look? \[snorts\] Looks good enough. The only problem here is that the vertices here are not the same size as these ones. But you know what? It should be fine. Uh, let me go on the other side here and do the same with these. U project from view. Where are they? Right here. I'm going to scale it up. G to bring it up.

**29:49** · Scale it. Scale it down on the Y axis.

**29:52** · And G. And let me realign each of these.

**30:12** · All right. So, hopefully you can follow along on your end. I mean, this is pretty strivial trivial pixel art. I you know, if you any anyone who's actually good at pixel art would probably uh go a lot faster. Uh, one thing I do see here is that the shadows and the highlights are inverted. So, I'm just going to select um the ones I just did, these ones. A to select are 180. Just going to rotate them completely. And that should align the highlights here. So, yeah, the highlights are towards the top. And then the the darker part is towards the bottom. Okay, this should be good enough. Let's go ahead and and select everything.

**30:45** · L to select this shape.

**30:48** · U to unwrap. Uh doesn't really matter.

**30:51** · Cube projection. We're just going to bring it down to zero. So, A to select everything. S0. And let's bring this to see what color we're going to do the handle. Hey, a dark blue like this.

**31:04** · How's that look? Almost looks uh too light. So maybe uh maybe I'll just do these faces and bring them towards a different shade of blue like this. And maybe these ones to a lighter shade of blue.

**31:23** · Yeah, something like this. All right, let's do the handle here. I'm going to press um double A to select to unselect everything. And then three to go into face mode. Altclick on one of these edges here. You cube projection as0. And let's grab this and make it some form of Yeah, I think this green, this red should work. And then let's do the rest of the handle. Uh maybe a darker like this brown here. So double A to select everything. Three to go to face mode.

**31:57** · Alt select this. Shift select this one.

**31:59** · U cube projection. A S0. G to grab.

**32:04** · Bring it to this brownish here.

**32:08** · How does that look? All right. I think that looks good enough for me. So I'm going to save. H not not a big fan of that red actually. Uh so let me bring this to black. How does that look? Yeah, it's a little bit better. Okay, good enough.

**32:28** · All right, so let's go ahead and save this and I'm going to export it and we'll be able to use it inside uh GDOT.

**32:34** · So, file, export, glTF. Um, this may have reset all of the properties here, so make sure we don't need the animation. Uh, mesh, apply modifiers, include all the selected objects. And we probably want to give it a name, actually. So, let me rename this to sword and go back into the export menu.

**32:54** · And uh did it retain anything? Nope. So, data uh mesh, apply modifiers, and let's call this \[sighs\] uh we need to go into assets, meshes.

**33:08** · Let's create a new folder. Let's call this weapons. And inside weapons, I'm going to call this short sword.

**33:17** · All right. And now we can go back into GDO and we'll uh we'll see how we can bring this alongside the existing character meshes.

### Bringing the sword into Godot

**33:26** · All right, so back into GDAU, we will want to instantiate our weapon. And the way we want to do this is want to make sure that it always sticks to the hand of the characters. And so there's actually a handy node as part of GDAU called bone attachment 3D which makes sure that uh once specified the bone, it will always follow the transform of that bone altogether. For that you need to make sure that the uh the pack scene of the character you have turned on the editable children so that you have access to the actual skeleton and to the armature. Go ahead and click in skeleton. This needs to be a child of skeleton.

**33:57** · So control A and add the bone attachment 3D. And it's going to complain that we have not picked a bone.

**34:03** · So just go into bone name and we're going to pick the right hand. And as you can see here, the node follows the transform of that bone, which is going to be super handy for us to make sure that the sword stays in hand and proper at its proper place for all of our animations. Um, all right. So, down the line, I'm going to be uh adding dynamically, we're going to be adding dynamically weapons to this bone attachment 3D. And if I was to attach it right now, just directly to this node.

**34:31** · So, let me find my sword and just drag it into the bone attachment. So you'll see that the rotation and wow the scale is actually super big. I should have probably in Blender I should have probably kept um some form of reference here. Um but you can see here if I start rotating things around every time I'm going to instantiate the the sword dynamically in the code and add it to the player. I would have to remember the rotation. It's just a little bit of a pain. So rather than do this, we're going to have an intermediary node. Uh let's create just a node 3D. It's just going to be a placeholder.

**35:02** · Uh, let me call this actually let's call this weapon placeholder. And we'll make the short sword a child of the weapon placeholder. So this, you know, we're going to delete at some point. We'll just add it dynamically. But for now, we just want to make sure that by rotating the weapon placeholder properly, then the location of any object we put as as part of a child actually fits the the style here. Um, but yeah, the sword is just way too big. Let me hop over into Blender real quick and make this quick modification in terms of scale.

**35:32** · So, back into Blender. I'm going to press tab to go into edit mode. A to scale. S to scale it down. Let's bring it down to about here. Yeah, this is 2 mters by 2 meters. So, it's definitely definitely too big. And then gy. Let me bring it to about the middle here. Ctrl S to save file. Export glTF. Pick your sword and go back into uh GDAU. All right. It should automatically reimpport it. But if not, as you know, you can just double click here and click on reimpport and it should ensure that the size is not correct. I think the size is going to be okay. It might be actually thin. Uhhuh.

**36:06** · Let's see. Let's see it in action. So, I'm going to rotate that weapon placeholder. Uh maybe this way and then this way.

**36:18** · How does that look? Let's look at the camera and see. It's a little too much too much in the middle. So, let me go back into my weapon placeholder and rotate it again a little bit this way and maybe towards the top. So, you probably will have something a little bit different than me. But, uh, you can see here, uh, let me see the camera. Okay, I think this is fine.

**36:40** · Let's go ahead and try it out. Five. You can see here that the weapon follows the animation perfectly. And as I move around, yeah, so this is the jerky animation that, you know, we were talking about earlier. We probably want to fix this. Um, and make sure that it works. Yeah, it does feel like the sword is a little bit thin. So, I'm going to go back in Blender, just make it a little bit thicker, but feel free on your hand to do, you know, all of the adjustments that you want to do. And we'll maybe as an exercise, go ahead and try to add that sword to the enemy here.

**37:08** · Um, just go through the same exercise of adding a bone attachment and then um making sure that it it the rotation fits perfectly.

**37:19** · I see here that the uh maybe the location of the hand isn't perfect either. So, I'm going to bring it back closer to Yeah, let's see. Weapon placeholder. I'm going to bring it back a little bit closer to the handle here.

**37:32** · All right. And let me go ahead and make it a little bit thicker. At least the just the blade. So, back to Blender. Tap to go into edit mode. Double A to select everything. L to select this blade. And S to scale on the X-axis.

**37:47** · And yeah, something like this.

**37:51** · Yeah. Um h let me take uh this edge and this edge sx and create something that's a bit more square.

### Goblin sword challenge

**38:05** · Probably want to do the other the other side as well. Shift shift sx. There you go. All right. That's going to be it.

**38:12** · All I'm going to do for this sword.

**38:14** · Let's go ahead and export it again. Save file. export glTF shortsword. And let's go back into uh Godo one more time. And yeah, this this feels this feels thick, but in the game it actually looks a little bit better. Uh doesn't feel as as thin. Actually, it almost feels as thin.

**38:34** · All right. One thing that you'll notice right away is that the sword goes through the walls. And we'll have to fix this. Uh but for now, go ahead and try to see if you can um give a sword to our friend Mr. goblin here.

**38:49** · All right. So, let's go into our enemy and we are going to create a bone attachment \[snorts\] uh 3D as part of the skeleton.

**38:57** · And let's go ahead and select the right hand as well. And then let's have another node 3D which is going to be a weapon placeholder.

**39:08** · Uh I guess you could have copy paste some of these from the uh human player, but this allows you to kind of place things maybe differently depending on whether the mesh is um different or not.

**39:18** · So let's go ahead and move and rotate this weapon placeholder. Um so here we don't need to worry about the camera by the way, right? Like there is no camera for view. So we can just make it look as as best as possible. Maybe something like this. Uh, how about bring it up and rotate it like this. How's that look?

**39:43** · Okay, maybe rotate it a little bit more this way. And yeah, that should be okay.

**39:48** · So now if we play the game, we should now have our enemy with its own sword.

**39:55** · All right. And yeah, this looks pretty good. The sword still looks pretty big as well, but that should be okay for now. But the one thing I do want to fix is this jaring um animation for when I'm walking around.

**40:08** · So, let me go ahead and go hop over into Blender real quick and we'll fix the animation.

### Fixing run animation

**40:13** · So, into Blender, I'm going to reopen um my character and I'm going to select my \[clears throat\] uh my rig here. Go into pose mode and let's click on animation and let's hop over to Oh, there we go.

**40:28** · Run loop. All right. So, what's going on? Well, you can see here how how much movement there is on the arm here. So, the first thing I'm going to do, and again, I'm not an expert animator, but I'm going to go in the starting pose here, and I'm going to take my um all of the bones that basically handle um my sword, and I'm going to select all of them here and duplicate them over to the various frames. So, that way I won't have any movement. And then I can adjust it accordingly.

**40:59** · So now if I play my animation uh from the start, I should not have anything that moves. And because I'm going up and down, it actually moves a little bit. So actually that may be sufficient. So let's go ahead and try this out. Uh I'm going to press uh save and go ahead and export it and make sure to export into uh meshes characters.

**41:21** · Character lib transform is okay. uh mesh apply modifiers armature export deformation mesh only and include selected objects. I think did I select the right things? Okay, probably not.

**41:40** · So, let's try again. Let's get out of here and inside object view, I'm going to select both the skeleton and the mesh and export.

**41:49** · All right. And if I go back to GDO, I should now have a animation that's a little bit less sharing. Yeah, it it it just feels a little bit better. Maybe uh maybe lacking a little bit in dynamicity, but because we're going up and down, it actually doesn't feel that bad. It's a little bit in the way. And I think it's actually rotated a little bit too much. It's hard to see that the the weapon has any depth. So, let me fix that real quick. Go back into the player. And I'm going to rotate this maybe a bit this way. See how this looks. This looks even worse.

**42:24** · \[laughter\] Try this way.

**42:28** · Okay, this looks better, but it's not very natural. I guess, you know, I'll let you play around with this and see what you think feels best. I'm going maybe keep it like this. How is that?

**42:39** · All right. Almost feels big. So, maybe I need to rotate it again.

**42:46** · All right. Okay. I think I'm going to keep it like that. It does feel a bit thin, but I think as we as we uh slice across the the screen, we should be able to see the the um the depth. Okay, there's one thing I want to uh do before we close this episode. It is the weapons going through the walls. And as you can see here, um this is a little bit this is a little bit of a pain. What we would like is to always be able to see the uh the weapon even when we're so close to the walls here. So, there's multiple solutions for this.

### Weapons clipping through the walls

**43:15** · Um, I think on the internet there is two or three that are pretty uh common and actually I think good 4.6 actually introduced a way to fix this properly. So, let me just double check that I'm doing things the right way. All right. And I was just reading through the documentation. So, they did introduce a new setting in go 4.6 which is really handy because it used to be pretty hacky to uh to do this. Basically, what it is is they allow for a specific material to always be rendered um above other materials.

**43:44** · And for that they introduce a concept called Zscale. And basically by default all of the materials in the game are rendered on the um on the Z uh scale of one. But if you reduce this it basically increases the priority of the rendering of that material. So what we're going to do here is hop over into our short sword and we're going to rightclick and editable children. So we can go into the mesh and then here we're going to want to make some changes to this material.

**44:10** · Now, we actually don't have access once again to this material because it is part of the pack scene. So, for that, what we can do is just go and create a surface material override. We're going to create a new standard material 3D.

**44:21** · And let's drag the uh short sword dungeon texture into the um into uh the surface. So, this should automatically set it to the albido texture, which is what we want. And the next thing we want to do is you want to click on make unique. Um, and this will allow us to make some further modifications to this uh material. And so the property that we're looking for here, and you're going to take a look here at um at the handle, first of all, we don't want this blurriness here. So go into uh sampling.

**44:52** · Make sure you set the filter to nearest.

**44:54** · And then go into transform. And this is a new property that they introduced called Z clip scale. You want to turn that on. And then as you bring this clo uh lower than zero, you will see that this handle now uh appears above the other material. So I'm going to set this to uh 0.5.

**45:13** · As you can see here, it appears above everything, which will make it look a little bit weird when you look at your hand in the game, but we won't have the ability to do this. It's going to go pretty fast. So now if you play the game, um yeah, you can see it's almost transparent for the uh for the player.

**45:26** · Uh and as you go towards the walls, you can see that now nothing is clipping through the walls. The nice thing here is that you can see that the shadows are fully supported. Uh which used to be pretty complicated to do. You'd have to either render it in a different uh visual layer or you'd have to use a shader in order to do this. So uh thank you so much good uh community for for creating uh this nice little uh ability.

**45:48** · Yeah, the swords definitely feel a bit thin, but um you know again play around with it on your end. I might spend a little bit of time just polishing the graphics towards the end, but for now again I don't want to spend too much time into Blender. Um, I do want to get into the gameplay mechanics of combat. I think that's really exciting and so really excited to uh to get there. Okay, the only thing is to illustrate the ability to have multiple types of weapons. I think it's important to have at least a second uh type of weapon. I'm going to hop into Blender real quick and create an axe.

### Axe mesh

**46:15** · And feel free to go in and follow um follow my steps if you want or just go ahead and create your own weapon. I think there's a couple cool things that you can do here. Either like a longer sword or maybe like a double sword or something like that. So anyways, let's uh let me hop over into Blender and we'll just uh create a very simple axe. Again, low poly uh something that will go alongside the sword here.

**46:36** · So, we're going to keep that for the proportion. I'm going to start by creating a brand new mesh. Uh let's make this um a cylinder. And I I do like to use that shape for our handles. I'm going to rename this to ax. And I'm going to uh go into edit mode. Rotate everything by 90 degrees on the x-axis.

**46:55** · Scale it down to roughly here. And uh let's uh let me let me work here instead of here. So I'm going to tab out uh into object mode and then gx1 just to bring it by 1 meter here. And then tab to go back into edit mode. All right. Uh let's scale it down again a little bit. And in terms of the handle, let's uh go ahead and take this. We're going to do the same as as this part here. So let's go ahead and bring it back on the y-axis a little bit around here. E to extrude. S2 scale. and E to extrude.

**47:25** · And that should be for our handle. Let's go on the other side here. And here we're going to do a couple of uh similar similar patterns here, but just to do kind of the the handle. So G Y to bring it to about uh here. Uh then let's do E to extrude just a little bit. S to scale just a little bit. E to extrude just a little bit.

**47:47** · Sale uh actually I think that's fine. E to extrude and S to scale down. Okay. And then E to extrude. And this is going to be the longer part of the wood. And uh let's see. GY.

**48:04** · Probably want to bring it to about Yeah, about here. All right. Um let's see. So here, let's do E to extrude.

**48:14** · Right click, S to scale. Bring it up.

**48:17** · And E to extrude.

**48:20** · Something like this. E to extrude again.

**48:22** · Right click. S to scale.

**48:25** · E to extrude.

**48:27** · Uh something like this. And we're going to do the same thing again. E to extrude. Right click. S2 scale. E to extrude.

**48:36** · And E to extrude again. Right click. Uh S2 scale here. And E to extrude one last time.

**48:45** · All right. And here. The only thing I see is that I would love for this to be rotated. uh the right way. So me take the whole thing and I'm going to rotate it alongside the y axis by uh so let's see six angles. So 30° is that correct? Maybe 15. No, 20. 20.

**49:11** · Looks like 20. All right. Okay. And then I'm going to take this face here and I'm going to uh press E to extrude.

**49:20** · and we'll get started on the shape here.

**49:23** · Uh so we'll have a couple of extrusions.

**49:25** · Another one here. Maybe another one smaller one here. Uh so let's take let's go into edge mode. This one let's bring it up a little bit.

**49:37** · This one let's bring it up even more.

**49:41** · Okay. And then this one needs to continue to go up as well. Gy is something like this. Whereas this one, I think this should be okay. Gy bring it down a little bit more. Okay, this one is bring it down way more. Gy, something like this. And this one here, gy. Let's bring it up to about Yeah, something like this. And then uh let's extrude this face once again.

**50:09** · Okay. And let's take this edge here, gy bring it down. And then this one, gy, bring it up.

**50:19** · All right, this Oops. Gy. There you go.

**50:23** · All right. Is this starting to look like an axe? You know, this uh this is not bad. It could be good enough. Uh maybe just uh extruding this face here. So, uh again, go into face mode and then it to extrude down.

**50:37** · This is fine except I want that to be cut in half. So, let me merge these vertices together.

**50:45** · So, I'm going to press two. Seect this edge GG to go alongside this edge here.

**50:50** · Let's go here. And then I think if we select all of it and then merge by distance once again, we'll go to 0.1.01.

**51:02** · There we go. We've uh removed 10 vertices. So I think how does this look? You know what? That looks pretty fine. It's just a little too big compared to the sword. So, let's go ahead and make some tweaks here. I'm going to go into Z wireframe so I can pick all of the vertices. And I go into vertex mode and pick all of these here. And Gy, bring it down to about here. And yeah, the ax here is a little bit too big. Maybe I'm going to scale this down a little bit.

**51:32** · Uh, GX S GX.

**51:42** · All right. How does that look compared to the Okay, let's go back to uh material preview. What is How does this look? This looks pretty good. I think I like the fact that it's thicker, by the way. I I think we need to change that for the sword. So, I'm probably going to make some quick tweaks here. Uh, yeah, I think this is fine. Maybe I'm going to just tweak this edge a little bit here.

**52:05** · G Y like this.

**52:09** · All right, that's going to be good enough. Let's go ahead and work on the um texture in a sprite. But really quick before that, I'm going to take this sword. I'm going to press tab. And uh I want to make this a little bit thicker.

**52:27** · Yeah, it just feels really thin right now.

**52:30** · L and SZ. Just bring it up a little bit more.

**52:35** · Okay. All right. And uh let me go ahead and export this. So we'll have a new sword meshes weapons short sword. We don't need the animations here. All right. And I want to use this opportunity to illustrate a different way to texture uh your meshes. So, so far what we've done is we've created in uh a sprite some textures that we put inside those placeholder cells of 16 x 16 and we tried to kind of map it toward towards where it worked pretty well.

### Painting the axe within Blender

**53:07** · And then we came back to Blender and try to kind of map the textures directly onto the mesh.

**53:13** · But as you can see here, it's a little bit hard to have some consistency in how those things are applied uh just because we did the editing of the textures in a sprite and it came back here and tried to apply them. So you can see here the squares are not perfect. So, if you want to have a little bit more precision on how to paint the textures, you can actually paint them directly inside uh Blender. So, I want to show you that real quick. So, for that, I'm going to pick my axe here and I'm going to assign the same material that we've been using so far.

**53:38** · So, go into the material tab, let's pick the same material, and then uh rather than stay inside this UV editor here, uh we're going to press tab to go into edit mode. And first of all, because we're going to be painting on those faces, we don't want to overwrite what we've done on the other side. So, I'm going to press A to select all of my faces. And then here on the left hand side, A S to scale zero to bring it to a single pixel. And then I'm going to pick the faces that I want to paint.

**54:05** · So, let's pick this one, this one, this one, this one, this one, and let me go on the other side as well. Shift select these as well. And then come back here. So now we have both sides selected. I'm going to press U and project from view. Okay.

**54:22** · And so here I'm press A to select all of them. S to scale. Bring it down. G. And you can see how you can try to map it to like a 16x6 pixel. It's not going to be super precise, but you know, you can probably make it work. The nice thing is you can you can, you know, go a little bit to the side. I think that should be fine. Uh let's see. How about how does this look? Uh I think this should look okay. Maybe bring it up a little bit here. It's always good to leave a little bit of spaces in case you want to make some coarse correction in um in a sprite. All right, I'm going to keep it here for now.

**54:53** · And uh go into texture paint. And here you can actually uh paint directly on top of the mesh. So a couple of things you can pick a brush here. We're going to be picking the one called paint hard because we're going to be painting hard pixels directly. And then in the attributes of the brush here, a couple of things you can do. So you can change the radius. You can also do that pressing the F key and then change the size of the uh the brush. And then on texture, you want to make sure that uh actually stroke, you want to make sure you take space and spacing. I left it at 1%.

**55:25** · I think it's a little bit more precise. And then you want to remove stabilized stroke. Uh you don't it makes it just makes it a little bit harder to be precise, I think, for drawing pixel, but you can try with it on or off. you make you want to make sure the falloff is set to constant because we are going to be drawing just pixels of a single uh color. And once you have that, you can actually start painting. So uh the way that you can uh pick a color since we have the colors here is by pressing shift X. And this will just pick uh the color that your cursor is currently on. So I just picked this light gray here.

**55:56** · I'm going to come back here and I'm going to start painting by just drawing on the mesh.

**56:01** · And you can see here that as I paint it automatically updates the image here.

**56:04** · You can see that the image here has a little asterisk, which means that we actually need to save this. Um, and we want to make sure that we do that before we go back into a sprite. \[snorts\] All right. So, I'm going to just do something very rough right now. Um, choose something like this. And, uh, let's actually do the whole thing here.

**56:21** · And then I'm going to change my color.

**56:24** · Let me pick uh shift X to pick this blue here. And I'm going to pick a different brush size. Maybe a little bit smaller here. I'm going to paint kind of the bottom portion of my of my blade here just to do like some uh kind of some sh some shadow at the bottom. I think that's pretty much all that I'm going to do for this. But you can see here the pixels are a little bit more square. Um again, you could rotate the faces here and try to see what works best. It's really hard to have like perfect square pixels whenever you're working with different meshes like this.

**56:54** · Um, but yeah, this is um this is just a very quick and handy way to paint textures a different way. Uh, let's see. Maybe we just add a little bit of white at the very top. And that should be that should be it. So, let's go ahead and paint the rest of this texture. Um, I'm going to go back into uh UV wrapping and I'm just going to assign some colors to the various other faces. So, let me go back into layout here.

**57:25** · As you can see here, I have my image. I'm going to save this image.

**57:30** · Save. And now, if I go back to a sprite and I reload my image, I should have this image here. Um, and it should reuse exactly the same colors, right? We haven't changed any of the palette. So, going back here, I'm going to change the color of some of those faces. So, into edit mode, let's start by pressing Alt, selecting this edge loop here. So, I just want to have the entire blade. Uh, we can keep these for now. That's fine.

**57:56** · And then U to unwrap. It doesn't really matter which option you take because I'm going to just bring everything down to a single pixel. So, we can do Q projection. And then A to select all of these. S to scale. Zero to bring it to a single pixel. G to grab. And I'm going to pick this light blue here.

**58:12** · This one here. \[snorts\] Um, okay. Let's do the \[clears throat\] let's do the um this part here. So let's take this this one.

**58:23** · This one.

**58:27** · Maybe we do like a darker blue for this.

**58:29** · So U C projection A S to scale zero. G to grab. And how about this blue here?

**58:35** · How's that look?

**58:38** · Yeah, should be okay. How about these here?

**58:43** · Actually, I think it might be better to do like this gray here. So it's not too much off from the blade.

**58:51** · \[clears throat\] How about these here? So, I'm going to press Alt to select this loop. Shift alt to select this and shift Alt to select this. U Q projection A S to scale zero G to grab. And let's pick this uh darker blue here.

**59:09** · Maybe this one. Okay. We'll pick the same color for the other side. Alt alt shift alt shift U cube projection. A S to scale zero. G to grab. And let's go back to that dark blue. The handle is going to be done in wood. So, alt shift this one. Shift for this one. U Q projection is fine. A to select alt G uh to grab.

**59:34** · And let's bring it to here. This dark brown here for the wood. Let's do the same here. Alt to select all of the uh face loops. U projection. A S to scale zero. G to grab. And let's go again to this dark brown here. Uh how about this uh this ring here? Maybe we make it uh like gold. Alt alt shift. Alt shift U cube projection. A S0 G to grab. Make it uh yeah something like this. So it pops off a little bit.

**1:00:07** · Let's keep the same uh brown that we used here. So this is the third one here. Let's keep it for this one as well. U cube projection a S2 scale zero G and let's pick that brown here. Okay. And we're almost done.

**1:00:22** · Let's go ahead and pick uh this one here. What do we use on the sword? This looks like it's black. So U projection A S to scale zero G. And let's go to black here. And then this one. U projection A S to scale zero G to grab. And what do we use on the Looks like we use a brown. Maybe we'll use like uh this purple here.

**1:00:49** · Okay. And just like that, we have uh textured textured pixel textured our uh sword and make sure that we reload in a sprite our texture and we should be uh good to go. All right, I'm going to go back into edit mode. Select all of these. GX minus one. Uh oop, sorry, what is uh let's see object mode. Sorry, not edit mode. uh gx minus one to bring it back to the center. And now I'm going to export the axe and we can use it as a weapon inside our game. So file, export glTF.

**1:01:22** · And once again, you don't need the animation here. Uh make sure you limit it to selected objects. And I think uh that's all we need. Apply modifiers. Okay. And I'm going to call this X.

**1:01:37** · All right. And we can try this out into GDAU. All right. So, back into GDO. The uh I guess the only the first way we could do is just uh bring our uh let's bring our axe into the scene here under the weapon placeholder. And uh yeah, you can see here that it's not rotated the right way. So, I guess we can rotate both the axe and the sword together. So, go into the weapon placeholder and let's rotate these so that it kind of makes sense. Maybe something like this here.

**1:02:06** · Press F5 and see how does that look. I think this looks fine. Okay. So, let's go ahead and uh maybe we can just hide the sword for now and press F5. And now we have an axe. Actually, maybe a little bit more of a rotation. Uh something like this. Yeah, I think uh this looks pretty good. And this guy has a sword.

**1:02:30** · Okay, great.

**1:02:32** · Um, so now that we have two weapons, this is going to be really useful for us to look at, uh, how to manage a proper inventory. So with both of these weapons all created and textured up, um, well, this is going to be it for this episode.

### Conclusion

**1:02:43** · I think we, um, has spent a lot of time just mostly working on art, but I I did think that it was pretty important for us to explore how to do uh, painting multiple ways and to apply textures to 3D meshes. I do think this is something you'll find very useful on your end as you work on your art. Um, as you can see, there's plenty of ways to do so. I just showcased you kind of two methods that I typically use when I create a very simple like 3D pixel art. Um, I actually think this is an area where Blogbench shines.

**1:03:10** · It gives more flexibility in terms of painting the right pixels and keeping them consistent and keeping them straight. So, if you're an expert in Blockbench or if you want to look Blockbench, I do think it's it's worth doing it. Uh, so in the next episode, we'll actually be mostly spending our time writing code. Uh, our weapons will need to exist in several states because we'll be, you know, holding them, picking them up on the floor, throwing them. So, sometimes they'll need to react to physics, uh, you know, bouncing on the floors and bouncing on the walls and hitting enemies.

**1:03:39** · Sometimes they'll just need to, uh, be still and maybe highlight as we, uh, look at them so that they can indicate that we can pick them up. And so, for that, um, they may we may need to create different types of nodes because they all have different attributes. So, we'll spend some time just figuring this out the next uh episode in a way that scales well. In any case, you've made it to this end of the video. So, thank you so much for sticking around. That actually means the world to me. If you do enjoy this content and feel like you're learning new things, please let me know by hitting that like and subscribe button.

**1:04:10** · Uh \[snorts\] don't hesitate to also holler in the comment section if you have any questions, and I'll do my best to respond quickly. Time to take a quick break, and I'll see you in the next episode. Cheers.