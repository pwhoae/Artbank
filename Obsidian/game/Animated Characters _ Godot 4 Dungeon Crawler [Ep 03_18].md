---
title: "Animated Characters | Godot 4 Dungeon Crawler [Ep 03/18]"
source: "https://www.youtube.com/watch?v=fkSegL1vLrk"
author:
  - "[[The GameDev Tavern]]"
published: 2026-07-04
created: 2026-09-01
description: "Learn how to create a 3d dungeon crawler from scratch in Godot!In this third episode, we create our player character, from the 3d model to the rigging, texturing and animating.Play the final game"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=fkSegL1vLrk)

Learn how to create a 3d dungeon crawler from scratch in Godot!  
  
In this third episode, we create our player character, from the 3d model to the rigging, texturing and animating.  
  
Play the final game here: https://gadgaming.itch.io/goblinsdencourse  
  
Having an issue? Download the project for this episode: https://github.com/nicolasbize/goblins-den-course/archive/refs/tags/v0.3.zip  
  
0:00 Introduction  
1:18 Creating the character mesh in Blender  
12:52 Creating the player texture  
19:50 UV-wrapping the player  
31:36 Exporting into Godot  
33:10 Creating the bone armature  
45:50 Creating skeleton from armature  
48:20 Adding leaf bones  
50:15 Idle and Run animations  
1:03:30 Playing the proper animation in the script  
1:06:30 Conclusion  
  
Enjoy your stay at the tavern!  
  
#godot #gamedevelopment #gamedev #tutorial #pixelart #dungeon #fps

## Transcript

### Introduction

**0:05** · Well, hello there, traveler, and welcome back to the gamedev tavern. Come on in, have a drink, and join me as we create fun little games together. My name is Nicholas, and this is the third episode in the tutorial series where we create a full 3D dungeon crawler from scratch in GDAU.

**0:22** · All right, so welcome back. So, in the last episode, we set up our uh levels in a way that uh we can reuse most of the rooms. In this episode, we are going to start working on our player character, which currently doesn't look like much.

**0:35** · And we're going to learn how to create the character in Blender. Um, this is going to be the same rig that's going to be used for uh both the players and the enemies. We'll just apply a different skin to them. And then we'll learn how to apply these textures in a way that respects this sort of low resolution style. And then we'll create an armature uh with bones that will affect our mesh.

**0:56** · And this will allow us to create some uh very basic animations uh that will import from Blender all the way to GDAU.

**1:04** · And uh and then here in GDO, we'll be able to reuse all of the art that we've created in order to um actually have a nice looking character that we can use in our game. All right, so let's go ahead and hop over in Blender to get started.

### Creating the character mesh in Blender

**1:18** · All right, so in Blender, let's go ahead and start a brand new file. And the first thing I'm going to do is press A on my keyboard to select all my objects.

**1:25** · X to delete. And let's get a empty scene. Shift A to create a new mesh.

**1:30** · Let's go ahead and pick a cube. So again, this is a 2 m by 2 m by 2 m cube.

**1:35** · Uh so we'll need to scale this down. And then just in terms of orientation, uh the face is going to be right here uh facing towards the y-axis. And when we import this into GDAU, this will become the Z axis except it's going to go on the other side here. So, this is going to be the minus looking towards the minus Z axis, which is exactly what we want. All right, so let's go ahead and press uh tab to go into edit mode. And uh look, we're going to keep this extremely simple, extremely low poly. Um so, you know, if you are an artist, this is probably going to be pretty cringe for you.

**2:03** · But um if not, then hopefully you can just follow along the various steps here. The first thing we're going to do is um create a symmetry. We won't have to work on the both sides of the body at the same time. I'm going to press Ctrl R to create a loop cut.

**2:18** · Select this edge here. Left click and then right click to uh keep it at the center. Three to select face mode. Alt to and click on this edge to select all of the faces alongside this loop. Shift click this face here. X to delete. And we're going to delete all the faces. All right. So now we only have half a face and we're going to um we're going to create a modifier. So click here on modifier, add generate mirror. Okay. And this should uh be good enough.

**2:46** · So for now, uh let's go ahead and press A to select all of your faces. S to scale down. Oh, and as you can see here, the face is not connected. So right click to cancel. And make sure that you have clipping turned on here. And when you scale, things stay connected. All right.

**3:04** · Uh let's see how much do we want this face to be. So let's scale it down. We said we want this to be about uh a meter and 170 m high. So, it's going to be about this high. Um, let's scale it down on the X axis. And let's bring this up.

**3:21** · GZ and something around here.

**3:26** · Okay. Uh, let's go ahead and make the face a little bit longer. So, let's take this face and actually ed to select all.

**3:35** · S Y and let's scale it on the Y axis a little bit. All right. Uh, we may make some changes down the line. Crl R to create a loop cut. Set it in the middle and then bring it down slightly around here. And then we're going to work on this a little bit to make it uh look like a little bit more like a face. Two to select the edge. Let's take this edge here. Gy, let's bring it forward. And let's take uh one to go into vertex mode. This one gz to bring it upwards a little bit. Gy to bring it forwards a little bit.

**4:06** · This is going to make the nose here.

**4:08** · \[snorts\] Um, let's take uh this edge and this edge. So, and then press Gy and let's bring this down back a little bit. Okay. Uh, so far so good. Let's take uh this edge and this edge and then scale it on the Y- axis. S Y.

**4:30** · All right. Let's uh go back to vertex mode. Uh, select this edge here at the top. GZ to bring it up. And actually, let me take this vertex. I'm going to bring it up a little bit more here. All right. Does that starting to look like a face? Not quite. All right. Let's take this edge here, GZ. Let's bring this down. Let's take this edge, GZ. Let's bring it up. And let's take this vertex here, Gy.

**4:58** · Let's bring it back a little bit. And let's take uh this vertex.

**5:04** · And let's see.

**5:07** · and this vertex and this vertex and then gx. And let's bring it closer to the center here. All right, this looks decent. I mean, uh, let me bring this edge here, GX, again, towards the center. All right, how does this look? This looks okay. It looks a little bit flat in my mind. So, I'm going to uh select this face, GZ, and bring it upwards a little bit.

**5:41** · Okay, this looks not too bad. Maybe this vertex, GX, bring it close to the center. You probably won't have exactly the same thing as me. Again, what you want to do is try to have some form of shape that kind of looks like a face. Uh, semi- round. And again, like if you This is where your Blender skills would be useful. Gy. Let's bring this back a little bit.

**6:02** · And maybe this one I feel is a little bit off. G shift zed to scale it across to move it across everything except the Z axis. All right, I think we're going to stop here. This is just about as much as as my skills will take me.

