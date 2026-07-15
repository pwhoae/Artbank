---
title: "🎮 Beginner's Course To Game Animation | 03 Animating An Idle Pose"
source: "https://www.youtube.com/watch?v=buBDtiqwx48&list=PLzn9qrbm2X8OuNjFPw2rIj8O1h1Kt8JX0&index=3"
author:
  - "[[Agora.Community]]"
published:
created: 2026-07-15
description: "在 YouTube 上盡情享受自己喜愛的影片和音樂、上傳原創內容，並與親朋好友和全世界觀眾分享你的影片。"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=buBDtiqwx48)

## Transcript

### 01\. Course Introduction

**0:00** · \[Music\] hello animators and welcome back to my game animation workshop today i'm going to take that idle animation that pose that i built in the previous episode and actually build up some animation on top of it by the end of this episode we should have a pretty nice breathe idle a sort of keep alive on our character in unreal now i'm not going to show you how to build the most polished or the most finished version of that briefly you could i'm going to focus on working fast

**0:30** · and using a layered approach to get kind of 80 90 of the way there and give us a nice breathing idle foundation to build on for the future now unlike the previous episodes this episode isn't going to focus so much on all the setup and tools and all that stuff it's going to be primarily a workflow tutorial in maya to just sort

**0:50** · of show you how i would approach this so that being said let's hop right into maya and get started for this animation i'm going to use a layered approach now if you've taken any kind of animation classes and whatnot you may have heard this term and you're probably used to working with a pose-to-pose approach where you pose out the character here and then there and then kind of build the interpolation between it but in animations like this

### 02\. Layering The Animation

**1:15** · looping idle where the character is just not really like changing dynamically from pose to pose i like to use a layered approach and a layered approach is sort of starting with the core movement at the center of the character and working outward from there naturally just kind of letting the body organically move based off of that core

**1:34** · movement we're also for this going to use a tool called layers in maya and if you've ever used photoshop layers it's kind of the same idea it allows you to build additive layers up on top of a sort of base pose or a base layer this is important because we want to keep that pose that we that we made in

**1:54** · the last episode kind of safe and untarnished because if we ever want to edit it let's say move the arm or put like a different weapon in the hand where we want to adjust that post lightly it's nice to have that protected on its own layer and all this other stuff kind of as separate modules built on top of it so that we don't have to reanimate that every time we want to change that underlying pose so

**2:16** · i'm going to walk you through all that here in this in this tutorial so let's get started alright so here we are in maya we have our idle animation open and the very first thing that we're going to do for this layered animation is actually add a new layer to our scene and like i said this kind of works like photoshop if you've ever used that uh to get your layer menu open

**2:40** · you want to make sure that you have selected up here your uh channels and down at the bottom this will automatically appear now be careful that you're not over here in your display layers which is just the visibility and sort of transparency options for the various things you actually want to make sure you're here in the animation tabs of the of the

**2:59** · layer menu okay and you'll notice that there's not actually anything in here at all right now so the very first thing we're going to do is add and generate a new layer by hitting this little layer plus sign here now that might take a moment depending on how beefy your machine is but you'll see here now that when we click that button it actually generated two layers and that's because our animation in this scene already invisibly exists on a base

**3:26** · animation layer it just doesn't really show it to you unless you're interacting with and adding further layers in this menu and how we can tell that is if we select any of these controls on our character where we have a keyframe here you'll see that it correctly recognizes that this

**3:43** · control exists on this layer and has animation associated with it okay so what we want to do is we want to add the controls that we're going to use for this breathe animation into our new layer but before we do that let's quick rename this layer i just did a double click into there just like renaming a file well actually i'm going to do it the easier way which is to right click and say uh rename layer where is it

**4:17** · well never mind i'm going to click into it and call this breathe okay name it something smart now we could add all we could just do a select all and add everything to that layer but the problem is that kind of starts to tank maya a little bit because it's making all these additional additive calculations so we really only want to add in the controls that we're actually going to use for our breathe

**4:39** · and if we think about that now my sort of goal for this animation is to hit something kind of like a classic fighting game so the characters are actually moving like quite a bit not necessarily realistically but it's like you know like a cliche comic book barbarian or something

