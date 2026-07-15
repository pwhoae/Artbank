---
title: "🎮 Beginner's Course To Game Animation | 06 Creating Look Animations Pt 1"
source: "https://www.youtube.com/watch?v=2nT3J2LjHvo&list=PLzn9qrbm2X8OuNjFPw2rIj8O1h1Kt8JX0&index=6"
author:
  - "[[Agora.Community]]"
published: 2022-03-03
created: 2026-07-15
description: "It's time to add another level of control over our characters to make them feel more alive within the environment. Skylar Surra (Principal Animator at Riot Games), will teach you a simple method of ma"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=2nT3J2LjHvo)

It's time to add another level of control over our characters to make them feel more alive within the environment. Skylar Surra (Principal Animator at Riot Games), will teach you a simple method of making the character turn and look with the camera movement.  
  
In Part 1, Skylar will create the look pose, and then get into Unreal Engine and create a simple blend between the two sides. In Part 2, we'll take you through a little bit more of an advanced way to achieve this interactivity.  
  
If you want to get up to speed with Skylar, check out our playlist and follow along from the start -  
https://youtu.be/Sx94L056ZCA  
  
⚡ You can download the Thor Rig for free on our website -  
https://agora.community/content/thor  
  
Thor was created by:  
Hicham Habchi \[concept art\]  
Guillaume Tiberghiem \[3d artist\]  
Character generously provided by Keos Masons  
  
🔔 Subscribe to be notified of when the next episode is released and for more animation industry advice and interviews!  
  
Join our Discord Community: http://www.discord.gg/daMCPGWjc6  
  
Facebook: https://www.facebook.com/Agoracommunity-106340684571716/  
Instagram: https://www.instagram.com/agora.community/  
Twitter: https://twitter.com/agoracommunity2  
LinkedIn: https://www.linkedin.com/company/agora-community/about/  
  
Chapters:  
00:00 01. Course Introduction  
01:51 02. Buildng The Poses  
23:29 03. Building The Blendspace  
31:19 04. Unreal Blueprint Implementation  
49:09 05. Bug Fixes: Floating Weapon  
50:46 06. Bonus Challenge  
52:24 07. Happy Animating!  
  
  
#gameanimation #unrealengine #animation #agorastudio #agoracommunity #cgi #vfx #animator

## Transcript

### 01\. Course Introduction

**0:00** · \[Music\] hello animators and welcome back today we're going to work on making our character feel a little bit more responsive to our inputs now you might say well it already responds to our inputs when we push run it runs when we let go of the button it stops but one of the easiest ways to make a game feel a little bit more polished and make the animations feel a little bit more high fidelity is to have your character

**0:25** · respect as many inputs that the player does as possible one of the inputs that the players can do in our game right now that we're not really respecting is camera movement when our character's standing around and we swing the camera around our character just sort of stares dead ahead doesn't really feel alive at all so what we're going to do today is we're going to focus on making some look at animations so that when our camera

**0:47** · swings back and forth and our characters standing there will actually look and track with our camera this is an easy way to just make the character feel a little bit more alive and a little bit engaged with what the player is doing now there's a lot of different ways that you can make look at animations for this class today we're going to do the most simple and straightforward version which is to build full body animation poses back and forth and build

**1:13** · a blend space that sort of blends between them in the next episode i'm going to explore a little bit more of a more complicated approach which is to use additive animations to do that same thing but we're going to start with the simple approach first and then build up to the more advanced version in the next class which has a little bit a few few

**1:29** · extra challenges associated with it after we actually build our poses we're going to go over and unreal and we're actually going to do a bunch of math this one is going to be a little bit math heavy but i'll explain to you as much as i can how all the math works to sort of calculate the differences and figure out where our character is looking at any given moment so let's hop into maya first and build our look at poses all right so we've hopped into maya and i opened up that breathe idle animation that we built previously we're going to save this out as our look at file and

### 02\. Buildng The Poses

**2:00** · just build on top of it we're going to use layers you know i love to use layers so that we can sort of add to this in a non-destructive way without destroying that nice breed that we already built into our animation now we're actually going to build four poses you might think well why are we building four we just need to look right we need to look left well as you are looking right and left as a human your body sort of moves in different ways at first you kind of move your whole body and then at some point you just start start moving your head only right because you don't like twist

**2:29** · your whole body to look around it's just kind of uncomfortable so what we're going to build is we're going to build a 90 degree pose in each direction and then we're also going to build maybe a a 120 or 130 degree pose where just the head is sort of looking so it'll be feathered through the whole body up to 90 degrees and then just a little bit through the body but mostly the head and neck during that 90 degree to 130 degrees