**6:19** · Bring this up a little bit. Let's start and working on the uh neck. Actually, bring this up. Okay. All right. So, three to go into face mode. Let's take this face here. Uh E to extrude. Uh right click to cancel. S to scale down. And let's bring it about I think here it should be fine. Two to go into edge mode. Let's take this one. GG. Let's bring it towards the center.

**6:44** · Take this one. GG towards the center. Uh this one GG towards the center as well. Trying to make for like a decent looking neck. Let's take this face. E to extrude. Come down here. And we'll go about here. Yeah, I think it should be fine. All right. E to extrude again. And this time we're going to make the elbows. So S to scale.

**7:09** · And let's take this edge here. And then GX and bring it towards the sides here. All right. I think this looks okay. Let's uh select this face and we're going to extrude it multiple times. E to extrude once. This going to be where the arms are going to be. E to extrude twice. This going to be the main body.

**7:30** · We'll probably have to resize this at the end. E to extract again. This going to be where the U upper legs are going to be. And let's see. Let's take this edge here. GX. Bring it outwards. And then take this edge, GX, bring it inwards. All right. Let's create the arms. So, uh, let's scale this down a little bit. And then E to extrude.

**8:01** · E to extrude.

**8:03** · How does this look? Should be fine. We'll we'll polish it after. Uh press A GZ. I'm going to bring everything up a little bit. Now again, I'll scale it down downwards. Uh at the end, let's take this face. Actually, this edge should probably be Yeah, I think it's fine. Take this face here. It to extrude Z against to go alongside the Z axis. And then let's take this edge here.

**8:25** · Bring it down to about where the other um edge is. Select this face to extrude and come down here.

**8:35** · All right. This is just such a rough character. Let's see if we can just make a couple of of uh edits here. Press two, alt, and select this edge here to have the entire loop. Gy. Let's bring it back. And I feel like all of this is a little bit too thin. Uh it should probably be scaled upwards. So let's see. Let's take um S zed. Let's bring up scale on the Z axis. Actually, let's take this G zed.

**9:06** · This one GZ.

**9:08** · And yeah, that looks already a little bit better. Three S to scale it down. Let's scale it down just on the Y axis.

**9:17** · How does this look?

**9:21** · Not fantastic.

**9:23** · GY.

**9:24** · You're going to have to iterate over this. All right, let's take this loop here. Alt and click this loop. GZ. Let's bring it for GY. So, it has a little bit of momentum here. Three. Select this face here. Let's um let's pull these a little bit apart. So, two to select all of this loop here. GX. And then three to select this face. GX.

**9:53** · Let's bring this.

**9:55** · There we go. That feels a little bit better. All right, we're going to get there. Let's see. How about uh how about this here? Let's select this vertex and this vertex. Actually, let's start with this one. GZ. Let's bring it down. Let's take this one. GZ. Let's bring it down a little bit. GZ. Let's bring this one up. This one. GZ. Let's bring it down. And then both of these. GY. Let's bring it forward.

**10:26** · A little too fat. Maybe a little too fat. Let's select this face here, GX, and let's bring it inside here. All right. And then let's select uh this vertex gy bring it inwards a little bit. And then this edge gy bring it in inside a little bit as well. Let's do the back real quick. Uh, we're going to keep things simple. One to go into vertex mode. Pick these two vertexes. Gy, bring it back.

**10:59** · And then maybe this one. GZ. Bring it down a little bit. Create the form of a butt. GZ to create to bring it down. All right. I think this is about all of my Blender abilities all summed up into uh a five minute rundown of a character.

**11:17** · Again, you you will probably be able to do something much much better on your end. The one thing it will do though is just scale it properly. So, uh let me go here and go back into edit mode. A to select everything. And then let's bring it down. GZ. Bring it down here. S to scale it down. Uh see how far do we want to scale it down?

**11:43** · Maybe like this. and then sx to scale it down or gx to to bring it back towards the center. gz to bring it down. How does this look? Okay, it's about 2 m high. Maybe we scale it downwards a little bit more.

**12:03** · Uh, actually, I think that should be fine cuz our enemies, this is where our camera is. And, uh, I think this should be fine. All right. So hopefully you have something that looks roughly like this. Um, again, I went I went fairly fast and at the same time I'm not very good at Blender. So hopefully you have a character that kind of looks similar to this. I still feel like the face here is odd. Uh, sorry. Let me just bring this down a little bit. GZ. And then uh this one up GX. Okay, this looks tiny bit better in terms of proportion.

**12:34** · All right. And now that this is done, we are going to hop into the image editor and uh start creating the texture for this. So, let's go ahead and save this. I'm going to save this inside my Blender folder. And I'm going to call this character.blend.

### Creating the player texture

**12:53** · All right. So, let's hop over into a sprite or whatever image editor you want. And um here we're actually going to be using a different file for the character textures. The main reason is it'll be easy to swap out one skin for another and be able to use the same model mesh for multiple characters. So in our game right now, for the purpose of this tutorial, we'll only be doing two characters, but this should illustrate how you can create more and more characters over time. So for that, let's go ahead and create a brand new texture. And I'm going to make this 32x 32. If you remember, our characters are about 2 m high, just a little bit under.

**13:24** · So about four of those squares should suffice in order to do our textures.

**13:28** · Now, the process I'm going to show you here is is absolutely outdated. This is probably the uh the fastest path that I found as a non-artist to actually create art. Um, so, you know, forgive me if this doesn't uh work well for you in terms of visual style, but at least it'll give you an idea of one way to do things. So, one thing that I like to do every single time I have a texture is to just to create um a reference palette on the side. And again, you'll see in Blender how easy and it is to just assign colors to meshes once you have something like this.

**13:58** · So, I'm going to create my character. I'm going to have some colors for the skin, for the hair, and maybe some form of armor. I'll be using various shades of blue uh on this. So, um again, I have my palette here loaded up. Make sure you do on your end as well. And I'm going to start by taking this color here and just create a couple of uh just a a small swatch here.

**14:20** · probably going to be using this this for the skin color, this for some highlights, and then maybe um probably use this dark blue here, and then let's go ahead and use maybe these four blues.

**14:34** · And I'm just going to stick with a colors. I think that should be good enough. Um all right. So, maybe we can start by creating some form of texture for the body. I'm going to do some form of chain mail. So, I'm going to alt select this color here and press U to go into fill rectangle. And I'm going to fill this rectangle here. I will go uh and one more like this. And then I'm going to take various shades of blue and press L on my keyboard.

**15:02** · And I'm going to draw some form of chan mail texture on top of this.

**15:13** · Uh like this.

**15:18** · and this one here. All right. I hope this should work. Okay. Wondering if I should take the lighter blues. Uh, we'll see. Maybe in case I I need to put some highlights.

**15:32** · Let's do the face real quick. So, the face is going to be pretty straightforward, actually. I'm just going to create um U4 uh rectangle. And let's do something like this. Uh, remember we only have to do one half of the head. So, let's do the hair. Maybe I'll go down two. Let's do some highlights. Not a big fan of this color for highlights, actually. Let me take this one here.

