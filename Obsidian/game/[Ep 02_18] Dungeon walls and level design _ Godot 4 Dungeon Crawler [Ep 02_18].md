---
title: "Dungeon walls and level design | Godot 4 Dungeon Crawler [Ep 02/18]"
source: "https://www.youtube.com/watch?v=ZMWVijygkRg&list=PLT26e2jOwbdg&index=3"
author:
  - "[[The GameDev Tavern]]"
published: 2026-07-02
created: 2026-07-16
description: "Learn how to create a 3d dungeon crawler from scratch in Godot!In this second episode, we start from Aseprite to create our textures, create our wall meshes in Blender, UV unwrap texture them, then"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=ZMWVijygkRg)

Learn how to create a 3d dungeon crawler from scratch in Godot!  
  
In this second episode, we start from Aseprite to create our textures, create our wall meshes in Blender, UV unwrap texture them, then use them to create our level in Godot.  
  
Play the final game here: https://gadgaming.itch.io/goblinsdencourse  
  
Having an issue? Download the project for this episode: https://github.com/nicolasbize/goblins-den-course/archive/refs/tags/v0.2.zip  
  
Enjoy your stay at the tavern!  
  
#godot #gamedevelopment #gamedev #tutorial #pixelart #dungeon #fps

## Transcript

**0:05** · Well, hey there traveler and welcome back to the game dev tavern. Come on in, grab a drink and warm yourself as we create fun little games together. My name is Nicholas and this is the second episode of the tutorial series where we create a 3D dungeon crawler from scratch in Godot.

**0:21** · All right, so in today's episode we are going to be swapping out this fake ground mesh here for some proper walls and environments. And this is going to be a great opportunity to illustrate how to switch and work from Aseprite or whatever image editor you're using all the way to Blender and then from Blender to Godot.

**0:38** · Now, the first thing that we're going to be doing in order to start coloring our scene is to actually pick a palette, palette of colors. And we're going to try to stick to that palette and you'll see that it actually helps quite a bit to create some visual consistency. Now, if you already have a palette that you like using in your games, feel free to use that one. I would encourage you to use a palette that doesn't go beyond um 64 colors, otherwise it's going to look a little bit off with respect to the very low poly style that we're aiming for.

**1:05** · So, on my end uh I have a tendency to go on the website called uh lospec.com which contains just a variety of palettes that have been uploaded uh by users and usually has a great selection.

**1:16** · So, hop over on the website, click over to palette and then you can actually pick the number of colors that you want in your palette. Um so, on my end I've gone over with 32 colors and I've actually downloaded this file here and this got 32 which I feel um looks like a great palette with like a lot of bright colors which should pop out whenever we're playing the game. But, feel free to pick any palette here uh of your choice.

**1:37** · So, once you've downloaded the palette, go ahead and load it up in your image editor. On my end, I'm going to be using Aseprite and in Aseprite you can actually load the palette and set it as a preset. Um so, here in the uh palette list, I've actually loaded mine as Andedesga here and uh but feel free to you know load it on your end as well.

**1:58** · Um the the entire game is going to be using a single texture. This is going to save on resources and also because we're doing low poly, it's going to work quite well. And the texture is actually going to be pretty small. So, we're just going to create a new file and we're going to make 128 \* 128 pixels. Let's keep the background transparent. As you can see here, each of our texture will represent a 1 m by 1 m. It's going to be 16 pixels by 16 pixels. So, we won't have a lot of canvas to work with, which again, I mean, it's perfect for me. I'm not an artist.

**2:28** · If you are If you are uh really good at art, feel free to use something that's a lot more complicated.

**2:34** · And the first thing that I'm going to do is I'm going to pick all the colors from my palette and I'm going to insert it insert them into uh my my texture. And the reason for this is um when we are in Blender, uh it'll be really useful to have the palette right readily available for us to pick colors from so we can color various um faces of our meshes.

**2:57** · So, for now, I'm just going to start from the very top left and I'm going to um go into the filled rectangle tool and I'm just going to create uh squares of 4 by 4 and then going from one color to the next, I'm going to fill up uh the first two blocks of my textures.

**3:16** · Now, in Aseprite, you can use the brackets to go from one color to the next color so it makes things uh pretty fast. I'm going to speed this up so that uh you don't have to wait through this, but I'd encourage you to do the same thing on your end. That way you have your whole palette available once we start working in Blender.

**3:37** · Okay, once you have completed this work, go ahead and save it. Control S and right next to our cursor, we're going to call this dungeon-texture.png.

**3:46** · All right, and we are now ready to start creating our very first texture, which is going to be here and we're just going to start uh drawing a brick wall. So, I'm going to press M to select this um square here, and this will allow me to paint into it with the brush without affecting the other tiles.

**4:03** · All right, let's go ahead and create the brick wall. So, you can just follow my lead here. I'm going to start by taking this blue here, press L on my keyboard to start drawing lines, and I'm just going to draw the delimitations of my bricks. I'm going to have uh four rows.

**4:16** · And then I'm going to uh put some limits in the middle.

**4:22** · And like this. So, these are going to be the edges of our bricks. I'm going to take this lighter blue, press G on my keyboard, making sure that continuous is toggled off, and that way I paint all of the transparent edges.

**4:35** · And then I'm going to take this lighter blue, so this one here, press B to go into brush mode, and I'm going to add some highlights at the top of the um the various bricks.

**4:51** · Doesn't have to be um perfect, you know, there's a little bit of uh random here, and actually it'll usually look better if it's if it looks a little bit random.

**5:00** · Okay, so now that I have the highlights at the top of my bricks, I'm going to go ahead and pick the darker blue here, and then just uh I'm going to paint some of the uh junctions between each of the bricks here.

**5:20** · All right, I think this looks pretty good. Let's go ahead and make sure that it works okay when things are tiled. I'm going to press M to select.

**5:27** · Control C, control V. I'm going to drag it, press my alt key, and then I'm going to do the same thing four times.

**5:35** · And as you can see here, it looks uh quite decent. So, this is all that we need for our brick wall. I'm going to hit control Z multiple times.

**5:43** · Then I'm going to uh copy and paste this below, actually, and I'm going to replace all of my blues with a darker shade of blue, and this way I will have a darker wall that I can use inside my meshes. So, for that, I've been using those four blues. I'm going to use this one and then these three. So, go ahead and pick this darker color, G to paint, and let's go into the crevices. Then speak this one, G to paint the edges.

**6:11** · This one, G to paint the interior. And this one, G to paint the highlights.

**6:18** · Okay, and just like that, we have our various walls. Let's go ahead and save, and we can move forward with the ground texture. So, for my ground, I'm going to do something quite similar. Let me zoom in here. I'm going to press M on my keyboard, double click to select this uh small cell, and let me press Alt, take this dark blue here, and then pressing B, I'm going to start painting some uh some big stones here. So, let's see.