**4:58** · um so that's going to be kind of the root the spine my arms my head i don't really need any of my legs those can probably just stay planted for now and we'll decide later whether we really want to add like finger animation into this or not so let's start just at the center and work our way out i'm just sort of shift selecting uh controls here um working my way up the spine uh we can drag select all the head let's

**5:24** · make sure we get the shoulders and all these arm joints as well now i'm not grabbing all the little helpers and whatnot in between because i don't expect to really use them at least not right now once we've got all the things selected that we want i'm gonna go here to the breathe layer right click and say add selected objects okay

**5:45** · now you'll immediately notice that that now got a green dot because everything we have selected is now on this breathe animation layer you'll also notice that there's no keys visible here and that's because we haven't actually set any keys on things that are on this layer if we

**6:01** · kind of hop back down and click on this breathe layer you'll actually see the keys there so i depending on your visibility settings here you can kind of show different different things but i like to have this i right-click here on the timeline you can go to display key ticks i like to have this set to selected so that it only shows me the keys that are on the layers i have selected all right so what i'm going to do now is actually set a key on all these bones

**6:30** · on this new layer so let's go ahead and do that i just hit s to set a key and then we're going to lock out this base layer so we don't actually accidentally mess it up in the future you do that by just clicking this little lock guy there and now we're all set up to go we have all the joints we want up here on our breathe layer and we sort of locked out our base pose now

**6:53** · the last little piece of shopkeeping that i want to do here just in case you have some different settings is to right click on this breathe and make sure that your layer mode is actually set to additive now additive means that it's going to additively stack up on what's below it if you were to have this override checked it means it's actually going to override and like nuke what's below it not necessarily destroy it but you're just not even going to see anything that's below it it's going to completely override anything that is below it in this stack visually unless you turn this

**7:25** · layer off okay so now that we've got all the joints where we want them i'm going to expand this timeline out a little bit to be to go from 0 to 60.

**7:37** · and stretch it out so we're seeing the entire distance of it so we're going from zero to sixty and i'm gonna right click here on this layer again and hit select objects uh and that's gonna select everything that's on the layer and i'm gonna move this keyframe back down to zero just so we're starting clean i'm also going to copy this frame over to my end by right clicking copy

**8:06** · and right clicking paste okay so we got our same pose beginning and end and then i'm going to set one more pose right here in the middle now how i'm going to approach this animation is by basically creating a high for my breathe sort of the most breathed in most up part of it and then a low for it and then we're going to use the graph editor to just offset

**8:32** · all of those curves to get a nice organic up and down so i'm going to work on just these two poses first just my high up full breath and my low down like full exhale okay um so sorry i'm gonna select objects here again and set my keyframe on frame 30 and this is what i'm going to use for my high pose my full breathed in pose for now i'm just going to use the pose i have as the sort of lowest breathed out

**9:01** · point so let's start working from the center of this character outward uh let's set this into uh sorry my mode is uh off here

**9:16** · my tool settings just one moment i want to set this to be world translate not object there we go and back in business okay so i'm grabbing the root first and we're gonna sort of work our way out from there so i'm gonna raise this up a little bit i'm going to grab actually all these spine joints and just sort of world rotate them

**9:43** · up a tiny bit to expand out the chest maybe i'll take this bottom one and do it a little bit more than the other ones we're going to take these shoulders and i want them to kind of breathe up and back a little bit because the chest is going to expand out so your shoulders are going to go up and back some i might even

**10:05** · translate them just a little bit to get a little bit of a expanded feeling like that they're a little bit more uh fleshy and expanding uh i'm going to do the same thing here i'm going to actually move them a little bit outward just a tiny tiny bit you know because your body is actually fairly flexible uh and you can

**10:27** · scale and contract your body quite a bit if you take a big deep breath uh then i'm going to work my way up into the neck we'll bring this up a little bit bring the head up a little bit and let's kind of scrub and see the difference right now between our uh