**15:58** · There you go. And let's do the uh some form of highlights here. Let me take the dark blue for the eyes. And it's probably going to be too fat. I think I'm just going to bring everything towards the left. All right, this should look better. And then let's go and create the pieces of armor. So, we'll have uh let's do the legs. So, I'm going to create um again, we'll we'll have to see what works and what doesn't work. We'll probably come back here a bunch of times. Uh maybe another one here.

**16:32** · And like this. And then let me add some highlights. There we go. Uh maybe a little bit more.

**16:43** · Something like this.

**16:45** · And then let's do uh let's do some brown for the legs.

**16:56** · Do like this.

**16:58** · And let me do like this. And maybe some highlights. Something like this. All right. And then let's do the feet. I'll just reuse the same color as the upper armor. And then just add some highlights.

**17:14** · Okay. And on this side, I'm actually going to repeat the same shapes here, except I'm not going to have any highlights. It's going to be a little bit weird if I have highlights everywhere. So, I'm going just go ahead and do this. And then just replace my highlights with my standard color. Okay. And let's do the arms.

**17:33** · So, for the arms, I'm going to do something similar. um U and they're going to be like this G. And let's put some highlights.

**17:46** · Something like this.

**17:49** · And then let's do the arms. I think the the lower arms. I'm just going to do bare skin. Uh so it should look like this guy here. you and let's add some highlights. All right, we'll probably come back into a sprite a bunch of times to fix this as we play around with the texture. Let's just do the side of the body. I'm going to repeat this texture here. Let's put it maybe here.

**18:28** · Create a line here. And let's also have these portions without any highlights.

**18:40** · All right.

**18:41** · And finally, let's do the side of the face. So again, I'm going to create a field rectangle.

**18:50** · Something like this.

**18:52** · Let's put some hair. Uh, two, three, maybe. Yeah. All right, let's see. Let's see how this looks. And then maybe some highlights here. Okay, we should be okay to at least get started and go into Blender and start mapping this into our mesh and see what works and what doesn't work.

**19:14** · And then we'll always come we'll always be able to come back here and make some changes. But a couple of things you'll notice. So, I do like to have a color swatch here. It just makes it easier to just stay consistent and then be able to play around. And then you'll see in Blender, it's actually super helpful to color some faces. And then um I usually like to um when I have room to split my various body parts u maybe at least one pixel apart. All right, let's go ahead and save this and let's save it into skin-hum.

**19:39** · I already had a sample here and then um let's go back into Blender to assign this tuto this texture to our character. All right, so back into Blender. Let's start by uh renaming our um object here from cube to character. And then we're going to need to assign a material. So, by default, uh, Blender always comes with a default material. Let's just use this one right here. And then let's go into um shader editor.

### UV-wrapping the player

**20:06** · Zoom in here a little bit. Shift A to insert a new node. Texture image texture. Bring it here. Let's connect the color channels together. Set the interpolation from linear to closest. And then let's go ahead and open the U human skin that we had created right here.

**20:24** · And go ahead and save. And then if you go back into your 3D view port and you press Z and material preview. Oh, it looks like I don't have my keys anymore. Screencast keys. And let's enable these. All right, there we go. Okay, so um this is looking a little bit anonymous. So, uh press tab to go into edit mode. And let's bring a window here from the side. And let's go here into uh UV editor.

**20:55** · zoom in here. We should have our texture uh pretty defined. And now this is the exercise of just mapping the various faces onto the texture. And look, this is not a true science. Um you know, I think there's no art to this. I'm definitely not the greatest at this.

**21:11** · Once again, this is just how I do things very quickly. Um it's mostly, you know, for prototyping um standpoint, but if you were to work with an artist, they would probably have much better workflow of doing this. I'm going to start by pressing three to go into face select.

**21:24** · I'm going to select these two faces for the face. I'm going to press U and cube projection. So, here's my face here. I'm going to go into UV. Make sure that you are uh snapping to the corner. A to select all, S to scale down. G to grab. And then let's map let's map each of the vertices to um the portions of our face. So, bring this down. Bring this to the corner.

**21:52** · and bring this to the side. All right. And I think this should look okay. Uh, good enough. Then let's go ahead and do the side view here. So, same thing. Let's se these two faces. Press U. Cube projection. A to uh select all. S to scale down. G to grab. And then let's map these over to the side of our face here.

**22:17** · Okay. All right. This looks decent enough. Let's uh finish the hair. I'm going to sect this face here, this face, and this face. I'm going to press U cube projection, A to select all of them, S to scale, and I'm press zero. And when I press zero, it's going to bring everything down to a single pixel. Then G to grab, and I'm going to go into uh the hair color right here.

**22:41** · All right. So, the hair should be okay.

**22:43** · Let's go ahead and fix the rest of the face. Uh here, the downboard portion. I guess we could uh so select all of those three U cube projection go on the left hand side A to select all S to scale zero and then G to grab and let's bring it to maybe the darker portion of the skin because it's going to be below so it creates some form of shadow. Let's do the same thing for the neck as well. Oh, this is some uh fancy looking uh fancy looking default skin that we have here.

**23:14** · So, A to select all, S to scale, zero, enter, G to grab, and let's bring it to this darker portion of the skin here. All right, so far so good. This was, I think, the easier part. Um, let's get into the legs. So, here we said that we're we have some portions that have highlights and other portions that don't. Um, let's start with the highlights one. So, the highlights are going to be facing towards the player.

**23:41** · So, let's take this one. U cube projection. Here it is. A to select, S to scale down, G to grab. Bring it here.

**23:48** · And then we're going to map once again the uh ver vertices to the sides of my shape here. How does this look? I'm going to call I'm going to call this good enough. But again, it may be a little bit stretched. Maybe we add like another row of pixels. Let's do the remaining of the leg, the upper leg here. U cube projection. And I want to bring all of these over to this portion that doesn't have any highlights. So for that I'm going to uh select the three vertices that are at the bottom right. M to merge merge at center.

**24:18** · And I'm going to do the same thing for the bottom left. M to merge at center. These ones as well. And the last three ones here. And that way I can manipulate the three faces at the same time. A to select all. A to scale down. Bring it down here. G to grab. And then let's go ahead and map it to uh this portion of the armor.

**24:41** · All right. How does that look? Looks okay from from my standpoint. Again, you may have a different point of view. Let's do the bottom part of the leg here. So, similarly, you can try to do this yourself. U projection. A S to scale down. G to grab. I'm going to map it to this portion here. S to scale down. And let's align all of the pixels.

**25:06** · All right. I'll do the same thing on this part of the uh leg. So, U projection. And once again, I'm going to take 3x3 vertices and just uh center them. So, I only have to deal with a single vertex uh per per corner. A to select all, S to scale down, G to grab, and let's bring it here.

