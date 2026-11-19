---
title: "Substance Painter Tutorial: Demystifying Trim Sheets"
source: "https://www.youtube.com/watch?v=qEuGyIkvKx4"
author:
  - "[[Escape Studios]]"
published:
created: 2026-11-16
description: "Trim sheets are an essential part of the game environment workflow but can be difficult to understand and grasp as a beginner. In this tutorial, Game Art Tut..."
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=qEuGyIkvKx4)

Trim sheets are an essential part of the game environment workflow but can be difficult to understand and grasp as a beginner. In this tutorial, Game Art Tut...

## Transcript

### Introduction

**0:07** · my name is jordan wills i'm one of the tutors here at escape studios i'm going to be doing today's webinar uh covering a topic about trip sheets or demystifying uh trim sheets so throughout the next hour we're gonna just try and spend some time looking into you know what trim sheets are um how they work how we make them and why we even want to use them to begin with and then we'll be using kind of different use cases different examples to kind of hopefully explain no trim sheets it's one of those

**0:35** · topics that i often find beginner artists maybe struggle with um and it's something that i personally remember struggling to get my head wrapped around it when i was trying to um when i was learning so i think you know i wanted to spend an hour i'm kind of spending some time looking at that and hopefully by the end of this session you'll have a better understanding of what trim sheets are some of you maybe never heard of trim sheets are completely new to 3d art or environment or something like that some of you maybe have heard shrimp sheets and had to go at trim sheets before but aren't totally

**1:05** · sure how to use them either way we'll be kind of starting from scratch and looking at sort of trim sheets so we're not gonna be able to go you know um from start to finish creating a trim sheet from nothing and spending the next hour uh creating a finished product that'll be a little bit too difficult to do in just an hour so it's gonna be a bit more of an overview of the workflow and hopefully just kind of clicking or

**1:28** · taking some of those tick boxes or what a trip sheet is and so that afterwards you'll have a better understanding of how to use it in your projects so some of you might be kind of experienced 3d artists some of you might be just kind of starting out but hopefully this will be i'll try and keep it nice and slow if you do have any questions please feel free to throw questions in the q a we'll be using the q a function if you have any questions and

**1:52** · that way it's just a little bit easier for me to see the questions if there's just like a general chat going on so please do use a q a function if you have any questions for me if you want me to revisit anything if you want me to explain something a bit more detail please feel free to do that um but if yeah otherwise feel free to use the chat as it's gonna close this stuff down

**2:14** · i'm just gonna turn off the camera just because i want to make sure that um the stream quality is as the best that it can be basically um and that it's not as choppy as possible so just turning off my camera cool so yeah that's what we're going through today is demystifying trim sheets so like i mentioned uh we're gonna be introduced introducing the idea of a trip sheet it's a highly useful and powerful texture type

**2:36** · which is very commonly used by environment artists and we can talk about what they are um some tips on how we can offer them and how we can use them in our 3d environments um and like mention it's not a step-by-step tutorial but more of an overview workflow and a little bit about me um i currently am a game art teacher escape i teach on a year two undergrad course i spent a couple of years at the er

### About Me

**3:00** · studio creating kind of realistic vr marketing experiences and then after joining escape kind of spent some more time looking into uh stylized work so i've got a bit of a hybrid between kind of realistic and stylized work at the moment and kind of using those different areas for art direction so i specialize mostly into 3d modeling and texturing and creating materials and environments and stuff like that so yeah just a little bit about me before we get jumped into the meeting for today so what is a trim

### What is a Trim Sheet

**3:30** · cheese so maybe someone there's people in the audience here who've never even heard of what a trim sheet is so a chimp sheet is a type of texture um similar to maybe like a tiny texture or an atlas or a unique texture it's just simply a way to describe a particular type of texture that's what a trim sheet is and they're very commonly look like this example here on the bottom right here it's a texture which has a assortment or

**3:57** · a collection of different patterns from the top to the bottom and it usually tiles in one direction so for example this trimmer or pattern at the top here it will tile from one side to the next if anyone doesn't know what i mean by the word tile all that means is that it will repeat seamlessly so if i was to scale this up two more times um all you

**4:21** · would see that the detail here would seamlessly connect with the detail on the other side and that's what timing means just means it will repeat perfectly or loop around perfectly on the other side of the texture and so trim sheets are usually a collection of these tiny elements but they just tile in one direction and that's why it wouldn't tile from the top to the bottom and that's why you can see this little end of your tile from one side to the next uh these patterns can then be mapped to various assets by splitting uvs or you can kind of just kit bash assets together by using these

**4:53** · kind of trim sheets these are really really really powerful for environment artists particularly because it allows you to generate assets really really quickly we'll be discussing why that is in a second but it allows you to generate assets very quickly and it allows you to increase your rendering efficiency because so many assets in your environment are reusing the same

**5:14** · texture it means that your game engine and your graphics card or your ps5 or whatever yeah they're not having to load lots and lots of textures it can actually just load into one texture and reuse that texture across all your environments so it's actually a really good way to make performance friendly environments the other real good benefit of a trim sheet is it

**5:34** · allows you to keep a nice visual consistency because they're all using the same texture all the values are the same the roughness values are quite consistent from one um asset to the next it kind of creates this environment that just feels like it's lived in the same world and assets have belonged in the same environment so yeah it's there's a lot of really nice benefits it speeds you up as an artist it speeds the rendering efficiency as