**10:47** · high pose and our low pose okay so there's our low pose we'll sort of contrast that with our high post it's not hugely different and we don't really want it to be hugely different we want this to be yeah kind of subtle uh and we can amp it up later if we want the point here is to just get some starting motion to work with okay now the other thing i'm going to do is i'm actually going to bring the arms uh up a little bit but i actually want them to you know move

**11:16** · like it's hard to see on my camera here i want them to kind of like come straight up though so i'm going to actually bend you know i want the hand to kind of move straight up so i'm going to actually raise up my upper arm but then bend the elbow and hand to kind of compensate so they come kind of straight up and don't just go like outward as well uh when i'm animating

**11:37** · them and you'll kind of see what i mean when i animate this here i'm going to start at the top and rotate that back a little bit then grab the elbow bring it forward a little bit and take the hand and just world kind of rotate it back a little bit and now it just kind of it just kind of feels like he kind of uh flexes and then relaxes the arm a little bit as opposed to it just sort of wobbling out here with the animation um

**12:07** · and for this arm i'm going to do the same thing but i'm going to do a little bit less because i want this hammer thing this club he he has to actually have some weight to it and if it moves too much during the breath idle it's just going to make it feel a little bit lighter than i think i would want so uh i'm gonna just do a little bit of subtle

**12:28** · motion here to bring that up a little bit and actually barely move that and we can kind of contrast it now and see that we have an up and a down i think the last thing i'll do is just add a little bit tiny bit more vertical on the root and maybe a tiny bit a little bit of back to it as well and that is probably a good starting

**12:56** · point before we start breaking this apart and and and and layering out the different parts of the body all right now that we've got our maximum up our sort of full inhale and our exhale pose we want to start working on the timing and then the timing of the action a little bit and then also start pulling apart our

**13:19** · curves and what i mean by that is we're going to start at the at the at the root work our way outward from there and start offsetting each curve by a little bit the further it is away from the root so we get a sort of like natural organic feel to our breathe but first things first let's tweak the timing a little bit because as it stands right now we just have a keyframe on 0 30 and

**13:43** · 60. so our motion's just going to be very even it's going to be the exact same uh timing in as out okay so let's select all of our objects again here on this and let's think about this for a second you know we could kind of go two different directions here and you could have a more uh big inhale and a faster exhale or you could have a sort of fast inhale and a bigger exhale

**14:10** · and those kind of have two different feels the big will feel a little bit more relaxed whereas will feel a little bit more gaspy or maybe frantic i think that what i want here is the little bit more of a relaxed vibe so what i'm going to do is make my inhale a little bit longer with

**14:32** · us a little bit of a faster exhale and i'm going to do that as i select all my joints again i'm still on my breathe layer and i'm just going to drag this key towards uh my exhale a little bit maybe we'll put it at 44. so basically we have this big

**14:51** · inhale and then the exhale is actually kind of quick it's like less than half the frames of the total inhale all right and i think that'll give us a good starting point to start offsetting these curves so you'll see that i actually brought my graph editor back over here because we're going to start working in this a little bit we'll just pull the character up here out of the way

**15:13** · and we're going to start offsetting these curves starting with the center and moving outward okay so the very first thing we're going to use is the spine i'm going to select all three spine joints we're going gonna leave our root exactly how it is that's gonna be the sort of core uh point where all this motion is gonna start from and quickly here i'm just

**15:33** · gonna use uh or expand this or change the view here a little bit just so we can kind of see all our curves here and oh i forgot one step we want to make all of this looping first uh you know normally if i was to move one of these curves uh over on my graph editor since it's not looping you're basically not going to get any animation where it begins and

**15:58** · ends it's just going to get cut off so what we want to do is we want to make all the curves that we just animated repeat forever okay and how we do that is we select all our objects again and here in the graph editor we drag select all our curves go to curves pre-infinity cycle

**16:16** · and post infinity cycle we can actually visualize this now if you click click these two little guys here uh see you can now see that these will loop forever into infinity and also uh you know back into pre-infinity so now we will grab our spines here

**16:40** · and we're going to start shifting these over and is there a science to this about how far we want to shift these to delay them behind the root not really i'm just sort of guessing and feeling it out and in each stage i'm going to kind of look at the results of it before moving on to the next section of the character okay so i'm going to just start with a guesstimation of kind of offsetting each of these by three or four frames that's just kind of an instinctual guess so we'll go one two three four over