**25:29** · All right. How does this one look?

**25:31** · Again, it kind of looks like a foot or a a boot. Let's also fix this face here. Uh this we're going to uh U projection A S to scale zero and then let's grab it G and let's bring it to this dark brown here. All right. Uh let's do the arms next. So similarly I'm going to take this face here. Let's and select the highlights.

**25:58** · So it's going to be this mesh here. So U c Q projection A S to scale G to grab.

**26:04** · And then let's take each of those and manually I'm going to assign them. It might be a little bit weird actually to have like hard port hard lines like this. Maybe how's that look? Maybe this will look a little bit better. Let's take the other three faces. U projection. Let's uh let me see where are those three. I guess these three belong together. Merge these three. Merge these three, I guess. Oh, there we go. These three.

**26:37** · And then these three. Okay. A to select all. S to scale down. G to grab. Let's go over here. See what looks good here. Uh what if I don't fill it all? How does this look? Kind of looks odd, actually.

**26:54** · Uh let me select all of them again. And what about if I only select this part here? How does this look? Yeah, I like this a little better. Uh again, feel free to play around on your end. See what works best. Let's do the arms. So, similarly here, U projection, A S to scale, G to grab. Let's assign it to the skin here. Uh I may not use the entire thing actually to keep some form of proportion with the pixels. So, they look kind of alike. And then similarly, let's take these three U cube projection.

**27:26** · And let's see, let's do three at a time. These three merge at center. These three merge at center. Uh where are my three here? One, two, three. Merge at center. And then the remaining threes merge at center. A S to scale. G to grab. And something like this. Does this make sense? I guess so. I guess I could have just put it to the lighter color actually. H. Yeah, let's leave it like that.

**28:00** · That's fine. Okay. This one here. A to select all. S to scale zero and then G. Let's grab it and let's put it uh right here. All right, we're almost done. Let's do the armor. Um so let's see. The armor is probably the most complicated piece. We're going to have to play around with this uh shape here. U projection, A S to scale. Uh scale it down. G to grab and S to scale it down again.

**28:35** · How does this look? Yeah, we can try this. Uh, how about this one? U cube projection A S to scale down.

**28:45** · And let's see.

**28:47** · What about if I take these?

**28:51** · Uh, maybe something like this. I'm I'm always looking here, by the way, to kind of see what it looks like. So, this creates some shapes here. I think it should be okay. Let's do this face here. Uh, U cube projection. A S to scale down.

**29:11** · G to grab.

**29:13** · Oh, actually, I think I scaled it down too much.

**29:18** · And let's see. What about something simple like this?

**29:29** · You could bring it down. And this creates kind of the shape here of the of the upper armor. And that looks fine. Okay. And finally, uh, U cube projection. A s to scale down. G to grab. And let's find something that works. Uh, maybe something like this.

**29:47** · Something like this. How does this look?

**29:51** · Not too shabby, huh? Let's I almost want to leave this here. Um, but let's go ahead and fix this. All right, for now we could either do like a a single dark color or let's just try to unwrap the whole thing. A S to scale down. G to grab. How does this look if I go here?

**30:12** · And it doesn't look too bad. really feel like uh I feel like that's good enough. I mean, it does represent a chain mail. How about this one here? U cube projection. A S to scale down. Let's bring it here and scale it down again. How does this How about this? Yeah, this uh this looks this looks decent. Let's do uh AS0.

**30:42** · Bring it down. And then let's do this dark blue here below the player. All right, I think I've got all of my faces. And as you can see, this is more of an art than a science. Um, this is really I'll get this face as well. Let's see. A uh let's U cube projection. A S to scale it down. G to grab. And let's just maybe do something like this.

**31:13** · How's this look? Yeah. All right, that's that's going to be good enough for me.

**31:19** · So, I'd actually love to see what you guys have come up with. Maybe uh I'll be surprised by how bad I am. But actually, I'm I'm finding this pretty decent. Um this kind of looks like a an odd shaped armor, but uh yeah, we're going to leave it at this and uh and import this model into GDAU and uh and see it in action.

### Exporting into Godot

**31:38** · All right, back in GDAU, let's go ahead and um open up our character. Let's just double check that everything looks fine.

**31:45** · And as you can see, it looks like the import is all correct. So, let's go ahead and close this. Let's hop over to our player and uh rather than have this um I guess we didn't have any shape here. Let's go ahead and drag our mesh directly onto the player. And this is going to create our character. It should be looking facing the right way, this way. But as you can see, the camera is um currently inside the body. You can see here the preview. So, what we're going to do is bring it forward a little bit. And something like this should be fine. Let's go ahead and try this out.

**32:23** · All right. And you can see here that the shadows work properly. Um kind of hard to see actually. Let's bring the player inside the world. Let's have another player. Uh let's see if we can have two players at the same time. um into the world. Control shift a player.tscn.n. It might be a little bit weird because we're going to be controlling two controllers at the same time, but let's see. F5.

**32:46** · All right. Let's see if we can have him avoid to go into the wall. Okay. Let's inspect this person a little bit. I don't know if we can even inspect it.

**32:55** · We call.

**32:57** · Ah.

**32:59** · All right. I guess we're \[laughter\] kind of stuck together. I don't think there's anything we can do. Okay, but this will be the size of the enemies, I guess. So, all right, that's going to be good enough. Let's go ahead and start rigging our character. All right, so back into Blender, we are going to be creating the armature, which is going to be a set of bones, which will help us with the animations.

### Creating the bone armature

**33:18** · Basically, we're going to assign the mesh to our bones, and we'll be moving the bones to create our animations, and all of the uh the the mesh, the body here will be deformed according to the armature. So, for this, we're going to go into front mode. It's a little bit easier. and then shift A to create a brand new object. And make sure you're in object mode. Shift A and then create an armature. Um, if you press G to grab, move it around, you'll see that it's a little bit of a pain to see the bones.

**33:43** · This is actually going to be a little bit painful to edit if we don't see them. So, there's a handy way to do this in the editor. If you go into this uh menu called data and you scroll down to viewport display, you want to check in front. And now the bones will always be uh placed in front. All right, let's go ahead and start working on our um skeleton. So, I'm going to press tab to go into edit mode. Press this bone here.

**34:04** · GZ to bring up. And I'm going to bring it to about here to the base of uh the groin area. And then take the extremity here. GZ to bring it down to the neck here. A to extrude. Zed to extrude on the Z axis. And create a bone here for the head. So, that's our first chain of bones. And we're going to want to create two other chains. One for the arms and one for the legs. So, press shift A to create a new chain of bones. Select this bone. G to grab. Let's bring it to the um the shoulder area here. Select the extremity. G to grab.