**2:52** · okay so let's get in here we'll build some layers build these poses it's going to be exciting let's go all right here we are in maya i've just opened up my breathe idol that i made in previous episode now before we get in here and change anything i want to actually save this out as a new file i want to make sure that i don't clobber my old work i've done it too many times so the first thing we're going to do is just save this out as a look at file so we don't accidentally ruin our breathe idle in the in the process of making these new animations so let's go to file save scene as and let's change this name to

**3:26** · instead of idle f breathe we'll call it idle look at okay now i happen to already have a file by that name because i was testing this out but you can just create a new file in that folder okay so now anything we make or change in here is gonna be safe we're not gonna destroy our breathable that we already have now i could start trying to rough out these poses even now but i don't really have a

**3:51** · great uh uh guide here i could kind of follow these lines to see where the 90s and the 120 degrees are but it's a lot easier if i actually put some guides into the scene so let's really quick just make some simple planes that will represent the angles that we're going to kind of be looking at so i'm just going to go to the poly modeling tab here grab a plane scale this baby up

**4:15** · and rotate it we're going to rotate it up 90 degrees exactly okay so i'm just just snapping this to 90 degrees we'll bring this up above ground and just kind of scale it get it like roughly as tall as the character and there we go okay now this is going to be a little bit inconvenient because i can't see my character through it so let's also quickly just change the material to have a transparency on it so if i right click on here and say assign new material we'll just

**4:43** · make a lambert and if we look over here now in our attribute editor and go over to lambert2 that we just created we can change this color to something a little bit more standouty and pull up the transparency until we can see our character through it you know we just want to be able to see the guide but also see our character okay so that when we look at it kind of top down we can see where see where our character is looking at maybe make the transparency a

**5:10** · little bit less okay so this is going to represent our 90 left and right so when we are kind of looking at our character in which direction we want to go that'll represent the 90s so let's duplicate this by hitting ctrl d um and then we're going to change the pivot of it to by pressing insert and we'll move this pivot over to the end okay and then after that we'll select this

**5:38** · guy again oh we want to select the one that's pivots over there oh come here don't be like that there we go and we want to rotate this uh \[Music\] what if we want to be 120 this is already at our 90 so we need to rotate it 30 degrees oops and i got the wrong one here there we go so we want to rotate this negative 30.

**6:03** · okay and then we're just gonna uh snap it over here to the center by pressing holding down x while moving it and just sort of snap it to there we can accidentally move it down too okay so that now represents our negative uh

**6:21** · negative 120 okay and then lastly we can duplicate this one again by controlling ctrl d and instead of going negative 30 we'll go oh well let's go uh what's negative 30 plus

**6:43** · come on i gotta do the math here uh negative 30 we'll zero it out and then we'll go 180 plus 30 is gonna be 210. there we go

**7:04** · i struggled with the math there for a second oh boy you just wait till we get to the unreal side and watch me struggle with my math uh this is why i picked animation not math okay so now we've got our guides here uh we have our 90s and our 120 degree guides and we can

**7:21** · actually start working on our animation now i'm going to go up here and turn off polygon select so that i can't actually select those guides anymore and now we're good to go starting to build these poses so i'm just going to build one side of this the right side um and then

**7:37** · i kind of leave you to build the other side i'll show you what it looks like at the end but i'm not going to go through and pose out all of these in every single angle i'll kind of give you the idea and then you can go from there and i'll show you the final version of it okay so let's go over here now to our animation layers let's get our picker out of the way here and we're going to create a new layer called r 90. so this is going to be our right 90.

**8:02** · okay we'll hit enter to make that and we want to start adding some things to it so i'm going to select the cog we'll take the spines we probably want all of our arm joints here um you know what now that i'm thinking about it we're gonna want just about everything except for the fingers probably let's grab the legs or the you know the ik

**8:26** · foot positions here too and once you've got all that selected we'll add them to this layer by right clicking on that and hitting add and we're going to do our rotate 90 okay so the very first thing i'm going to do is make sure that my head uh is kind of looking in the right direction so i'm just i'm just kind of looking top down here um

**8:48** · and uh rotating it that's kind of the direction we want to look and obviously that looks a little bit silly um i i i was kind of thinking about this a little bit more and i think i had said earlier that you know when you when you turn your you know when you turn 90 degrees you'd like turn with your your body and your head a lot and then when you look around you'd use mostly neck but actually when i stood up and did this it was almost the opposite it was when i looked 90

**9:16** · degrees i used mostly my head and just my body a little bit and then as i had to go beyond that beyond the point that my neck would actually push i had to turn my body okay so i want for this 90 for it to mostly be in the head um but we are going to have to rotate the spine a little bit to sort of feel natural when actually looking that direction okay and i want to make sure that as i'm doing this that i'm actually

**9:46** · setting a key on this layer and i'm gonna actually bring that key over to frame zero so that it's just kind of consistent across everything okay so i think i'm also gonna take the cog and i'm just trying to get a pose that feels you know kind of kind of right let's grab the neck a little bit it looks a little bit wonky um oh that's not the neck that's kind of the uppermost spine let's grab the