**5:57** · well really boosts your engineering efficiency and it creates a nice kind of visual consistency there are drawbacks to it it does mean that you can't have unique assets it doesn't mean that you can't have say um certain elements like a statue for example where you maybe you want all these really nice uniquely sculpt details and so trim sheets aren't the best solution for everything it does have its use cases and it's appropriate for some tasks but it's also not appropriate for other tasks

### Examples

**6:26** · cool so here i've got a few different examples just to kind of get an idea of you know how to recognize a trim sheet and some of the use cases um so the first example i'm going to show you is actually from one of my students who's just progressed onto the third year will be progressing to the third year in september

**6:43** · and this is one of his projects that he did with us and he used a trim sheet for basically all of these assets everything that you're seeing here they're all just using the same texture the same texture they're using just one trim sheet atlas um and so he's basically being able to create one two three four five around 12 different assets

**7:05** · really really quickly um with just using the one trip sheet and that meant that he was able to create this really efficient for the renter but also it meant that he could knock these out really quickly i think he did these over the space of about two to three weeks it was around about two to three weeks project um and we had loads of iterating time he actually had a first pass of all these assets within a week but uh because we were able to give him lots of feedback um it was yeah you were able to iterate a lot on this so yeah it doesn't necessarily need to

**7:33** · be just for the environments it can also be used for props and it is very commonly used for props um so yeah it's a nice use case there it's a really really well made um trim sheets unfortunately uploaded she did another example here is from an artist called shem dawson and he is one of the lead admirer or lead artists on world of warcraft team of blizzard and i kind of want to include this example because just to show that you know trim sheets doesn't it isn't a art a realistic or a stylized

**8:05** · specific technique it is just a technique which is used across all kinds of games in all kinds of art directions so for example here we can see there's a trim sheet example that is included just here and you can kind of see that the the designs here they've been mapped to this circular section this gold trim here has been mapped from one of these pieces here likewise these curves they've also been mapped from one of these trim sheets as well this element this design here has also been mapped here and so

**8:38** · yeah it's a really really powerful tool used in lots and lots of different art directions so trim sheet isn't as specific for realistic or for stylized it's just a way of describing a particular type of uh texture set and there is very characteristic to see just this kind of almost like bars of designs that repeat from one side to the next and then you just map your assets to it afterwards so yeah really nice example there this is used a lot for big games as well where you need to populate large environments very quickly

**9:08** · because it's a really nice efficient way of doing and then the last example it's just being cut off there there we go i got it um is from another artist called inca and she creates she worked with the pure polygons team to create the free um street example project found on unreal um and it was all about environment art and yes again they use trim sheets a lot for this environment you can kind of see this element here if i find the trim sheet texture there is

**9:40** · and so yeah you can see it's just kind of like these flat rows of patterns and designs and then they're later mapped to some of these objects and some of them are kind of straight some of them are curved um it doesn't really matter too much what i really like about this one is uh you can kind of just see the trim sheets actually it's probably easier for my slide um you can see that

**10:00** · these uh little kind of curved support designs here these this part of the texture has just been mapped to these straight pieces and it's got the pieces on the sides just tucked underneath so yeah a really really nice efficient use of kind of matching the references but kind of creating it nice and efficiently and it gives you a nice bit of artistic license when you use trip shoes as well so really cool um technique to use and

**10:26** · it's used by a lot of environment artists it's also used by prop artists as well like we mentioned there is used by a lot of different um departments kind of depends on what you're kind of trying to kind of shoot one cool let's just check questions feel free to fire questions in the chat at any point i would try and keep regularly checking it so apologies if there's a bit of a delay between me checking

**10:54** · cool so just a brief overview of what the workflow looks like when you're using a trim sheet so this here is a example of a trim workflow for a normal aster in this situation it's a little gun asset but this is what the normal workflow looks like you start off with a blocker

### Workflows

**11:13** · you then make a nice high poly asset once you're kind of happy with the block out and you're happy with the proportions you then go ahead and make the really high poly really nice looking with all the nice soft levels and all nice details and stuff like that you make that high poly and you can do that in a program and then once you're happy with your high poly you then create the low poly that matches it and then you unwrap your low poly so it's got some uvs and usually your uvs in this situation are between the zero to one space so it's matched uniquely in that zero to one space uh

**11:45** · and then once you've done that you can then go ahead and bake it and texture it in whatever program you like so that's the general workflow and i think that's the workflow that most beginner artists learn for their kind of first general workflows but it's the easiest to get head wrapped around and i think it is a really good workflow to begin with when kind of teaching game art it's really nice it doesn't take a huge amount of planning you can kind of to add extra elements when you're in the high poly stage it's a little bit more um a straightforward i guess workflow so

**12:16** · yeah you're kind of blocking in and you're doing your high poly then you make your low poly around it you unwrap that low poly and then you bake in texture that's the kind of standard workflow for an asset however when we're using trim sheets um we actually need to do it in a slightly different order and it usually takes a little bit more kind of planning so in the work for the workflow for using trim sheets is usually we start off with

**12:39** · a block out the same so we usually always start off with a block out uh get the proportions in there make sure that everything snaps together nicely and then as soon as we're done with the block out we actually then do the trim sheets and once we've done our trim sheets we actually then go back into our 3d and then we um either