**34:34** · Bring it to the um elbow area. And then E to extrude. Bring it down to the hand area. Let's do another one. Shift A. Select this bone.

**34:45** · G to grab. Let's bring it up here to uh the upper leg. Select the extremity. G to grab. Bring it down here. B to extrude. And bring it down here. Uh I'm going to take this and G to grab. Bring it up a little bit. All right. So, I think this should be fine. Uh, let's go ahead and fix the location on the Y axis. So, let's take these one at a time. I'm going to take this, uh, joint here, gy, bring it back a little bit.

**35:09** · This one here in the head, gy, and bring it forward. Um, let's take this pelvis area, GY. Bring it forward a little bit. And then, how about this one here, GY, bring it back. The knee area, gy. Let's bring it forward. And then this foot area, Gy, bring it back. Uh, let's go for the arms. Now, I'm going to take this uh joint here, gy.

**35:31** · Bring it back a little bit. This uh elbow area, gy. Bring it back quite a bit. And then this one, gy. Bring it back a little bit as well. All right, I think this looks fine. So now, if you were to go into um pose mode, this is where we're going to be uh making changes to the skeleton, and we should see the uh the the mesh move with it alongside down the line. So if I take the central bone here and I press G to grab, you'll see that the only things that move alongside are uh the headbone.

**35:59** · And typically this is normal because whenever you extrude a bone, it automatically creates a parent child relationship. But these bones here are completely disconnected. So we actually want to connect the bones together. And for that, I'm going to create a parent child relationship by clicking on the upper arm bone first. Shiftclick on the torso. Ctrl P to create a uh parent child. Oh, actually we need to be in edit mode. Sorry. So this is editing the bones. So go into edit mode and do this.

**36:23** · So select first the upper arm, shift, select the torso, ctrl P, make parent, keep offset, and then do the same with the uh lower leg. So uh take this bone, shift, select this bone, Ctrl P, keep offset. Now if you go back to pose mode and you take this torso here, G. And now you should see the entire skeleton uh move alongside with it. Okay, so this is great. And I guess we can move forward with naming the various bones. So, let's h go back into edit mode and let's take this one F2 to rename and we'll call this torso.

**36:54** · This one F2, I'm going to call this one head. And then we're going to be using some naming conventions uh that Blender uh offers in order to automatically generate the other side of the skeleton. So, that will be pretty handy. So, let's take this one F2 and upper arm R for right. As you can see, this is the uh right we're looking from here. And then this one here, F2 lower arm dot R. This one, F2 upper leg dot R.

**37:23** · And this one lower leg dot R. All right, back into pose mode. So when we are going to create the animations, um, say we want the player to breathe a little bit. He's going to be, you know, going up and down a little bit. So here I'm going to be moving this bone up and down. The problem here is if I move the bone uh up or down, you can see that the entire skeleton moves along with it. And that could be fine, right? You could say like, okay, I'm going to start with moving this one down and then I'm going to have to move this one up and this one move forward and so forth. And that could potentially work.

**37:55** · The only problem with this is it's just a little bit of a pain. So for that, um, you know, Blender offers a very handy way to create some constraints on the bones. And typically here, there's a couple of things that we know. For example, we'll know that like this footbone will never go underground.

**38:10** · Uh so we can set a limit to how far lower it can go. And then whenever we um we bend our knee forward, we should be able to indicate like the direction where the knee would naturally move forward. So we can create some bone constraints. Um the one we're going to be creating is called inverse kinematics which means that um you know basically the bones will affect the uh various so going upwards in the bone chain will affect how the rest of the bones uh operate as well. So we'll be creating this to make sure that we have like natural bending of the bones and it will be very easy to create animations.

**38:43** · All right. Um lots of talking. Let's go back into edit mode. For this, we need to create two new bones, which will serve as references for Blender to know how the other bones could move. Uh, let's go ahead and click on this knee joint here. Press E to extrude. Y to extrude on the Y- axis. And then just, uh, click on this bone. I think it should be fine.

**39:05** · Click on the heel. We'll do the same thing on the opposite side. E to extrude, Y to extrude on the other side.

**39:10** · Now, these are just going to be serving as references. So you can uh click on this bone here and press um so we don't want these bones to deform the mesh. So we actually don't want them to be part of the chain of the parent child child uh chain. So in Blender um lots of shortcuts are used with control things.

**39:31** · So typically we created a parent child relationship with control p. Typically you can do the opposite with alt. So here we want to remove the uh parent child relationship. We don't want that to be connected with this chain here.

**39:43** · here. So, I'm going to select this bone, press alt p, and clear the parent. And now, if I move this bone around with gy, I actually have freedom to uh move it wherever I want. And by doing this, basically, I'm moving it in this this bone here, it will indicate where this knee can move towards. So, actually, I'm going to bring it up a little bit. And gy. Okay. So, my knee is going to go towards this uh area when I when I move my leg.

**40:08** · And let's uh take this one. And we also want to split it split it from the chain. So, alt P clear parent. And the last thing we want to do is make sure that they don't deform the mesh. So, I'm going to select this one. Shift select this one. And if you go to uh this menu here called bone, you want to uncheck deform.

**40:30** · Okay. Let's give these some names as well. So, uh back in edit mode, let's uh F2. And I'm going to call this one IK for inverse kinematic leg pole target.

**40:43** · R. It's a bit of a complex name, but basically this tells um Blender whenever we create this inverse kinematic constraint that this is the direction where my um my knee can go. So this is going to be the pole target. Okay. And then let's uh take this one here and also rename it to ik leg target.

**41:04** · R.

**41:06** · All right. So, now that uh we have all of our names, all of our bones with our names ready to go. Let's go into pose mode. And this is where we can create our constraints, let's go ahead and click on this lower leg here and go into um this new tab called bone constraint. Add a bone constraint. And let's pick uh inverse kinematics.

**41:27** · All right. Target is the armature and the bone for the target is uh IKEA target R. And then let's do the same thing here. armature and our pole target is going to be ikle leg pole target.r.

**41:40** · All right, as you can see here, it h completely moved everything and this is because um uh by default, you know, the it will affect all of the upper bones back to the chain. So for that, we're going to make a couple of changes. First of all, let's set the chain length to two, actually to one. It's only going to affect uh this bone here. And then um I believe that's all we need to do. So we can try this out. So let's say I'm going to take this bone here. G to grab I guess.

**42:12** · Maybe do I need to set to G to grab? Okay. Okay. So yeah, it needs to affect this bone and this bone. So the only problem here is you can see the the bone uh the the player had a little bit of an accident. So we need to change the pole angle. Let's set this to 90°. Nope. minus 90 degrees.

**42:33** · There you go. All right. Now, if we bring this G to grab and move it, it should uh deform the knee properly. Okay. And it should go in the direction of this target here.