**6:44** · We'll have one that goes here, and that will come out on the other side.

**6:49** · Something like this. Then, let me create another one here that will just come down.

**6:55** · So, it should come down on the other side. Let me maybe close this off.

**7:00** · Okay, and let's do something like this.

**7:03** · Uh let's bring this down here. I think this should look okay.

**7:08** · Uh let's see. Let's create a big one here.

**7:11** · So, maybe something like this.

**7:18** · There we go.

**7:20** · And let's close this up like this. Let's uh create one that goes like this. So, it should go with this one and this one. I think this should look okay.

**7:31** · Maybe close this up here.

**7:34** · All right, let's try.

**7:35** · So, I'm going to then take this second blue here, and press G to just fill in the content and then press Alt, pick this lighter blue, and let's go ahead and add some highlights. Again, I'm just going to add them to just the top of the stones here.

**7:52** · Just some light highlights.

**7:56** · I don't want to go too uh too crazy here.

**8:01** · All right, I think this should look okay. Maybe another one here.

**8:07** · All right, let's try it. Let's try to tile these up. Control C, Control V. I'm going to move this one down.

**8:12** · And let's see what it looks like.

**8:17** · Okay, it's not too bad. I probably want to add less highlight on this part.

**8:24** · And maybe some highlight here.

**8:30** · So, let me remove this one, this highlight here. I'm going to just keep it on this side.

**8:36** · And this should look fine now.

**8:50** · Yeah, this looks perfect.

**8:52** · All right, and then similar to how we did the darker version here, I'm going to do Control C, Control V, paste it below, and I'm going to replace my various blues with the darker version of them. Starting with the crevices and then just working my way up towards the highlights.

**9:09** · All right, and just like that, we have a version of the ground, a light version and a dark version. Okay, go ahead and save and now we can hop over into Blender. All right, so I've just opened up a brand new Blender file. As you can see here, I'm using the version 4.4.3.

**9:24** · Now, in this tutorial, I will probably have to go fairly fast through Blender.

**9:28** · So, if you've never used this program before, you probably want to hop out for a second and go and do some very quick tutorial on how to start using Blender. There's a couple of things you'll want to do first. You'll want to understand how to navigate within the scene, how to move around, and then have some basic understanding of the difference between object mode and edit mode, pressing the tab key.

**9:48** · By the way, I have my hot keys here, so you can always follow along. And then once you're in edit mode, being able to understand the difference between selecting vertices, edges, and faces.

**9:57** · Couple of other things you'll need to know is a couple of very important operations such as extracting a face by pressing the E key or pressing the I key to inset. So, a couple of things that we will be doing throughout the tutorial series. So again, if you've very unfamiliar with all of this, you know, I strongly encourage you to go and do just a very quick tutorial on just the basics of Blender. And once you're done, you can come back right in. So again, I'll be going pretty fast.

**10:24** · You can see all of my hot keys at the bottom left cuz again, this tutorial isn't really meant to be a Blender tutorial, but it's really meant for you to understand the full pipeline of going from A Sprite to Blender and then from Blender to Godot.

**10:40** · All right. So, I have a brand new file here. The first thing I'm going to do is in object mode, press A to select all my object, X to delete all of them. And we're going to start from a blank canvas here. And I'm going to press Shift A on my keyboard to create a new object. I'm going to select mesh and plane. So by default, Godot creates objects that are 2 m by 2 m. You can press N to open up the properties panel and you can see the dimension dimensions here at the bottom.

**11:04** · We actually will want to have our our resolution is going to be 1 m is going to be one of our texture tiles.

**11:11** · So, the 16 by 16 pixels is going to be 1 m by 1 m.

**11:17** · So for this, I'm going to press N again to close this panel. Tab to go into edit mode, and the first thing I'm going to do is scale this down by a factor of two. Press the S key to scale it down and then 0.5 to bring it down by a factor of two. So now I have a tile here who that's exactly 1 m by 1 m. And this is actually all that we need for our ground. So I'm going to press tab to go back into edit mode, F2 to rename it, and I'm going to call this ground {dash} COL. And this {dash} COL stands for collision.

**11:47** · It's It's a pretty handy way whenever you import objects back into Godot, uh Godot will notice that there the name has {dash} col and will automatically create a static body with a collision um uh shape assigned to it. So this is going to be pretty handy. You don't need to do it. You could always set this up in Godot directly, but on our end it's going to be pretty convenient.

**12:07** · Uh let's go ahead and save this file.

**12:09** · I'm going to save this into my um let's go into not assets, let's go into Oh, actually assets should be fine.

**12:17** · Let's create a new folder. I'm going to call this blender.

**12:20** · And within blender, I'm going to call this dungeon {dash} tiles.blender.

**12:26** · Go ahead and click save.

**12:27** · That way we make sure we don't lose the progress.

**12:30** · Let's go ahead and texture this ground.

**12:32** · So we're going to import the um texture image that we had earlier. For that, you're going to go and open up a new node to the side here, new window.

**12:43** · And bring this up here. And let's go ahead and go into this selection and let's pick shader editor.

**12:52** · And by default, we need to assign this a material. So go into the material tab at the bottom. Whenever you create a new blender file, it will come up with a default material. Let's go ahead and pick this. And right now it doesn't have anything um assigned to this node. I'm going to go ahead and zoom in here a little bit.

**13:09** · Okay, and we could change the color, but actually we just want to assign the texture. So shift A to insert a new node, select texture, and select image texture, and then just drag it somewhere here. And then let's click on open.

**13:22** · Let's find the file that we had saved earlier. So on my end, it's in assets texture, dungeon texture {dot} png.

**13:30** · You want to connect the color channel to the base color and then let's make sure to set the um uh the linear to closest. This will ensure that we will have crisp edges for our pixel art. All right, so right now we cannot see anything. Let's press Z on the keyboard and go into material preview and now you can actually see the material that is being applied. So as you can see here, it's not applied the way we want it. We need to do some UV wrapping so that our texture maps exactly the shape of our mesh here, the shape of our face.

**14:01** · So for this we're going to press tab to go into edit mode, U and then let's select cube projection. And then here let's hop over to the UV editor view.

**14:12** · And we should now have So if you go back into face mode on the right hand side and click on the face, you should now have the face selected here. Going to press A on the keyboard and before we scale this down, go over into the UV menu and then go into round to pixels and select quarter. This is going to be critical for us to have very precise um uh wrapping. So S to scale it down and then scale it down to roughly here. G to grab it. Let's bring it towards our ground. You can zoom in here.

**14:41** · Let's make sure that you've grabbed everything properly. So G to grab and bring it down. And if you haven't scaled it properly, you can just select the various vertices, G to grab and you can move each of those vertices around. Just make sure that everything fits in the corner properly.