**17:12** · we're gonna drop the one that's closest to the root so we're moving away from the root and then we're going to delay these even more let's say one two three four same thing again now we're moving even further away from the root so it's going to be delayed even more one two three

**17:30** · four now if we click here and scrub we can see that this motion now is a little bit more organic in the spine let me just play it it's not all happening at once it's actually offset with the root starting the action then the spine one spine two spine three and so on and so forth giving us some nice overlapping motion okay

**17:52** · uh and it's already looking fairly nice okay so let's move out a little bit from there let's grab we'll do the arms next so let's grab our shoulders uh and all of our arm joints

**18:09** · uh and we did uh three or four frame offsets for uh all the spline joints up to here so that's gonna be our starting point for the the shoulders is that combined offset which is about 12 frames so let's grab all of these curves and we'll start by moving this over by 12.

**18:31** · uh oops uh 1 2 3 4 5 6 7 8 9 10 11 12. and i have magnetism turned on up here that's how i'm kind of just letting it click over frames and since we want to go a little bit beyond that i'm going to drop another one two three onto all these let's

**18:56** · deselect the shoulders so we're moving outward down the arms now and these i'm not going to offset quite as much maybe we'll do like two frames one two select the next ones one two select the next ones one two okay and let's see what we've got

**19:21** · now i'm not quite super happy with this because the if you look at how things are offsetting the uh shoulders actually feel like they're delayed a little bit too long so i might have gone a little bit overboard in how much i delayed the spine because it's resulting in the shoulders feeling like they hang back and up for too long so

**19:45** · let's go back and we'll do a little bit of fix up here i'm going to select all these spines and we're going to take take these down a notch i think i'm actually going to maybe take like two offset frames out of each of these so i selected them all first

**20:03** · then we'll grab the next ones up take two out of that and this is just kind of uh you know like i said it's just all about kind of feeling it out feeling what seems natural and that means now we're gonna have to bring back our arms a few frames too

**20:24** · if we scrub and kind of see like what's the peak up there is kind of like 48 or so and you can see that our peak of our peak high of our shoulders is now way over here so it's way delayed now beyond where the peak up of the spine is so let's bring this back so it's just like a couple frames behind it somewhere like there and let's see what that plays like now

**20:56** · that's starting to look pretty good actually we can maybe even bring it back another frame and there we go if we look at it from kind of the side we're starting to get some nice natural offsets on everything starting to look pretty good actually okay so let's do the neck and head we're gonna do the same exact process uh i'm just gonna grab the neck and head you know what i'm gonna check the spine here let's see where this last spine sort of landed the high

**21:27** · ended up right here so let's bring our neck and head it's high over to that as a starting point and then give it a couple frames offset for the neck and i don't think i have the head selected so let's move that over and then give that a couple frames as well

**21:51** · select the neck and the head to compare oh and they're actually the same so let's move the head over a couple more frames just to get a little offset

**22:09** · and there we're starting to get a pretty natural feeling item okay now the next step that i'm going to do is actually to add a little bit of motion in the horizontal direction everything we've added so far is very straight up and down and we want to make sure that we're always kind of hitting all of the axes

**22:31** · of the character so that our character doesn't feel like they're just pinned in one direction so things are going to get a little bit confusing curves wise because we did all this offsetting and whatnot if we now try to add some horizontal motion on this same exact layer so how we're going to do this is we're actually going to create another layer on top of this to deal with our motion in this axis okay so

**22:58** · let's go ahead and do the same process we did before and just add another layer here and we'll call this let's call this something smart breathe left right and actually you know while we're at it just to uh for the sake of sanity in the future let's call this breathe up down

**23:19** · okay so we're gonna lock out our breathe up down layer because we don't want to mess with it right now same thing as that bottom layer and then we're going to just add a few joints to this left right layer unless we need them for later i i'm going to grab my root and my spines as a starting point and that may be enough for now so let's add these to this and now we have our breathe left right layer

