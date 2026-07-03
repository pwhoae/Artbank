---
title: "How to make 3D Games in Godot"
source: "https://www.youtube.com/watch?v=ke5KpqcoiIU"
author:
  - "[[Brackeys]]"
published: 2025-02-10
created: 2026-07-03
description: "► Check out Zenva's free Godot course: https://academy.zenva.com/product/godot-101-game-engine-foundations/?utm_source=youtube&utm_medium=partner&utm_campaign=partner-youtube-brackeys-202501&utm_conte"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=ke5KpqcoiIU)

► Check out Zenva's free Godot course: https://academy.zenva.com/product/godot-101-game-engine-foundations/?utm\_source=youtube&utm\_medium=partner&utm\_campaign=partner-youtube-brackeys-202501&utm\_content=partner-youtube-brackeys-202501  
► Get 20% off your first year (on top any existing site-wide discounts!) with this link (first 50 people): https://academy.zenva.com/cart/?add-to-cart=1319205&coupon\_code=brackeys202501&utm\_source=youtube&utm\_medium=partner&utm\_campaign=partner-youtube-brackeys-202501&utm\_content=partner-youtube-brackeys-202501  
  
Learn how to make a 3D game in this Godot tutorial. From simple prototype to beautiful 3D levels, let's get started!  
  
········································­­·······································­·­····  
  
🖌️ Get the Assets: https://brackeysgames.itch.io/brackeys-3d-game-tutorial-assets  
  
🕹️ Get the ProtoController: https://github.com/Brackeys/brackeys-proto-controller  
  
❤️ Donate: https://www.paypal.com/donate/?hosted\_button\_id=VCMM2PLRRX8GU  
  
········································­­·······································­·­····  
  
Huge thanks to Raffaele Picca (Picster) - https://www.youtube.com/c/picster for his help in researching this video.  
  
········································­­·······································­·­····  
  
🕹️ Finished Project: https://github.com/Brackeys/3d-game-in-godot  
  
● Kay Lousberg (KayKit): https://kaylousberg.com/  
● Kenney: https://kenney.nl/  
● PolyHaven: https://polyhaven.com/  
  
● More on Character Controllers:  
First-person: https://youtu.be/xIKErMgJ1Yk?si=DVQ49YQXrl5oSrp1  
Third-person: https://www.youtube.com/watch?v=JlgZtOFMdfc&t=120s  
Source-like: https://youtu.be/ZJr2qUrzEqg?si=m4HQHI3O5ozWuCAd  
RPG: https://youtu.be/0T-FMkSru64?si=bZ4ps39ajNiy6UeQ  
Advanced: https://youtu.be/FgO5edghqRE?si=xHkYTXfShu0lEZou  
Premade modular: https://github.com/expressobits/character-controller  
  
● More on Godot Jolt: https://github.com/godotengine/godot/pull/99895  
● More on Colliders: https://docs.godotengine.org/en/stable/tutorials/physics/collision\_shapes\_3d.html  
  
● More on Animation Retargeting: https://godotengine.org/article/animation-retargeting-in-godot-4-0/  
  
● More on Import Scripts: https://docs.godotengine.org/en/stable/tutorials/assets\_pipeline/importing\_3d\_scenes/import\_configuration.html#using-import-scripts-for-automation  
● More on Import Suffixes: https://docs.godotengine.org/en/stable/tutorials/assets\_pipeline/importing\_3d\_scenes/node\_type\_customization.html  
  
● More on improving the Import Pipeline:  
https://github.com/godotengine/godot-proposals/issues/11356  
https://github.com/godotengine/godot-proposals/issues/8750  
https://github.com/godotengine/godot-proposals/issues/7494  
  
● More on Tonemaps:  
https://docs.godotengine.org/en/stable/tutorials/3d/environment\_and\_post\_processing.html#tonemap  
https://learnopengl.com/Advanced-Lighting/HDR  
  
► Join Discord: https://discord.gg/brackeys  
  
● Website: http://brackeys.com/  
  
········································­­·······································­·­····  
  
► All content by Brackeys is 100% free. We believe that education should be available for everyone.  
❤️ Donate: https://www.paypal.com/donate/?hosted\_button\_id=VCMM2PLRRX8GU  
  
········································­­·······································­·­····  
  
🎵 Ratatouille's Kitchen - Carmen María and Edu Espinal (YouTube Audio Library)  
  
········································­­·······································­·­····  
  
TIMESTAMPS:  
  
0:00 A new dimension  
0:36 The good news  
1:32 The bad news  
2:46 Zenva  
3:35 3D Space  
6:13 Greyboxing  
9:31 Terrain  
10:01 Playing the Game  
11:11 Character Controller  
14:15 3D Physics  
16:10 Graphics  
17:44 3D Assets in 1 min  
18:45 Assets in Godot  
22:38 StandardMaterial3D  
26:53 Scene Workflows  
30:53 Collision  
32:57 Replace Greybox  
35:43 Animated Characters  
38:33 Speed up Workflow  
39:24 Environment  
42:00 Lighting  
45:38 Tonemap  
47:18 Camera  
48:45 Render Quality  
49:14 Outro

## Transcript

### A new dimension

**0:00** · a three grade adventurers once said you have my sword and you have my bow and my Axis it's a set axis anyway if you're looking to add a new dimension to your Game Dev skills

