---
title: "🎮 Beginner's Course To Game Animation | 08 Add Banking In Run Animations"
source: "https://www.youtube.com/watch?v=V6wB_pbHZp4&list=PLzn9qrbm2X8OuNjFPw2rIj8O1h1Kt8JX0&index=8"
author:
  - "[[Agora.Community]]"
published: 2022-03-19
created: 2026-07-15
description: "In the last chapter of our beginner's course to game animation in Unreal, Skylar Surra (Principal Animator at Riot Games), shows you how to add an extra level of polish to your locomotion mechanics by"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=V6wB_pbHZp4)

In the last chapter of our beginner's course to game animation in Unreal, Skylar Surra (Principal Animator at Riot Games), shows you how to add an extra level of polish to your locomotion mechanics by adding a bank when the character turns.  
  
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
01:29 02. Building The Lean Pose  
18:34 03. The Locomotion Blendspace  
25:30 04. Gathering The Data  
35:24 05. Connecting The Pieces  
40:58 06. Reviewing The Work  
45:08 07. Course Wrap-Up  
48:06 08. Happy Animating & Thanks For Watching!  
  
#gameanimation #unrealengine #animation #agorastudio #agoracommunity #cgi #vfx #animator

## Transcript

### 01\. Course Introduction

**0:00** · \[Music\] hello animators and welcome back today we're going to take a lot of the things that we learned in previous episodes and use those tips tricks tactics we use to build and implement animations to build one final feature for our base ground

**0:16** · movement for this character it's going to be a polished feature we're going to add banking sort of leaning when the player runs now just like those look at that we created in the last couple episodes this is a nice polished feature that just adds fidelity to your character and makes the player feel like

**0:32** · their inputs are really being received by the game so that when you swing back and forth while running your character kind of leans and we all know from an animation perspective too that that's just going to make the character feel more physical and grounded because it's more how we move in real life you don't walk around like a a perfectly upright

**0:51** · board when you run around you kind of like lean and bank into your actions so how it's going to work is we're going to build a couple of lean animations derived from our base run in maya and then similar to our previous episodes we're going to go into unreal and do all the implementation for that now the implementation like some of the things that we've worked on in the past is going to require a little bit of math and a little bit of thinking to kind of get the data that we need to drive this

**1:15** · kind of lean but hopefully you've kind of learned enough along the way that it shouldn't be too challenging to kind of follow along and get this working pretty nicely so let's go into maya first and build our lean animations before we jump into the game all right so here we are in maya and as i said we're going to derive this animation from our already

### 02\. Building The Lean Pose

**1:33** · 16 runs so of course i opened up our previous run that we animated in a previous episode and kind of had polished up that's where we're going to start to build these liens on top of it okay so let's talk a little bit about my working layout here i ended up deciding on putting my two

**1:49** · windows here side by side and the two views that are going to be kind of important for us working today are this perspective view so we can you know obviously rotate around the character but i also pulled up and split between this back view because this is the axes we're going to be working in most if you don't know how to open up a orthographic back view like this you can just go to panels here and go to

**2:10** · orthographic and you'll have a bunch of options there if it doesn't show up you can hit new and it'll give you even more and if you aren't sure how to do this split screen you can go to panels layouts and there's a whole bunch of options here as to how you can organize your maya viewport here okay so the first thing we're going to do is pull out the controls that we're going to use for these lean animations onto a

**2:33** · layer so we can build our lean animations on top of this animation without doing any destructive uh work to our already existing layers in fact i'm going to lock out all of my existing layers here in the in the in the layer panel so we're actually not accidentally even messing with them so let's go ahead and select i'm going to use the layout we're going to use the feet controls we're probably going to use these knees

**3:02** · as well um what else we're definitely going to use the spine and the pelvis and cog for these and then let's also grab our arm controls we'll just kind of grab this whole torso the neck the head i'm not sure if we'll use everything oh i just miss selected everything so let's grab again boop boop uh where's the knees i don't know which ones the knees are on the the controller here and then the arms

**3:34** · and that will be a good starting point for us to uh work with from a control scheme standpoint okay so let's now say add a layer using selected which is this button on the right it'll generate a layer using all the controls that you currently have selected and actually i'm not sure if i actually added the layout one doesn't look like it so let's add that onto here we'll say add selected objects and then the last control that might be important to us