**23:49** · let's set a keyframe on zero just as a starting point now let's think about this for a second because if we keep the same frame range we have and we start putting some back and forth motion into it right now our our uh animation that we have is all in this like up and down axis and it's one cycle so

**24:06** · if we wanted to have a back and forth motion to it it would be in the same repetitive uh up and down cycle and i don't think we're gonna be able to really get a great motion within the confines of one cycle so what i'm going to do is i'm going to expand our timeline out to include two breathe up and down cycles so we can get this sort of as we go up we go one direction and then up back the next direction so we'll basically have two breathe cycles to do the full back and forth cycle okay so

**24:35** · how we're going to do that is we're actually just going to go down here to the timeline and change this to 120 as opposed to 60 and then we're going to animate our cycle across this so let's put a keyframe at 120 and a keyframe at 60 and actually i

**24:54** · should do that for all the things on this layer just make sure we get everything selected and we'll grab the root first and bring this this direction just a little bit

**25:10** · and maybe give it a little bit of rotation in that direction too so that's going to be our far well our left his right our far left pose we're going to copy that over to the end there and then we're going to do the same thing in the opposite direction here so bring him a little bit this way maybe rotate him a little bit this way too okay i'm also going to add some spine motion in the same directions i'm

**25:35** · actually going to rotate him in this axis a little bit in that direction as well as this axis a little bit and then do the same thing for our far extreme in the other direction okay now once again this is going to look like it's happening kind of all at once which we will deal with through offsets but let's take a look at what we have so far we already have some nice

**26:03** · back and forth motion in there that layers nicely over our already existing breathe idle now the only thing that i don't love is that as he goes over towards this direction he starts to feel a little unbalanced like maybe he's out a little too far over this toe so i'm going to bring that

**26:21** · in a tiny bit before we move on so let's just bring that back a tiny bit and make sure that that other one matches okay so now i'm going to do the same exact thing that i did on the breathe portion to get the upper body to feel like it sways behind the core of the character a little bit

**26:40** · i'm going to select all these spine joints we're going to make these repeat forever just by clicking those buttons that's the easier way to do it and then we're going to offset these since this is a longer cycle i actually think we probably do want like four or five frames between each of these so i'm going to start with four let's go one two three four get rid of that bottom one so we're working our way outward just like in the breathe one two three four

**27:09** · outward again grab these one two three four okay so now we're going to get is the chest of the character's cycle offset from the root of the character by a little bit

**27:30** · and that looks pretty natural i mean we could probably brush it up a bit but it doesn't look too bad let's kind of take a look from behind see if we have any uh feelings about it now listen there's a lot more i could do to this character uh and maybe i will in the sort of time

**27:49** · between this and moving on to the next thing if i was to stop here though i'd have something pretty good i think the steps that i might take behind the scenes are to actually propagate this motion all the way down even into the hands to try to make this weight feel a little bit better uh for this you know this this this weapon here kind of feels a little bit stiff it doesn't really have like much motion to it even though it's like moving through space quite a bit so i think i might work on those things a little bit before moving on to the next step but i'll be using the same

**28:20** · exact techniques that i just showed for doing all this which is adding those things in on layers and just using my curves to offset them a little bit all right so with just a few more minutes of work i added in a few extra

**28:36** · nice polishy points to this uh as i noted i added a little bit more of a up and down to this uh mace here to make the make it feel like it's pushing a little bit more weight onto this wrist i added some finger motion here this finger motion might be a little bit more gooey than i would like i might go back and tense it up at some point but at least it's nice organic motion that flows well with the rest of the character and feels

**29:04** · organic and pretty natural you can always go back in and add some like a little bit of like tension to it maybe a little like shake or something here and there uh but as a starting point this is pretty nice and mostly illustrates the sort of layered approach that i wanted to in this episode uh the last thing i wanted to show was to kind of circle back to the uh

**29:28** · quote-unquote non-destructive approach that we used here and talk about well not just talk about but show how powerful it can actually be so we smartly built uh all this breathe animation on these layers above our base