**0:16** · this video is for you perhaps you've just made your first game in Gau you've put in some Sprites and a few notes or maybe you're an experienced developer who's just never worked in 3D before either way taking the first steps away from the familiarity of Sprites and pixel art can feel pretty daunting but I'm here to tell you that it doesn't have to be and that Gau actually makes this transition pretty smooth first the good news gdo is build in such a way that most of the concepts you learn when making a 2d game directly apply to 3D

### The good news

**0:44** · this is especially true for the functionality part of your game many of the notes that you might have used so far actually have a direct 3D version that works in pretty much the same way so instead of using node 2D we seem to use node 3D instead the same is true for area Collision shapes static body character body camera raycast audio stream player and so on most of the properties on these nodes are pretty similar and other nodes like timer and

**1:08** · animation player don't even have a 3D equivalent they just work the exact same way as in 2D and this actually applies to programming as well detecting if a raycast 3D is hitting something is done using the is colliding function just like in 2D and as usual you can move a node 3D by modifying the position of course positions now have a third component that can be modified the set axis but otherwise the procedure is the same and then the bad news the bad news

### The bad news

**1:35** · is that while gdau tries its best to ease this transition the world of 3D Graphics is vast and complicated while 2D games work by drawing Sprites in other words flat images onto the screen 3D games combine a lot of different acid data such as meshes textures character Rigs and animations with the in-engine rendering tools such as shaders lighting

**1:56** · particle simulations and post-processing effects the pipeline for this can quickly become pretty complicated and it's definitely an area where I see a lot of misunderstandings but fear not this video should clear up a lot of the confusion and teach you how you can approach this with as much complexity as you'd like creating aesthetically pleasing 3D scenes doesn't have to be rocket science and we can often rely on the ease of use of gdau to help us out I've split this video up into two sections first we'll look at functionality how we can design and prototype 3D games in gdau then we'll

**2:27** · dive into Graphics we'll get a good overview of the terms thrown around when working with 3D assets we'll N Out on workflows and how to best use these Assets in gdau and finally we'll learn how to render them beautifully in the engine this video is meant to serve as an overview not a follow along so Lean Back grab your favorite snack and let's figure this out but first this video is sponsored by senma if you want to know more about Gau make sure to check out senma Academy they offer great beginner and intermediate courses including a free introductory course on Gau TMA

### Zenva

**2:58** · combines fun and practical learning through professional video tutorials written lessons and interactive quizzes and what's really cool is that you'll build real projects across various genres from RPGs to Bullet Hells SBA also has a wide range of courses on python Unity on real and other essential

**3:16** · tools with a single subscription which includes a 7-Day free trial you unlock over 300 courses use the coupon code below to get an extra 20% off the first year of your SBA subscription on top of any existing side wide discounts the offer is valid for the first 50 subscribers so make sure to use your coupon today to start your Game Dev Adventure so we're in G do and we want to go to the top here and switch from 2D to 3D and that's pretty much it for this video so if you enjoy all right there's maybe a bit more to it than that let's create a 3D scene name it Main and save

### 3D Space

**3:48** · it we can create something to look at by going Plus or hit contrl a to add a new node we'll search for mesh instance and add the mesh instance 3D and hereo supplies us with some primitive meshes that we can use I'm going to choose a new box mesh and we can of course orbit this box by holding down middle Mouse pan using shift middle Mouse and zoom using scroll just like in 2D selecting

**4:12** · something and hitting F will focus The View on that node and by holding down the right Mouse button and using the vast Keys we can move in freelook mode which is a very nice way to move around especially when designing levels and adding shift to this will make you fly faster in 2D Ino we normally work with

**4:30** · pixels moving a note one unit corresponds to moving it one pixel on the screen however in 3D this is not the case instead it is common practice to equate one unit to one metric meter and many assets that you find online will be scaled to fit this as we can see this box here is currently 1 meter on all sides and if we look at the transform we can see that all of the position data is in meters and we can of course adjust this here or we can use the gizmos just like in 2D we can switch between select move rotate and scale or use q w and R

**5:04** · here we can move the node on different axes using the arrows rotate using the arcs and scale using the squares to scale uniformly simply click and drag outside the gizmos holding down control while translating toggle snapping and pressing this box here or t

**5:23** · on the keyboard will switch to local mode in local mode the giz modes follow the orientation of the node and in global mode they are simply ignored a quick tip is that you can actually bind these manipulations to happen on a key press similar to a program like blender to do this you go to editor editor settings shortcuts and if we search for begin we can B keys to rotate scale and

**5:46** · translate or move so I've bound rotate to shift R and now if I press that I can rotate freely or bind it to an axis say the x-axis by just hitting X and we can now rotate around the XA axis clicking will apply the rotation or right clicking will snap it right back very cool now before we spend hours upon hours making large and beautiful 3D

**6:10** · environments it's probably a good idea to start with a prototype and a very common way to do this is by using a technique called gray boxing also known as a level blockout here you use Simple shapes to lay out a rough draft of your level this way you can make sure the level works well before getting barked down in the details and this is one of the things that gdau makes very easy with its build in CSG nodes CSG stands

### Greyboxing

**6:32** · for constructive solid geometry and allows you to quickly make levels and props by combining simple shapes and in the end you can even export your graybox scene and bring it into a 3D modeling program such as blender to use as a base so let's try it out when prototyping I almost always work with snapping enabled so at the top here we can enable snapping or press Y and we can configure the snap under transform configure snap I'll set this to 0. 1 10° and 10% scale