**10:16** · neck here there we go and rotate that a little bit oh come on don't be like that to me that's not right come on give me this one oh that is the that's the middle neck there

**10:34** · okay there we go there we go now i got the right thing okay we're gonna rotate that to uh feel a little bit more natural um i think that the spines i'm just kind of grabbing the spines all together we can kind of rotate them up a little bit so that as he as he looks right he kind of stands upright a little bit more which would make sense and now my arms are a little bit in an awkward pose so i'm also going to grab

**11:04** · the the upper arms and bring them \[Music\] around here for some reason my peaker keeps turning there into some kind of like attribute editor mode i'm gonna have to figure that out later um and grab this upper arm over here and also just kind of swing it out and around just a tad a lot of this is really subtle now to also i

**11:37** · have this feel a little bit more grounded i'm actually going to bring the knee pvs around a little bit too so that as the character turns the knees are sort of turning with it a little bit and maybe even this back foot a tiny bit actually even with will turn with it we

**11:57** · want to kind of eyeball it so that it looks like it's pivoting um on the toe though oh gosh you know what i haven't been keying all those things along the way so i gotta let's make sure we have a key there and i gotta redo that a little bit let's go back to the knee pvs move them over this way a little bit

**12:20** · move this guy rotate this guy a little bit okay and i want to make sure that that it's kind of looks like it's pivoting on its toe i'm switching this layer on and off so i kind of see the difference between them right you know what i didn't add my knee pvs to that layer that's the issue um let's uh just add them here

**12:49** · oh boy i kind of caused myself some problems there didn't i by not adding those knees to the layer okay let's go fix that quick here um this was the original position i believe and then i changed all right change them there okay so now we're back to what we got originally okay back on track okay so i'm just gonna move the knees

**13:16** · a little bit that way like we did before um i'm going to let's see what this is looking like what do i want to do with the cog here i think i want to actually move the cog as the character kind of rotates around to the side i think the cog will actually come a little bit over this front forward and kind of lean back this way to to compensate for that

**13:42** · so we're trying to get the weight shift to feel right now i lost my animation there on the arms because i didn't set a key on that either so let's fix that up uh i got jumped up on the arm there something's going on with my arms oh it's just getting crumpled up because because it's all weird

**14:21** · come on here there we go okay so my arm was getting a little bit wonky there set a key on that so we're just constantly comparing it to the uh to the base one by kind of

**14:38** · going back and forth between them to make sure that they're roughly of the same feel but that it feels like a natural motion to kind of go back and forth between them okay so if we look at that difference now it looks pretty natural i'm pretty happy with that as a starting point now i think that maybe this head might feel like it's looking up a little bit so i'm going to

**15:08** · just kind of keep keep it down a little bit and also tilt it this way a tad to make it just feel a little bit more natural i'm going to grab this like this like the throat bone and try to twist it to get the neck to be a little bit um more of a natural shape

**15:24** · in that direction it's going now if you look at that from behind that's looking pretty good it's looking a little bit maybe like it's off balance this way so the last thing i'm gonna do is grab the cog and just move the character a little bit more in that direction so let's take a look at what that looks like so it looks like as the character kind of looks to the right leans back a little bit i don't love how far that forward arm moves when he looks

**15:50** · so let's just quickly take that from this view grab that forward arm and bring it back this way a little bit

**16:08** · okay there we go so that we get just a little less movement on it as we turn to the right okay that's looking pretty good so next what i'm going to do is i'm going to duplicate this layer and we're going to do our uh 1 120 now okay uh so i'm going to turn off my right 90 turn on my right 20 and we're going to start doing the same thing we're going to take the head and try to get it to look

**16:41** · now back towards the 120 degree direction and like i said we're now going to go through the spine here and we're going to add because this is now kind of that the neck has reached its kind of maximum rotation we're going to use the body a little bit more to get the rest of that rotation in there to feel natural i can take the cog and rotate it a bit

**17:10** · okay probably gonna have to make their character a little bit more upright to make this make any sense grab the arms bring them around in this direction

**17:27** · same thing here this arm is going to come back around behind he's kind of like looking back over his shoulder now and now here's where we're gonna probably really have to move twist this foot a little bit um to make sense as the character pivots back around let's see what this is looking like compared to the base one yeah it kind of pivots on the toe there

**17:52** · and we'll get the knee out to make sense with that and maybe even this one's starting to turn a little bit as well uh so let's rotate that translate it a little bit

**18:08** · let's get that so that it's like kind of in the exact right position for the toe to be the thing that's pivoting there we go okay now let's kind of see if that looks natural from behind from this