**4:04** · are the foot roll controls which i believe are these guys so let's grab those as well and put them on this animation layer okay so now we kind of have everything that we're going to work with on a layer we have everything else locked so we're not going to be messing any of it up so first what we're going to be building here are essentially essentially the most extreme versions of the lean pose that we expect our character to be able to do so the most extreme bank pose for left and

**4:34** · right we're going to be building on a layer here okay so let's take a look over here in this back view and we're going to grab the layout and we're going to use that to create our initial uh kind of lean to the right okay so let's take it only about 20 degrees

**4:51** · we don't want to be like too crazy here um and oh and we want to set a key on this here before we get too far actually let's select all the objects on this layer select objects and make sure we have them all keyed on this layer

**5:09** · um and then now let's select that layout control and give it that 20 degrees to the right okay now you can see of course that this puts that foot through the ground and that's why we also put these feet on these layers so that we can adjust them accordingly so what we're going to do is go through on the foot the positions where the foot is actually on the ground and we're going to key all of those

**5:39** · okay and then the ones where they're through the air we're going to kind of let them be what they are for now we're just trying to establish that when the foot is on the ground we're just going to adjust our poses a little bit to make sure that they're actually impacting the ground correctly okay i'm gonna put one key here in the center when the just to kind of track where that foot was passing through okay so let's just grab this foot now on frame one and start adjusting this and we're gonna do it in this orthographic view so that we know we're only dealing with one angle okay

**6:10** · and i'm just going to per frame go through quickly and adjust this to actually be falling directly on the ground as our starting point we'll worry about kind of getting it to all match up perfectly later

**6:25** · but generally speaking you can kind of power through a lot of the initial posing here just by using this orthographic view and quickly kind of adjusting it to line up with the ground there may even be a faster way to do this but i find this is just the kind of most quick and intuitive way to do it and this first pose we're just going to copy and paste over here to our last one boop uh for some reason that didn't work

**6:55** · oh well we're a little bit through the ground for some reason let's try to fix that i'm not sure why my vertical axis is not keying correctly let's try it again oh there it all looks correct now okay i don't know i guess which is the visual bug okay so let's fix these last two poses

**7:13** · here um let's see what this looks like which pose is this i guess this is not quite the contact yet so this is the contact here um the foot's going to be kind of up like that and then come down

**7:34** · now these don't need to be you know absolutely perfect but we want to kind of get them you know at least the line with the ground so now let's do the same thing with our uh roll here so i grabbed the roll control and let's kind of find the opposed to the air that's kind of how we want it

**7:53** · and then start setting a few keys on these grounded poses and i'm just going to use this to tilt and kind of reposition the foot a little bit you know this is kind of like tedious work but also doesn't need to be hugely exact because you know it it's gonna kind of be a blend

**8:15** · in game and uh you're not gonna notice if it's a little bit imperfect to be totally honest so let's copy this pose from the beginning here to the end you can see that i'm just like one frame at a time just adjusting it really quick i'm not really spending a lot of time on it but let's kind of look at now from this perspective view and see

**8:36** · it actually doesn't look too bad the point is to just get it to kind of like track along the ground correctly and for the most part it's maintaining you know what it did in the original animation okay so let's go ahead and do the same exact process on this other foot very quickly we'll find the points where it's tracking along the ground so here

**8:55** · is our contact so let's start keying it there it's still on the ground until on the ground still on the ground still on the ground and there's where it kind of like lifts off so actually let's delete that last one and once again i'm going to key the kind of in-air pose because we want that to kind of stay where it was and let's start going ahead on these contact poses we'll get it down there under the ground

**9:22** · fixing this just really fast these animations shouldn't really take you too long you know you can kind of just eyeball it it doesn't need to be uh super artistic it's more of a science more of a process than anything uh the goal is to just get these feet looking like they're sitting contacting the ground

**9:44** · oops okay last frame here on the ground great now let's grab the uh the roll as well and we're going to do the same thing we did before i'm going to kind of key the passing pose there and then find all the ones that are on the ground and adjust them

**10:07** · one at a time okay so here's the first pose on the ground the kind of contact we're just going to rotate it to kind of match the angle of the leg on each frame i'm just scrubbing through using my hotkeys and fixing each consecutive frame

**10:27** · okay let's take a look over here in our perspective view and see what those feet look like now so not too bad they're contacting on the ground feels like the character is leaning we're doing pretty well okay so next up let's do a little bit of work on the spine okay we want to take the

