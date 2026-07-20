---
title: "Godot 4 Drawable Texture Tutorial"
source: "https://www.youtube.com/watch?v=d_qNs-TxX6Q"
author:
  - "[[Gwizz]]"
published: 2026-06-05
created: 2026-07-20
description: "Quick tutorial on how to use the Drawable Texture class in Godot 4!Godot version used in the video:https://godotengine.org/article/dev-snapshot-godot-4-7-beta-5/AreaLight3D documentation (no Engl"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=d_qNs-TxX6Q)

Quick tutorial on how to use the Drawable Texture class in Godot 4!  
  
Godot version used in the video:  
https://godotengine.org/article/dev-snapshot-godot-4-7-beta-5/  
  
AreaLight3D documentation (no English version available at the moment, use the translate feature):  
https://docs.godotengine.org/pt-br/4.x/classes/class\_drawabletexture2d.html

## Transcript

**0:00** · Hello everyone. In this tutorial, I'll be showing you how to use the Drawble Texture 2D class in Godot 4. As of recording this video, this is a brand new feature available in the Godot 4.7 beta. A Drawble Texture is just a 2D texture that supports drawing to itself via blit calls, meaning that you can generate a texture and edit it during runtime. For this example, I just have a simple 2D scene with a main node and a main camera. I'm going to add in a Sprite 2D node. This is what we'll be generating our texture onto and editing afterwards. Next, we'll go on to create a script onto that sprite.

**0:28** · First, we need to create a Drawble Texture variable. So, variable drawble texture.

**0:35** · We'll set this to be a Drawble Texture 2D.

**0:39** · Next, I want to make a variable that will hold our texture size. So, variable texture size. This will be a vector two integer. And I just went ahead and set it to be 512 by 512 pixels in the X and Y. Next, in our ready function, so function ready, we'll set Drawble Texture to be a Drawble Texture 2D.new.

**1:03** · Next, we need to set up the Drawble Texture. We'll be using this setup function to do so. So, we'll run Drawble Texture.setup passing in our width, so texture size.x, then our height, texture size.y.

**1:20** · Then, we need to pass in the format.

**1:22** · We'll just be using the RGBA8 format for now.

**1:27** · Next, we'll pass in a color value. So, the color and I like the aqua color.

**1:32** · You can choose to leave the color value blank. Uh it will just default to white.

**1:36** · And the final parameter is if we want to generate mipmaps or not, which I'm not going to go into exactly what mipmaps are in this video, but it will just default to false for now, which is fine for this tutorial. And then, the final thing that we need to do is just set the texture of our sprite to be the Drawble Texture. So, texture gets Drawble Texture. Now, if we run, you'll see we have our blue square.

**1:57** · Next, I'll be showing you how to draw other textures directly onto this drawable texture that we just created.

**2:01** · For this example, I'll be using the regular icon texture.

**2:04** · Drag and drop that to make it a constant, and we will be using the blit rect function to draw it. So, we'll call drawable texture {dot} blit rect. First, we need to pass in a rect2i object, so rect2i.

**2:17** · First parameters are the position, so I'll pass in 196 and 196 for our coordinates.

**2:25** · And then the size, I will do 64 by 64.

**2:30** · Next, we need to pass in our image, so I'll just pass in icon. And for now, I'll be leaving the rest of the parameters to their default settings.

**2:36** · Now, if we run this, you'll see that our Godot logo is embedded into our overall texture. And this is not a separate sprite. This is one solid texture now. The best method I found to just draw a solid color is by creating a blank image that we impose in and then change the color afterwards.

**2:53** · This will make sense in a second. So, create a variable. Let's call it source image.

**2:59** · Set this to be a image {dot} create empty.

**3:03** · Set the width and height to just be one pixel.

**3:06** · Then, mipmaps to false.

**3:09** · And also, image format will be the same as our texture format, so RGBA8. Next, we'll replace our icon with the source image.

**3:20** · And to choose a color, we just enter in a color to the modulate section. So, we'll do color {dot} orange.

**3:27** · And run that.

**3:29** · Now, we have a blank orange square in the spot of our old Godot logo. Next, to achieve the live drawing effect as seen in the beginning of the video, first create a process function. So, function process.

**3:39** · Next, we'll check if our mouse button has been clicked. So, if input {dot} is mouse button pressed, mouse button left, we'll create a new variable called local pos.

**3:53** · Set this to be two local and get global mouse position. Next, we'll be using that to calculate our texture position. So, variable texture position. Set this to be a vector two.

**4:10** · First parameter will be our local pause.x plus our texture size.x divided by two.

**4:21** · And then the same thing for the Y. So, I'm just going to copy this and change these two to Y.

**4:29** · Then, we'll copy over our old drawing function.

**4:33** · Paste this in.

**4:34** · We need to change a few things.

**4:37** · One of which being our position. We're setting this to be texture pause.

**4:42** · dot x and texture pause.y. I'm also going to make it a smaller drawing.

**4:50** · So, bring down from 64 to eight.

**4:53** · And now, if you run this you'll see that we can draw all over our texture. Anyways, guys, if you have any questions or comments, please leave them down below. Don't forget to like and subscribe. Thank you.