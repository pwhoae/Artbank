---
title: "🎮 Beginner's Course To Game Animation | 07 Layering Look Animations"
source: "https://www.youtube.com/watch?v=EyFdtDdar5A&list=PLzn9qrbm2X8OuNjFPw2rIj8O1h1Kt8JX0&index=7"
author:
  - "[[Agora.Community]]"
published: 2022-03-12
created: 2026-07-15
description: "In Part 1 of creating look animations in Maya and Unreal, Skylar Surra (Principal Animator at Riot Games), taught you how to create your look-at animation with a simple blend between the two in the en"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=EyFdtDdar5A)

In Part 1 of creating look animations in Maya and Unreal, Skylar Surra (Principal Animator at Riot Games), taught you how to create your look-at animation with a simple blend between the two in the engine.  
  
In Part 2, he takes you through a little bit more of an advanced way to achieve this interactivity using a layered approach.  
  
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
02:18 02. Building The Poses  
10:32 03. Unreal Scene Setup  
15:53 04. Blueprint Setup  
20:14 05. When To Use These Techniques  
21:28 06. Bonus Challenge  
23:04 07. Happy Animating!  
  
#gameanimation #unrealengine #animation #agorastudio #agoracommunity #cgi #vfx #animator

## Transcript

### 01\. Course Introduction

**0:00** · \[Music\] hello animators and welcome back to my game animation workshop this is going to be a short episode piggybacking off the previous lookout episode and if you remember in that episode i mentioned talking about a different way to do these look at animations using additive

**0:17** · animations instead of full body animations in the previous version of the lookouts that we made we used these full body animations that we authored in maya we brought those into unreal put those in a blend space and made the character look around using these full body assets now that's great it looks really good it allowed us to author those those poses to look exactly like we wanted them and it really like looked good but one of the problems of authoring full body assets like that is that if

**0:44** · you want to extend those lookouts across any of your other states like for example the stop animations you have to author those full body look at for those states as well so if we wanted to extend that full body setup across to the stops we have to take our stop animation in maya and also for that entire animation author right left uh and sort of three

**1:05** · quarters versions of those so additive animations are another solution that kind of solves that problem if you've ever used layers in maya you've already made additive animations they're essentially a pose or an animation that layers on top of your already existing animation so in this case we're going to build just a couple look at poses additive poses on a layer above

**1:29** · our idle pose that we can sort of project onto that in the same way and unreal now the great thing about additive animations is because they're just purely an additive pose that layers over another pose they can be layered over anything so in this case we could use the same exact additive look at to layer

**1:48** · over our idle animation as well as our stop animations so we kind of get them both for you know you kill two birds with one stone now the downside of additive animations is that you need to be pretty conservative with what you're actually moving on the character you can't do lots of translation rotation all this because any little additive

**2:06** · pose change you made sort of cascades throughout the character and also talk about this a little bit more when we get into maya and start animating so let's hop right over there now get into maya and build some additive poses all right so here we are in maya i've opened up the idle pose that we made previously now this isn't the one with all the breathing animation and it's literally just the pose and i just brought that in here because i want to keep it simple i don't want to worry about having all that breathing everything in here and we'll kind of check it against that later but just as far as you know keeping things simple to author we're just going to work from the pose and build our additive poses on top of that

### 02\. Building The Poses

**2:38** · idle pose that we made now as far as the sort of layout i have here i wanted to have a top down view so this is just a orthographic top view over here so we can kind of see the angle that the character is looking at from a top down perspective and then just the three quarters view so we can easily grab things and move them around okay now

**2:58** · we're going to make a 90 degree left and a 90 degree right turn for this character look at for the character and we're actually going to build it in maya on layers so that we're building it functionally in the same way that it's actually going to be be played in maya basically as a layer over our already existing pose so let's

**3:17** · build those two layers first over here let's add two new layers uh here in our layer editor and we'll call them right 90 and hit enter and then we'll call the next one left 90.

**3:32** · because i can type 90 okay and we're going to add we want to add the spine the three spine joints so i'm going to select those we want to add the arms and we want to add the head to both of these

**3:49** · layers add those selected objects and then just to get me started while i have everything selected i'm also going to add a key on everything on both these layers so we make sure that all the animation we're doing in auto keying going forward actually gets applied okay and then for now let's turn off the right 91 so that we can work on just the left 91 as a starting point