**14:57** · Okay, and this is it. This is our ground. That's all we're going to need.

**14:59** · We could import that into Godot and use that right away. It will make it for a much better ground than what we've created so far. But we're going to go ahead and create all of the other tiles as well that are going to create our levels. So we're going to start by creating the walls. And for that I'm going to start by duplicating. So make sure you're in object mode, shift D to duplicate. X to move it alongside the X axis and then two to move it by two units. Enter.

**15:24** · And let's go ahead and rename this F2.

**15:27** · We're going to call this wall {dash} uh side {dash} call.

**15:33** · Uh tab to go into edit mode, and then let's go ahead and start working on this uh wall here. So, I'm going to press two to go into edge mode, uh select this edge here, press E to extract, Z to go on the Z axis, and one to go up by 1 m.

**15:47** · As you can see here, the wrapping the texture wrapping is completely off because, you know, all of this texture is basically on a single uh line um that's zero pixel wide. So, let's go ahead and press three to select faces, select this face here, and then press U on your keyboard, Q projection. And you can zoom back here with your mouse wheel, A to select, S to scale it down, scale it down to roughly here, G to grab, and then let's go and map it to one of our brick wall that we had created earlier.

**16:16** · So, S to scale up, and there you go. You should have something that looks roughly like this on your end.

**16:24** · Okay, so this looks great. Press three to select this face once again, Shift D to duplicate, right click, and then GZ, go up by 1 m. So, now we've duplicated this um face. We'll duplicate it here.

**16:38** · By the way, there is now two vertices here and two vertices here. We'll just be cleaning this up in just a second.

**16:43** · For now, let's just go ahead and finish creating the side of the the wall. We'll want it to basically go up here about 3 m or so. Now, press two on my keyboard to select this edge. And this time, I'm going to be looking at uh the Y axis here. I'm going to zoom in here a little bit. Press E to extract, and then I'm going to press control on my keyboard.

**17:04** · And this will enforce that I stay within uh this snapped view here, and I'm going to go three pixels to the right, uh four pixels to the top, four units per se.

**17:14** · Press E again, and then control, four units to the right and three units to towards the top. E to extrude again.

**17:22** · Control and then three units to the right. Okay, and this should align with the bottom portion here. So, once again, we're going to fix the UV wrapping. So, pressing the mouse button to rotate. I'm going to press three on my keyboard to select the faces. Let's start with this one. U to unwrap, cube projection.

**17:39** · It's right here and then A to select all of it, S to scale it down. And then let's bring this. I think we're probably going to have maybe two rows of bricks.

**17:48** · And I'm actually going to use the darker side of the bricks since our lighting is going to be towards the bottom. We should probably make the upper ceiling part a little bit darker. So, G to grab.

**17:58** · Let's bring it here. And then I'm going to take each of those vertices and then individually I'm going to move them to where I want them to be.

**18:09** · All right, how does that look? I think this looks okay. Let's do the same thing for the this face here. So, three to select the face. Select this one. U cube projection.

**18:19** · And select all of the vertices here. S to scale down, G to grab, bring it back here. I think this is rotated the wrong way. So, we can just orient it the right way by pressing R 90 to rotate it by 90°.

**18:33** · And then S to scale it down and again let's map it to um the two uh bricks that we have here.

**18:44** · Okay, this looks almost okay except I think it's reversed. So, let's go ahead and select the face again and then here press A to select all of the vertices. R 19 180 to rotate it by 180° and this should look much better.

**18:59** · Let's do the same for this final face all the way here to the top. U to unwrap, cube projection. Go back here. S to scale, bring it down.

**19:08** · G to grab. Let's uh bring it over there.

**19:11** · Let's rotate it by minus 90°.

**19:14** · S to scale it down, and I think we only have room for one brick up there.

**19:19** · Uh let's see, how does this look?

**19:23** · Yeah, actually I wonder if we should do Yeah, let's Let's uh let's select Yeah, I think this will look better. So, it's a little bit more than a brick.

**19:35** · It's like a all of the uh the brick with the bottom and the top portion of it.

**19:39** · Okay, this looks decent. Let's go ahead and make sure that it tiles properly.

**19:43** · But before we do that, let's uh go ahead and merge all the vertices. So, press A to select all of your faces, M to merge the vertices, and let's click by distance. Open up this menu here, and we're going to set this to 0.1 m.

**19:57** · And this should show you how many vertices have been removed uh through the process. So, we should now have a mesh that is pretty clean. Press tab to go back into edit mode, and let's double-check that everything tiles properly. Shift D to duplicate. Uh let's go Y one.

**20:14** · So, we have kind of two uh walls here.

**20:18** · And then, let's take another um sidewall here. Shift D to duplicate, right click, R Z uh 180.

**20:30** · And then, G X 1 m.

**20:33** · Let's duplicate this one, Shift D Y one.

**20:38** · And let's just inspect and see how things look. So, this is going to be like a hallway.

**20:43** · Uh you can see here, this is not perfect. You the the the upper portion here, the bricks kind of don't align, but I think that's okay. I think it looks decent enough.

**20:51** · And our ground here looks a little bit funky with this uh stone here. So, maybe we can fix the um fix the graphics. Uh I think we'd have to add like another um line here. But anyways, this looks fine. This looks good enough to me.

**21:07** · Again, I'm really not an artist, so if you want to spend a little bit of time and and spend a little bit of TLC here, don't hesitate to do that. Uh all right, I'm going to select these three walls that I've duplicated, X on my keyboard to delete all of them, and then we're going to move to a corner tile. So, I'm going to select this edge here, this this tile, shift D to duplicate, X two to bring it to the side by 2 m.

**21:30** · And let's go ahead and start by renaming it. I'm going to call this wall {slash} corner {slash} COL for collision.

**21:39** · And how we're going to do this? Well, basically, we want to keep the ground as is, but because this is a corner, we're going to take these walls and and duplicate them and rotate them alongside this axis here. So, let's press tab to go into edit mode, and let's go ahead and uh press three to select the faces, select each of those faces, shift D to duplicate, right click, R Z 90°. And you can see here that things are a little bit off, and the reason for this is because right now we're rotating alongside the median point.

**22:10** · And because things are a little bit heavier towards the top, towards the side, it has a tendency to not rotate the way that we want. So, instead, we're going to press control Z, um and we're going to select this face here, and then we're going to bring the 3D cursor to the center of this face by pressing shift S, and then cursor to selected. And now, whenever we want to do rotations, and we're going to use that as the pivot by selecting this 3D cursor here.

**22:39** · All right, so let's redo the same thing.

**22:41** · Three to go into face mode, shift select all of these, shift D to duplicate, right click to reset the rotation, R Z 90°.