**7:03** · now we can add a new node and search for CSG and as you can see there are different ones in here I'm going to start with a box and here we can simply click and drag on the handlebars to scale it if I hold down alt it's going to mirror on both sides and a nice thing about this is that we don't need to add Collision separately we simply go to the right here and enable use collision and now we can collide with it so let me just make a quick wall here

**7:30** · and let's say we wanted to add a window to this wall well in this case we can use subtractive editing so under this CSG box I'll add a new CSG and this time let's make it a cylinder I'll position this where I want the window and I'll make sure that it sticks out on both sides of the wall then to

**7:48** · subtract this from our box we simply change the operation from Union to subtraction and as you can see we have a round window and we can very easily adjust this to do all kinds of things say we wanted this to be kind of an archway instead I would simply drag this down and scale it and we have an archway we can also increase the sides on the cylinder to make it look a bit nicer

**8:13** · very cool and you can do a lot more with CSG in gdau but this is enough to get started so let me put together a quick prototype using these techniques often times when making levels I would go to the top right here and click on the axis to change to that view just a really nice way to view everything from the side or the top and to exit I just click and drag with middle \[Music\]

**8:43** · Mouse now sometimes I will use a CSG combiner node so let's hit plus CSG combiner and this will combine all child csgs into one so for static geometry like these rooms for example I can take pretty much everything and put it under this one CSG combiner just remember to

**9:02** · check use Collision on that node since everything is now one and so I've blocked out these two rooms and I've intentionally left them pretty blank at this point I'm starting to get ideas for how this scene might look in my head but for the gray box I've concentrated on just getting a rough layout I also know that I'm going to be using tileable assets for the walls so I've stuck to symol 90° angles feel free to get as

**9:25** · crazy with this part as you'd like or exclude it completely not all projects need a gray box now I should mention that so far this is turning into an architectural level but sometimes you want to work with more organic environments such as for large outdoor scenes here it is common to use a Terrain tool that allows you to sculpt and paint a Terrain to suit your needs

### Terrain

**9:45** · Gau doesn't have a build-in solution for this but there is an extension called terrain 3D which is quickly becoming the go-to tool for Terrain in gdau creating terrain is a really fun and creative process but it's not within the scope of this video let me know if you'd like to learn more about ter and foliage in the future all right so to play our game we need to add a camera so let's add a new node camera and select camera 3D I'm

### Playing the Game

**10:09** · going to move it over so that it can see our level and rotate it down remember we can always preview it by selecting this tle cool so the camera now has a view of our level and if we now click to play or press F5 it will ask us to set a main

**10:25** · scene we'll hit select current and our level looks not very exciting even for gray box that's because by default Gau uses a preview sun and environment in the scene view but not when running the game in fact we can tockle the preview sun and environment using these buttons here and if we expand we can even adjust

**10:45** · settings such as the sun's Direction and we can also add them to our game so let's simply hit add sun to scene and also add environment to scene as you can see this creates two new nodes a directional light which is our sun and a world environment the sun we can now rotate to adjust where it's shining from

**11:03** · and the world environment we'll talk about later and now if we play we can see our level but what fun is it if we can't move around it and for this we need some kind of character controller but just like in 2D creating a solid controller can actually get pretty complicated and the needs of the controller entirely depends on the game that you're making is it first person or third person does the camera move freely or is it bound to a character do need jumping double jumps wall jumps stairs slopes Sprint Crouch prone swim attack

### Character Controller

**11:31** · attack while swimming it's too much and this is not a video about character controllers luckily there are a lot of good resources about making different types of controllers available so instead of spending the next hour programming a controller that might not be right for you anyway I'll link to some that you can check out I would recommend starting simple you can always expand on your controller as the game progresses and you get more comfortable I've also gone ahead and created a very simple character controller to use for prototyping firstperson games I call it

**11:57** · the protoc controller you can you can download it for free it's under the CC Z license so you can use it for anything it's designed to be simple and has basic movement with options for jumping sprinting and a free fly mode that I find super useful when testing to import simply take the protoc controller folder and drag it into your addin folder in gdo if you don't have an add-ons folder you can simply go ahead and create a new folder name it add-ons and now we can

**12:22** · drag our protoc controller in there and that's it we can now go here take the protoc controller scene and drag it into a gray box level we can get rid of the camera we created before and now when we play We can look around move using the arrow keys and even jump using space to

**12:41** · get control of our mouse back we hit escape and if we go into the controller we can see that it's super simple again this is intended for easy prototyping so I've kept it very Bare Bones it has a character controller to drive movement a mesh instance for temporary Graphics a Collision shape and under the head node is a camera 3D the script references the

**13:05** · collider and head node so leave them B unless you want to modify the script which if you want to is as simple as clicking the script button and here is all the code on the top note we can choose which features we want to include as well as adjust some speeds I'll enable Sprint and freefly we just need to make sure that we also go under input actions and bind the appropriate keys and this this is exactly the same as 2D so to add input we go project project settings input map and here we can add

**13:36** · actions for all the things we want to do I'll add some for the movement as well so that I can B them to my own keys and now that I have the actions I can bind keys to them and to put this into our controller we just take these names and put them into our input actions and now if I play I can move using the right keys I can even Sprint and I can toggle into freefly mode and of course toggle right back awesome now