**10:44** · spine i'm just going to grab all the spine controls together and since the character is kind of we'll look here in the perspective view since the character is kind of turning to the right here i'm just going to add a little bit of subtle rotation towards the right and also kind of lean the

**11:00** · character that way a little bit too um i'm just setting this piece this just one key here on frame one and we can even do a little bit to the head as well let's have the head look a little bit this way and maybe like tilt a little bit so the characters like looking into the direction they're running a little bit

**11:21** · let's play it and see what it looks like okay now the one thing that we're also going to have to adjust now is this arm which is uh we have some clipping with the ground here so let's build let's put a mesh on the ground so we can see the frames that it's clipping and kind of make an adjust pose for this arm here we probably want to bring like bend the elbow a little bit

**11:48** · more to uh actually you know maybe we can adjust the spine a little bit even more in that direction and maybe not lean quite as much so we're not getting like quite as much clipping into the ground we'll pull that back a little bit now let's kind of scrub through and see the clipping is not too bad except right through here

**12:08** · so what we can do is actually i'm just going to grab the uh all my arm controls here we'll grab the wrist the elbow and the upper arm and on my layer once again i'm just going to kind of key every like key my extremes so here's kind of my let's see like my kind of extreme forward there's kind of my extreme back and we're going to look where it's clipping with the ground and try to just adjust it a little bit

**12:36** · to get it up out of there and since you know we have uh the the core animation on that base layer as long as we don't adjust this too much we should be able to sort of wiggle room it to get the uh to get the key frames we want out of the ground

**13:00** · and still have the rest of the animation feel pretty good i'm gonna actually move this key or delete this key here let's see okay oh i actually bumped my uh i think i

**13:16** · bumped my key off the end here doing something let's see what did i actually do here oh yeah i accidentally moved everything there we go so i adjusted this pose up there and i'm going to actually move this key back so it cushions into that pose we just made a little bit more and let's see where is the other part where's clipping kind of like right through here and so i think generally speaking what we want now that i'm looking at it is to just have this hand be a little bit more forward and not

**13:45** · dragging so far so let's just kind of have that be true i'm doing whatever i need to do to try to get it to mostly not clip to the ground if some of those spikes go through the ground a tiny bit i'm not too worried about it that's just you know you can have that but you don't want it to be like obviously um you know chunking through the ground too much and the last thing we can do maybe is um have this upper arm

**14:14** · be you know here let's uh let's actually just set one key on this upper arm to kind of have it be even up a little bit more let's see what that looks like

**14:31** · and there you go we got like a pretty decent uh animation on it still but it's not uh you know it's not clipping through the ground quite so much anymore i might have been able to do a better job at that but we're just trying to get something in the game to uh start with uh and you know what you know what i lied we're gonna do a better version of this let's try to let's try to instead bring that arm kind of up into a more

**14:57** · you get to watch me experimenting here let's try to bring that arm up into a little more a pose like held closer to the body so what i'm going to do is to clear out the animation on that i'm going to remove the arm from this and then re-add it to this layer and this might be a folly maybe i'll decide to go back to the other way but what i'm going to do is just set a single key and try to repose this arm to be a little bit more uh

**15:23** · like held close to the body during this right version and he'll bring this weapon actually up towards his chest a little bit and we'll see if we can get that to now not clip

**15:39** · and now look at that so that's like a good solution maybe uh we don't have any clipping anymore i can probably actually now adjust it back a little bit to still maintain that feeling of the character kind of dragging it behind uh and let's scrub now and see if we have got rid of most of that clipping

**15:57** · it looks like all the clipping is gone there and so we get something that actually feels a little bit more natural with just um you know as you kind of would like lean to the right you'd pull that in a little bit more under your center of gravity okay so that's where i'm gonna stop for this one i'm gonna quick rename this layer to be called lean right and let's save this file out as a new run we'll call it run f

**16:25** · with liens just so that we have an iteration of this uh for when we export it now the last thing that i'm going to do is if you look at this orthographic view our character is uh this is kind of the center line here

**16:42** · in game if we put this animation in game right now our character is going to be leaning way out away from center so what i'm going to do is i'm just going to take my just just for the sake of in game trying to keep the character centered around the camera a little bit i'm going to take my

**16:59** · uh root control here i'll just just on this one frame and nudge it back so the character is a little bit more over the center then that not only are they leaning out to the right but they're also pushing the feet out to the side a little bit as they bank as part of it in an effort to try to get the character still kind of like centered over uh the center of the screen where our camera is we can kind of adjust that later if we need to in game but with