**18:25** · uh this way that we're gonna look at i'm gonna actually pull these guides out of the way for a second well actually you know let's just turn up the transparency on them a little bit so we can see through them a little bit more okay now i gotta say this is looking a little bit wonky i don't love how you can't see this back arm at all

**18:44** · from our actual game pose so i'm gonna actually try fixing this now from our game camera a little bit uh to look a little bit more \[Music\] natural it doesn't look too bad from some of the other angles but actually from our game camera it doesn't look great i don't love it so i'm now just going to try to like give it a little bit of love specifically from this camera

**19:13** · let's see if maybe we can take the spines a little bit and make the character a little bit more upright maybe that will help i get this arm maybe back even more

**19:30** · maybe we can actually add some let's add these lower arm bits to it as well in here to get that down and out of the way a little bit and i really want to see this arm from that back silhouette a little bit

**19:49** · so maybe we also put a little bit of animation a little bit onto the elbow here as well so that as he kind of looks around he brings this arm up a little bit there we go that's kind of reading a little bit better now from the angle now listen i don't love that this is all not kind of interior silhouette but i

**20:11** · i think it kind of looks a little bit weird if we put this all the way out here in a way that would read a little bit better i don't know maybe i'll try it we can always modify this pose later so i let me see if maybe if we put this out a little bit more and maybe take the shoulder some too is the shoulder on this layer it is and get that back as well to match it

**20:36** · bring this shoulder around this way too to help with this other arm you know it's not looking too bad and from our back pose that actually looks quite nice um let's get this neck jetted out a little bit to match okay so there we go we got not too bad of a pose from that angle and if we kind of spin around it it looks pretty good so let's kind of look at the two poses we created now from uh starting at our zeroed out pose

**21:08** · to 90 degrees to 102 uh oh we got it to 120 degrees and they all look pretty good okay so what i'm going to do is i'm going to build the animation the poses for the other side then i'll spring back over here and show you it all together and then we'll export them and get them into unreal all right so i've gone through now and roughed out uh each of the poses the right and left 90s and 120s i'm going to

**21:36** · kind of kind of show them to you so you can get an idea of where i ended up uh and then we're going to hop over to unreal and start putting these all together into a blend space okay so here's just my base animation uh here's my right 90. so you can see that i have the for the right 90 i have the sort of leading foot rotate a little bit and the character uh you know kind of rotates their body but mostly that mostly it's the the head looking looking um and then you get to

**22:04** · the rotate 120 where the whole body gets into it so that the head uh since the head's kind of already reached its maximum turn turn radius i guess is the word uh and then similarly when we go the other direction it's even a little bit more extreme just because of the way the character is already rotated in their default pose they have to kind of twist

**22:27** · and what i would say is a little bit more of an awkward way to look this direction that's the 90 and then as you get to the 120 the whole body has to kind of torque around that's a little bit of an awkward pose which maybe we could work on a little bit but i think it's important to kind of get these roughed out ones into the game

**22:45** · and see it in context before we do too much more work on it so what i'm going to do next is actually export these i'm not going to show you the entire export process because it's just a little bit tedious i'm just going to explain to you what i'm going to do i'm going to go through and actually turn each of these layers on and export them one at a time so i'm going to export a idle look at r90 with this layer on on

**23:10** · idle look at r120 with this layer on and so on and so forth until i have all four of my animations exported and ready to go in unreal for our forward one we're just going to use our normal idle because it's already authored as forward so i'm going to go through that process and then we're going to hop over to unreal import them in and get to work on

**23:28** · the implementation side all right now that we've got our poses finished up we're going to head over to unreal and actually start implementing these into our game now there's a couple steps here that we've got to do the first is we're going to combine all of our look at poses into a blend space so if you remember what a blend space is it's basically a a parametric container that

### 03\. Building The Blendspace

**23:49** · can hold a bunch of animations and blend between them using some kind of inputted information so what we're going to do is we're going to build a blend space that has all of our directional looks in it and then we're going to use some look at data to drive that when our camera is moving around so the second piece that we're going to need to do is actually some fairly complicated math in our animation blueprint to figure out that

**24:12** · look at angle now how are we even going to do that well what we essentially want to get is a clean value that's the difference between the direction that my character is facing literally facing like that the mesh of my character is actually looking at in game and then where the camera is facing so if my camera is looking to the right like this if this is forward of my character and this is where my camera is looking we want to get the value the delta between those two now the

**24:39** · tricky thing is is that those numbers when they come raw out of unreal are like world vectors so just these like random numbers almost that are that are based off of like world direction fit i'm not going to get into all the complicated bits but the math we're going to have to do is to sort of normalize that into a 180 to negative 180 value that we can

**24:59** · actually put into a blend space and use if you're feeling overwhelmed that's fine i'm not very good at math animators sometimes i'm very good at math i'm going to kind of explain it to you as much as i can but mostly if you follow along hopefully you'll kind of get to to understand it okay so let's

