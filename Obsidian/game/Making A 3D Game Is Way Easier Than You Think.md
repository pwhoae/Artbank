---
title: "Making A 3D Game Is Way Easier Than You Think"
source: "https://www.youtube.com/watch?v=Oatl69iaS80"
author:
  - "[[Thomas Brush]]"
published: 2025-12-06
created: 2026-07-20
description: "Did you know you can make your game beautiful, for free, and completely alone?► Grab the Ovani sound bundle now! https://ovanisound.com/products/black-friday-mega-bundle-sale-2025?variant=50786650161"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=Oatl69iaS80)

Did you know you can make your game beautiful, for free, and completely alone?  
► Grab the Ovani sound bundle now! https://ovanisound.com/products/black-friday-mega-bundle-sale-2025?variant=50786650161467  
► Get 50% off my game dev course during the massive Summer Sale: https://fulltimegamedev.mykajabi.com/full-time-game-dev-sale  
► Learn how to make a game studio from your bedroom, free: https://www.fulltimegamedev.com/opt-in-how-to-make-six-figures  
  
Chapters:  
00:00:00 - Intro: Making a Polished Game Solo with Free Assets  
00:00:42 - Sponsored Ad: Ovani Sound Black Friday Bundle  
00:01:58 - Common Mistakes and Replicating Half-Life 2 Scene  
00:02:30 - Creating and Editing the Skybox  
00:04:54 - Setting Up Directional Lighting and Shadows  
00:06:07 - Building the Color Palette  
00:07:17 - Adding Fog and Environment Tweaks  
00:07:55 - Editing Textures for Grass, Dirt, Stone, and Sand  
00:10:09 - Customizing Water and Rock Assets  
00:11:24 - Adding Billboards for Trees and Grass  
00:13:35 - Incorporating Low-Poly Tree Assets  
00:15:46 - Adding Pops of Color to Assets  
00:18:10 - Final Scene Result and Overview  
00:18:32 - Enhancing Immersion with Sound and Train Animation  
00:20:59 - Before and After Comparison

## Transcript

### Intro: Making a Polished Game Solo with Free Assets

**0:00** · Okay, so what if I told you it's totally possible to make a game completely alone, but it can still look beautiful.

**0:06** · It doesn't have to look, I don't know, like crap. It can be polished, all with free assets, no modeling skills. This really does sound kind of gimmicky. I get that. So, I'm not going to talk about this. I'm just going to go ahead and jump into Unity and show you how to do it. Again, we're going to use free assets, textures. Uh, some of these are free and some of these are just I just found on Google. So, they're not necessarily legal, but the point is is just to show you how to do it quick.

**0:31** · Quick and dirty \[music\] and free. And the ultimate goal here is to make it look hyper polished and breathtaking. A solo game does not have to look ugly.

**0:41** · Okay, let me prove it to you. Hey, but before we continue, a huge thanks to this video sponsor, Ovani Sound. If you've ever struggled with audio for your game, and let's be honest, I think most of us indie devs have, \[music\] Ovani makes it so much easier with highquality music and sound effects made specifically for game development. Every track is created by real human composers and sound designers. Their team comes from a AAA background, and it's their mission to give indie devs AAA level audio without needing, well, a AAA level budget.

### Sponsored Ad: Ovani Sound Black Friday Bundle

**1:13** · For Black Friday, we've collaborated and put together an exclusive bundle just for you guys, and it's packed with great stuff. It comes with 13 music and sound effect packs in genres \[music\] like sci-fi, fantasy, retro, and more, giving you a solid bass for almost any project. You also get their plugins for GDAU, Unreal, and Unity to simplify sound integration and dynamic music control. And all music packs include three intensity levels to make that even easier. Look, everything's royalty-free.

**1:40** · There's no subscription and every pack is a one-time purchase that you can use forever. Now, this is important. The bundle is available only through December 12th. So, if you want to make highquality handcrafted audio for your games, definitely check out the bundle using the link in the description. So, this is what we've got. This is what happens with a lot of games, guys, that use assets because they don't have a fundamental fundamental understanding of textures and color and lighting and fog and mood and atmosphere.

### Common Mistakes and Replicating Half-Life 2 Scene

**2:10** · They don't know how to put the assets into a scene and make it look cohesive, unique, and all do it inexpensively. Halflife 2, the boat scene, we're going to replicate that using assets. Is it going to look like HalfLife? Heck no. Is it going to look like an indie game? Yes. Is it going to look unique? Yes. All right.

### Creating and Editing the Skybox