**17:23** · that i'm going to kind of play this from a couple views here so you can kind of see it i'll turn off the controls and you can kind of see this banking animation playing characters kind of leaning over that way if we look at this one here same deal okay

**17:39** · and we'll have to kind of see what this looks like in game we might modify it some more later but i think it's a pretty good starting point now at this point i'm going to go through and make the left one i'm going to use all the same exact tactics just in the opposite direction and then i'll come back around and show you the final versions before we take them over into the game all right so with just a few minutes more work i was able to generate the left version of this lean as well and i'm gonna kind of show you the finished project before we export it and getting

**18:05** · into game okay so as i talked about we have our base layer here if we play it without our lean layers turned on it's just our normal forward run however we turn on either of these layers we get the corresponding right run let's turn that back off and if we turn on this layer up here we get the corresponding left run okay now once

**18:25** · again we can come back and polish these more afterwards if we want to but the idea here is to just get some starting assets to get into unreal and blend build our blend spaces that's it for the maya portion of this tutorial now as i noted when making these it's not a science you just sort of feel it out and try to get them to kind of look right the important piece is to get them in game quickly so that if there's issues we can come back and iterate on them in maya later and we'll kind of do a sort

### 03\. The Locomotion Blendspace

**18:52** · of self-feedback session at the end of this to make sure that these actually look like what we want and maybe identify some things we can improve about them if we want them to look a little bit better in the future but since it's important to get them in the game early we're going to export them now and hop over into unreal so the export process is just like any other uh

**19:11** · animations we've exported previously you just turn on the layers that you want to export and we're gonna export just that right pose or that right run and the left run and then we're gonna go into unreal and build a blend space and get these things implemented into our game so let's hop over to unreal and see what

**19:27** · we can do all right so here we are back in unreal and i just finished importing my assets so we're going to make sure that they look good and then we're going to assemble them into a blend space that we can use to drive this lean so let's take a look we've got our forward run nothing really changed much about that but let's take a look at these new liens that we made so we've got the lean left characters leaning to the left looks pretty much exactly like in maya let's kind of rotate around it just to make sure looks pretty good and our lean right

**19:57** · same deal looks pretty good looks like a good starting point so what we're going to do is we're going to combine all of these into a blend space so let's go over here to our content browser and we'll start by just right clicking on the run animation and say create

**20:15** · oh actually you can't do that you actually have to create a blend space separately so let's right click here and we'll say animation and let's find our animation blend space and we're actually going to make a little bit of a more complicated blend space here than before we're going to we're going to make a one that has more than one axis so let's just click the blend space option here and we want to find our skeleton blend spaces are skeleton specific so let's search for thor and we're going to make it using this skeleton and let's call this

**20:45** · uh locomotion blend okay let's open this baby up and as you see when you open it there's no animations in here what we're going to do is we're going to combine all of our traversal and idle animations and everything all into one blend space with the vertical axis being speed and the horizontal axis

**21:08** · axes being our lean animations so let's go over here to these axes and open them up and let's actually name them appropriately to start so let's say speed is our vertical axis and our horizontal axis is going to be let's call it we'll just call it lean

**21:28** · okay and we want to make sure that these scales here make sense to us we're not quite sure what our lean axe is going to be but we know we want it to be negative probably in one direction and positive in the other because you're going to be leaning left or right and it's probably going to be like a positive or negative value that we're going to want to put in there we're not quite sure how that's going to map yet because we haven't built the data so let's just kind of pick an arbitrary number and make it the minimum negative 10 and the maximum positive 10.

**21:55** · now the speed um we actually can go look at what our max speed is let's go back to our um content browser here and go find our thor pawn now i'm going to be honest i don't quite remember what our pawn was called so let's search for pawn uh under oh maybe it wasn't pawn controller i think is what it's called

**22:22** · nope what is it called what was our character called i should know this shouldn't i you know what here we're going to do some cool unreal navigation tips to find this let's go one of the cool things about unreal is everything is connected so if something is being used by the character controller you can go find it by searching from that item i'll kind of show you how that works if we go find our thor animation blueprint

**22:48** · here we can right click on it this is the one we're using and say reference viewer and it will show us that it's being used by the third person character and we can actually now go browse to that and find it and there it is there's our pawn that we were using the controller so let's click on that to open it up get rid of our content browser out of the way this is a cool trick for just kind of uh you know finding um assets through their connections um and i think it opened it up