**25:16** · get into unreal check our animations that we just imported make sure they look good and then get going with that implementation process okay so the very first thing we want to do is make sure that our animations actually came into unreal and look like what we what we authored in maya so i already went through the export and import process the one thing to make sure that you remember to do uh is

**25:38** · if your character comes in wonky and rotated off axes make sure you change your import rotation to x90 so they kind of get the character upright okay i'm showing that on the wrong screen so you can you can double click your animation and check down here in the

**25:57** · transforms and make sure that your import rotation is at 90. okay so i'm going to kind of navigate through all of these and make sure they kind of look as expected you can see that you know because we animated on a layer and exported them we kind of get that breathe idle animation over our new poses which is great so that's my right 90 here's my right 120. i think of all of them this one is maybe one of the well i guess it looks all right i thought it was going to be a little bit more awkward than it was i think i was thinking of the left 120.

**26:27** · here's our left 90. this one looks pretty good and then this is the one that i think is maybe the most awkward just because of the way the body's torqued so maybe at some point i'll go back and rework this a little bit but for the sake of moving forward with the episode for now we're gonna we're gonna get it all together into our blend space first so let's start assembling these into a blend space that we can use so we're going to right click here and say animation and we're going to use or we're going to create a blend space

**27:00** · 1d okay and it's going to make us ask well for what skeleton so let's type in thor and select our thor skeleton and we're gonna call this thor nav idol look at blend that's a mouthful right

**27:17** · uh okay let's open that up okay so there's no animations in here yet we're going to go up here to the axis settings and if you recall kind of from how we made the the run animation this is essentially like a container that we can put a bunch of animations into and blend between them based off of value that we input in the animation blueprint okay so the axis that we're going to we're going to name our axis uh let's call it uh point

**27:44** · of interest or let's let's actually call it look at angle okay and we're gonna we're gonna get a look at angle that is 120 or sorry that's 180 to negative 180 but our animations only go from 120 to negative 120 so that's what we're going to put as our range because we only authored right and left to the

**28:08** · 120 degrees okay so we're going to say that the minimum value is negative 120 and then our maximum value is 120 okay that's going to change our actual axis here if you look down here it's now from 120 to negative 120 okay

**28:25** · so let's start dragging our animations into here we're going to put our normal idle f right here in the center at zero okay that actually starts showing showing up there now and then i'm gonna guess i think that positive is

**28:40** · to the right and negative is to the left but that's how we'll build it and then if it's backwards we'll fix it later so let's pull in our right 90 here and our right 120 here now you see that this is actually um not at the right location it's snapped to 60. we'll fix that in a second we just want to get these in here as a starting point okay um so let's add let's actually add some grid divisions here um

**29:14** · let's make this like uh what does this get us if we go to 10 grid divisions that gets a 72 what's this over here now is that closer to 90. it's 96. so let's then right click on this and we'll say snap to grid click that off and change this to negative 90. okay \[Music\] come on there why is it i told you not to snap why are you snapping

**29:46** · just doesn't want to not snap okay well then we're gonna have to figure out um how to get that to uh to be where we want it to be we might actually have to do some math there let's see so if we want with 120 to 120 and we want every 10 we can split this by 24 and that should give us 100 it should give us a value at every at every uh tens place so this should now be able to snap to 90. yeah so we got 0

**30:18** · 10 20 30 40 50 60 70 80 90 all the way up to 120 great okay there we go math like i said you're gonna think i'm a genius by the end of this with all the math we're gonna do uh okay there we go we got that nice so now we can scrub through here holding down shift and actually get an idea what this blend is going to look like so there the character looks to the right and then starts to turn

**30:43** · it actually doesn't look too bad okay there's a little bit of awkwardness on the arm there that uh we can kind of see right there but you know as a starting point a not too shabby you can see that there's like a big difference in the arm there that we might want to fix up later but you know this is the first time we're kind of seeing it as a blend space all together so you know not too bad for starters okay let's save this out call this blend space good and then we're going to move over to the blueprint and actually start

**31:13** · uh doing the math part of this to plug into our lookout angle all right so let's hop over to the animation blueprint for this character and get going on the blueprint okay to find our blueprint we can just click on our character right here in the in the viewport and over here in anim class it's going to show our blueprint right here we can hit the the magnifying glass

### 04\. Unreal Blueprint Implementation

**31:35** · and it'll bring it right bring us right to it in our content browser let's double click that and open it up and here we are in our animation blueprint now if yours looks different than this it's probably just because you're navigated to a different portion of the blueprint you can go down here and click

**31:51** · on the event graph you might be over here in the animation graph from last session let's hop back over to the event graph if you remember the animation blueprint is kind of split into two parts there's the animation graph which drives all the animations like has all the blending and everything but then there's the event graph side that we can use to calculate data create variables or