**2:30** · I'm going to start with the skybox. So, this is the skybox I've got. And the size, this is not the correct size, by the way. It's not like industry standard. I just chose a size. 496 by 2048. All right. So, I'm going to type in storm clouds. Let's do storm cloud or storm. There we go. I think that's all we need right there. I'm going to grab that. I'm going to bring that in. And this is actually going to be the part where not only are we going to make our skybox, but we're also going to make our color palette. But I'm going to take this skybox here. I'm just going to fade out the parts that I don't want.

**3:00** · I'm going to take this stuff here and fill it in so that we don't see this. And this skybox, I I promise you, it's going to make so much of a difference. So, this is why I call it lowhanging fruit. Skyboxes are a quick way to make your game look amazing. I'm just going to save it and make sure the scale looks good. Okay, so here it goes.

**3:22** · I'm telling you, it's low hanging fruit, man. Let's fill that. Let's just do this here. And then I'm going to take this, duplicate it, go a little bit bigger, and just bring it up here. And look, we could kind of just scale it up. And you might be wondering, Thomas, but it's not looping properly. I'm going to show you how to loop it. Okay. Uh, and then down here, we just want to use a yellow color. And we're going to talk about picking the right colors um in just a sec here for the entire scene. Color theory is going to let us get away with a lot of bad topology and a lot of bad assets, frankly. So, already looks incredible, or at least 10 times better.

**3:54** · You'll notice the lighting looks um really really bad. I was going to say a cuss word. It's really really bad. We've also got this weird sort of pinching here. I'm going to show you how to fix that as well. We're going to take this right here. This maybe the average color. Maybe that one. And just do this.

**4:10** · That way we we get rid of that pinching at the top there.

**4:16** · There we go. Pinching's gone. And then let's make sure it loops properly or tiles properly. What I'm going to do is merge everything together here. I'm going to crop it and then I'm going to transform flip ver horizontal that way. All I got to do is have this little edge over here and it loops perfectly to this side. Save it. You're going to want to make sure it's set to clamp as the wrap mode with point no filter. And you want to make sure you turn mapps off. So turn if you generate midmaps, it gets this weird seam. All right, looks good. Let's go to our uh environment tab here.

**4:47** · And I'm going to turn off or I'm going to tone down the skybox lighting entirely for now. And instead, I'm just going to turn on a directional. This is going to be crazy.

### Setting Up Directional Lighting and Shadows

**4:56** · When you add a directional light with shadows and you add long shadows, and this is this is related to what we were talking about with mood. A lot of people will say, "Why, Thomas, why do your games always why are they always moody and foggy and they use long shadows?"

**5:08** · And I say, "Well, because it's it's it's a tiny team if not completely solo." And this is a great cheap way to to make really interesting art on the cheap. And I'm gonna make sure we go to our directional light here. And I'm gonna set it to hard shadows just for now so I can see what's going on with the resolution of the shadows.

**5:28** · Resolution of the shadows is really bad.

**5:30** · Um, and I want to set the strength down like this. There we go. And then just make some longer shadows here. Yeah, the resolution is really bad. And this is the one thing I cannot figure out why this is doing this. probably because the the distance is so big. There we go.

**5:44** · We'll set it to 100. Good. Okay. Already looks like five times better. We're going to make sure the the directional light is natural. So, let's say it's 7:30 p.m. 8:30 p.m. You're going to get a little bit of a warmer light. Don't do this. Might even have a pink to it, right? Very subtle. You'll notice our textures look like crap. Our coloring looks like crap. So, in order to fix that, what I want to do is I want to go into my skybox. And this is where I want to kind of determine what my colors are.

### Building the Color Palette

**6:15** · What are the colors going to be for this scene? Well, I kind of want it to have a brownish orang-ish look for the sky.

**6:23** · Something like this. And then I want to use pops of color. This is where color theory comes in. If you have a low saturation background and then you have a vibrant orange, like a a burgundy, I'm sorry, a rusty red like this, you can make your scene look really interesting.

**6:40** · You may even be able to get away with like a vibrant yellow. Let's try that one. We'll use a dark brown, low saturated brown. That's kind of cool. I think I want to make this one like a low saturation green.

**6:51** · There we go. And then this one we're going to go Yeah, there we go. So, this is our color palette, guys. This is our color palette for this scene. So, that's what I like to do when I'm working in a scene. So, now let's go ahead and just put this into the game. Well, I know that I like the skybox to be this color here. This is what it was. This is what I'm going to do. And I'm going to make sure in Unity there's not any weird coloring going on in the actual material, which there is.