**12:57** · edit the block out so that it matches or starts to get the uvs onto our stream sheets or we just create the block out meshes completely from scratch again because maybe they're just too low poly and they don't have all the detail that we'd like in there um and so from there once we've got our trim sheets then we actually mapped our backpack 3d objects to

**13:18** · our trim sheets and that's where the workflow i think starts to uh split away from the standard workflow and that's when i think i usually find people aren't totally sure how to use drip sheets or how they work uh and that's because it's this point where actually we're making the trim sheet first and then we're mapping our 3d objects to the trim sheets afterwards um and we're kind of

**13:41** · designing our our meshes using those trim sheets we're maybe like kit bashing our our assets together and it's this point i think where we usually i find people struggle with um not kind of sticking within the zero to one space or you know how to make it perfectly match up and stuff like that it's about just getting your trim sheets in there and then you map your 3d object to it afterwards and there's a couple of examples that i've got here that i can use as a

**14:09** · quick demo so just to give you an idea of what maybe a 3d object might look like after you've mapped a tiny texture to it isn't it a little example of an asset and yeah you can see that the uvs are a bit of a mess you can see that the uvs um stack on top of each other they go

**14:28** · outside of the zero to one space and that's absolutely fine it's uh for when you're using trim sheets and timing textures it's not a problem going outside of the zero to one space so again another common misconception from the artists who are maybe starting game art or unsure how to tackle certain

**14:45** · assets is they're not aware that actually you can take your ube or your object outside of the zero to one space because the texture just repeats it just tiles so there's another version of this texture here and on the left and on the bottom and on the top it just repeats endlessly repeats and that's what allows this technique uh to work another example that i have in here is again this kind of arch which will create from scratch maybe a little bit later and again you can see the uv shells go completely out of the zero to one space

**15:18** · uh and so that's a really key part of using a trim sheet and that's why we want it to repeat from one side to the next that's why we want it to seamlessly blend from the right side here to the left it's what makes this work so as soon as you kind of get your head wrapped around oh i don't need everything to fit perfectly inside the zero to one space and that you can also have assets sitting on top of each other as well they can stack on top of each other so i've got one asset one uv shell here

**15:45** · and there's another one underneath and there's another one underneath that one um then that's that's the kind of the bread and butter of a trim sheet and you know the player doesn't see this uv shell i don't see this they don't really care about the uv layout all they see um is this they see the actual end result the 3d model

**16:10** · \[Music\] cool cool um must be saying uh you are showing complex designs using trim sheets while i use preserve uvs on block how much to give complexity i keep losing quality on my uvs i don't need to unwrap edit unwrap edit um so you're saying that you're repeatedly unwrapping the same object um

**16:31** · okay yeah i mean again that is you know kind of comment i wouldn't say um well we'll be talking about preservatives a little bit later um but if what i often find is actually just kind of doing a quick plan with your block your trip sheet and then making the

**16:47** · final one and if you often life may have to find that you do have to re-unwrap your um asset to the new trim sheet layout often you'll want to edit your trim sheet or maybe change the layout slightly or change the proportion slightly or something like that

**17:03** · but so you often do find that you do have to re-unwrap um your asset to the new layout but once it's unwrapped you shouldn't have to continually unwrap it it shouldn't be kind of changing it's unwrapped so not totally sure why what's causing you to constantly unwrap it um but hopefully when i kind of do a little demo later on how we use trip sheets maybe that will hopefully clean that up for you a little bit

**17:28** · cool cool so that's the general kind of workflow of um for how we use trim sheets and this is where it kind of starts deviating from the standard workflow for gamer uh we do the block out we actually make the trim sheets and the tiny textures first and then we map our objects to it afterwards all will start out opposite objects from scratch afterwards so we don't worry about sticking our uvs or restraining our uvs between the zero to one we're happy for them to go outside the zeros one and we're happy for them to stack on top of each other

### Planning

**18:02** · cool so one of the key things i think with uh trip sheets um and is often the first stumbling block for beginners is is this planning stage shrimp sheets are super important to plan and i should say actually for both

**18:17** · of these workflows there is always a really important step just before this which is about gathering your references really important to gather a good reference collection otherwise you're kind of working blind and it's usually at the planning stage where your references come into play because you can use those references and figure out where you which patterns you need which designs you need

**18:46** · cool yeah that's a really good question that you got there um is it you know how do you have a curved object but also have it have it mapped straight so we'll show you a couple of techniques how you can do that um how you can basically force a uv shell to be straight um so i'll show you that later but yeah it's a really good question isn't it definitely not a silly question because when you do unwrap a curved object it does try and just bend the uv shell but we'll we'll be kind of making those straight afterwards but i'll show you that in a little bit i'll make sure to jump back to that and

**19:18** · so yeah the planning stage is super important and the planning stage doesn't have to be a particularly extensive one all we're really trying to do here is just trying to figure out you know what designs we can get onto a trim sheet and also um have we got enough space for them and do we need to edit the proportions or do we need to maybe make two trim sheets for example to make it all work and it could be really really ugly it can be really basic so for example this is the first kind of planning and it's just you know blocked colors kind of figuring out okay so i've got i need a trim for my rib vaulting i need