**23:18** · back here in this tab sorry about the organization there and where we're going to be looking is on this character movement component so this is our controller we haven't been here in a while but if we go click here on the character movement we can find what our max speed is by scrolling down here into the walking settings and what now we can see that our max walk speed is 600 and i think we

**23:40** · looked that up previously but it's just a good little refresher on how to find your core movement settings so we know that that's going to be the fastest that our character can currently run so on this blend space now we navigate back here we know that our maximum value on this axis is going to be 600 and that's where our runs are going to be peaked out at okay so now that we've got the parameters of our blend space set up let's actually plug in the correct animations so we know that our run f our middle one is going to be here at the center at speed 600 and no lean now we

**24:15** · aren't quite sure yet which one of these axes is going to be our right or our left so let's just guess right now and put the right on the right by plopping it up here in the corner and our left on the left and we might have to switch them later if they end up being backwards but the last thing we're going to do is down here at zero speed we're going to put our idle animations at both the

**24:36** · center and the corners so that we can get a full blend space that's functional okay so if you kind of hold down shift you can pull this little green dot around and see the animations playing at the different speeds different leans you can see that as our character leans back and forth they're going to get a nice blend between these and if you're playing with a you know controller or something and you actually run at these lower speeds you'll get a blend through here even though it doesn't look very great which we can talk about later but i want to build this functionality into it for later um primarily what we're worried

**25:08** · about now is though this peak speed up here where our uh lean assets are gonna play okay and that's it for now for our blind space setup now we're gonna hop over to the animation blueprint and actually build the data that's gonna be used to

**25:27** · drive our back and forth lean at this point we have our blend space all set up we have all the animations kind of structured to be able to function in game but we don't really have any data to drive it so let's talk for a minute about what we actually want to figure out to drive these animations essentially the piece of data that we're looking for is how fast is the character rotating back and forth now that sounds like it might be easy but from game terms it ends up being a little bit complicated essentially what we're trying to look for is to check each tick of the game

### 04\. Gathering The Data

**26:00** · whether my direction that i'm moving my rotation on my character has changed now when i say tick what i mean is every game as it's functioning in the background runs at a tick rate okay and what that means is essentially just like how fast the game is updating and every update of the game data gets calculated again and then the next ticket gets updated again and again and again so what we can check is we can check on one

**26:25** · tick what our rotation was and then when the next tick happens when data is updated again we can check if there's a change from the previous tick and what that will essentially get us is a yaw rate a rotation rate of the character how much the character's rotation has changed since the game last updated so

**26:44** · hopefully that kind of concept makes sense but i'll reiterate it here as we actually do the math to figure it out so let's get into the animation blueprint and i'm going to talk through the the slightly complicated math to get our change of rotation per tick rate to drive the splint space all right so here we are back in our animation blueprint one of our favorite places to be and this is where we're going to calculate our data to drive that blend

**27:10** · space we just created now if you see me looking over here at all it's because i'm referencing my notes i'm not a super genius who knows how to do everything so i had to do this in advance and i will be referencing my notes over here a little bit um but generally speaking we're going to be doing exactly what i just described we're going to be trying to create a variable that will give us the rate of change per tick of the rotation of our character while moving now that while

**27:33** · moving part is key because we don't really want to be calculating this when we're not moving we only care about it when we are moving around and running right and as generally speaking you never really want to be calculating data if you can avoid it when you don't really need it because it's just going to bog down the performance of your game so the very first thing we're going to do is check if you're moving so if we right click we actually already have a variable for that which is is moving we built this previously and we can pull off of this to create a branch

**28:04** · to only trigger this logic if the character is actually moving okay now we're going to need three pieces of data to drive this thing the eventual piece we want is a float a value that is the yaw rate of the character so let's create that now um i actually already created a yaw rate variable but if you want to create a new one you can go down here to your variables and you want to go to create

**28:31** · and change it to a float and you can call it yaw rate but since i already have it i'm just going to pull it out here onto the field and i'm going to say we're going to eventually set the yaw rate right because this is the thing we're going to set at the end now of course the other two pieces of data i need are my current controller rotation and my controller rotation from last tick now one of those we actually already have we calculated as part of our point of interest if you kind of follow the logic we had here we actually set a

**29:03** · variable called the controller yaw taking it from the forward vector of the character so we can just use that one that we previously created so let's right click and search for controller yaw and we want to get that controller yaw because we're going to use that to check whether it's the same as the yaw from our last tick now nowhere in the nowhere in the blueprint yet have we calculated the yaw from last