**22:52** · And here we should be good. I think I might have another copy of duplicates, so just to be sure, I'm going to press A on my keyboard, M to merge, and let's merge all by distance. Yeah, so it removed all of the um duplicate vertices.

**23:05** · Okay, this looks decent. You can already kind of see how it's going to look like from the inside. We'll just need to clean up the top here, and for that we're going to be um we're going to be doing something pretty rough. Again, like I I'm not a Blender expert. There's probably a better way to do this. I press one to go into vertex mode, select this vertex here, and then GG to drag it alongside this edge, and I'm going to bring this all the way to uh this corner here. You don't have to be exact cuz we're going to be merging them after. Take this one and do the same thing. GG to bring it towards the intersection.

**23:39** · And let's do the same thing with this one.

**23:42** · Press GG, and we're going to go to the intersection here.

**23:47** · There we go. We'll do the same thing on the other side. Take this vertex, GG, bring it to the center.

**23:54** · Okay, take this one, GG, and bring it here.

**23:59** · Take this one, GG, and bring it all the way here.

**24:03** · All right. Uh press three to select a face. Let's take one of those two, X to delete, select face, and this should look a little bit better. Once again, things are not perfect. If you zoom in, you can actually see that uh there's imperfections here. So again, we're going to select all of our vertices by pressing A, M to merge by distance, and now it should fix all of the imperfections that we had. So it removed three vertices. So now if you go back into vertex mode by pressing one, and if you take one of those vertices and press G to grab it, you should not not see any issues.

**24:35** · You should see as we are inside, it doesn't look perfect, right? Like those bricks kind of look odd. Um you know, you probably wouldn't build things this way, but you know, from our standpoint, again, this is going to be good enough.

**24:45** · Um ideally, you you would want to um you know, laser focus on the details, and you would have to make some changes in tight your texture. But for now, I think this is going to be okay.

**24:56** · All right. So we have the corner tile.

**24:58** · Um one thing that I want to make sure that we do is when you're in object mode, so press tab to go into object mode. I want to make sure that the the the faces are facing the right direction cuz here you can see that the texture appear on both sides, but actually when you play the game, the textures are only applied on the one side. So for that, you can go over to the top and inside this menu here, just select face orientation and this should show us the ways that the faces uh that things are facing. Things look okay for now.

**25:29** · All right, perfect. So we just need one final mesh, which is going to be kind of the outer corner so that we can have like an outer um edge and we'll be able to create more interesting rooms than just square rooms. For that, I'm going to take this um side wall once again, shift D to duplicate, X 4 to move it over by 4 m.

**25:49** · And uh it's actually going to be very similar to what we did here except we're going to do the opposite uh of the vertices that we brought. So, tap to go into edit mode and then three to select the faces. I'm going to select all of these faces here.

**26:04** · And shh.

**26:06** · Oh, we want to rotate them again. So let's go ahead and press select this face first, shift S to bring the 3D cursor here, and then go ahead and select all of these faces.

**26:17** · And shift D to duplicate, right click, RZ 90°.

**26:24** · And uh actually we don't need the walls here. So let's go ahead and delete those. So uh select all of those four faces, X to delete the faces, and we're just going to uh work on this portion.

**26:37** · So we want to basically get rid of these these small things here that uh that come out. So for that, we're just going to similarly go into vertex mode pressing one, take this vertex, GG and bring it all the way to the end.

**26:54** · Okay, I'm going to do the same thing with this one. GG and then go towards the intersection here till there's no more red.

**27:00** · Uh and then this one GG and then bring it towards the top here.

**27:08** · Okay, we want to do the same thing on the other side.

**27:11** · I'm going to go rotate, take this vertex GG, bring it all the way to the end.

**27:17** · This one GG, bring it all the way to the intersection here.

**27:20** · And last one, this one GG and bring it all the way to the intersection here.

**27:27** · Okay, and then press A to select all of the vertices, M to merge by distance, and this should be uh good enough.

**27:35** · This actually doesn't look half bad uh in terms of UV wrapping. But again, you you can see definitely see some imperfections.

**27:41** · All right, we are pretty much done for the walls, uh the main walls of our rooms. The one thing we're going to be doing all right, let me go ahead and rename this. Let's call this wall- outer- call.

**27:56** · The next thing we're going to be doing is working on our holes. So, we're going to have holes in our uh various rooms.

**28:01** · This will allow us to do some traps either with some spikes at the bottom or some um you know, you can have a lava or whatever you want. Uh but this will just add some variety and again, it'll be good to have that as part of our tiles that we can use inside the level. So, just doing more of it just, you know, is a good practice in Blender. For this, I'm going to take this um mesh here, the second one. Shift D to duplicate, X uh 8 m, enter. Oh, I guess it's too far.

**28:29** · So, GX - 2, let's bring it back here.

**28:33** · And then let's go inside it. So, tab to go into edit mode. Um we have everything selected. Otherwise, you can press A, GZ 3 to bring it down by 3 m.

**28:45** · And then let's go ahead and delete these faces so three to go into face mode and pick these three faces. Let's delete them.

**28:53** · Take this one here shift D to duplicate Z to bring it up one to go up by 1 m and we should have something that actually should connect with the ground here. Now because this is going to be underground let's go ahead and use the darker part of our wall. So I'm going to shift select each of these faces here and on my left hand side G to grab and then I'm going to just going to bring it down to my other tile here. I'll do the same thing with the floors. I'm going to select this floor here and A to select all of my vertices G to grab and just drag it down here.

**29:25** · Okay and this is it. This is going to be our whole side. So I'm going to press F2 to rename and I'm going to call this whole {dash} side {dash} call for collision.

**29:37** · Let's create a corner. I'm going to press shift D to duplicate X2 to go by 2 m and then tab to go into edit mode.

**29:46** · Uh oh one thing I forgot to do actually.

**29:48** · Let's Let's hop out real quick. Go back into this one.

**29:51** · Tab to go into edit mode. A to select all the vertices and because I had some I duplicated some faces make sure to merge all the vertices. So M and merge by distance. There we go. We removed uh two duplicates.

**30:03** · Let's go out and let's go back into this one. We'll do the same thing here. A to select M to merge by distance.

**30:10** · All right. So here we'll want to duplicate those three walls. So I'm going to go ahead and select those three faces and we'll want to rotate them. So once again let's start by selecting this one. Shift S bring the cursor to down here.

**30:23** · Select those three and then shift D to duplicate right click to cancel RZ 90°.

**30:32** · Okay we're making sure that the orientation of the faces is correct and uh and it should be it. This is our second tile. Go ahead and press F2 to rename it. Hall.

**30:44** · Call this corner dash call.

**30:48** · And finally, let's do one last one. So, just to be sure, A to select, M to merge by distance. Just want to make sure we don't have any uh duplicate vertices.