**19:47** · another trim for the tops of my columns i need another trim for like the kind of ornate pattern that kind of goes in i got another one for the column shapes maybe then i want a section for some bricks that can kind of repeat on the flat areas and then maybe i've got like a bit of a trim tile that kind of goes around borders

**20:05** · where objects meet or something like that and you know it's just really quickly made in photoshop just using a few different colors and then from there that is usually a pretty good starting point point you're already starting to think about what elements will need to be mapped to that where and then afterwards what you can sometimes do if you'd like you can actually grab images and just start to kit-bash this kind of pre-production

**20:29** · kind of trim sheet together this is something i really like doing it's just really quickly just grabbing images and stretching them and squashing them and distorting them into this kind of rough uh trim sheet layout and this is you know by no means perfect it doesn't even tile from one side to the next and that's not really the goal of this we're not really caring about whether the texture repeats perfectly or

**20:51** · whether it looks particularly good what we're really testing here is just making sure that we've got all the elements that we need and then what i might do as an extra stage here is just map a maybe basic block out object to this trim sheet and just see how it works does it have all the assets that it needs to does it um need a little bit more space for the column design uh does it need a little bit more space for these tiles that's what we're kind of trying to figure out at this stage it's just making sure that we've got all the elements uh that we need to and

**21:22** · so sometimes i do really find making these quick and dirty kind of pre-production trim sheets really helpful because it just kind of takes some of that guesswork out shrimp sheets can also be really time consuming to make because there's so many kind of complex elements all going into the same texture you do want to make sure that your that everything's gonna work when you later

**21:43** · come to make your assets or your 3d assets match this trim sheet you don't want to invest all this time into a really cool looking trim sheet but later find that none of the trims really work or they're all distorted because the proportions are off so yeah i think you know planning is super super important for for trim sheets and just doing a

**22:02** · couple of um textures like this can be really helpful just to take some of those guesswork out of it and then once you're once you know that you pretty much got all the textures there all the proportions are pretty much all there then you can go through and make the proper high quality texture trim sheet for it which is

**22:27** · yeah so they can take a lot of time cool so you know how do we make trim sheets or where do you make shrimp sheets and so yeah that answer is usually based on one your skill set and also maybe the art direction that you're following and there is no perfect this is the 100 how you make a trim sheet there is no this is where you must make your trim sheets pretty much very much down to you and what you like using um but generally speaking

**22:54** · um if you're doing a hand-painted texture workflow you're gonna be doing that in photoshop or maybe coat or um critter maybe uh generally speaking photoshop is the more kind of professional tool that's used in studios but you know it doesn't really matter if you want to use critter that's fine so if you're making hand painted textures generally photoshop 3d coat or critter are the kind of tools there if you're doing hard surface sci-fi trims generally they're modelled

**23:21** · in um kind of digital content creation packages like say for example maya or maybe they're made of 3ds max or blender or maybe modo as well is another one and you can use all the kind of general modeling packages that you'll find in there uh if you're using if you're trying to create organic trims um then you will usually maybe use zbrush you kind of want to sculpt your details in a tiling trim sheet

**23:48** · there where you can sculpt all the details um i should say that for both the organic zbrush workflow and the maya high poly surface model that's usually baked down to a plane i'll show you that in a second but for both of these usually it's kind of making a really nice high poly looking object and just making it to a flat plane and then also substance designer is a

**24:12** · really great tool for generating trim sheets because it automatically tiles whenever you make kind of patterns or generally speaking you can break the timing but generally speaking it automatically tiles for you so um designer is a really really nice tool and that's where i actually created the example trim sheet that we're going to be looking at a little more later as well so yeah depending on your skill set and

**24:33** · the art direction that you're following you're either going to be creating your trim sheet in photoshop or you're going to be making it say maya or 3ds max maybe you're making it in zbrush if you're doing like organic trim sheets and you want to sculpt it or you're using maybe substance designer if that's a tool that you're comfortable with and i've got all these kind of examples already so let me just exit you

**24:55** · um so one tip with photoshop if you are you know looking into the kind of hand-painted stylized uh trim sheets just general workflow um one really nice tip or tool that's coming to the last two photoshops i think it was i think it was released with photoshop 2020 is that there is now a if you go to view

### Photoshop Tip

**25:16** · there's an option under view called pattern preview and what it basically does is it shows you what your current texture space would look like if it was repeated in a tiled or grid-like fashion so if i click on pattern preview it shows this trim sheet repeated i can zoom out as much as i want and zoom in as much as i like as well

**25:37** · and what's really cool is if i grab a new layer and make the brush is it will just tile your paint strokes as well it will tell this way that way my eraser also tiles as well so paint those out

**25:56** · uh if i was to maybe quickly paint a little splotch here and then use my transform tool that will also tile as well not everything automatically tiles for example the uh the clone stamp tool brush or sorry the smudge tool doesn't tile

**26:20** · likewise things like say the liquify doesn't tile either but it usually gives you a bit of a warning to say this filter does not support pattern preview mode and so the tiling will break so for example if i was to quickly do this and just break the tiling you'll probably notice yeah you can see it kind of breaks a little bit there i was just to turn everything else off

**26:46** · there we go you can see it breaks turning so not everything works um with this but most of the time when you're doing hand painting you're not necessarily using these tools anyway so all the ones like the paint brush the eraser uh all that sort of stuff it does tile and repeat for you so really good improvement from photoshop from adobe when they added this will introduce this because it makes making tiny textures shrimp sheets way better