**4:14** · okay so let's take a look at our top down view here and we're going to start with the head and work our way down because where are the heads looking that's the most important bit we want that to be looking 90 degrees in our direction so we're going to be looking to his left i'm going to go over here to my ortho view and just grab the uh sort of world

**4:32** · space rotation and turn it until the head is looking pretty much 90 degrees okay now of course that looks super goofy because we haven't adjusted the rest of the body yet um but that's going to be next so let's grab all of our spines now and we're going to do the exact same thing over here on our ortho view in top down we're going to use this sort of world space rotation to rotate all of our spines until we get to a point where the uh

**5:02** · head is looking like it is could physically sort of look in that direction in that in the you know based off of where we had moved it before we're going to do the same thing with the arms i'm going to grab both the upper arms and rotate them around in that direction as well

**5:19** · until we get something that looks pretty natural and then we're going to kind of look over here at it and adjust our pose a little bit um to see if we can make it look just a little bit more natural uh and a little bit more balanced out maybe bring the uh arm like just to fix the arm poses just a little bit like i think maybe this uh

**5:43** · this arm here could kind of come down in front of the character just a little bit we don't want to change the pose too much because it's being going to be additively applied doing any huge changes to this pose are going to cause sort of cascading problems um as it's layered on to uh our you know other poses that are maybe a little bit different from this um let's add to a little bit of sort of uh

**6:12** · lean in this direction here since he's turning so far that way and lastly let's take a look at the neck and we're going to sort of rotate that and give it also a little bit of adjustment in the direction that he is looking okay i'm going to uh also give us a little bit of

**6:40** · actually let's do that here on these top two joints just a little bit of torque on the body there to to bring him kind of around that direction okay \[Music\] now he's leaning out a little bit far over this and i don't really want to move the lower body too much because the problem is as if i move

**7:04** · this cog at all in an additive animation it's going to change all the bone relationships all the way down the leg and as it blends between these animations those additive changes to like the hip knee and foot are going to cause sliding in the game okay so that's one of the downsides of additive animations is that you need to be pretty conservative um with where you're uh applying your animations

**7:31** · and generally you want to kind of stick to the upper body as much as possible um i'm just going to kind of adjust it from this pose a little bit to try to make it feel a little bit more balanced i don't know how good of a job i'm gonna be able to do here with this but we'll give it a shot and see

**7:50** · okay and now i'm just kind of tweaking it a little bit more just to see where we can land maybe tilt the head a little bit that way to make it look a little bit more natural okay now this is our most extreme one remember so uh we can kind

**8:09** · of just get it as good as we can get it here now let's try to compare it to our base pose we can do that by looking at it here and turning off our layer and it'll bring us back to our base pose we want to make sure that it looks like a sort of natural continuation of that pose and i do think i'm going to try to just bring the character a little bit more upright towards center here just by adjusting these spines a little bit

**8:40** · so that we get something that's a little bit more balanced so let's take a look at it compared to our base pose and that looks pretty good okay so we're going to use that for our right pose uh on just the upper body or sorry our left pose i said the wrong thing and then i'm going to go through and craft the right pose using the same exact technique all right so with a little bit of noodling i now have my two poses and i'm going to kind of show them to you i use the same exact tactic to create the right pose as i did to make the left so there was no surprises there let's take a look at our left pose first

**9:13** · now it looks a little bit of wonky from this camera but you got to remember that what you're actually going to see is when your character is rotating around to the left so this is actually the pose that you're going to end up seeing in game or something similar to it probably a little bit more pulled out bases off our camera i could maybe clean

**9:29** · this up a little bit and get the arms out in some better positions to get a little bit of a better silhouette but for now i'm just going to leave it like it is so similarly if we turn on the right once again it looks kind of a little bit wonky from this camera you don't have a great silhouette but remember this is

**9:45** · what you're actually going to see in game and that actually has a nice clean silhouette because you're going to see these look at animations as you're actually rotating around the characters so it's important to actually look at them in the context of how they're actually going to be seen in the game so now what i'm going to do is i'm just going to export each of these animations now they're not truly an animation they're just a pose and how i'm going to export them is i'm going to export the right one just maybe 10 frames or so here of it with the right layer turned

**10:15** · on and i'm going to export the left one with just the left layer turned on and what i'll get is 10 frames or so of each of those poses to work with and build an additive animation out of in unreal so i'm going to do the export process off screen and then we'll hop over to unreal and see what we can do with these so we have these two assets now that we really like they're what we want in maya and we want to export them out and get them into unreal for the export process