**14:08** · we can make levels and start testing them so we're almost done with functionality but I quickly want to touch on physics 3D physics works much the same as 2D and uses many of the same nodes to create a static collider we use a static body 3D node with a collision shaped 3D as a child here we add a shape resource size it to fit and that's it

### 3D Physics

**14:29** · for physics simulated objects we use rigid body 3D again with Collision shape a quick thing to note is that Gau can be a little sensitive when it comes to scaling colliders scaling uniformly should be fine but non-uniform scaling will generate a warning and probably lead to Collision weirdness just a HS up now one thing that I really recommend you do in most cases is to switch to the jold physics engine jol is currently being implemented into the engine and is planned to replace the default gdau physics it has many advantages mainly in

**14:57** · terms of better performance and more stable physics simulation for me has fixed much of the weird behavior that I sometimes run into with the default physics it's also much better at scaling still there are a few differences so if you're unsure if jel is right for you I'll have a link to where you can learn more and follow its progress if you're using gdau 4.4 or later jol is already part of the engine and just needs to be enabled by going project project settings scrolling down to physics 3D

**15:24** · and setting the physics engine to J physics It'll ask us to rest start and J is now enabled on previous versions I'm building this in G 4.3 we first have to install it as an add-on so we'll go to the asset Library we'll go online search for good jold we'll click

**15:44** · and download hit install save and restart and now we can enable it in the same place on the project settings 3D physics we have to check advanced though and under physics engine we have jolt physics and again we'll have to restart and as you can see we didn't have to change anything about our game we can run it and move around just as before but now all the physics nodes we use jel instead

### Graphics

**16:10** · so that's how we can start prototyping and building functionality for our 3D game because there's more to 3D than just making the game really really ridiculously goodlooking but that's fun too and Graphics is probably the biggest difference between 2D and 3D development so welcome to giraffic park when working with 3D Graphics in gdau I think most of the work fall under three main pillars that all contribute to the look of our game I like to call them the 3DS of 3D Graphics first we

**16:37** · have the assets the models with textures and materials that we place in our scene the lighting the lights that we set in our scene and the environment the rendering choices we make that affect our scene if the look of a game isn't working it's probably because one or more of these pillars or these isn't doing what it should you could of course argue that shaders and V effects need their own pillars but for the sake of keeping the scope of this video just somewhat reasonable we'll skip those topics entirely plus the 5Ds of 3D

**17:05** · Graphics just sound silly so let's begin by having a look at importing and setting up 3D Assets in gdau and then we'll move on to lighting and environment now this is where I see a lot of people get confused and that's understandable when it comes to 3D assets there's often a lot of terminology being thrown around if you're a 3D artist you need to know what kinds of assets and formats could expect so you can best tailor your workflow to fit but even if you're not a 3D artist

**17:28** · it's important to have a solid understanding of what these terms mean so you can Implement assets created by others correctly in the engine so just to make sure that we're all on the same page here is a one minute overview of all the things that make up a common 3D game asset if you have experienced creating 3D assets already feel free to skip ahead exactly 1 minute the shape of our model is called the mesh it's the actual geometry or polygons that make up the object we can easily assign a color to a mes but if you want to texture it by painting with multiple colors we need to make a UV map a UV map is is a 2d

### 3D Assets in 1 min

**17:59** · representation of our mesh each point on the map refers to a point on the mesh this is called unwrapping and you can think of it like peeling and orange and then laying the peel out flat texturing is most commonly done by painting directly onto the mesh the 3D program then uses the UV map to apply this to the texture the result is a 2D image that can be overlaid onto the model next

**18:18** · we create materials to simulate the surface properties it's our model rough like wood or smooth and shiny like metal these properties might vary over the surface so we create textures for them as well now some meets such as characters need to bend and animate this is done using a rig that defines the movable bones each bone is mapped to a specific part of the mesh so that when it moves the mesh comes with it which looks funny when it's done wrong finally

**18:41** · a game asset can have animation data such as animations that move the bones of the character hopefully that gave you an idea of what makes up a common 3D game acid now let's look at how to get your game aets playing nice with gdau officially gdau supports these model formats with gltf being the recommended gltf is an open sty that is rapidly increasing in popularity and personally I've had the best results with it if I'm working with a model in another format I will most often reexport to gltf using blender it has solved many issues for me gltf comes in two versions gltf and glb

### Assets in Godot

**19:14** · glb is the binary version it's smaller and recommended for most cases G also supports blend files which means if you're working in blender you can save your blender file directly into your gdau project and it will import correctly behind the scenes gdau is actually calling blender to export to gltf which means that you have to have blender installed for DOT blend files to work now for this part I'll be using some assets from the amazing kkit and

**19:37** · Kenny I've made a few tweaks and bundled together just the ones that I use if you want to try some of these things out on the exact same assets or if you want the full packs definitely check out the original creators links for both in the description so here I have a chest with some coins in it the chest is made up of a gltf file containing the model and a separate PNG texture so let's create a models folder in gdo select it and drag in our chest from here we can drag it into our scene and voila a chest the

**20:09** · texture isn't applied but we'll fix that in a second now a very important thing to note here is that next to the model is this scene icon often a 3D asset will contain more than a single mesh it might have an entire hierarchy of objects to make this easy for us to manage gdau treats a gtf file like a Gau scene and