**27:11** · cool good i'm glad that was a helpful tip yeah this is the one that's been a bit more hidden um they didn't really make a big song and dance about it but i think it's a huge improvement a huge upgrade for um kind of hand-painted workflows in photoshop and it makes yeah you used to have to use the old technique of uh using the offset filter and offsetting it by half and then painting it in and then offsetting it back and then painting you have to keep kind of doing

**27:35** · this offset but um by using this pattern preview you don't need to do that anymore much easier and you can hide if you don't like this blue border you can actually hit ctrl h and that will hide your guides if you've got any guides and this dark blue one counts as a guide so you can actually hide that and that will get rid of it so that's under view and then pass a preview and you can on tickets when you don't want to look at it anymore so yeah really helpful tip there if you're wanting to do hand painted textures uh tiny textures

### Hand Painted Textures

**28:08** · uh another example is in maya here so this is kind of like if we were to maybe want to make a sci-fi um trim sheets or something along those lines and uh let me just turn that off so what i've got here is just an example of if i was to approach a sci-fi trim in say maya

**28:33** · so that's a good question there um with photoshop hand painted method it would not be possible to get normal maps so you can generate normal maps in photoshop um you can if i was to go to you know 3d and you can generate normal you can generate normal maps usually what you do is actually create a height map um and then turn that into a normal map and see what happens if i actually try and turn this into a little map it will probably look like an absolute mess

**29:04** · yeah it does look amazing but you can actually generate normal maps um inside photoshop and depending on the workflow that you're going for you may not need a normal map say for example um you know kind of like pure hand-painted environments like you know league of legends or world of warcraft or hades and stuff like that i mean not necessarily use normal maps you may not actually need to depending on your workflow or sorry depending on your um art direction um but yeah you wouldn't you can

**29:36** · actually generate normal maps inside of photoshop by going over to filter uh sorry filter 3d and you can generate a normal map and it's actually got a lot more powerful in the last few versions like you do get a little bit more control over the different levels you can actually create your normal maps and mess around with the values with them and stuff like that in here but yeah it does depend on that art direction that you're kind of following

### Creating a SciFi Trim

**30:05** · if i was to if i did need to make a normal map for a trip sheet i'd probably either do it in photoshop sorry in a substance designer or say like in maya with this one here um so yeah this is maybe an example of if you wanted to create a sci-fi trim and i've just kind of created this very generic looking kind of trim for like a sci-fi

**30:28** · environment it's kind of all the normal ones you might expect a couple of tips if you're wanting to use this the idea here is that we're just trying to make sure that when we model this this trim sheet that um one we start off with our plane so what i've got here is a

**30:44** · plane which is most of the time hidden and this is called you can see i've named it fake plane that's because this is the plane that i'm going to be used using to bake all my details down to so we're not going to baking this too much but we should know that is the purpose of baking is to capture details and put it into just a flat texture and often when we're doing these kind of trims these sci-fi trims that we'll have just a big plane and you can see it's just a square there's nothing special about it the uvs completely fill the zero to one

**31:14** · space from border to border but um there's nothing too special about it but this is essentially the bounds of the extent of my trim sheet so once i've got that i can then start to build it my trim sheet and from here i'm kind of just taking designs from general kind of references and figuring out where or how they can be

**31:36** · and the main thing is you just want to make sure that any element repeats from one side to the next there's a couple ways you can do that sometimes you can just mirror it and make sure it's on one side most of the time you won't need to say for example here

**31:53** · if this is nice and flat and just kind of continues on i gotta just make sure that this same side is nice and flat and kind of continues on and while i was modeling this i was just conscious of about just make sure that i don't move anything down here make sure i don't accidentally kind of move a vertex over here and if i do move the vertex i'll make sure to also move it on the other side i'll move them both at the same time so obviously if i was to leave this like that is you can see that this is no longer the same on this side over here

**32:27** · um but generally speaking i mean this is kind of just a lot of using um normal 3d modelling techniques just kind of moving and extruding and adding in edge loops and stuff like that

**32:46** · is there a 3d software out there that does that pattern preview um don't believe so not a 3d pro program like this um substance designer does do it for you and i'll show you that in a second but uh it's not really considered a 3d program it's a material authoring tool that has a 3d viewport in there you can extract 3d tool but you wouldn't necessarily um i don't think it would be quite as considered like a 3d tool like this um so now there isn't a way of kind of

**33:15** · automatically kind of generating it what we could do i guess is we could create a duplicate special make it make sure it's an instance of it

**33:34** · and then if i was to move it off because it's an instance actually i don't need to line up that much but because it's an instance if i edit the one of them you'll notice it will select and edit the other one as well so if you wanted to you could kind of create these like this instance grid of of your original one

**34:00** · like so yeah so zbrush um has a feature called wrap mode and it allows you to paint from one side to the uh to the next so that if you kind of set it up with the correct plane it will automatically once it

**34:17** · detects that it goes from one side of the canvas to the next it will kind of bring your stroke to the other side so that could be one technique that you like to use that's very commonly used when you're building tiling textures inside zbrush um is it you kind of create that plane create the canvas extent with that plane and then you set the wrap mode on your brush to one cool so if you're planning to use