**42:48** · All right. So, now that we have completed our inverse kinematics, we're ready to create the other side of the skeleton. So, for that, I'm going to go back into edit mode because we're creating new bones. A to select all of my bones, it will also include the inverse kinematics bones and rightclick and symmetriize. And if we did everything properly, it should have created the other bones here. If you press F2, it should have the proper names. Upper leg.l. All right.

**43:14** · So, we now have our skeleton that's ready to go. and we just need to have the um armature start deforming our mesh. Now, there's multiple ways to do this. Uh the three main ways that Blender offers is one of them is to do what's called vertex painting. So, basically you you would pick a bone and and then select the uh vertices that are affected by this bone. And we could do this manually, right?

**43:41** · Like for this bone, we could select like all of the vertices here and then take this bone and then select all the vertices of the upper arm. And that should work. and it gives you like a very fine grain detail on um on on how the bones deform the mesh.

**43:55** · Another one you could um that Blender offers is called vertex groups. So basically if we were to have um to split our mesh into different vertices vertex groups, you could then give them some names and then assign each bone to a vertex group. So that's um a more programmatic way to actually set the relationships between the bones and the vertices. on our end, we're going to be pretty lazy and we are going to be doing um the the I think the the the built-in

**44:24** · functionality, which is to automatically set weights depending on where the bones are. So, that's why we had to kind of move and rotate the bones around so that they could at least match as best as possible to the mesh. So, we'll see how that goes. I'm going to uh in select in edit mode, I'm going to press A to select all my bones. And then um actually, I think we're good here. So, let's go back into object mode. Select the armature and then shift select the character and Ctrl P to create a parent child relationship.

**44:52** · And this is going to tell us how do we want to um oh I think we did the reverse. We need to set first the mesh and then select the armature and then Ctrl P. And there we go. Now we can do an armature deform and we are going to set automatic weights.

**45:14** · All right. And now that we have the automatic weights, we can go back into the armature into pose mode. And now the magic moment should happen. Let's say I move this leg here. G. And you can see here that my whole uh mesh moves. So I take this torso gz. You can see here that I see you have the inverse kinematics uh that work in our favor.

**45:36** · All right. So this looks great and we should be able to start creating the animations. The one thing though I want to show you briefly before we start doing this is um uh let's go ahead and export this into uh let's export this into GDAU and we are going to try to create our ragd doll skeleton in GDO. I want to show you something real quick because it will require us to come back in Blender and do something uh with respect to our armature.

### Creating skeleton from armature

**46:03** · So, let's go over into GDO and we're going to um actually let's go ahead and uh select let's go back to object mode. Select the armature. Select the object and file export GP and then export as the character. Um and I guess for now we can just leave it like as is. Export. And then let's go over to GDAU.

**46:28** · All right. All right. So, back into GDO, I want you to go into the player scene and um we're going to reimpport our character. If you double click here, you should see that we now have the armature and the skeleton. So, let's click on reimpport. And we should now have uh our player with the skeleton here. You can rightclick and editable children. And we should now see the skeleton. We can see all the bones. Um however you can see here that there's a difference between the bones that are being shown here in GDAU and the bones that we have created in um in Blender.

**46:59** · Uh it's actually missing the uh the what's called the leaf bones. So we're missing like the lower leg, the lower arm, and then the the head. And this is going to be a little bit of a problem when we do our ragd doll physics because basically we'll have a little bit less control. Uh we're going to have some a lot of things are going to be rigid. we won't be able to uh bend or fold some of the lower extremities of the body.

**47:22** · And so uh I'm I'm assuming I think this is because um Godo sets up its own armature here from the base of the bone to the base of another bone. And so if it's not detecting um another bone, it's not going to create uh that bone. So it unless it's connected to another bone, we're just not going to have uh a bone created for us. So this will, you know, this is not going to be perfect for ragd doll physics.

**47:50** · So the the one um the one way that I found to remedy the problem is to actually create extra bones in blender and then to reimpport the character. So we're going to have um a bone for um the hand, a bone for the foot, and then a bone for the hair. Uh that way we'll have all of our extremities here. And uh let's just do that before going forward and and working on our animations. So let's go back to Blender. All right, back into Blender. Let's go into edit mode.

### Adding leaf bones

**48:20** · And I'm going to take uh Oh, we need to select this armature here. Let's go into edit mode. And let's take this bone here. E to extrude Y. And I'm just going to keep this small bone like this. And then let's do the same for the hand. E Y.

**48:40** · We're just going to do one because then we'll symmetriize again. And then this one here, the extremities here, Ey. And bring it forward. Then let's go ahead and rename these. So, um, select this bone F2. Let's call this hand. R. And let's take this one. F2 hair.

**49:03** · And this one here, F2. And leg uh foot R. Okay, then A to select all of the bones. Right click and semmitize. And this should give us the other bones on the other side. All right, let's go back out of edit mode. Let's select our armature, shift select on our mesh, and let's export it and double check that everything is imported properly in GDAU.

**49:30** · So, export glTF, and let's go to GDAU again. All right, back into GDAU. You can see that uh the leaf bones have been automatically imported and will now be able to have proper ragd doll physics after that. Um you may see some errors.

**49:43** · I think I saw that um every time sometimes I I change the name of my bones, but uh those are usually temporary. If you start the game, they should clear out. If you restart GDO, they should clear out as well. So uh you know, not not exactly sure where those are coming from. But anyways, here we do see all of our uh various um uh bones.

**50:02** · We actually don't need to export these ones here. Uh so whenever the next time we export the armature, we can actually uncheck these ones. Okay, I think we are good to start working on the animations.

**50:13** · So let's go into Blender. All right, so back into Blender. Let's go ahead and start creating our animations. And we're just going to create uh two animations to start with. The idle animation and then a run animation. Um so for that, let's go ahead and select the armature here. And then let's go into uh pose mode. And let's go into the animation tab here at the top. All right. So, uh, by default, I'm going to zoom in here so we can see everything properly and make sure that you are, uh, in the action editor and not in the dope sheet.

### Idle and Run animations

**50:44** · And then we are going to start creating our various animations. So, right now there we don't have anything. We're going to actually start by creating a default pose. And this will serve as reference for um, every other animation that we'll create. We'll start from that default pose.

**50:59** · So click on new and click and on the name here let's call this uh default and my understanding here is that blender has a form of uh garbage collection and every action or thing that you do needs to be tied to um either an animation or something that you might be doing otherwise it may be erased by this garbage collection. So, one way to protect your objects from being erased is by clicking this shield key here, uh, fake user.

**51:25** · And so, basically, this means that there is, uh, some user using this this action, this animation, and so it should never get deleted. Um, I've never actually had that done on my end, but, you know, I'm again, I'm not a huge Blender expert.