**30:58** · And uh let's uh duplicate this one more time. So, in object mode, shift D X 2 enter.

**31:06** · And then let's go into edit mode pressing tab, select this face at the bottom, shift S, bring the cursor there, and then let's select shift select these three faces, shift D to duplicate, right click, RZ 90°, and then A to select all of the faces, M to merge the vertices, and merge them by distance. So, again, like this goes I know this goes pretty fast, and if you've never used Blender before, this may appear like this is going uh way above your head.

**31:36** · So, you know, again, if you've never used Blender, I would strongly encourage you to just do a little bit of this. Um there's nothing critical here. There's nothing nothing crazy. It's just a couple of shortcuts that I am constantly using to create my tiles.

**31:50** · Let's uh give this a better name. Hall.

**31:53** · I'm going to call this uh U-turn.

**31:59** · All right. And we're now ready to start importing all of those meshes into Godot. So, for that, I'm going to go on the left-hand side here, and I'm going to It's actually rename this collection to walls.

**32:09** · And then take all of the various meshes, select all of them using the shift key, and then go into file export, and we're going to pick glTF, which is the preferred uh export format for Godot.

**32:21** · Um as part of my assets folder, I'm going to create a brand new folder called meshes.

**32:27** · And inside my meshes folder, I'm going to create another folder called walls.

**32:31** · And here I'm going to go into walls and call this maybe walls dash tiles.glb.

**32:39** · Um we saving you want to make sure and check animation and then you want to make sure to include tessellated objects only and then you can press export.

**32:48** · All right and this is it. Now we can just hop over to Godot.

**32:52** · All right, so back into Godot you may actually see a form of dialogue here telling you that it's trying to import the blend files directly into the project. I've actually I'm actually not using this blender um automatic importer. I found it to be unreliable so I actually canceled this blender import.

**33:09** · I think under the hood the .blend files actually get turned into a GLB or GLTF files but I've actually seen it crash quite a lot on my end so until it gets a little bit more stable I've actually um I prefer to just move over there and and do the export myself manually and then import them directly. So feel free to discard that dialogue altogether. Back in Godot you should now have a folder called meshes, walls and you can double click on walls-tiles to verify that the mesh actually looks okay inside Godot.

**33:37** · You can also see on the left hand side here that the Godot will automatically create the static bodies alongside with the associated collision shapes 3D. So this is actually super handy.

**33:47** · Uh we're going to not going to make any changes here. We're going to click on close. Then we're going to do a right click and then um new inherited scene.

**33:54** · This is actually the only time we're going to import meshes this way and the reason for that is we're actually not going to use these individually as unique scenes but we're going to create a mesh library which we can then use to paint our level together. So for that um we actually don't need to do much because all of our child nodes are going to be um the individual um

**34:15** · meshes so we can just go into scene, export as mesh library and then I'm going into my assets folder, create a new folder called mesh libs and inside my mesh libs folder I'm going to call this um let's call this wall-tiles.meshlib.

**34:37** · All right, and we can actually close this. We're not going to be using it.

**34:40** · So, let's think a little bit about how we're going to be building our um game. So, we want to have um you know, levels are going to be comprised of various rooms, and and then the world will be loading those levels dynamically as needed. So, for that, maybe we can start by creating our um start by creating a first scene, which will be used as a room. Um most rooms will actually share the same code, so maybe we can create a base scene, which we can inherit from. Let's do that.

**35:11** · Click on 3D scene.

**35:13** · F2 to rename. Let's call this base room, and let's add uh control A, a node 3D.

**35:21** · Uh actually, let's add a grid map directly.

**35:26** · We're going to press F2.

**35:28** · Let's rename this to floors.

**35:30** · And then click on this icon here to quick load the mesh library that we just created. And now, if you go into the paint tool or the E key, you can actually start painting the world around. You'll see that as you paint, it feels a little bit odd, and the reason for that is the properties by default are different from the ones that we've set. So, if you click into cell, change that from 2 m to 1 by 1 by 1. And we also don't want things to be centered on the vertical axis, so just uncheck this.

**35:57** · And now, things should actually look much better. But, we're actually not going to paint as part of this base room. We're actually going to inherit this, and we're going to create a bunch of various rooms uh together. For now, you can go ahead and select the erase key, W, and you can just erase all of this.

**36:13** · Let's go ahead and save, and we're going to save this inside our scenes folder.

**36:17** · Uh let's create another folder. Let's call this uh rooms, and we can save this base room.tscn. I think that's fine.

**36:24** · All right, so let's create maybe a first room scene. New inherited scene, double click on base room, click on the name here, F2 to rename, and we'll call this entrance.

**36:36** · Uh control S to save. Let's save it as part of the scene {slash} rooms. This looks great, and then click on floors and we can start painting our floors.

**36:44** · So, go to E to paint, and since it's the entrance, I'm going to keep things pretty simple. Just going to have maybe a small hallway, and let's paint some walls. So, as you paint the walls, you'll see that um Is that too big? I guess that should be fine. You can press the S key to rotate it alongside the Y axis here.

**37:07** · Okay, and I'm going to need two corners.

**37:11** · Another one here. And then here, let's see if we can make this look decent. So, I'm going to create a corner here, a corner here, and then the wall outer, this one, and this one. There we go. So, it does a little bit of room here, and then hopefully we might have a door in the middle.

**37:28** · Um by the way, you can notice directly that we don't have ceilings here. And I've done that on purpose. Um the first time I built this, I realized it was really a pain to actually edit the room by being inside and placing things. It's actually much easier to just play around from above. So, we'll be dynamically adding the the ceilings in just a little bit. We might do this as part of this episode. So, for now, click on save, and again, you don't need to do this exact same entrance. Feel free to, you know, use your imagination, do whatever you feel like. And maybe let's create another room just to have two rooms that are connected.

**38:00** · Scene, new inherited scene, double click on base room, and I'm going to rename this to foyer.

**38:09** · Click on floors, and let's go ahead and draw another room. This time I'm going to make this one a little bit bigger.

**38:15** · Uh I don't know, maybe like this.

**38:24** · And Yeah.

**38:30** · Something like this, maybe coming up here, having a little bit of variety in the layout. I think something like this. Maybe we make it symmetrical. All right. I hope you you guys go wild W.

**38:52** · \[snorts\] Okay, I think this should be fine. I'm going to have the entrance come here. And let's go ahead and have the corners. So, E to paint, S to rotate. Uh let's have a corner here.

**39:06** · A corner here.

**39:22** · Okay, and then let's have the sides. You can see that this is much faster than if we were to uh place them individually. This is a great part about um grid maps in Godot. It's super convenient. Okay, and I think this is where I wanted my entrance to be. So, I'm going to leave two spots two spaces here.

**39:57** · All right, and let's see what do I need?