### Using Floaters

**34:40** · um any kind of 3d program to create your sci-fi trim sheets there's a couple of different useful tips for this one thing i do like to use is use floaters and they're kind of just these floating bits of geometry that don't actually intersect with the mesh itself they're not actually modeled into the mesh itself you can see it's floating on top but if i was to look at it from the top and i'm just going to turn that into that you can see that it looks like a seamless blend for from here to there and so that's

**35:12** · called using a floater and it's a really nice way to quickly add detail and information to your objects or your models without having to add all the extra topology or all the extra edge loops to model it inside the object itself and it's usually only used when you're baking the texture down when you're only when you're planning to bake it to a text little trim sheet here

**35:37** · so yeah that's a nice time saving technique just with the floaters so these guys are here so they're just like these generic kind of floating meshes and you can just make one of them put them off to one side and then whenever you need to use them in your scene you can just quickly duplicate and make another one so for example here i use this quite a lot when i was doing my screw heads i didn't want to have to make i don't know it's probably 20 or 30

**36:06** · screw heads on my trim sheet i didn't want to have to model 20 or 30 screw heads over and over again especially when they're just going to look the same so instead i just made the one made it a little floater and then from there i could just drag off a duplicate of it and i could put it on wherever i wanted on my churchy so that's a really nice way of speeding you up and making sure that you're being as

### Using Material IDs

**36:28** · efficient with your time as possible another really helpful tip um is when you're wanting to when you know that different elements on your trim sheet are going to have different textures so for example i've got some some wires underneath here uh i know these are all going to be baked i'm not going to be able to select these in my texturing program these will just be baked textures but i want this to have maybe like a rubber or a plastic texture i want this metal piece on top to maybe be made out of aluminium or copper or whatever um and

**36:58** · so for to do that really easily and very quickly you're going to want to use a material id system so that you can assign a color to these different objects and then you can bake that to a texture and then you can use that as a way to generate masks and it's very easy you can do this in pretty much all 3d pro 3d content programs

**37:16** · i just quickly show what that looks like inside maya all you do is just assign different colored lamberts to your different objects so i've got a purple yellow one a red one and then what you do when you come over to your program let's say like substance painter you can bake this out to a texture so let me see if i can quickly do this this hopefully won't take too long i've only got 20 minutes so i'm just very aware i've only got so much time

**37:48** · of course if i come over to new quickly load in my plane cool so there it is i can come over to my bake window and if i quickly just do a quick test to make sure it's all looking good okay just increase my distances

**38:13** · and let's do a quick bake actually it helps if i select the high poly itself and actually load it in otherwise it's not going to there we go there we go cool and so there you go now you can see it's captured all that high poly information and just put it into a flat texture like

**38:32** · this so that's the normal app and what i was just talking about there is the material id so if i go to the material id and what this does is it looks like your high poly and just takes the material color and that's why i assigned a different color inside maya because it will take that and it will just explore that and we'll render that out to a texture so if i bake that

**38:52** · cool i go over to my material ids now i've got a really nice handy texture that i can use to generate masks for my different materials which is really helpful a couple of tips when you're using this method and you're using floaters specifically was to quickly bake out my ambient occlusion

**39:12** · you can see my floaters suddenly don't look as um hidden or they don't look as seamless as they did before and that's because the ambient occlusion is showing this kind of shadowing underneath the photos which we don't want but we do want ambient occlusion so a quick fix for that is inside substance painter there's an option called ignore backface and by default it's set to never that's generally what you want but in this situation we're going to want to set it to always then i can hit fake selected texture

**39:40** · and you can see yeah those are much more hidden and they can blend a lot more seamlessly cool and you actually get the same problem when you do your thickness texture but there is an option there that says self occlusion just said it to only a mesh name and that will get away get rid of that same problem and so that means that from this point it's really easy if i just quickly grab a few smart materials

**40:06** · which i hate using in general but for this it's a nice quick way of demonstrating that color mask so i can say put copper red on this whole object which looks a bit weird it's probably because i haven't baked all the textures out but generally here's a i've got this object that's currently all this kind of copper red material but like i said i don't want those um wires to be copper red i want it to maybe be plastic or whatever and so what i could do is quickly grab a plastic drag it up here

### Using Masks

**40:38** · which now makes the whole thing look like plastic but then i can right click on this and say add a mask with color selection and that will allow me to pick a color from that color id mask that i generated i can pick that yellow and if oops it missed lines

**40:58** · there we go and i pick another one i can pick the blue and i can pick the red as well nice so that's a really nice easy way of generating masks from baked information that you wouldn't be able to select by using that material id so super super helpful when you're cool so i'll just quickly demo that material id once more just in case i'll do it for something else let's say i wanted these screw heads to be a different material let's say i wanted them to be maybe gold armor uh what i could do

**41:27** · is add that which will make the whole thing look like gold armor and then i can say add a mask with color selection and i can just pick the color that that material id uh created so and now it will just restrict the material or the folder or the mask to whatever color id is selected

**41:50** · cool so yeah really really helpful definitely recommend if you are using um high poly hard surface modeling and say maya or max or blender or whatever it is they're using um use material ids it's a really quick way of generating masks from you know your texture cool and then the last