**32:12** · basically do whatever we want to create data or values that we can use in that animation blueprint side to actually drive things like that blend space that we just created okay so let's go ahead here and start creating this sort of point of interest or look at variable remember i said we're gonna try to get the difference between our cameras facing

**32:33** · and our characters facing that's essentially what we're gonna do i'm gonna talk through each step of the way here and if you see me looking over the side here it's me referencing my own notes because this is a little bit complicated and i wouldn't expect uh you know even myself to remember it all off the top of my head so follow along and i'm just going to try to explain it as best i can okay so the first thing that we actually have to do is get our character facing and get our

**33:00** · uh camera facing okay so let's start with the camera facing first what we're gonna do is we're gonna right click here and we're gonna search for uh get owning actor we essentially want to like get at the get to the get to that controller that pawn level the thing that owns this uh uh uh

**33:21** · animation blueprint and if you remember that pawn when we went in there modified the camera before the pawn that that that owning controller thing is the thing that has the camera inside of it so we got to kind of like point out to that thing and get it to be able to pull information about the camera from it okay now that camera is a component inside of that that pawn so what we're going to do is pull off of this and say get component by class and if we do a search here for camera

**33:50** · you'll see that camera component shows up right there okay now uh what we want to do is we want to make sure that it actually gets a camera you know we talked about this a little bit earlier on about like checking if things are valid or not because we don't want the animation blueprint to fail out basically if it doesn't find the camera for whatever reason so let's pull off of this and check is valid uh and then we'll create a branch based

**34:17** · off of that so we can pull off of this let go and type branch and so we're basically not going to do anything unless this actually returns a valid camera okay now we want to now get the actual forward

**34:33** · direction of this camera so after we've checked that it's valid we want to pull off here again and say what do we want to say let me look at my notes when i say get forward vector that's right okay so this is going to call to the owning actor get the camera and get the forward vector of that camera and we want to use this now we want to say uh

**34:56** · get yaw and pitch from vector so this vector if we were to pull off of this like let's break this you can kind of see how this works the vector is going to spin out a value in every axis it's going to spit out an x y and z value like that's not really

**35:12** · valuable to us in this instance what we want is to just translate that into the yaw basically this horizontal rotation of the character but thankfully unreal has just a conversion for that where we can just say hey take this vector which is like really complicated math in three directions and just give me a single value which is the yaw okay that's what this is going to give us here it gives us the pitch too but we're not going to use that because we don't right now at least we're not going to do look at in the up and down direction so we don't really need that value so we're going to promote this yaw value

**35:43** · to a variable that we're going to use later so let's if you pull off of this by clicking on it and let go in space you can actually click right here and say promote to variable and we're going to call this we can rename it up here in the top right we're going to call this uh camera yaw okay and so we wanted to set this if this thing is true

**36:11** · okay so we've got it now saying get the owning actor get the camera check if it's valid and if it's valid get the forward vector get the yaw from that forward vector and then set our camera yaw okay now we have the camera yaw what we want to get next is the characters controllers forward facing so that we can actually get the difference between the two okay so we already have the owning actor here so we can actually do the same uh sort of

**36:39** · flow of nodes but for our owning actor instead so if we pull off of this and say get forward vector and then we'll do the same exact thing we just copy this down here plug it in and we're going to do the same exact thing we're going to promote this to a variable only this one we're going to call let's call it controller yaw okay all right so now we have the two

**37:10** · pieces of information we need to now actually do the math okay we have the camera yacht and the chrome controller yacht we're gonna compile and save this okay for later and now we're actually going to do the math portion of this okay you know actually let's do a little test here let's plug this in i'm going to plug this in to on animation blueprint update and we're going to plug it into the sequence so after it does all the previous stuff we did we can plug this

**37:36** · into the sequence if your sequence doesn't have an extra pin there you can just say add extra pin to plug it in and just for the sake of organization we can double click on this to create a little control our little organizational pin here and kind of straighten this out so you can kind of see the flow a little bit better what i want to try here is before we get too far is actually watching this so you kind of see these values changing in real time so if we actually right click on this camera yaw right there on the little dot and say watch this value

**38:07** · same thing over here on the controller you all watch this value we can actually watch these change as we play the game okay let's make sure that let me kind of pull this up so let me see can i make this there we go okay

**38:24** · there we go we can see it nice and big there i'm gonna click on this little arrow and say watch thor so we can actually watching the right character okay and if we kind of look right here we can see that we came into the game we haven't rotated anything these are zero zero zero but as the camera rotates around you can see that the camera value is changing okay so if we kind of look

**38:47** · here pull it over um this is the value that's coming off our camera this is the value that's coming off our character our character came in facing origin and we haven't rotated our character yet so it's still uh at zero now if i actually move my character you can see that value change as well and you can kind of see the inherent problem here is that you know my character's