**20:29** · we can go ahead and open it like any other scene it's going to tell us that this scene belongs to our gltf file so we can't modify it that should be done with your modeling program but we can open it and see what's in here by pressing open anyway and here we can see all of the nodes that now make up this asset in gdau even if you import a gltf

**20:47** · file with just a single mesh in it gdau will put it under a root node and create a scene for it now sometimes our assets might import without issue but often times we need to make adjustments so let's let's select the gtf and go to our import window here are a bunch of settings most of which you can ignore for now but one you might need right away is rude scale this allows us to

**21:09** · adjust the scale of the imported model so in this case I think one is fine while we can adjust many things in the import window a lot of the really important import settings are actually under Advanced we can click the advanced button or simply double click the file and this will open up the advanced import settings don't be scared by the fact that it's called advanced this window simply gives you much more control over the different parts of your model here we can see the notes making up the scene and if we select one we can set import settings for just that node

**21:37** · say we didn't want to import the chest lid well then we could simply hit skip import for just that node and if we select the scene at the top we get the standard import settings we can also go under materials to see all the materials that got imported and the cool thing is that we can override any of the imported materials with our own so let's create a material for the chest I'll right click create new resource and I'll search for standard material here's the standard material 3D I'll name it Matt chest and

**22:10** · now in the advanced import settings we can select the default material go under use external and enable that and point to the material that we just created which means that if we reimport we can now go to our material and any changes we make here will apply to to our chest

**22:30** · and to add our texture we simply drag it into the albo texture slot and this is probably a good time to talk a bit about the standard material the standard material is a very powerful and also flexible PBR material that can be used for anything from wood to Metals vegetation and emissive surfaces it can

### StandardMaterial3D

**22:48** · even act as a simple tune Shader by changing the diffuse and specular modes to tune the standard material really deserves an entire video in its own right because it has so many properties that you can adjust to get the look you're going for and of course we can use textures or maps to set these as well but to get started here's a quick overview of the most common ones albo the base color of your material if you use an albo texture to set this it can use both the RG and B channels to Define color you can also use the alpha channel to Define transparency if you mark the material as transparent metallic how

**23:20** · reflective is the surface this is a value that goes from 0 to one where one is completely reflective however internally even at zero the material reflects a tiny bit just like in real life a metallic map requires only one channel note that once in a while you might run into something called a specular map this is an alternative to the metallic workflow that Gau uses and is not supported roughness how smooth or

**23:44** · rough is the surface a material with a low roughness value results in sharp Reflections as the roughness increases the light becomes more scattered and the reflection start to get fussy a roughness map also only requires one channel some assets provide a smooth map instead this is the same as roughness but inverted in this case I would recommend inverting it in an image editor before importing too normal here

**24:08** · you can add a normal map to simulate depth it changes the way light interacts with the surface to display smaller shaped details however the mesh is not actually affected by a normal map because of this the effectiveness will vary depending on the viewing angle a normal map uses the RGB channels be aware that gdau uses normal maps in open GL Style some normal maps that are created for direct X will appear inverted if your normal map doesn't look right you can go to the import window and select normal map invert y this will

**24:38** · convert it from one style to the other ambient occlusion here you can add an AO map that affects how much ambient Light reaches the surface in other words it can darken the parts of your model where light has a hard time reaching and it uses one channel emission that's the

**24:54** · surface ID light we can set this manually or use an emission map but this is more pertaining to lighting so we'll move on there are of course many other types of maps like height or refraction but these are for more advanced use cases so we won't go into them here at this point you might be thinking that's a lot of textures for just one model and many games will definitely only need a fraction of them but if your game needs them all it can be a challenge to fit that many textures into the game because of this it is common to use ANM texture and material remember that ambient ution

**25:26** · roughness and metallic textures only require one channel each this means that in practice they can be combined into an omm texture where each map occupies either the red green or blue Channel gdau fully supports this workflow with a version of the standard material called omm material 3D which can be combined with regular standard materials without issue and on the subject of materials

**25:48** · for some workflows the 3D artist will set up all the material properties in the 3D software in this case the textures will often be packaged with the model file this is called called packed or embedded textures here for example I have a barrel which just consists of a dldf the material and texture has already been set up in blender and packed into the file so if I import it g

**26:12** · will extract the textures and place them next to the gltf and the model is ready to use we can always go under the import settings and at the bottom under embedded image handling choose what happens to the textures as you can see this is set to extract by default and so it appears next to the model and if we want to we can also extract materials so if we double click the barrel go under actions

**26:37** · there's an option here to extract materials so I'm just going to extract them in the same place and now we can configure the material this is useful because not all materials in your 3D program will transfer perfectly into gdau materials in which case you might want to adjust them here all right so our chest is imported and looking great but how do we actually start using it in our game now if we play the game I can run right through it so we'd at least want to add some kind of collision and what I see a lot of people do is go here to open scene and choose new inherited

### Scene Workflows

**27:10** · this creates an inherited scene based on the gltf file what this means is that we can add new notes to the scene and even overwrite some properties but we can't modify the original hierarchy which turns yellow to indicate this so we could add a note here we can add a script make some changes and when we satisfied save it as a new scene that we can use in our game and this works but there are