**29:32** · tick so we're going to need that variable as well so just like before let's create a new float variable and we'll call it controller yaw last tick okay and we're going to pull that out and get it as well

**29:53** · now what we want to check is are those two things the same essentially is my controller yawn now the same as it was last tick so let's do a equal well let's do not equal we'll check if they're not equal because essentially we want to change change this yaw rate if they're not equal

**30:12** · and we'll turn this into a branch based off of that and now we have something to actually plug in to this other branch which says if we're moving we want to start trying to check for this right so if we're moving then we want to check is my controller yawn now different than my controller yaw from last tick now if it is different i what we want to do is

**30:43** · a subtraction of these two okay now it's going to be this same logic here and i kind of explained this before that this is subtracting two uh you know 360 to 360 float values that represent the rotation of the character is the ah

**31:01** · in some like world space thing i don't i'm not gonna go through and explain how all the math works it's just a cool little bit of math that we can copy that essentially will give us the difference between two rotational yaw float values okay so

**31:17** · don't ask too many questions about it we're just going to grab it and reuse it down here but in this case what we're actually going to be wrote or subtracting are these two values because if they're different we want to get what the difference between them actually is in a simple uh in a simple value okay so that is gonna then plug in to our yaw

**31:43** · rate okay so let's talk through what we have so far we have if you are moving you're going to check if the controller yawn now on this tick is the same as the controller you offer from last tick if it's not if that's if it's true that it's not the same then we want to get the difference between them and set our yaw rate to that okay so the yay rate is going to be bigger if the rotational change is bigger right so

**32:11** · we're going to get more of a lean more yaw rate value the further you're moving per tick now the last thing we want to do here is if they are different then we want to actually update them on this tick to make sure that they're the same again so that we can check again next tick if it's changed more now how we're going to do that is we're just going to right here at the end say set our controller yaw last tick and we're basically going to reset it to our current yaw again

**32:42** · now let me explain that one more time because it might not be super clear if the controller yaw from last tick doesn't match the current controller yaw once we do the calculation to figure out how much it's changed we want to reset it so that when we check again next tick we're just checking the change between this current one and the next and the last tick right so we want to reset it every tick so that on the following tick it it updates and gives us the correct yaw rate output now if

**33:14** · in this false option if these things end up be this being the same we want to actually set our yaw rate to zero because we don't want the character to be rotating at all in that instance if there's no difference between these two okay and that pretty much wraps up the logic here let's so let's let's test this out we'll plug this in to our sequence here so that happens after all this other stuff and just so that we can see this kind of playing out in game let's print out this

**33:41** · yaw rate onto our screen now i don't know if we've really used this before but there's a cool little debugging bit here you can do in blueprint you can say print string and we'll plug that in here at the end and if you drag these yaw rates into this what it will do is it will print out that value of the yaw rate

**34:06** · onto the screen actually sorry i need i can't drag them directly from there because i can only do it from one we want to get the r rate and print it out \[Music\] here and we want to make sure that each of these flow into this as well so that we get the print regardless of

**34:24** · which one of these paths it takes okay and we can kind of pull this down here to get it out of the way by double clicking on it so what we're going to see hopefully is our yaw rate printing out on the screen and ideally if this is working correctly when we're just moving straight forward our uh rate should be zero or close to zero and as we rotate the character left and right our yar rate should go up or down so let's see if it actually works if it's actually true in game okay so you can see that if i'm

**34:51** · not moving nothing's printing on the screen but if i start moving i do get a value and as i turn to the left it looks like it's going negative and as i go to the right it's giving me a positive number and we can kind of see i don't know how well it's getting recorded but it looks like the value kind of goes up to you know five six seven eight or so in each direction at the most extreme um

**35:14** · extreme value so we can adjust our blend space now based on that okay so now we have the two pieces that we need to put this together we now have all the pieces we need to actually finish the implementation of these liens so what we're going to do now is we're going to take that data that we just calculated and that blend space that we made and in our animation blueprints run state we're going to put that blend space in there and use the data to actually drive the lean back and forth

### 05\. Connecting The Pieces

**35:46** · on our character as the game is actually playing so let's go over into the animation graph portion of the animation blueprint and actually update our state machine to use all this stuff that we just created let's navigate from our event graph back over to our animation graph and find our run state so