**39:59** · I just need to have the uh corners here. And I need one more here. Okay, how does this look? Oh, I'm missing one corner here. There we go. All right, and then let's also uh There we go. Have an entrance. All right, control S to save. I'm going to save this as foyer.

**40:27** · Foyer. I have no clue how to pronounce it. Sorry. And uh yeah, this is a good-looking room. We'll be able to have a a lot of enemies. We could even have a a trap here in the middle. Maybe we'll do that. So, uh let's do a hole. Let's do a corner here. I'm going to place this in the middle. And a little bit harder to see.

**40:46** · Uh let's see.

**40:48** · So, this is going to be Maybe we'll just do it a 2 by 2 or a 3 by 3. All right, this is kind of awkward here. Uh oh, this is not supposed to be. It's supposed to be a side here. K, and All right. Uh let's see. What am I missing here? I just need a corner.

**41:33** · There we go.

**41:35** · Okay, this is looking good enough for now. Go ahead and press save. All right, so let's go ahead and create a similarly to how we have base rooms and we're creating individual rooms. That way we can then use each of those rooms in various levels. Let's go ahead and create a base scene for our levels. Plus add a scene, 3D scene. F2 to rename. I'm going to call this base level.

**41:58** · And let's go ahead and save this first. I'm going to go into scenes {slash} create a new folder called levels. And let's save this base level. Uh so, as part of base level, I'll just have a folder. So, control A, let's add it in node 3D and rename this to rooms. And I'm going to instantiate my rooms there. And then we also want to have another node 3D. So, back to the root here.

**42:21** · Node 3D and I'm going to call this player spawn. We'll dynamically spawn the player, um you know, it may depend on the level. So, you may be able to want you want to be able to choose where we're going to spawn it. Actually, we can probably write the code for this right away. It's very trivial. Uh let's go ahead and add a script and give this a class name.

**42:44** · And then we're going to need access to this player spawn. So, right click, access as unique name, drag it into your code. And let's go into the ready function. So, we're going to instantiate the player. And for that we're going to need a reference to the scene. So, we can either load it as an exported variable or I like to um just have it as a const since we're never going to touch this.

**43:09** · Preload player dot Make sure you pick the TSCE N, not the GD file. Okay, so let's go ahead and instantiate our player. Let's uh place it accordingly.

**43:29** · Go to transform.

**43:32** · And then let's add it as a child to the level. Okay, I'm going to pause here for a second just to so you can see the code. It's very simple. Basically, we're instantiating the player scene, which we've been working on here. We're just adding it to wherever the player spawn is going to be. So, by default I think this is located at 0 0. It has a specific transform.

**43:49** · So, now let's go ahead and create our very first level scene, inherited scene. Double click on base level. I'm going to rename this level-01- uh welcome. And you can even make that the tutorial level. Uh go back into the 3D view here. And then let's go ahead and start importing the room. So, control shift A and uh let's go with the entrance first. Uh I think it's fine to leave it here.

**44:15** · Go back to rooms, control shift A, add the foyer, and then if you leave the control key pressed when you move things around, it'll be uh aligned on the grid. So, we can just move this uh right over here. Control S to save. I'm going to save this as part of the levels folder.

**44:32** · And okay, we're about ready to test. Uh let's see our player spawn. I guess it's fine. I think this is going to be fine looking towards this way. I guess we could pull it back a little bit. I'm going to pull it back by like 1 m. Control S to save. Let's go into the world and it's time to test this. So, we can delete the player because we're creating it dynamically.

**44:50** · We can also delete the ground and the static body cuz we don't need those anymore. The one thing we'll need, but you know, we'll do that manually for now, but down the line we'll do it also dynamically is to instantiate the level. Control shift A and pick the level 01 welcome. And with that done, the moment of truth, you can go ahead and press F5 to test this out.

**45:13** · There we go. Okay, I see a little bit of a problem here. We shouldn't have the uh rooms uh so close to each other. And but then otherwise, this looks uh yeah, this looks pretty good. You can probably fall in here and then you get stuck.

**45:28** · Um out the four and let's go ahead and fix this real quick. So, go into the level. Let me take the uh foyer and drag it control drag by one pixel here. We should probably just add uh some tiles here. Um let's make this as part of the base level. So, go into the main scene base level here and let's add a grid map. Uh maybe let's add a new 3D first.

**45:56** · F2, let's rename this to hallways and then control A, grid map. Let's call this floors. Uh Should we do the I think that should be fine. And then here let's load quick load the mesh library that we've created.

**46:14** · Fix the various dimensions. Make sure it's not centered on the Y axis. Control S and now you can go back to the level one welcome. Go into the floors and we can paint additional floors here. Um so I guess what we can do is just uh paint some sidewalls. So S S to put it accordingly and then F5 to start the game.

**46:35** · There we go. So that should have fixed the um the faces that kind of overlap which have a tendency to mess up the way that things are rendered.

**46:43** · Okay. And so there we go. So this is our very first workflow where we've created uh graphics in an image editor. Then we've used those to paint some meshes inside Blender and we've imported the meshes into Godot alongside with all the collision shapes. And this works really nicely with the player character that we've created. Um the one last thing that I think we'll do in this episode is you might notice that something is missing. So of course, you know, the lighting and so forth. We're going to be working on that uh down the line but uh another thing that's missing here is the ceilings.

**47:13** · And the main reason I didn't add ceilings to all of my meshes is because I realized that when I was uh working on my levels and just creating my rooms and so forth, it was really a pain to actually have ceilings cuz you can't really see. So basically I had to edit my rooms by being inside and then placing objects and it was kind of a pain. So I ended up um just changing this all together. I do think it's actually a lot faster. So I I did want to include that as part of the tutorial.

**47:39** · Basically we're going to have a different mesh library for ceilings and we're going to add those dynamically through the code whenever we start the game. So when inside the editor, we will be playing without ceilings and uh whenever we start the game, we'll have the ceilings appear uh dynamically. So we can work on that right now and then we'll close off the episode for the day.

**47:59** · All right, so let's go into Blender and uh actually maybe that could be a good uh thing to quickly talk about. Let's say you made a mistake here inside your texture, wanted to make some changes in Aseprite, you want to kind of have all of that be reflected in all of your meshes. One thing you could do quickly is to go back into your uh image editor, and I'm just going to add um let me just add a little bit of dark color inside this um texture here. So, maybe a little bit here and a little bit here. I don't want to overdo it. I think this should be fine.

**48:28** · Control S to save the texture into Blender, go on the left-hand side, and pay attention to this image here. I'm going to press Alt R, and you can see that it automatically refreshed the texture, and it should have automatically be applied to my meshes. And then you can just select all of your meshes, re-export them into Godot, and you are good to go. All right, actually think it's too much. I'm going to revert my changes here.