**27:37** · a few problems first of all using inherited scenes quickly gets very confusing what's part of the original asset and what's not also it breaks very easily if I make a change to the asset and it gets reimported it can be hard to predict what happens to the inherited scene and your changes might get removed

**27:55** · and doing it this way means that we are basing our game functional on a graphics asset this is generally a nogo especially in more complicated scenarios in fact most of the time we're doing the exact opposite we build functionality without fancy visuals and then bring in those visuals as we'd like so instead of using this to create an inherited scene I recommend that you use nesting with the nested approach we create a new scene that we have full control over so I'll make it a 3D scene

**28:24** · name a chest and here we drag in our model this allows us to freely create and configure gameplay nodes and then import or swap out our Graphics as we see fit then when we are happy with it we can save it and start using it in our game

**28:41** · this approach is also much more staple because any changes to the gtf file won't affect our game logic it will just update this one nested scene of course it might happen that you need to reference something inside the nested scene I would generally advise you to be careful when doing this because again Things become more likely to break but if we need to we can expose the child nodes of the scene by enabling editable

**29:05** · children if you find yourself doing this a lot perhaps it would make more sense to split the asset into multiple gltf files instead say for this chest here if I needed to access the lid to open it I could export the lid as a separate file just an option now there is actually a third way of structuring your scenes that I personally like for a lot of reasons unfortunately it currently has a very big drawback for this technique we also use a separate scene and again we drag in the model and then we press make

**29:34** · local what this does is that it breaks the connection to the dtfc this now gives us full control over the original asset which means that we can pick and choose what we want and reorder the hierarchy so it has some clear advantages it's very flexible and makes it easy to separate function from visuals but I mentioned there was a drawback as of making this video this is gdo 4.3 when we press make local gdo

**30:01** · will take all the mesh data in the gltf and store it in the scene we created that means that if we save this scene before pressing make local and look at the size it's very very small but if I now go in and press make local and save again we can see

**30:19** · that immediately the scene Grows by a lot now this might be fine for very low poly models but if the mesh is more complex it will bloat your scenes a lot which is not a good thing remember that at some point this scene needs to be loaded by your players and if it's big and bulky that is going to take longer

**30:37** · now improving these workflows is something that is being actively discussed in the good community and I'll provide some links to where you can read more if you're interested but for now these are the three ways of implementing your model into your game and at this moment I would say if in doubt use Nest it seems so in this case to quickly add Collision to the chest and start using it we would make a new scene as the root node I'll hit other node and I'll search for static body 3D because our chest

### Collision

**31:03** · isn't going to be moving but we want it to be physics enabled let's hit create let's then drag in the chest model and as you can see the static body expects a collision shape so we'll hit contr a collision shape and for the shape here we'll choose a box shape 3D and now we can use the gizmos to size it to fit

**31:24** · there we go I'll name the root node chest make a folder for my scenes and save it there and now we can start using this chest in our game and indeed we can collide with it

**31:40** · sometimes you'll run into a model where a simple Collision shape doesn't quite fit and most of the time I would recommend that you just go with good enough because the simple shapes are very much more performant than the alternative for this Barrel here in most situations a cylinder is probably fine

**31:57** · but if you do need something more detailed there are two things you can do one is that you can piece together multiple Collision shapes to create the shape that you want this is probably what I do most of the time or you can have Kau generate a collision shape based on the mesh to do this will'll enable editable children on the barrel model we'll select the mesh we want and on the mesh at the top we'll create a collision shape here will choose sipling

**32:23** · and we can choose which method to use I'll choose single convex and hit create now we can move the Collision shape to be under the barrel and disable editable children I've made this Barrel a rigid body to show this more clearly so if we save it as a scene and position it over our chest when we play the game we can see that indeed the collisions are now pretty accurate I'll have a link to the Dos where you can learn more about when it's best to use different types of colliders it's also not uncommon to model your own colliders in a 3D program

**32:55** · a good way to do that is using suffixes but first I'll take everything that we've learned so far and use it to replace this boring looking gray box with some actual assets I'll start with these building assets often low poly models will be textured with just a few colors and it's common for all the models to share the same texture which is the case here so I'll import the models and the dungeon Albedo texture and create a standard material that all the models can share then I'll go through each of the models and point them to this external material and now

### Replace Greybox

**33:27** · I'll create a scene and set up Collision for each of them as we talked about this is a good example of a model that needs multiple Collision shapes so I can simply copy this one Collision shape that I've created rotate it and move it over and remember whenever we duplicate a collision shape we also have to go and right click on the shape and click make unique otherwise the changes that we make to the shape resource will affect both Collision shapes so make unique and perfect

**33:58** · and now I can place them in the level sometimes the gray box can get a bit in the way so I like to lock all of the CSG noes simply select them and hit this lock here and I'll do the same for all of the child nodes I'll also disable Collision so on

**34:15** · the top note here I'll remove use collision and I'll assign a material that makes it a bit easier to see through it so under geometry material override I will create a new standard material and on this material I will set transparency to Alpha and for the albo I'll set this to a nice magenta color as well as turn down the alpha to make it transparent much \[Music\]

**34:50** · better so now that the gray box has been replaced by our custom assets we can simply get rid of it and now we can play our game with our Assets in it awesome and this is a good time to start decorating which I'll do in the exact same way I've already imported some prop assets and I'll set them up as nested scenes and scatter them throughout the level so since we know how to do that already I'll use a bit of TV magic and voila a beautiful level and