**7:15** · So, I'm going to do this. There we go.

### Adding Fog and Environment Tweaks

**7:17** · What do we think the fog color should be? I think something like this right here. That might be a really good fog color. So, let's go to our lighting tab.

**7:24** · Turn on fog. We don't want too much.

**7:27** · We're going to do something like that for now. Good. We kind of capture the hue of the skybox. I'm going to go a little bit darker. We could test and say, "Okay, what would it look like if it was maybe?" Ah, yes. The warmer color works good, too. We're getting there.

**7:39** · And, you know, it can be really overwhelming. You can look at a scene and go, "Oh, it looks so bad. What?

**7:45** · There's too much to do. It's all so bad." Just follow the process. Follow the process. Remember, we had our color palette here. What's that for? Well, it's for the various textures. So, let's open up our textures here. And I like to have all of my textures as Photoshop files so I can quickly open them up and tweak the colors. Now, let me show you what I mean here. This is going to this I think the grass is going to make the biggest impact. And by the way, I kind of want it to be more of a yellow grass.

### Editing Textures for Grass, Dirt, Stone, and Sand

**8:12** · So, I'm actually going to grab that color right there. There we go. Was that what it I think that's what it was. So, what I'm going to do here uh is put this here. And then I'm going to do a hue s.

**8:23** · I I'm not going to do a colorization.

**8:26** · And by the way, if you want to make your game look really flat, colorize everything. Be my guest. And you can do that sometimes, but I found that if you do this instead, it's a lot more effective because you get these nice little pops of color in here. And if you don't like those colors, you go, "Okay, well, I don't want that pinkish red." So I can go to my red channel here and adjust those to be, you know, gray and make them darker. So now my grass is going to match that color. Already looks pretty good. Okay. Okay. Uh let's do this. Um we're not going to use that orange frequently.

**8:56** · This is the color of our dirt.

**9:00** · Let's save that and take a look. Yay.

**9:02** · Moving forward, we've got this stone texture. Good. Okay. And then finally, the sand. And I'm going to adjust the lightness so that the the the brick is is lighter and then the sand is darker. There we go. The sides are going to brighten up. I think so far we're good. So far, we're good. You're probably thinking, "Wow, this is really gray." That's kind of the point because we're going to use pops of color to make it look not gray. But let's bump up all of our textures here to be uh bigger.

**9:28** · So, I'm going to do five by five for all of our textures in their in the tiling.

**9:36** · I think the the the sand is a little dark, so we're going to bump that up just a little bit. And you can do this is why I love using PSDs because I can do it in real time. So far so good. I think that I want a nice kiss of saturation with the grass.

**9:52** · There we go. All right. So far so good.

**9:54** · Let's warm up the light just a tad.

**9:58** · A little bit more orange. There we go.

**10:01** · Yay. Okay. Awesome. So, we have a nice warm light. Evening shadows are being cast pretty nice here. Okay. You guys want to fix the color of the water?

### Customizing Water and Rock Assets

**10:10** · Let's go ahead and fix the color of the water. Right now, it's a little too saturated. So, I'm going to take this water here, and we're going to change this the the shallow color to be kind of a grayish green. There we go. And then the deep color, like a gray, maybe even a yellow, muddy. There we go. You know what's really killing the shot? The rocks. So, we're going to go to the rocks. Same thought process here. So, I'm going to open up the PSD and I'm going to think, okay, well, what's the color of the rocks? This. We're trusting our gut. I'm sorry. No, we're we're not trusting our gut.

**10:41** · We're trusting our color palette. I'm going to have to colorize this because there is no color information. Good. Crank it down.

**10:48** · Decrease the saturation. There we go.

**10:50** · Matchy matchy. There we go. Turn off the smoothness. See what I said? You'll notice that it doesn't match this. Okay.

**10:57** · So, when in doubt, this is a trick that I learned. I think I learned it two weeks ago, honestly. When in doubt, just take a texture from your other textures and just slap it onto other assets. This is why I use PSDs. I'm going to use overlay. reduce the saturation here.

**11:15** · And I'm going to just flip it so that it's a nice clean tiling. And then I'm going to do another one here. For now, this is going to work for us. Look, watch this. Watch. Watch.

### Adding Billboards for Trees and Grass

**11:24** · I freaking told you it looks like it works. It matches. And it's totally different assets. Ah, love it. Now that now that Now the water looks like it doesn't work. We may have to use smoothness because otherwise we're just not going to get texture. I don't hate it. And we're just going to stick with it. Very subtle here. And then we're going to make this look kind of brownish. Whoa, look at all these cool values. And this was a free asset, right? A very free, very wonderful, and free asset. Uh, moving on. Moving on.