**29:44** · pose and what that allows us to do is we can go back now we can actually edit the bass pose without destroying any of the animation that we created this far so let's lock out our to breathe layers because we don't really want to mess with them anymore and go back down here and unlock our base layer now we can do cool things with this uh like actually change the position that

**30:08** · this character is holding their weapon so let's say you know we decided down the road that we actually want this character to hold the uh hold the mace actually up in the air we can go back to this pose that we made and let's build that okay i just grabbed these joints here and kind of bring this elbow up this hand up into a pose

**30:34** · that uh you know still feels pretty natural and kind of gets the idea we're aiming for maybe even we take the whole spine and bend it this way a little bit to compensate for that and uh let's see we'll bring this arm i'm just trying to create a sort of natural pose here um something like that okay so let's say we decided we wanted to change our idle pose to something like that

**31:06** · because we built all of these as additive layers on top of these when we play all that animation will still propagate exactly the same onto our new pose that we generated so this allows you a lot of power down the road

**31:21** · to reuse or uh these brie ladles that we made on top of lots of other poses potentially in the future and that's where we're going to stop with the maya portion of this tutorial now this kind of layered approach is a good approach for any kind of looping animation and you'll run into lots of those in games you know imagine your character does a spell cast and has a sort of looping portion to it um or you know

**31:49** · let's say like a falling animation where your character's falling through the air those are great animations to approach with a more layered mindset as opposed to a pose to pose which is a little bit better for you know things like attacks or runs or whatnot and layers themselves the actual tool the layers in maya are great for adding any kind of breathing or just sort of

**32:12** · noise or life over literally any other animation a lot of times i'll add a little bit of a noise layer or a little bit of back and forth or rock to things like runs or literally any animation you could add a little bit by putting that on a layer so the last thing we're going to do in this episode is propagate this over into unreal and we're actually going to overwrite our old uh our old idle pose

**32:37** · with this new oil animation and take a look at it in game all right so just like the previous times we exported animations we're going to select our export group here in the outliner and we're going to go to file export selection make sure you have fbx

### 03\. Replacing The Idle Pose In Unreal

**32:55** · selected and we'll hit export selection and in this menu as always make sure you have animation bake animation selected and that your frame range is actually correct now unlike the previous times we exported where we were creating a new file in this instance we're going to actually overwrite the old file so let

**33:13** · me select this and get this going so we're just going to hit export selection say yes replace it now the reason we're overwriting the old file is that unreal actually understands and remembers which file we use to import the previous animation so if we overwrite the old file and then do a re-import in unreal

**33:33** · it's going to look at that same file and just grab the new version of it essentially unreal is really good at remembering and maintaining those connections and these exports they sometimes take a little bit of time so it's a good time to step away and grab a coffee or whatever between uh sessions so

**33:53** · we'll just close out of that tells me there's some errors but it always tells me their errors and then we're gonna hop over to unreal all right so here is our friendly thor in unreal in his static pose and i already have open here the idle animation file let's open this baby up

**34:13** · and here is the static version of this now we can very easily now just go right up here to re-import animation it's going to go out and grab the new version of that file and what we should see here is our now fully animated idle

**34:29** · in place so check it out and it looks pretty darn diggity good if i do say so myself all right so let's check it out in game just to make sure that everything's working and there we are there is our idle animation that we just made playing on our character in-game now the last thing i'm going to cover in this episode is very quickly i had mentioned in the previous episode

**34:57** · that the camera felt a little bit close to me i felt a little bit claustrophobic behind the character so i'm going to show you quick how to fix that before we work our way out of unreal here so let's hit escape to hop out of this and we're going to go find our character's pawn by selecting this guy you'll notice here in the uh world outliner actually selected this and we can go right here and directly edit this right through this menu we don't even need to go search for it we can just hit edit third person character

**35:31** · and what we're looking for if we go over here to the viewport we can see that this camera is kind of floating behind the character but if we look in the components here the camera itself is actually a child of this camera boom so there's this kind of like invisible connecting boom that is attaching the camera to the character and if you look over here in the details you'll see that there is actually a target arm length that's going to be the distance that that camera is this camera