**35:21** · while I'm working through it notice how we started with a very rough sketch a gray box that allowed us to quickly move things around prototype and once that worked we replaced the gray box with some actual walls and only once that was in place did I start decorating which is just a great way to make sure that you aren't spending a lot of time going into detail with something that might be scratched anyway now before we move on to lighting our level so far we've only worked with hard body models what if we wanted to add animated characters take

### Animated Characters

**35:52** · for example this skeleton it's textured rigged and animated and everything is packaged in into the gtf so we can simply drag it into gdo and if we double click it we can see that inside is a skeleton 3D which is the rig a bunch of meshes which are

**36:08** · controlled by the skeleton and because the file has animations it's gone ahead and automatically created an animation player under which we can see all the animations and set loop settings for each one individually if I drag it into a scene and enable editable children we

**36:25** · can then use the animation play here to play animations but most of the time I actually prefer to work with animations separately so here I have a zombie character it is also textured rigged and animated but the file is split up the first one contains just the model texture and rig if we import it and

**36:45** · double click it we can see that it has a skeleton 3D and a mesh but no animation player or animations so let's drag this into our scene the other gltf files don't actually include the model they simply have the rig and animation data as you can see if we import one and double click it there's no mesh but there are animations this means that we can go to the import window and import this as not a scene but an animation Library I'll hit reimport hit okay then

**37:18** · we can create our own animation player for this character so I'll add a new animation player and as you can see it set the root note here to zombie we want to make sure that that's the case so that this animation player controls the zombie and then under animation we go manage animations and here we can load a library such as the zombie idle library that we just imported and here are the animations in that file you can easily pack together multiple animations into one file say you want to have one for combat animations or whatever you like

**37:51** · so we'll hit okay and we can now play this animation and if we want it to Loop we simply double click the zombie idle and change the loop mode for the idle here to linear and voila you've now added the animations of this separate file to your model this is great because you can add animations as you go and you can even use the same animations for different characters as long as they share the same rig which is really cool now you

**38:17** · can actually do this even though the rigs aren't exactly identical this is called retargeting and allows you to use animations on rigs they weren't originally created for such as when using third party anim from a library like mixo I'll have a link to where I can learn more about retargeting in the description there are also a few tips that you can use to speed up your workflow the first one is to use name suffixes in your 3D software that good do will then recognize when importing for example if I don't want gdau to import the lid of this chest I would simply use Das no imp to tell gdo not to

### Speed up Workflow

**38:49** · import that node using Dash C only will convert the mesh into a Collis shape and put it under a static body node this way you can model custom colliders in your 3D software and gdo will treat them accordingly you can also add A- Loop sofix to an animation and gdo will automatically set it to loop on import and if you find yourself repeating the same task over and over gdo also allows

**39:13** · you to automate the process using import scripts these are a bit too advanced for this video but really powerful so I'll link to where you can read more about them as well as naming suffixes in the description so with some assets in our scene we are ready for the next pillar which is either lighting or environment but in my experience it's often best to work on these two things at the same time since they affect each other let's start with the world environment node remember earlier we took the preview sun and environment that gdau uses for viewing in the editor and added it to our scene so we should have this world

### Environment

**39:44** · environment node if not you can always go to the three dots at the top and hit add environment to scene and the world environment note is one of the things that I really like about gdau it puts all the common rendering properties for our scene in one place and in combination with our lighting allows us to really set the mood of our game now probably the most important setting in the environment node is the background

**40:06** · this is because it not only defines what to display as a background for our scene it also affects the ambient and reflected light that gets applied to our objects this means that setting the background plays a huge role in lighting our scene even if the background is never directly visible there are many modes to choose from but the most common are custom color and Sky custom color

**40:27** · allows you to choose a solid color as the background if I'm making an indoor level and don't want outside lighting affecting the scene I often Begin by setting this to Black the sky mode is where the magic happens by default G will procedurally generate a sky background this means that we can go in here and adjust settings to change the look of our sky so I can go under sky and change the top color I can set the Horizon color as well as change the bottom color

**40:57** · of the ground and the Horizon color of the ground as you can see we can get pretty funky with it and since the sky is procedural it will also update to show the direction of our sun now in our world environment we can also change to a physical Sky if we select new physical Sky material this is

**41:18** · also procedurally generated but is adjusted using physically based parameters it will produce different results than the standard procedural sky so feel free to experiment but know that this is slightly more expensive to render you can also set the sky background to a panorama image sometimes referred to as an hdri a good resource for freely licensed hdris is poly Haven

**41:40** · to set up a panorama Sky we import the image goo supports both HDR andex formats we then change the sky material to Panorama sky and drag the image into the Panorama slot no matter which background you choose we can adjust just the intensity using the energy multiplier with a

### Lighting

**42:00** · background selected it's time to start lighting our scene but lighting is a huge topic and one of the most important parts of making a 3D game really really ridiculously good-looking so I've decided to do a brief introduction to lighting here and then hopefully expand on it with a dedicated video in the future that way we'll have ample time to dive into Global illumination Reflections emissive surfaces and light baking but for now know that Kau has three different lights three different lights 3D lights that you can place in