**11:56** · This is going to really change things.

**11:58** · Okay, this all of this stuff here, these are all billboards of just textures that I found on Google. Actually, no, these were found on Vecti. And what I'm going to do is just use alpha clipping. Let's see here. I don't think you can render both faces with alpha clipping. Yeah, I I found that to be true and I don't know why. For some reason, alpha clipping just doesn't work. I have no idea why.

**12:15** · Let's go to our grass billboard here and take a look and see what the alpha transparency is set to. Input texture alpha. Good. Alpha is transparency.

**12:22** · Remove mat. Apply. Okay, so that should do it. And for some reason, it's not.

**12:26** · So, let's figure out what's going on here. So, this is the the tree, right?

**12:30** · I'm going to go to mode. It's in grayscale. I'm going to go to RBG, RGB, rasterize, save, and I'm going to bring go over to the other one here, which is this one here. So, this is now RGB.

**12:41** · Let's see if this work this fixes it.

**12:43** · Okay, there we go. All right, it's showing up as transparent. Thank god.

**12:47** · Okay, so the issue was it was in RGB or is in grayscale. There we go. It needs to be in RGB because it doesn't have the alpha information. It's grayscale. Save that. Now, it should import properly.

**13:03** · Alpha transparency input texture alpha apply. There it is. Yay.

**13:08** · Now, we haven't done any composition here yet. Composition is stuff like this. Taking your your trees, your billboards, and and just creating a really cool shot. And you want to think, again, think like a director. Don't think think like a a game dev. Think like a director. A director would be standing here and they'd say, "You know what? I really want like a tree line right here, you know?"

**13:32** · \[music\] Okay, we have this asset. This was free.

### Incorporating Low-Poly Tree Assets

**13:38** · This asset of a tree. This is going to be a low poly sort of retro looking game. So, I don't want all these highquality LODs. I just want one. So, I'm going to delete this one. I'm going to remove the LOD group because a small scene. We don't need a bunch of LODs.

**13:50** · And I'm going to go to URP lit. And we should have a texture, but we're not going to really need it, honestly. So, I'm just going to drop it down and turn off the specular. Honestly, I think it needs some texture. The tree did not come with texture. Oh, no. What are we going to do? Well, it's totally fine.

**14:09** · Believe me, I'm going to take a gander here that if I put this rock texture on this tree or a grass texture on this tree that it will work. Or or what we could do is we could say, you know what, I'm going to duplicate this grass texture and I'm going to call it bark.

**14:25** · Now, you're going to you're probably going to think, oh, that the unwrap isn't going to be very good, though.

**14:30** · Well, it's far away. That's okay. Okay, so there's our bark. We can we can adjust it later if we want. And I could grab this.

**14:39** · There's our bark. Good. I'm going to grab it. Put it here.

**14:43** · There it is. Just going to set it to white. And it's just those subtleties that make it work. Not bad.

**14:57** · The little pieces here are driving me crazy. So, this is why again you want to use Photoshop.

**15:03** · Um, are we using alpha clipping? Turn that crap off and remove. There we go.

**15:08** · Oh, so much better, Tommy. This This sort of drives me crazy here. Um, this it feels really empty back here. So, what I'm going to do is actually go into my terrain tool and um raise the terrain just so it doesn't feel like it's just ending. There we go. Something like that might look really cool. Yes. Okay. Thank god. Uh, same over here. It's just it you don't This is a big problem with a lot of indie games that are doing exteriors. They don't feel nestled. They feel flat and they feel like a desert.

**15:38** · And that's because they're not prioritizing the horizon.

**15:44** · \[music\] Okay. So far so good. One thing I want to focus on here is I'm ready to get some of that pop of color in. You guys want to see that pop of orange? Well, we've used these colors, and these colors determined what the color was for all of our different textures. We're going to use this orange color, and it's going to tell us what this color needs to be. I'm not going to do a colorization. I'm not going to colorize this to be orange. Instead, I'm going to make the blue orange. So, I'm going to grab the blues, crank up the saturation.

### Adding Pops of Color to Assets

**16:14** · We're going to need to set the cyans. Actually, crank up the saturation, and go orange.

**16:21** · Hyper orange. Look at that. This is going to look so good. And already, look, color theory wins again. Nice. Can we crank up the saturation? How much saturation can we crank up before we start losing the fidelity of it?

**16:38** · That looks great. Okay, we need to we need to do the same thing with that house there. In fact, I'm going to use a blue a baby blue. We have this roof and I can go, okay, well, maybe we're going to make it like a rusted orange roof.