### 03\. Unreal Scene Setup

**10:40** · you're just going to export the same way we did every other time as if these are a full body asset and when you import them into ue4 it's the same process there's no special setup for when you import them in they're just going to be imported as full body animations all of the additive setup is going to happen in ue4 once we already have the assets in there so let's hop into ue4 check out our assets and do some additive setup all right so here we are in ue4 now and i have my poses imported

**11:09** · in you can see that i brought in the left right pose and i added a suffix on there add to mark them as additive so we can tell the difference between those and the previous poses that we made i also added a third pose in here that default idle pose because we're going to need that as part of the additive setup process now these animations import in

**11:28** · as full body animations just like any other animation there's no thing you need to do different when actually importing them in initially the setup is all in here in the animation asset once they're here okay now the first things first we want to check these and actually make sure that they look like what they did in

**11:46** · maya okay that's the first thing whenever you import animations in you want to just double check and make sure that it actually looks correct and they do they seem to look fine so what we're going to do is we're going to go over here into our asset details and find the section additive settings and you'll see that by default all animations are set to no additive because generally you know the expectation is when you bring an animation into unreal you're going to use the full that full animation but what we want is to have it be treated just like it

**12:16** · was as those layers in maya and if we think about it here's what's happening on those layers we had a base animation pose that bass idle pose and we added information onto it on that layer and what we want unreal to pull out of these animations is that added information the

**12:34** · difference between that original idle pose and the new pose that we made so we need to tell it hey i want you to look at this original pose and look at this new pose and this animation just needs to be the difference between those two and that is what these settings here are going to do for us okay so

**12:52** · let's select either one of our 90 degree animations and instead of no additive let's say we want to make a local space animation or additive asset okay and as a base pose this is probably going to be default to skeleton reference as a base pose we want to actually select our our pose that we were that we were animating against on top of so let's go change this to animation frame and go out and actually find that idle pose and i actually had already had it here selected so if you go down and select thor idle f

**13:25** · pose we're now saying that we want the local space difference in rotations and translations between frame zero of this animation okay now if you had if you were actually had a whole animation here you could pick the pick the exact frame you wanted a diff against but our animation is just one pose so that's all we got to do so now we

**13:50** · need to set that up for this other one so let's go over here and say local space select animation and i had sort of pre-done that already okay and then we need to put these now into a simple blend space uh you know similar to how we had our other look at blend okay so let's pull over our content browser here and right click on one of these and we will say create

**14:17** · uh oh actually i guess you can't create a um blue or a blend space right from that menu so instead let's right click here and go to animation and let's do a blend space 1d okay and it's going to ask us what skeleton do we want to create that on we got to go find our thor skeleton here we go thorough skeletal mesh and it's going to create a new blend space so let's call this thor nav

**14:46** · idol look at blend and then we'll make it underscore additive to mark it different than that previous one that we created okay and then we'll save that out we'll open this guy up and we want our ranges here to be

**15:04** · negative 90 and 90. so let's let's kind of do some cleanup here on this horizontal axis let's say that the name of it is look at angle and we want the minimum value to be negative 90 and our positive value to be 90 okay

**15:26** · and i believe that negative 90 is to the left so let's put that guy on the left and let's put our look at additive on the right and if we kind of scrub through it we can see what our look at is hopefully going to look at or look like at the end of the day here okay so that's it for the actual animation setup and now we're going to hop over to the animation graph

### 04\. Blueprint Setup

**15:53** · and actually implement these we have our blend space all set up ready to go and our assets are all marked as additive assets the last step here is to go over to our animation blueprint and actually set this up now we have a full body setup that we built from last time so we'll kind of review what was there and then we're going to pull that out and replace it with our new additive approach now here we are in our animation blueprint uh and i'm here in the top level of the animation graph

**16:20** · if your screen doesn't look like this when you open it up you're probably in some other part of the blueprint just navigate down here to the bottom left in the my blueprint section and click on the animation graph and it will bring you right to this top level of the animation graph and right here you can see we have our locomotion state machine that we've been working on this whole time so click and go into it and as a refresher let's take a look at our idle pose and what we currently have set up so in our idle state currently we have the setup from the last episode which is our full body idle look at blend here

**16:53** · being controlled by the look at angle and it has the full range of motion we're actually going to disconnect that by selecting or holding down alt and clicking this to disconnect it and we're just going to pull that down out of the way in case you want to hook it up again later now we're going to reuse this old idle forward animation that we had and we're going to apply our new additive asset