**42:29** · your scene directional light this illuminates your entire scene from a certain direction it's most commonly used as a Sun or a moon omn light this emits light from a point out in a radius it acts kind of like a standard light bulb and Spotlight this emits light like

**42:44** · a flashlight so from a point out in a cone and all these inherit from light 3D so you can adjust color energy and so on a fairly common way to light a scene is to start with a directional light and then Place Omni and spotlight based on the physical lights in your scene these can be especially great for introducing a pop of color to your game and avoiding

**43:03** · blind areas where your directional light doesn't reach so let me show you how to go about doing that so let's start by adjusting our directional light this is the main point of light in our scene so it's the most important one to get right I'll enable this ceiling here so we can see which Shadows are being cast and then maybe I'll just adjust the angle a tiny bit let me fly into the scene here so we can see it more clearly and if we go under light we can

**43:29** · set the color to something a tiny bit more warm this is very subtle but I'll make it slightly yellow you can also play with the intensity but I think one is fine for now I'll also go into the world environment and on the ambient light I'll decrease the sky contribution a tiny bit this way less light is spilling from our Sky onto our scene

**43:50** · which just darkens the Shadows a bit which should look better once we get inside and talking about inside it's time to to add some light to the Torches so I'll select this one hitr a search for omn light 3D and so it will add our omil light as a child of the torch I'll move it out and up a bit and the first thing that I'll do is definitely change the color of this to something more fire like so under light I will change the color to a nice

**44:19** · orange something like that I'll also increase the energy to two and currently this room could really do with some Shadows so I'm going to go ahead and enable Shadows on this omni light this is definitely something that you want to do sparingly since having many lights casting Shadows can quickly get expensive but I think in this case it's worth it I'm going to make the color a tiny bit less yellow and I'm going to go to the top here on the Omni and change the range to say 15 so it really fills

**44:49** · out the room now since my torch here is set up as a scene one of the really cool things is that we can simply add this light to the the scene so I'm going to cut it here right click cut to remove and copy it then I'm going to go into the torch scene and paste it here instead and now if I save this scene all

**45:10** · torches in our main scene are going to update automatically and voila we have light all over I will also go into my world environment and enable ssao as you can see ssao or screen space ambient occlusion Will Shadow areas where light might have a hard time reaching and that's how we can very quickly light our scene using real-time lighting of course

**45:33** · the Torches here might benefit from some nice particle effects but that's for another video the world environment also gives us control over the look of the render for example we can choose which tone map to use the tone map has a big effect on the look of our final game but understanding what a tone mapper does is pretty technical for now just know that it affects the contrast curve of your scene and unless you choose linear it will help stop highlights from clipping for almost all my projects I either work in the default filmic mode or AC's AC's

### Tonemap

**46:05** · is an even more contrasty curve that has become the standard for photo realism when using AC's I often increase the white point and if your scene is too dark feel free to increase the exposure a bit as well gdo 4.4 also adds the agx tone mapper which is a nice alternative to the current ones I'm glad to see progress on the subject since the current toone mappers do have their ISS issues and the AC's look has been prevalent for a while now I'll provide a few links to where you can learn more about tone mapping if you're interested finally under adjustments we can apply

**46:37** · some basic color correction or Supply a color correction lookup table or lot for more control a Nifty trick here is to add a one-dimensional gradient so gradient texture 1D this allows us to control color and brightness over the range of our image for example if we add two more points in our gradient near the white and black point we can use them to say bring in a bit of warmth in the highlights make the Shadows

**47:08** · cooler and adjust contrast more precisely by moving them back and forth as with most color correction small adjustments are your friend another thing to consider are the settings on our camera we can go into our protoc controller and adjust the camera here but I've just placed one right here overlooking our entire scene so you can clearly see what's going on here we can set the projection so if you're making an isometric game we can change from perspective to orthogonal and adjust the size to fit in perspective mode we can

### Camera

**47:41** · also adjust the field of view but to get more control over the camera we use camera attributes we can either set some here or go into the world environment and add camera attributes here instead so let's set a new camera attributes practical here we can adjust the exposure or enable auto

**48:04** · exposure this is great if you have a dynamically moving camera such as in a firstperson game and you want the camera to Auto expose based on what it's currently looking at for example if the player goes from broad daylight into a dark cape this can also be seen in the scene view so if I fly into a dark room

**48:20** · now I'm going to put on the ceiling increasing the speed allows us to see this more clearly we can see that camera is going to compensate when I look in shadowy areas and if I look into the sun here it's going to quickly expose to the right level with scale we adjust the exposure intensity and with minimum and maximum sensitivity we can limit how far we compensate for dark and bright areas I'll disable it for now and finally you

### Render Quality

**48:46** · might want to adjust render quality to do this we go project project settings and from here the settings are a bit spread out but remember you can always search at the top for anti-aliasing we go rendering anti-aliasing I'll enable multi sample anti-aliasing for settings related to environment we go rendering environment and enable advanced settings and for lighting we go to light and shadows feel free to play around or read more about these settings in the online docks all right we made it and hopefully

### Outro

**49:17** · before you ran out of snacks I'm glad I could help welcome you to the world of 3D Ino and I hope this video gave you a nice Foundation to build your 3D game on also don't forget to check out SBA Academy be among the first 50 people to use the coupon code below to get 20% off the first year of your cember subscription now I'm off to the grocery store for refill really really ridiculously good-look