**48:50** · Control Z.

**48:51** · And there we go. So, command S and Alt R.

**48:58** · All right, so we want to do a ceiling tile, and our tile is going to be very similar to the ground, actually. It's just going to be um up at the same level as this. So, let's measure where this goes. Uh so, let's see. If I take this tile and look at this view here, going to edit mode, uh you can see that it goes 2 m and about uh 2.7 m high. Uh so, we'll just want to uh change it at three units down.

**49:24** · All right, so let's go into object mode. Let's pick this ground here. Shift D to duplicate, right click, F2 to uh rename it. I'm going to call this ceiling-call. And um let's hide the other ones for now. Okay. And then tab to go into edit mode, A to select it all. We're going to rotate it by 180° so R Y 180.

**49:55** · And then let's go into this Y view here and then G control and I'm going to bring this to I don't know if you can see but we want this to be at uh 2 m and 7 2.7 m.

**50:11** · This looks a bit off-centered. Is that Is that me?

**50:14** · G There we go. All right. Uh the only thing that we need now is just to replace this tile and we want to so it's going to the UV editor here. A to select all of the face. G to grab and let's use this dark tile. We want to rotate it so that it's alongside the other way R 90. And there we go.

**50:38** · All right. Control S to save and let's go ahead and export this. So just click on ceiling tile. That's the only one we want. File export GLTF and then here let's call this uh ceiling-tiles.glb. Okay and then let's go into Godot to create a new mesh library for our ceiling.

**51:00** · All right. So back into Godot, we are going to create a brand new mesh library for our ceiling tiles and then the algorithm is going to be pretty straightforward. Basically we're going to be looking at our floor tiles and whenever we don't have a ceiling so as you can see some some of those tiles do have ceilings but most of them don't like the ground and then anything that has a pit here uh then we will go ahead and add to a new grid map our um our ceiling cell. So uh we'll get back to that algorithm in just a second.

**51:24** · For now, if you want to take a second and try to create this new mesh library, it's going to be different from the walls one that we had created and just it will only contain a single mesh which is the ceiling. So go ahead and try to do that and see if you get to the same point as uh as me.

**51:41** · All right. So hopefully you were able to try this out. I'm going to um click on ceiling tiles, just making sure that the import is okay. And you want to make sure you do have the static body, the collision shape. So, all of that looks good. Right click, new inherited scene, and let's go ahead and create our mesh library. So, scene, export as mesh library.

**52:06** · It's going to assets, mesh libs, and I'm going to call this one ceilings-tiles.meshlib. It's going to save. And we actually don't want to save this scene here. So, we have our new mesh library here, and let's go over into the base room where we have instantiated our floors, and we're going to create another grid map. Uh let's also make it a sibling of floor. So, click on base room, control A, grid map.

**52:35** · Let's call this one ceilings. And let's set our mesh library. So, you can drag the ceilings into the mesh library here. Let's make sure we have the right cells, and that they're not centered on the Y axis. So, you should be able to paint these now, and they should have the right height.

**52:53** · Uh we're not going to paint the base room. We're going to just paint the inherited rooms. So, if we were to go in the entrance, for example, and pick the ceiling, now you can actually paint Does this actually work? Yeah, we can paint the cells that are needed. Um So, once again, we'll only want to paint the cells that are either the ground or uh the pit here, the the trap area.

**53:21** · So, our algorithm is going to be pretty straightforward. Um I'm going to go into base room, and we're going to need a reference to the floors and the ceilings. So, right click, access as unique name. Let's go ahead and create a new script for base room. And let's give this a class name.

**53:38** · And we're going to need references to both of these nodes. So, control click and drag. I don't know why it's a little bit finicky for me. Uh I'm going to reorder them. Okay, so what do we want to do? Well, we want to look at um let me open up the wall styles here.

**54:01** · All right, so if you double-click on your mesh library, you'll see that um each of the meshes actually have an ID assigned to them. 1 2 3 4 and it's a little bit hard to see when you're actually painting. So, if I go to the entrance uh or to the foyer, it's a you don't actually see the IDs here. Um but basically, what we'll want to indicate is wherever we have uh anything except the wall center, the wall outer, and the wall side. These already have a ceiling.

**54:27** · So, anytime we have any of those four, we'll want to go into our ceiling grid map and wherever, you know, that cell is assigned, we're going to assign a ceiling mesh. So, hopefully hopefully that makes a little bit of sense. So, first of all, let's create a list of IDs for all of the meshes that require a ceiling. Uh cell IDs with no ceiling.

**54:52** · And as part of the ready function, we'll go ahead and uh let's actually create a separate function. It'll be cleaner here. All right, so let's get the IDs for the ones that don't have any ceiling. So, these four here. So, for cell name, all right, so make sure that you spell those correctly with the upper case and lower case. You may have different names than me.

**55:25** · And hall U-turn.

**55:29** · We want to make sure we pick these four here and we're going to add the IDs um to our uh array here. You could do it manually, by the way, if you were to just look at here and you could find like, okay, I see that number one has a ceiling, so I'm not going to do it. Uh, number three has a ceiling.

**55:47** · Number zero doesn't, so you could have you know, you could add zero here manually and do it. But I I kind of like this aspect of doing it, um, through the code directly. So, let's go ahead and add cell IDs with the ceiling dot push back. And so, here we will have access to our floors dot mesh library dot find item by name.

**56:13** · Okay, this is going to return the IDs here. So, anywhere between zero and six. All right, so now we have the IDs here. The only thing we want to do is go through our level and see, uh, within our room, what are the cells that are being used in our grid map. Uh, there's a handy function called get used cells, which returns an array of coordinates of every every cell that has been painted.

**56:42** · So, floors dot get used cells. So, you know, if you go back to the 3D view here, uh, going to your base room, you see I've painted all of these. Each of these will have like a vector three coordinate and these will be returned inside my script here. So, wherever right now I'm looping over all of my cells of my floors and then I just need to check whether the cell ID is, uh, you know, one of the IDs that need a ceiling and if that's the case, I'm going to go into my ceiling grid map and then assign a ceiling, uh, mesh.

**57:16** · All right, so for tile, uh, for sorry, for cell coordinates in used cells, let's go ahead and figure out what is the current tile ID being used. And if that ID is part of the array that we created, then we'll want to go into our ceiling screen map. And we'll want to set we want to paint manually. Uh we want to paint through the code at our exact same coordinate our mesh.

**57:56** · We could also find the ID, but since we only have one in our ceiling, right? Um we can just enter zero here. But, you know, this isn't super clean. Ideally, you you could also have like the ID for the uh ceiling cell.

**58:10** · I believe this should work. Uh let's go ahead and try it out. Press F5. And there we go. So, all of the um all of the ground that does not have a ceiling actually has now a ceiling.