**42:07** · quick example that i'll show in terms of how where you might want to make your textures um is substance designer which there we go i think i'm not gonna go through this uh completely um because you can quickly see that yeah these no net node graph setups can go quite large um but yeah you can use

### Substance Designer

**42:26** · substance designer and you kind of just want to approach it one trim at a time and what's really nice about substance design is it generally speaking it just automatically tiles for you so you can just start with the trim at the top and just tackle it if i double click

**42:48** · just tackle it one kind of trim at a time add in all the details that you like and then you can start to work on the second trim and then just kind of combine them together so that's generally how you work with some designer you just go trim by trim and just start to plop them next to each other and start to combine them afterwards create a really nice height map

**43:11** · which at the end of all this the height map looks like this and then you can generate your normal maps and stuff like that from there a little tip when building trim sheets in substance designer is a bit of an error or a bug that i noticed with designer is when you're wanting to use the curvature map so usually if i was to grab a curvature

**43:33** · node \[Music\] there we go you can see it just kind of has this nice it's a really nice way of generating masks for your crevices and the corners and the edges of your your height with your normal map and automatically it generally just tiles really nicely but i noticed this uh a bug with one of the nodes at least i'm not sure but um if i go to a curvature smooth which is a really one i use quite regularly if i click on that you'll notice it gives this weird kind of gradient and it doesn't repeat and tile very well and it really messes

**44:04** · up your ability to create nice masks for the edges of things it kind of looks weird and it doesn't it doesn't really work very well and so a way to fix this is simply to just go into the node itself and underneath tiling mode it's set to relative to input and that's the default and it's generally what you want but in this situation just by swapping it over to absolute and not actually changing the timing mode so we've kept it height and vertical

**44:35** · tiling um i haven't actually changed it but by simply changing it from relative to input to absolute it's fixed and that's what you're kind of looking for when you don't see any of these weird gradients so if you ever do notice that you create a coverage smooth mode to create a nice mask it looks something like this that's not what you're looking for you can just swap it over to absolute in the node itself and it

**44:58** · actually fixes it for you weird tip i don't really know why that makes a difference but it yeah it was a nice little quick fix it's a little while so yeah if you are building trim sheets in substance designer and that will hopefully help you out there cool okay so we've got ten minutes i'm

**45:16** · just going to do a really quick little demo on how we might want to go about using this texture so now that we've kind of got the texture and it doesn't really again like it doesn't matter where you made it whether you made it in photoshop or whether you've made it into this designer or maybe you've made it in maya like this doesn't actually matter once you've got those textures exported out um so what i'd like to do is create a plane inside maya

### Duplicate Objects

**45:43** · wherever that plane is there we go um and then i can map my texture to it which in this situation i believe is called cathedral trim there he is

**46:00** · and then once i've got that plane um what i could do is actually start adding in some divisions and start just cutting chunks out so let's say i want this piece and i want this piece here i can take that and i can start to extract that face so i can duplicate it before we want to duplicate it there we go so i can duplicate that face

**46:26** · oops there you go it will duplicate it to add a separate object \[Music\] and then from here i can start to add its measurements if i wanted to give it a bit more shape or i can start just modeling with this so that's one technique and that's what i actually ended up doing for all of these pieces over here you can see i've actually pre-done that for all these different elements and i added a bit more geometry for areas that i wanted to add a little bit more depth i just simply did the same thing i did there i manually added in some of those edge loops i manually

### Adding Depth

**46:57** · um allowed us allowed it to kind of extrude and put some edges and stuff like that in there it just gave it a little bit more depth it wasn't a necessary need you don't have to do that i just felt like uh some of the shapes were looking a little bit flat particularly these arches um yes i think this video is recorded and be uploaded on youtube on the escape youtube channel so yeah feel free to revisit if there's any tips and i've got a list of useful resources at the end that you can

**47:27** · and so from there what i was able to do is actually start kit bashing elements like this trim together so let's say if i start that one from scratch and let's get rid of my plane i don't need that anymore um let's say i like the look of this piece so maybe i'll just drag off a copy of that and maybe i like the look of that piece as well and i like the look of that piece

**47:52** · for this pieces i'll actually just model it straight and then bend it afterwards but you can also force uvs to be straight as well and i'll show you how to do that as well cool so let's say i wanted to just snap that to there that guy can be snapped there as well cool i can just slip them

### Adding UVs

**48:16** · okay cool so where were we we had our straight version of our trim here let me just rotate that properly there we go so what i've done is i've just taken my the straight version of my trim i've just placed it at the bottom of my door and a nice little tip um particularly in maya but i'm pretty sure most 3d packages have this tool is that if i wanted to

**48:41** · extend or increase the height of my little trim that i've got here if i wanted to just select those verts and move them up by default i have it switched off which i do by default if i just move these verts you can see how it stretches my designs and that's probably a little bit what it

**49:00** · is uh you can see how it just stretches my designs so i can squash or stretch them like that which isn't actually what we want we wanted to preserve the ratio we wanted to preserve the nice clean non-distorted uvs let's get my chat back up to make sure

**49:18** · \[Music\] inside maya what you can do is if you go into the move tool tool settings there's an option a little tick box that says preserve uvs and if you click that to true when i move my vertices at the top here you'll see it would just start to repeat the design so it's no longer stretching or distorting those uvs it's just adding