**17:14** · over top of it and just sort of layer it onto it there's actually a special blend node for that so if we pull off of this by clicking and dragging we can search for additive and you see here that there's a specific blend node called apply additive which is exactly what we want so this blend node is saying we want to apply an additive animation to this base pose

**17:36** · right which is exactly what we want to do we want to apply our additive look at blend space over top of our normal default animation idle pose so if we pull off of this additive section we can go hunting down our blend space by just searching add blend and it should pull up right there at the top and here's our added one space we made and just like our previous one we want to pipe look at angle by copy and pasting that into it

**18:04** · so now what this logic is saying is we want to play our nav idle f animation and at all times while this is playing we want to apply our additive look at blend space based on our current look at angle to that pose

**18:20** · all whenever we're in the idle state so let's compile stave this save this and sort a moment of truth let's check it out in the game and see if it works if we hit play when we rotate back and forth we should get the character looking at up to 90 degrees exactly like we expect right now just like our previous version to look at though when we stop we're not getting any kind of those look at because we didn't really like author look at yet for the stop animation but as i said this is one

**18:48** · of the uh benefits of doing an additive animation is we can actually apply this additive look at over our stop as well so if we go back to our animation blueprint down here we can actually copy this logic we go back into our idle state we can copy all of this apply additive information by just selecting it and hitting copy i'm just hitting ctrl c go into our stop state let's make some room here and disconnect this

**19:16** · and i'm going to paste it into here and let's plug this in just like our idle compile save now we should have the same exact behavior during our stop animation as well so if we start looking during our stop the character will look to the left similarly the character will start looking to the right okay so you can kind of see the power of additive animations if you have a bunch of uh in and out states between your

**19:44** · idols and whatnot where you want look at or some kind of aiming to be applied additives are sometimes the right approach now the downside of additive animations as we noted is that you know you don't really get as much control because you got to kind of like limit what bones and whatnot you use but they're a pretty powerful tool for getting a nice simple look at or aim scheme if you have vertical up and down over your stops starts and idle poses

### 05\. When To Use These Techniques

**20:15** · and that's it for this episode about look at animations using the additive approach now you might ask yourself when would i use this additive approach versus the full body approach from the last episode and there's not a clear-cut answer to that the the two techniques have their pros and cons and you sort of have to choose what's right for you the full body approach will generally give you more control because you're authoring every one of those assets you can use the full body the legs everything the hips you can adjust at all right the problem though is that it requires

**20:44** · more assets overall because as we noted if you want to extend those lookouts into your stop animations or the other things that sort of chain into your idle you need to build those look at assets for all those animations as well on the other hand the additive approach is a nice way to get that whole sequence done really fast

**21:03** · because you build one additive animation you kind of layer it over all your different states the problem is is that as we sort of noted in this episode it's a little bit more limited you want to keep that animation pretty conservative because you don't want to junk up the the the rest of the character or create foot sliding or that stuff so generally speaking i would use a full body approach when trying to create a higher fidelity product if i have the time if i

**21:27** · don't really have the time and i'm trying to rush through and just get the stuff in the game i'll use an additive approach because it's just faster and uses less assets any approach that generally uses just killing it with assets will look better in the end but is more time consuming that's really what it comes down to so as with many things in unreal and game development in general there's many ways you can do

### 06\. Bonus Challenge

**21:50** · things and there's not a clear-cut answer as to which one is right or wrong it's more about what's right or wrong for the thing that you're working on so hopefully in this episode i kind of showed you the power of additive animations if you wanted to experiment with additive animations more you could expand it out into your runs maybe you

**22:10** · could add a little additive look at or something on here runs that you could layer in there over your own loop or you could do the same thing for your idle animation by creating another like layered fidget additive on top of the already existing animation those are great ways to add a little simple life to thing and the cool thing is is you can layer them over any other animation as well so if you had a little look at animation you could layer that over any other animations you have in the future the only thing to watch out for the gotchas with additive animations are try

**22:38** · to keep them simple like wait like i said the more rotations on more bones you have in the body the more cascading added information you're getting over the rest of the character and especially if you start layering a bunch of additives onto the same asset you can run into a situation where you sort of lose your original pose or the original intent of the base underlying animation

**23:00** · so just be careful about layering up too many additives on top of poses that you really like and with that bit of advice i think i'm gonna sign off for today so happy animating until next time catch you later