**58:24** · All right. And this actually looks decent, except I don't know what you think, but I actually think that there's too much of a difference between the colors here between the walls and the upper walls. I know we used kind of the darker part of the uh wall, but actually think it almost feels off. Um and I wonder if it would also feel off just to use it for the ceiling.

**58:46** · So, it may actually be a good opportunity to illustrate and what happens when you make a mistake and how do you override it? Actually, I think it makes sense here in the pit. We'll probably keep like the dark bricks and the dark ground. Uh but we're probably going to want to change it for the uh the sides.

**59:03** · It's hard to see here, is it? Actually, it's not hard to see. Yeah, you can clearly see that it's it's a lot darker. So, let's go ahead and make that change.

**59:13** · All right. And this is going to be a little bit more of an involved change because we here we generate the mesh libraries. Um so, we'll need to regenerate the mesh libraries. But, that's okay. Um we'll go over it together. And you know, if you want to use that opportunity to change some of the graphics a little bit, maybe add some vines, change some stuff, this is the perfect opportunity to, again, get your hands dirty. And, you know, you'll make a lot of those mistakes, so it's easy it's good to learn how to fix them.

**59:37** · So, for now, I'm going to go into Blender, and we're just going to change the UV wrapping for all of our various cells. So, right now, I have the ceiling selected. I'm going to press tab, and on my left-hand side, A to select all of my vertices, G to grab, bring it up, and uh press tab to go outside of edit mode, Ctrl S to save, and then let's actually um double-check that this works.

**59:58** · I'm going to keep just that one ceiling uh collision detected, file, export, GLTF, and let's pick ceiling tiles, export, let's go back to Godot. And here, we're going to regenerate our mesh library. So, uh let's uh right-click on ceiling, new inherited scene. Where is it? Right here. And then, scene, export as mesh library, ceiling tiles. We're not going to merge, cuz otherwise, it's going to create those uh a second cell. We're just going to override it.

**1:00:38** · I think it should work right off the bat. Oh, sorry, we don't want to save this. And uh I guess we need We don't see it here, so let's go ahead and press F5 to try it out. Okay, it looks like there's a little bit of a problem.

**1:00:53** · I I see that the entrance and the foyer here, for some reason, so these are instances of our base room, but they don't have a script attached to it. I I think I've run into this issue multiple times with Godot. I'm not sure why. Um let me delete the entrance. We're going to try this, and click on rooms, Ctrl Shift A, and let's reimport the entrance. Yeah, and you see the script is here. I'm not sure why, so maybe because I created the script after I had instantiated um these.

**1:01:23** · Uh it's possible that you see this on your end as well. But anyways, let's check that it works properly. So, F5. Okay. And you can see the colors are a little bit uh off. I hope that's going to be okay. Um but it definitely looks like this is working. So, let's also make sure that foyer is uh has the script attached to it. So, I'm going to delete it.

**1:01:45** · And then click on room, control shift A foyer and control and let's drag it towards the left here. F5 and then we should have all of our ceilings properly set. Ceilings feel almost a bit low, by the way. Maybe the champ is too high.

**1:02:05** · Uh we'll we'll fine-tune this down the line. So, if you want to try um try to fix the colors here for this part of the uh ceiling. It almost almost feels okay now, actually. Uh but anyways, let's go ahead and fix it. I do want to show you how to fix it. It's just a good practice to fix your mistakes overall. So, after four, I'm going to go back into Blender.

**1:02:27** · And we're going to take the other meshes one at a time and then fix the UV wrap. So, uh let me toggle on the visibility for everything. And let's start with this one. Tab and I'm going to hit three to go to face select. This one, this one, and this one. I believe we can just select all of them.

**1:02:52** · And then A to grab uh A to select, G to grab, and then it's just going to bring them here to the lighter version of the prequel. Okay, this looks a little bit better. Let's do the same here on this mesh here. Tab to go into the edit mode. This one, this one, this one. A to select, G to grab, bring everything up to here.

**1:03:16** · All right. Tab to exit edit mode. Let's go to this one. Tab again. Uh I think we want to select again all of these meshes here. A to select all, G to grab, bring it up here. And we should have a lighter version. Okay, and this is it. This should work.

**1:03:35** · We just fixed the ceilings for this uh three meshes. So, I'm going to press tab to exit edit mode, select all of the meshes uh outside of the ceiling here. Uh and I'm going to go into file, export GLTF, wall tiles. And then let's go back to Godot. And let's regenerate our uh our mesh library. So, new inherited scene.

**1:04:06** · Uh you can see that I don't know that this has imported everything. So, click double click on the wall tiles and click re-import. Uh this feels odd. This feels dark still. Could just be the lighting. Is it the lighting? Yeah, it's just the lighting. Okay. Um okay, and then uh click on scene, export as mesh library, go into your wall tiles. You don't want to merge. Click on save, override.

**1:04:36** · And everything should should hopefully not explode. Uh we don't want to save this. See what happened to our level here.

**1:04:48** · All right. And yeah, this looks much better. So, it still looks a little bit dark, but this is because we haven't really started working on the lighting, but at least it doesn't feel that out of place uh going from one shade to the next. So, I think uh this should be much better. And then here, this looks decent. But yeah, if you're not happy with the colors, now you know how to change them. And uh also again, I think it's great exercise to just go through and fix our mistakes over time. So, anyways, so with that done, I believe that we are going to uh close it here as we're way past our half an hour mark.

**1:05:19** · So, with the ceilings now completed, we have a pretty good looking dungeon so far. Um you know, we can start crawling around and feel free to create various rooms, various layouts, and so forth. You know, take the time to create a little bit of variety in the environment. You can go through the exercise of painting them with new textures and uh really all of it will pay off tremendously when it comes to creating your own games after this and and repeating the same process.

**1:05:45** · So, today we took a first stab at going from a sprite to Blender and from Blender to Godot. And hopefully the pace was not too fast, but you know, again, I promise the more you play around with these tools, the more familiar you'll become. Um don't hesitate to invest your time to become familiar with with them and don't hesitate to make mistakes.

**1:06:03** · Um so, right now our character doesn't look like anything. So, in the next episode, we'll go ahead and create our character, we'll uh add a skeleton, rig it, animate it, and then we'll bring it inside Godot. So, I'm pretty excited about that episode. It's something that um you know, we probably want to do in every single 3D game. So, hopefully this is something that you can learn something about as well.

**1:06:23** · Um so, once again, if you like this tutorial, you want to support the channel, please go ahead and hit those magic like and subscribe buttons. It will go a long way to support the channel. With that being said, it's time to uh time for me to look up how the heck people pronounce the word foyer. Uh foyer, I'm not sure. And uh anyways, time to take a quick break, and I'll see you in the next episode. Cheers.