**39:08** · forward facing is not always zero it's some vector in world space so these values are like negatives they're positives it's a little bit complicated and what we need to do is some math to make sure that we normalize that down to like a set set value that's like hey it's just the difference between my forward facing and this camera okay

**39:27** · so let's press escape to exit the game here maximize this again and what we're going to do now is actually get our camry off so we can right click in here and say get camera yaw okay there we go and we also want to get our player or our controller yaw that we just created

**39:53** · and the very first thing now i'm going to talk you through this this is going to you're going to think i'm really smart but i'm just copying this because i know how to do it as as should you the very first thing we're going to do is actually subtract these two so we're going to pull off of this and type subtract float by float

**40:12** · and that's going to get us the difference between these two and you might think that that's enough but as you saw these values can be like uh you know negative 170 and negative 60 and if you subtract them you're getting just some you know super low negative number right so we need to do this math to like normalize it into values that are actually usable to us and i'm going to show you the sequence of this and kind of explain it but in reality you know it's a little bit beyond even me we're going to do next is we're going to add

**40:44** · we're going to add 540 to this to make sure that is a positive value and then after that we're going to mod it by 360.

**41:00** · then subtract 180 and then that is going to give us our final value which we can call we'll promote it to a variable and we'll call this look at angle

**41:23** · okay so let's kind of talk through what this is doing i'm not even gonna be able to fully explain it you might think i'm smart and that i know what this does but i really don't but what it's what essentially what it's doing by my understanding is it's subtracting these that could be a negative or a positive value so you need to add 540 to it to make sure that no matter how low of a value it is that it ends up being positive then you're going to modify 360 to get into a 360

**41:49** · degree range and then you're going to subtract 180 from it so that uh we get an 180 to 180 value okay you don't really need to understand how this works uh this is just a little bit of math i've picked up along the way for calculating these kind of poi things and translating those basically like world rotation values into usable kind of like

**42:15** · local normalized values okay so just follow along there that's gonna get us that now let's watch this while we're playing the game and see if we get a value that makes a little bit more sense to us okay we'll play the game we want to watch our character and if we look at this okay it's zero right now because our look at

**42:37** · uh from or sorry our characters facing in our camera facing is exactly the same but as we rotate you can see that now it's giving us a nice clean value that actually makes sense look at that there's negative 90 and it's going to go around to negative 180 and when it crosses 180 it goes to positive right because we're now on the other side it's going to be positive it's like magic okay now if i go back around the

**43:03** · other side it's positive and we're actually right the negatives are to the left and the positives are to the right okay so now we have a look at value that we can actually use to drive that blend space that we built so now we're going to go over to the animation graph and actually plug in our

**43:20** · our look at blend space and use this value this this variable that we just created to drive it and get our character to literally look at where the camera is facing okay so let's hit escape maximize this again and we're going to leave this as it is and hop over now to the animation graph

**43:39** · portion we're going to go here into our local or sorry our locomotion state machine that we previously built and we're working out of idle so we're going to go here into the idle now we're going to actually replace this idle port or this idle animation we had here now with our blend space that has all the lookouts built into it so if we right click here and type look at blend we can hit enter and bring this in here

**44:04** · and plug this in now this blend space obviously needs something to drive it so we're going to plug in our look at angle that we just created we can just drag it right from our menu down here to the left and put it in there or you can right click and say get look at angle and do it that way okay so now this is saying that our pose when we're in this idle state our pose is actually going to be this blend space as driven by our lookout angle let's compile this and take a look at it in game

**44:39** · so we play our character is looking straight forward but as we look around our character actually turns and looks okay pretty cool huh now you see that snap there that's because we have um that's that's what's happening when the blend space crosses over from positive 180 to

**45:01** · negative 180 we get the character kind of snapping around we don't really want that to be so jarring so what we can do is we can go back to our blend space and actually um improve that a little bit by increasing the sort of like interpolate or sorry slowing down the interpolation rate of the blend space so

**45:19** · let's go over to the blend space and see if we can resolve that and i think we'll be in a pretty good place so go back here to the animations and open up this blend space you can see that there is an interpolation time here in our blend space and it's set to zero so basically it's saying like whatever value i get in no matter how different it is from the one i had before i'm gonna snap to it uh

**45:39** · in zero in zero frame so it's just like boom snapping there now this is interpolation uh by time so what we can do is we can just make this a little bit higher maybe like let's let's just start trying some numbers let's try point one we kind of see this happen here in this if we snap it back and forth pretty fast it's still going to be pretty fast if we want to do like 0.2 or 0.3 maybe 0.25 would be good we don't

**46:06** · want it to be so slow that it feels laggy but we do want it to be slow enough that it kind of gets rid of that jaw really jarring a switcheroo that happens so let's play again see if this helps at all