**16:48** · So, I'm going to just get the roof portion of the of the uh diffuse or the albido and I'm going to crank it up here and I'm going to select inverse and then just do that. There it is. That didn't work. Well, apparently there is no roof in that UV. Ah, yes. Okay. So, we need to do this one right here. Same thing here, guys. I'm going to do hue, saturation, shift. I wonder if we could get away with doing this.

**17:14** · Maybe.

**17:15** · Let's try it. That looks kind of cool, doesn't it?

**17:19** · Get rid of that shine. Oh, check it out.

**17:23** · Looks pretty cool, huh? And for this, which is this right here, I think what we could do is go with that baby blue.

**17:32** · Sort of a sky blue. Soft baby blue.

**17:34** · Let's try that and see what it does.

**17:36** · Okay, that didn't do anything. And I'm trying to figure out why. Is it cuz I'm not bringing in the PSD? There's the PSD. There we go. Okay, so that's not going to do it for me. Um, so what I might want to do is I'm going to actually just colorize the the the um the exterior, which is this. And we're going to do baby blue. There it is.

**17:56** · Yes. I like that. That looks cool. Okay.

**17:59** · So, that orange is now too vibrant to my right. And also, that's too vibrant as well. We don't really need it that orange now that I'm thinking about it.

**18:08** · There we go.

### Final Scene Result and Overview

**18:10** · That's much better. That's great, guys.

**18:12** · Awesome. And so we did this what in was it 3 hours? Three maybe two and a half hours I can't quite remember. But this is sort of the final result. You can imagine with some sound, some water and a bog maybe some trees blowing in the wind. What you could get with just some free assets, good color theory, good textures. Let's say I wanted the sound of a train, but I only want to hear the sound of the train once. So, I'm going to go train.

### Enhancing Immersion with Sound and Train Animation

**18:44** · Okay, good. And what I'm going to do is I'm gonna f This is the stuff that matters, guys. I'm going to I'm going to find on the Unity asset store. I'm going to find a free train. Uh it doesn't need to be perfect, okay? It needs to be just some crappy train. I kind of like this one. We're going to grab it, download it, and I'm going to basically make this train go behind that orange building.

**19:04** · And you're going to be like, it's gonna click. It's going to click in your head.

**19:08** · So that that is what makes a game good or at least fun and interesting and it makes you feel like you're in the world. Let's type in train and see if it's in our assets. There it is. So what I'm going to do, guys, I'm actually delete these and I'm just going to put this train.

**19:25** · You can imagine if if we know that the player is going to be locked in and limited and they cannot walk up the walls. So you can imagine maybe we would put like uh a fence locking in the player. then we can get away with a lot of cool stuff like this. What I want to do is set this to 00. There we go. And I'm gonna make this sequence just like this.

**19:49** · Okay, there's our train. I'm going to call this train, \[laughter\] obviously. And then parent it to another game object, call it train sequence. I'm going to create a new animation. Now, what I can do is put this train right here. And the first thing I want to do is, and this is why I love making like linear games or story games because everything's kind of a set piece. So that's a perfect spot for it. And the theory is we could start here.

**20:15** · It's going to be super rough. Right here, we're going to start. And then for one, two, three, yeah, like 8 seconds we're going to have the train.

**20:24** · And even if it looks like crap and it's kind of like not super realistic, who cares? I don't know why it's not moving along a straight line. My theory is it's because the terrain isn't, but I could be wrong. I have no idea why it's not moving along a straight line. Okay, so let's see how this looks in play mode.

**20:43** · And then we're going to have it trigger when the player gets near it. So this is what it's going to be. Something like this. The player will be at the ground level.

### Before and After Comparison

**20:59** · That's it.

**21:14** · It's all we needed.

**21:17** · Very subtle immersion. All right, here's the before. And and this is not like I made it look bad. These are the assets that I pulled into the scene. Now, the reason some stuff's pink and white is because I'm in URP, so some of the assets got stripped. So, some of this stuff is missing textures, but all of this is just junk assets. And I put this this little scene together. We spent about an hour, maybe an hour and a half, repurposing or cleaning up the textures and getting this to work here. Man, this looks great. If I'm being completely honest, this looks pretty good.

**21:48** · Yeah, I I'm not uh I'm not going to lie. Also, hey, don't forget to check out the Black Friday bundle from Ovani Sound. If you want highquality music and sound effects specifically made for game development, you can check it out and get the bundle before December 12th by simply clicking the link in the description.