**36:04** · we can hop to our animation graph using this menu here by just clicking into the animation graph which will bring us to our state machine that we can click into now today we're going to be editing of course is this run state and currently we just have our one run animation playing in here we're going to replace this with our new blend space

**36:22** · so i believe we called this locomotion blend so we can bring that in here and we're going to plug this in instead of our base animation and then our lean we're going to plug in our lean axes to be driven by that yaw rate variable that we just created so if we pull off of this we can actually search for yaw rate

**36:51** · plug that in there and we also want to add in our speed our horizontal speed as well to make sure that we're actually at the right on the right spot in the vertical axis of this blend space so if we go down here we already had our horizontal speed that we previously calculated you can click drag it right up into this pin and boop plug it in okay

**37:13** · so theoretically this should work let's take a look in game and see if all of our hard work paid off or if we need to actually make some changes to this blend space so let's move this out of the way and hit play and see if our character leans and it actually looks like it does but it's very jittery you can see that as we are going back and forth the character is sort of like jittering uh back and forth uh because that that variable is changing so quickly so what we can do

**37:44** · now is we can actually go to our blend space and update it to be a little bit softer the other thing that i noticed is that it's not actually ever reaching the maximum you know the maximum ends of our blend space it's kind of just leaning a tiny bit so what we can do is reduce the

**38:01** · values in those axes to get a better result so we can actually just leave the game here running and let's go back and find our locomotion blend we can click on it we can actually look at these at the same time we'll pull this up here and kind of \[Music\] move our viewport around here a little bit so we can actually uh see this updating at the same time so first off um you know we noticed that

**38:26** · we weren't ever reaching the maximum lean and that's because our maximum lean isn't going to be reached till our yaw value gets to 10 or negative 10. and if you remember when we were printing it on the screen we were never actually getting that far it was kind of going up to six or seven or so so why don't we adjust this to be closer to what the maximum yaw rate actually is going to be and maybe try negative 7 in each direction

**38:49** · and pause sorry negative 7 in one direction and 7 in the positive direction now the other thing we saw was that it was very jittery and that's because we aren't don't allow any interpolation time between our uh blends here it's basically saying like whatever the value is you snap to it instantly so when that value is jumping quickly you're getting like big jittery jumps so

**39:11** · we can add a little bit of interpolation time here maybe we can start with point three to kind of see what that looks like uh this means it's going to take 0.3 seconds to reach the correct spot on the blend space from where it was previously and let's see what that kind of gets us so here we are now leaning around when we turn you can see the character kind of like leaning into them it's a little bit more uh softened out now but i'm still not seeing uh us getting as often to our sort of maximums

**39:41** · and i think it could it might even still be a little bit more jittery than i would like so let's reduce this again maybe down to negative six and six and maybe amp this interpolation time up to 0.4 and save this let's see what that gets us now

**40:03** · so it looks like we're actually getting now a pretty smooth rotation okay so let's get rid of this out of the way and take a look at this full screen so running forward we don't really get anything if i run to the right i get a little bit of lean and if i run to the left i get a little bit of lean and it's pretty smooth if i go back and forth between them now i think you could argue that maybe my assets could be a little bit more exaggerated or more extreme and you know i actually agree with that we could probably have the character in general like literally leaning more you know if

**40:34** · you're kind of rotating around at these maximum rotations i would expect the character to maybe like lean into it a little bit more but that's sort of an asset question not a implementation question here so that's kind of it for the implementation uh let's talk a little bit about

**40:55** · how we could improve this in the future now that we've got all the pieces together and unreal and we see it working in game it's a great time as i always say to reflect and try to give ourselves a self critique and really look at maybe taking some notes about how we could improve what we just made in the future so let's just run around a little bit and try to make two three notes that we could use to go back and edit the assets in the future to get a better look let's take some notes now on

### 06\. Reviewing The Work

**41:24** · how we could improve the assets and maybe even the data here to get a better look in the future there's two things that kind of stand out to me pretty quickly when just looking at this running around the first is as i noted before i think the character could just lean more in general i

**41:42** · i if you remember in maya we had the character only leaning about 20 degrees from the root i think we could probably push it to be more like 30 or maybe even closer to 40 degrees on the maximum turns because you know banking in on these i think you could it could exaggerate that a little bit more the other thing that stands out as part of that is that if the character just kind