**49:41** · and kind of keeping the the uv distortion to a minimum it doesn't always work depending on what edges you're trying to move but in this situation because it's at the very end of my uv shells it will just keep repeating and repeating and repeating so that's a really nice way of extending the your trims without having to re-unwrap it or without having to um distort your uvs

**50:08** · cool and so from here what i can do is just add an edge loop and i can add in a few more there we go something like that and then i can take my mesh let me just delete the history through the transformations give it a deform i'm just gonna use a bend modifier for it

**50:31** · \[Music\] give it a bend about 90 degrees set the low bound to zero cool actually i need that to be a little bit more something like that and i can actually if i wanted to move that down a little bit just keep kind of fine-tuning it until it gets roughly about there the curvature of my door isn't um perfectly curved like this like you can see a bit of a gap so we can manually fix that afterwards

**51:04** · but yeah you can see that we can kind of just bend our straight pieces there you go something along the lines of that and because it's um non-destructive i can actually i could extend that but it will actually break down but usually you can actually extend it without it too much cool so if i delete the history of that

**51:29** · go into edge and just move some of these down you can see that in this situation because i've still got preserved uvs on it's still trying to preserve my uvs as i move my edge loop it's actually doing a bad thing right it's kind of ruining it a little bit so actually in this situation i'll have it switched off and move them afterwards

**51:53** · there we go of course just like kind of eyeballing it doesn't have to be 100 perfect probably going to move those kind of distorted

**52:09** · and then i can do a mesh mirror on the object bounds in a positive direction there we go cool so that's one way that you can do it actually to increase my merge threshold there you go

### UV Editing

**52:30** · cool and so yeah that's one really nice way of doing it and you can do it like that the other way is you can actually map uvs to it afterwards let's say i later actually let me just show you how you can force the uv shell to be straight let's just go into uv editing for this and let's say you did the other way around where you modeled it first and now you want to uv unwrap this mesh to it so let's take this uv shell which is uh let's just quickly there you

**53:00** · go so that's what you usually get that's what you usually get as a result you unfold something and it kind of gives you this uv shell and if i was to straighten this you it would look good on this part but you can see it it looks fine here and as it starts to go around the corner you can see it doesn't work so well and so in these situations what you can do is actually manually enforce it to be straight um so what you usually do is cut it where it no longer becomes straight so just uv and cut take my uv shell

**53:33** · there's a couple different tools you can use inside maya what i like to do is select an edge which is roughly in the center of where it's curving and then i can do a orient shell to edge which will just rotate the whole shell so that it becomes perfectly 90 degrees whether it's vertical or horizontal it will just pick the closest one and then what we can do is select the shell and then go into uh straighten uvs

**53:59** · and that will essentially try to force it to be straight sometimes it does a great job sometimes it doesn't like this situation and so from here what we have to do is just manually help it out a little bit oops just give it a bit of a helping hand it's just when the angle threshold is a little bit too high for it to do it automatically so sometimes we have to do it ourselves and then from here i just give it a little optimize and then give it one more straight and uvs and there you go so now it's taking that curved mesh or curved uv shell and forced it to be to be straight and

**54:30** · now i can take this and i can lay it on top of whatever piece i want so maybe actually i want this bit to be here so now i can move this up and now i've got a little bit more slightly different design here so yeah that's the general kind of workflow and approach that you can take with using trim sheets you can either do it like my first approach which is kind of creating a few meshes and then just using deformers and i found this was a really good way to quickly make assets um and we made a little trim or a

**55:01** · flash kind of maya scene you can also use them to make columns you can use bend deformers i've got a twist to format sorry not bend forward twist to former um be used to just create these kind of nice ornate columns so they just started out like straight and then i just twisted it afterwards so that's a really nice way of using with it yeah

**55:22** · i think the default using the deformation is a really nice way of working and you can also use the mirror tool to get nice corners and stuff like that but pretty much all of these assets here are using the same uh workflow and technique they're all using the exact same texture and the result of this means that you're very you're able to very very quickly create assets and environments that all use the same texture so all these assets were used or come from

**55:48** · a little project that we did with the students i won't move my camera too much because i know it's a bit choppy um but all of this environment is using these same techniques and if i show you the trim sheet texture and just show you quickly how much reuse that we're able to get from this texture

**56:12** · and if i just make it like a really ugly color just so it stands out there we go something like that you can see that pretty much everything in the scene is using this trim sheet pretty much everything in this environment is using the trim sheet so you can get loads and loads and loads of reuse out of this one

**56:34** · type of texture sometimes you might need two or three it's not a problem doesn't matter if you need to use more but just know that yeah the trim sheets are amazing for being able to get loads of reuse out of it and it just allowed allows you to very quickly create um environments without having to uniquely texture everything if you were to kind of uniquely model every single one of these logical pieces

**56:56** · and uniquely texture it you would end up with a very slow pipeline and also a very expensive environment to render because every single different asset needs to have its own texture set to go along with them but in this situation they're all feeding from the same one and we can very quickly create our environment

**57:15** · and it keeps the engine programmers nice and happy as well because it doesn't cost the earth to render it cool so yeah just highlighting it like that quickly switching over to a weird color kind of helps visualize how much reuse that you're able to get out of um out of a single texture sheet not everything needs to be uniquely mapped and a lot of the time you can get away with just overlapping uvs using these trim sheets let's just put that back to what it was

**57:52** · cool you