**35:59** · boom is from the character so we can increase that kind of do our desired distance uh to get the look we want um i'm just gonna sort of guesstimate based off of how close it was that if we go to 450 that might look pretty good and you can see that the camera oop hop back on that boom arm okay so let's downsize this play and you can see now let's maximize this that we're in a little bit more of a comfortable position now you know you could try to

**36:28** · get a much more zoomed out camera if you wanted to go to like 600 or something or if you do want that little bit of more intimate close-up camera maybe somewhere around 400 or so might be what you want but this to me feels pretty comfortable this feels kind of like a standard uh rpg action rpg kind of camera and not

**36:47** · too close to my character but i'm also close enough that i can see all the animations and whatnot in all their beauty now as always i want to finish up the episode by taking a little bit of a critical eye on our own animation and giving ourselves kind of a self-critique in-game to see if there's things that we could add or improve before we move on to the next thing so

### 04\. Evaluating The Animation In Unreal

**37:10** · i'm going to open up the character in unreal with our new idol on it we'll do a little look around and see if there's any notes that we can make for ourselves about how we can improve this animation in the future all right so i'm not going to look at this animation actually in game because it was difficult for me to actually aim with my cursor and point things out so i'm just playing the animation here in the uh animation viewport in unreal so let's make this embiggened a little bit and talk about some of the

**37:39** · points that i think we could improve on this now the first thing that stands out to me is one that i sort of noted before and it's that the hand kind of feels a little bit gooey i don't like how it is doing this that feels like something almost like a magicky person would do um as opposed to thor i imagine would be

**37:57** · more like tense and you'd get this sort of tight flexing or maybe even like come into a little bit of a fist or something a little bit one of the thing that kind of stood out to me was that i have some clipping here in the shoulder just the fact that i didn't put much rotation on that arm um

**38:15** · as the body sort of rotates back and forth you can see in the chest here that there's a little back and forth motion in the chest and i didn't really reflect that in the arm so what you get is some pinching there that just feels a little bit unnatural because this arm is just sort of uh you know stiffly keeping its position in world space as opposed to rotating with the character uh i get that same sort of feeling on this arm too a little bit where it's just in world space locked a little bit and doesn't feel like it rotates back and

**38:46** · forth so much with the character the last thing that sort of stood out to me was that i didn't really put much uh work into the motion of the head uh you know i did do this back and forth motion in the body to kind of make sure that i had movement in all my axes but i didn't really propagate that into the head so the head feels just kind of locked into position and it might be nice to get a

**39:10** · little bit of like a tilt to it as it goes back and forth you know we as humans do keep our heads pretty stable but there would be some subtle motion there that might help as far as things that we could add to this uh i think that what i'm really just missing is some sort of randomness

**39:29** · to the to the head and upper body that makes the character feel a little bit more alive so if i was to add anything to this animation i think i would probably create a new layer in maya and do a little bit of blinking and a little bit of looking around you know just this kind of keep alive stuff where you know the characters looking around doing a little bit of blinking uh maybe rotates the body a little bit as they do it and shifts the weight so i probably just do a layer of sort of

**39:59** · random look around and weight shifting to take this breathe idle from just a looping animation to something that feels a little bit more natural and alive and i think that if i hit those notes i'd actually have a pretty great animation here to then be the core for my character that we can build everything else around

### 05\. Your Assignment

**40:24** · and with that critique that pretty much wraps up this episode on layered breathe animation now this would be a great time for you to take that animation that you just created and do some of the steps that i just talked about you know add in another layer to try to add some fidgety weight shifting some look arounds and whatnot into your animation it'll really take it from just feeling like a

**40:50** · quickly made loop into something that feels alive and like a real character there's a lot of personality in those little things and as always if you do do that if you do build your own animation if you have some ideas that you want to show to somebody else make sure that you get some feedback not just from yourself but from other people as well i know that in these episodes i'm always giving myself my self critique but if i had the opportunity i would be reaching out to other people to make sure that i'm getting feedback from them at this stage as well these idle animations are just so core to the character and just the at

**41:21** · a glance personality that you're gonna see because the the animation's gonna come back to them over and over and over again so it's always great to have another set of eyes on them so with all that said happy animating and catch you next time