**51:40** · All right, so let's go ahead and create our default post. Now, the one thing I want to um do here is our characters are by default going to hold a shield and sword. It's a bit hard to see what it's going to look like here, but um down the line we're going to add the meshes here to better see what the animations look like. But for now, let's just do um some basic um changes here so that it looks a little bit more like the player is in a ready state.

**52:06** · So, I'm going to go here, press R to rotate, bring this uh about here, take this bone, R to rotate, bring it to about here. And I think this is where the shield is going to be. Let's press R and rotate it. As you can see here, every time I move my mouse with the middle cursor and then I rotate the bones. And this is just a handy way to uh modify the armature. I think this should be okay. Maybe we need to bring it a little bit further in front of the player here.

**52:35** · All right. Something like this. And then the shield will be at the end. Again, we'll be we'll be playing with this once we actually have a shield in hand. It'll be easier to see. But let's do the same thing with the uh sword here. So, I'm going to take this bone, rotate, bring it forward a little bit. This one, rotate, and something like this, right?

**52:53** · Like the sword's going to be here. Uh, although we need to see in the camera, so maybe rotate a little bit more. All right. Something like this. Okay.

**53:08** · So, this is going to be our uh default u animation. I'm going to press A to select all my bones and I to insert. And this is going to be my default pose here. So, it inserts a key frame. Uh, one thing you might want to do as well is uh I think if you press this record button here, it will automatically key and add new key frames whenever we make changes to the bones. All right. Press Ctrl S to save. And let's start by creating our idle animation.

**53:36** · Maybe we can uh double check what it looks like here. Z material preview. And we can see the uh character here. Okay, let's go ahead and duplicate this default and we're going to rename this to idle. Um, we're going to select this frame here. Shift D to duplicate. And then let's bring it to about 20 here. Let me zoom in. Uh, yeah, I think this should be good.

**54:01** · And let's go to frame 10. And then we're going to make some changes here. Uh, we're just going to keep it very simple for now. Let's take this central bone, GZ, and bring it down. And maybe we rotate this one a little bit. And rotate this one a little bit.

**54:18** · Okay. And that's it. So, if we wanted to preview, we can set the end here to uh 20. And we can play the animation by pressing uh space. All right. That might be \[laughter\] that might be a little much for our character. But again, like you know, we our our camera is going to stand still, but this is going to be the enemies.

**54:40** · Yeah, it's a little bit too much. Let me uh stop the bouncing a little bit. Uh space to stop. It's like all the bones.

**54:47** · I'm going to take this central bone here. Go to frame 10. GZ. Let's bring it up a little bit more. All right. How does this look?

**54:54** · Does this look better? Space.

**54:58** · Yes, it looks better. It's almost a little fast. Actually, we don't need to to be that fast. Uh, press space. And then let's space it out a little bit. A to select all the bones. Uh, select this one here. G to grab. And let's bring it to uh 30. And then let's take this frame here. G to grab. Bring it to 15. So it's halfway. And then let's make sure to change uh this. By the way, this is only for playing it in um in in Blender.

**55:24** · Whenever we import in GDO, good will look at the last frame and just uh create the um you know create the animation from there. Oh, the one thing I forgot to mention is there's a convenient way to tell GDO that these are looped animations. Um we can similarly to how we had the dash call for the various um meshes that we created here. You can do underscore loop and whenever we import the animations into GDO, it will automatically have the looped animation there. All right. Does this look a little bit better?

**55:57** · I think so. Kind of looks like he's on a horse or something. It looks a little bit weird. That's okay. Once we'll have like a weapon and shield in hand, it might not look as as bad.

**56:06** · All right. Um I think this should be good enough. Let's go ahead and create our um walk or run animation. So, let's go back to default. Oh, let's make sure to check this uh shield icon here. Let's go back to default and let's duplicate it and call this one run loop. \[snorts\] All right. And this should be a little bit faster. So, first I'm going to duplicate my first key here. Shift D.

**56:36** · Let's go to frame 12, maybe. And then um let's go to frame let's duplicate it and bring it to frame uh let's do seven and bring this G to 13. Is this about halfway? So 1 to 13. So basically this going to be our middle point. And in the center at frame number four, let's um I think here in the middle, we need to bring this down. Select this frame. GZ.

**57:13** · And then let's start walking. So at frame four, let's take this one here. Gy. Let's bring it forward here. GZ.

**57:22** · Bring it up.

**57:24** · And GY again. Let's take this bone here. Gy. Bring it back. And let's see what can we do here.

**57:35** · Rotate it.

**57:38** · Maybe too much. Let's see. Okay. And let's do the opposite here. So to do the opposite, one handy way you can do select all the bones. You can select this frame. Ctrl + C and then you can go to the new frame that you want.

**57:52** · So here in frame 10, shift control +v will actually paste the opposite. So now we have if you have the armature well set up with the left and right then you should uh automatically work. All right, this is a quick animation. Let's go to the end at 13 and let's play it and see. Uh let's see what's the problem. Oh, we need to stop at frame 12.

**58:18** · Okay, I think this looks \[sighs and gasps\] odd. \[laughter\] Again, we we'll have to see. Maybe we need to move give a little bit of motion to uh the arms as well to make it a little bit more natural. So, let's rotate this a little bit. And then let's rotate this one a little bit as well. And then um let's see what else. I think the head shouldn't be wobbling like that. Let's see if we can uh bring it back.

**58:50** · Is that too much?

**58:52** · It's way too much. Okay, let me take the headbone, go to frame zero, and I'm going to copy uh shift D to duplicate it. I'm going to bring it to uh number four. So that way it shouldn't move the head. Let's see. Yeah, let's just move it a tiny bit. R. There we go. All right, let's take all the bones. Take frame four. Uh, shift C.

**59:14** · Go to frame 10. Shift Ctrl +V to paste the object. Oops. Go to frame 10. Shift control + V. All right. How does this look? Does this look a little bit better? Oh my goodness. \[snorts\] You can see how difficult it is to create uh good-looking animations, huh? But, you know, just picture like a monster running at you. I should probably just jump a little bit more. Be a little bit more exaggerated.

**59:41** · All right, let's see here. Can we bring this up?

**59:47** · GZ.

**59:50** · Yeah, this is a little bit more dramatic. Let's bring this one back. Gy and GZ a little bit.

**59:57** · Gy.

**59:59** · I I'd actually love to see what you guys are building on your hand. Yeah, this there we go. This is now This is like uh fancy running here. Let me select all my bones. Select frame four. Ctrl + C. Go to frame 10. Control shift V. All right, let's see if this looks a little bit better. No, this looks even worse.

**1:00:22** · Oh, I didn't do control shift V. So, select frame four. Ctrl + C. Go to frame 10. Control shift V. All right. There's a lot of jerking around with the arms.

**1:00:53** · Yeah.