**42:02** · of feels stiff throughout you don't really get much of the lean in the upper body that we built into there because it was pretty subtle so i think if uh you know i could go back to the asset i would increase the amount the character leans as well as trying to get some of that through the upper body a little bit more to loosen up the character now that may create some problems with the weapon you know we saw we were having some clipping with the ground but those are just the kind of things that we might have to deal with as part of that um the other the

**42:32** · second sort of feedback i have is more of a data one which is as i do these extreme turns i'm seeing this like loss in speed where the character kind of comes you see as i do a very extreme uh changes sometimes i see the character kind of come down into almost like an idle pose in that blend space because the speed ends up being so low now here's the problem with that the problem is is that we built this blend space to go from zero speed up to 600

**43:03** · and we have that idle at the bottom of that and here we can even go back and look at it we have the idle animation at the bottom of this blend space here and i run at the top but the problem is as we slow down these in between things because we don't have any animation information here are giving us this kind of weird goofy slow somewhere in between animation okay so there's kind of two

**43:30** · ways that we could solve that in the future one is for now we could actually just clip the speed in the data and say hey you know when you're running around we just always play the 600 speed one alternatively if you wanted to do more work if you wanted to really improve the fidelity of this it would probably be beneficial for us to actually make a whole set of runs at 300 speed so that

**43:54** · when your speed sort of reduces to 50 around here you actually have an animation to play i'm not going to sit here and do that right now but that is a way that we could significantly improve the fidelity of this for now i'm just going to do the quick clipping the speed solution which is instead of plugging our horizontal speed into this for now we're just going to say hey always play whatever's at 600 speed on this blend space and for the moment that should mostly eliminate that sort of slowdown

**44:25** · of the animation when the character is actually slowing down in speed now technically that's probably creating some sliding under the hood but i think that's a better look than the sort of artificial uh goofy slow down that we were seeing when the speed goes really low so that kind of leaves us in a place where we have most of the ground locomotion features built you know we have idling we have stopping we have

**44:52** · look ats all built in there and we have even now leaning while running around and there's a lot of places we could expand this in the future but for now that's a pretty good place to be to sort of wrap our core ground locomotion features and assets so animators here we are at the end of the core feature set

### 07\. Course Wrap-Up

**45:12** · for basic locomotion these features that i've kind of outlined here are more or less the features that i built on most characters first to just get them running around the game now there's lots of ways you could expand on this or improve that and i would encourage you to maybe explore some of those now the first thing i always like to do when i kind of get to this point on a character is to look at the whole feature set now together and

**45:36** · see hey where can i improve animations where can i improve transitions where are the weak points that i have in this current set of animations because your is only as good as the weakest assets on it if there's a blend somewhere that doesn't look very good or a transition that's kind of those are the kind of things you want to go and fix now so if i was to look at what we currently built i think an area i might want to improve is the idle animation it's pretty simple the pose

**46:02** · i'm not super happy with and maybe i would go back and now that all the features around it are in there would maybe try to build a little bit of a stronger idle pose and level animation so generally now is a good time to just level up the whole set of assets that we've created because you can see them all playing together in the game now if you want to expand on this and actually build some new transitions to kind of amp up the fidelity of this

**46:28** · one set that we didn't really build in this that would be a nice little to the fidelity would be to add run start animations and i think i alluded to this before when talking about tradition the transition animations but the one that we're kind of missing that could help things a little bit is when you start running having a special animation where the character kind of leans forward and ramps up to speed now how you build that is by just adding

**46:54** · a new state to our state machine called run start that instead of idle going straight to the run animation much like our stop it would transition through an idle start and then into the run what would the rules look like there well you just put your run start animations in there and once they're done playing you'd have a transition rule into your run that says something like hey when my animations time remaining is point two i start transitioning into my

**47:23** · run animation it should be some pretty straightforward logic that with all the things that we've learned thus far you should be able to easily build now it gets tricky as with all things in game animation you know if you start doing run starts well you also need to do liens for them and whatnot as well to get them to blend in to all the other assets that we've created if you want to really expand beyond that i'd encourage you to maybe explore some things like jumping i may do some tutorials on the more advanced locomotion stuff in the future but i

**47:51** · think if you go look at what's out there in the you know in the unreal uh world on youtube and whatnot you'll probably now have the sort of knowledge to be able to go find some of the cool things uh that you want to do and add to your character so thanks for following along on this basic locomotion workshop and i hope you learned a lot and i hope that you'll check out my future videos if i do some on more advanced things until next time happy animating