**46:23** · so it's a little bit better but it's still pretty a pretty big jump okay let's try one more thing we have this um target weight interpolation uh so this is how fast you want it to get to you can kind of hover this and see what it says how fast you'd like to get to the target for improved blending so i don't know i'm just gonna try like let's see what doing it to five makes it pretty slow

**46:51** · let's let's up this a little bit um you know i'm just kind of trying out numbers here to see what gets us a good result what if we make this one i'm not quite sure so this one's the smaller the number is the slower it's going to be down here so maybe make this two that's maybe a little bit too slow three i'm just kind of shifting back and forth that's starting to look pretty natural there right it's three maybe four

**47:20** · okay let's give that a try in game and see if that helps now this might not be perfect you know this is a little bit of an experiment there we go that's a little bit more natural right and it's still tracking through these portions uh pretty well and then when we snap across

**47:39** · it gives us a little bit of interpolation there okay so that actually looks pretty good now at this point okay we have some problems with our actual animations uh i think i would now spend some time making sure that my uh uh you know my arm i'm gonna move right into self-critique time here we can see that the arms kind of get a little bit awkward as we move around particularly that left arm there's like some weird rotation in there and then it kind of just comes up only in as it goes into the 120 pose so

**48:11** · i think it would be valuable for me to actually kind of start bringing it up even as i go through that that 90 degree pose that left arm so that it blends a little bit more naturally uh same thing with this sort of right arm you see here i get like a little bit of weird blending there between between these two excuse me um because of the way i'm moving it there's also some weird weapon sliding that i'm going to have to resolve there somehow i'm not quite sure why that's happening maybe i'll cover how to fix that in the next video

**48:42** · but overall it's not too bad it's not too bad and it feels it feels like my character is you know sort of responding to me and so each time i sort of run around and stop after the stop finishes my character is going to start looking at wherever my cursor is okay

**49:00** · so that's where we're going to kind of wrap up with this one um next time we're going to talk about another way to implement implement these look at using an additive approach so i was worried about that weapon that was just kind of sliding around and floating when we were rotating around our character you see how the weapon is just kind of like floating out of the hand and it kind of bugged me why the heck was that happening it just didn't seem right it wasn't wasn't doing that in our animations uh so i poked around a bit and i figured it out and i didn't want to leave you in this episode wondering

### 05\. Bug Fixes: Floating Weapon

**49:29** · why that might be happening to you if you followed my instructions up to this point so i'm going to quick show you how to fix it okay the problem is that i actually in a previous episode told you to attach this thing to the wrong bone it's actually it's attached to these kind of floating ik bones that are a child of the root instead of the child of the hand so when the hand's moving through space it's kind of tracking it but not quite i'll have to say i'm gonna show you how to fix it okay so if we actually click on our character here it's gonna select the character controller and we can go right over here to this button edit blueprint and if we

**50:00** · open it in the blueprint editor we're going to get our pawn our character controller here okay so let's go to our weapon mesh over here and we can see that this is attached to our ik hand prop we do a little search here and search for prop and attach it instead to our hand prop r i believe i believe this is

**50:20** · going to fix our problem so let's hit compile save this out go back here and play again and i think now it's going to follow the right bone and track with the hand look at that just like our animations so i just don't want to leave you hanging with that you sitting there trying to figure out yourself uh if you just switch the which bone it's attached to it's going to save us a bunch of headaches down the road as well so that's it for the fix on the

**50:45** · weapon and that pretty much wraps up this episode now you can see that we left off with something that still looks a little bit rough and that's fine this was our first stab at implementation and that's one of the wonderful things about games is you can get that that first version in pretty fast and see it all working together in game and then you can spend the time afterwards sort of polishing it up once you've got all the functionality working so i'll probably go back into this and i would encourage you to as well to try to iron out and

### 06\. Bonus Challenge

**51:11** · really get those those poses to look like they blend really well together as you sort of move to the right and move to the left as i said at the beginning this is a great way to sort of make your character feel a little bit more responsive and and really feel like they're they're interacting with your cursor and your mouse as you move around the space if you're looking for some sort of homework to do or something interesting to add to the project that uses kind of the same exact tactic you could actually add the same exact functionality to your stop

**51:40** · poses you may have noticed that when i sort of stopped that my character just kind of looks dead ahead and then only once we get into the idol do does the character start to look look around actually so what you can do is you can actually build a whole stop blend space

**51:56** · of look at as well that's playing your stop while the character is looking in these different directions and you could implement using the same exact techniques build a blend space and even use the same exact look at variable to drive that blend space in your stop animations i might actually show what that looks like in the next next episode if i have some time but regardless it might be a fun little project for you to add to your unreal project to just increase the fidelity a

**52:22** · little bit across the board so that's it for today thanks for following along and i'll catch you next time when we cover the additive version of this same thing happy animating catch you later