**1:00:55** · Well, they will have a shield and armor, so you know, that may not be too bad. Okay. I I think I'm about uh done here. Hopefully on your end you guys are able to do something that uh looks much better. But this should be good enough for us to start playing with in uh good and make sure that our animations work well. And we'll do some iteration. We'll come back to Blender a bunch of times.

**1:01:17** · We'll create a bunch of new animations. By the way, these animations will serve for both our player and for our enemies.

**1:01:23** · So, we'll just be changing the skin here uh the texture on the character. All right, let's hop out of this uh animation layout. I'm going to select my armature. Shift select my body and then file export glTF and character. So a couple of things here. Uh I'm going to check animation and then inside uh include uh make sure you have selected objects. Transform data. Um let's do mesh. You want to make sure you apply the modifiers.

**1:01:52** · And then in armature you want to check uh this one export deformation bounds only. This will make sure that our inverse kinematic bones don't get exported. All right, let's go ahead and export. And then let's hop over to GDO to see these in actions. All right, so back into GDAU. You should now see that um it looks like uh my my inverse kinematic bone was still exported. Let me go back to Blender real quick.

**1:02:24** · And let's see, go back to edit mode. And I want to make sure that these bones Oh, sorry. Select the armature. Let's go to edit mode and select uh each of the bones here. Make sure that these don't deform. Yeah, I'm missing these here. All right. And then uh go ahead and export it again. So, I'm selecting my armature, my mesh, and export. GLTF. Save. And let's go back to GDAU.

**1:02:57** · All right, ino I can verify here that my skeleton is correct and my armature is all ready to go. And I can also see that it imported in animation player. If you go to animation player, you should now have all of the animations that we created. And the idle should also be set to loop. We're going to set this one by default. And you can press uh play here and you should now see your character animate properly.

**1:03:24** · Uh we're going to do just a little bit of code here. And depending on whether we're have any sort of velocity, we're going to use either the idle or the uh run animation. We're going to need a reference to our animation player. So, right click on animation player and oh, actually, we doesn't look like we can uh have a reference to the name most likely because this is a uh this is a child of this object here. So, that's okay. We'll get a reference to it. So, let's go into the script here. go over to the top and on our N variables, go ahead and drag our animation player.

### Playing the proper animation in the script

**1:03:58** · Nope.

**1:03:59** · Yeah, this is I don't know. It's really finicky finicky for me for some reason. All right. And then let's go into our uh code here. I guess we can do uh we can do it here for now. We're going to move a lot of this code anyways. For now, we can just have a quick and dirty version here. So let's calculate the horizontal uh velocity.

**1:04:26** · This is going to be our player dot uh sorry velocity dot x. And we don't want to check the vertical velocity. The the thing is here is we will be using the idle animation when we jump. Um otherwise it's going to be like running in the air. It's going to be a bit weird. if our horizontal velocity and here we want to use length squared.

**1:04:50** · It's a little bit faster. I mean it's it's really not a whole lot faster but basically it uh prevents good from having to do a a square root. Um so if it's greater than 0.1 and we are on the floor then let's go ahead and uh animation player.play our run animation.

**1:05:12** · Otherwise, we'll play our idol animation. Okay, I'm going to pause here for a second so you can see the code. Very simple. If we are if we have any sort of motion and we uh are on the floor, we're going to use the run animation. Otherwise, we're going to go into the idle animation. All right, let's go ahead and press F5.

**1:05:30** · And okay, you can actually see, let me see if we can bring this guy here. All right, there we go. \[laughter\] All right, so this is going to be our character. You can see on our end if we don't move we have our idle animation. Uh and if we do move we can run forward.

**1:05:45** · I actually feel that the characters might be a little bit big by the way. Uh I might bring them and scale them down a little bit. Uh you can see here in terms of scaling it doesn't quite match the scale of the the rest of the map. But you know that's good enough for now. Uh by the way you could do a a puzzle game with this. uh you know have to bring both players to the end without falling in the hole here. And sorry buddy. Oh, I'm here with you now. All right. And so there it is.

**1:06:14** · So today we learned how to do the basics of creating a mesh in Blender, creating a texture in a sprite, applying this um all the way to bringing this into GDAU.

### Conclusion

**1:06:30** · All right. So, I know that this was a lot of content, uh, especially if you've never created an animated character before, uh, you know, I have to say that as a person who doesn't actually spend a ton of time in Blender or a sprite, uh, all of those steps for me even do take quite a bit of time to remember. Uh, you know, I try to keep it as simple as possible and, uh, I think actually the best thing for us, you know, developers to do is just to try to do these things over and over again from scratch. Um, you know, I would strongly encourage you to do that before the next lesson.

**1:07:00** · Just try to create a brand new 3D mesh um for a character, maybe a monster. Create an associated texture. Try to keep it within like 32 pixels. That way, I think it will fit in well with this game here. And then, u you know, apply try to apply the texture, UV unwrap it, and uh yeah, reuse everything that we learned today.

**1:07:17** · The more you do it, the easier it will be. So, um currently, it's a bit hard to see whether our animations are actually working properly or not. Like you can see, I think there's a lot of jaring movement within the arms. So, we'll probably fix that in the next episode.

**1:07:30** · We'll create an enemy. We'll apply a different texture. This will allow us to actually have a character in front of us that doesn't move that we'll be able to inspect and that will be uh pretty helpful. And then we'll start working on the equipment, which will play a pretty big part in how to create the current and future animations. Um, so we'll probably create like a shield, a sword, just assign them to the various bones, and we'll see them uh move in motion with the animations that we create. So today was a ton of content and once again we're way past the half an hour mark and I hope that you were able to learn something useful.

**1:07:59** · Um I did want to note that you know I'm illustrating one way to do things here but there's actually a ton of ways to do exactly what we did today. Uh first of all starting with like the modeling tool uh for low poly work like this. I think most people actually use a tool called Blockbench which is um something that specialized for low poly and and for placing textures. It's actually supposed to be really great. I haven't used it much, but you know, if I'd love to see anyone try this out. Uh, for animations, a lot of people use pre-built animations.

**1:08:28** · Um, there is this tool from Adobe called Miximo where you can just get a ton of really cool uh, professionallook animations. It will look a little bit out of place here because again, like those things are really fancy, but uh, you know, I I actually do think there's something pretty um, you know, poetic and awesome about creating everything yourself from scratch with the skills that you have.

**1:08:50** · And uh as you do more and more of that, you actually see those creations become better over time. There's that's something that you know, nothing can truly replace. So that being said, this is going to be it for this episode. Once again, huge thank you for sticking around uh all the way through. If you enjoyed today's content and you wanted to help the channel, please go ahead and hit the like and subscribe buttons, get those algorithms to work in my favor so I can finally reach 10 billion subscribers. That being said, time to take a quick break and I will see you in the next episode. Cheers.