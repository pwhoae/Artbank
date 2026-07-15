---
title: "🎮 Beginner's Course To Game Animation | 05 Creating Stop Transitions"
source: "https://www.youtube.com/watch?v=-hR8jIPMS_Q&list=PLzn9qrbm2X8OuNjFPw2rIj8O1h1Kt8JX0&index=5"
author:
  - "[[Agora.Community]]"
published: 2022-02-25
created: 2026-07-15
description: "Now that we have our run and idle animations working, Skylar Surra (Principal Animator at Riot Games), will teach you how to add a stopping animation into the mix.Skylar will show you his process of"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=-hR8jIPMS_Q)

Now that we have our run and idle animations working, Skylar Surra (Principal Animator at Riot Games), will teach you how to add a stopping animation into the mix.  
  
Skylar will show you his process of creating a stop animation, how to blend the three animations together and how to properly implement it in Unreal Engine.  
  
If you want to get up to speed with Skylar, check out our playlist and follow along with the first three episodes -  
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
02:53 02. Setting Up The Scene  
14:29 03. Blocking The Animation  
29:04 04. Polishing The Animation  
32:00 05. Exporting The FBX  
35:32 06. In-Game Implementation  
51:30 07. In-Game Review  
56:02 08. Bonus Challenge  
57:13 09. Happy Animating!  
  
#gameanimation #unrealengine #animation #agorastudio #agoracommunity #cgi #vfx #animator

## Transcript

### 01\. Course Introduction

**0:00** · \[Music\] hello animators and welcome back to my game animation Workshop in the last episode we built a run animation and at the end of it we had our character running and idling we had sort of set up two states so that when you're moving you play that run animation we made and when you stop you play that idle animation but you probably notice that

**0:22** · when you start moving and when you stop they kind of just happen instantly and the the engine just sort of figures out that blend a little bit for us it's not super pretty so what we're going to focus on in this episode is Transitional animations these animations are pretty

**0:37** · much exactly what they sound like they're a handcrafted animation that deals with the transition between two states the transitional animation that I'm going to focus on today is a stop animation so that moment where you're running and you let up on the key and your character stops instead of going directly into idle we're going to have it trigger a special animation that we make to seamlessly segue between those two states now transitional animations are a tool you can use all over your character they're one of the easiest ways to sort of increase the animation Fidelity of

**1:09** · any game you know games like Assassin's Creed or Ori in the blind Forest that have this sort of beautiful flowing movement one of the ways they achieve that is by creating hundreds or maybe even thousands of transition animations between every one of those little States between moving and stopping when your character pivots and goes back and forth they have a special animation for that when they jump in the air and do an attack from the air versus an attack on the ground or Landing after jumping

**1:35** · depending on whether you're idling or moving and you kind of see that this spider webs out and you could build thousands and thousands and thousands of transitional animations now that sounds really scary and some companies and some games do do that and let's be fair their games look better and more high quality for it but there's also a lot of games at the other end that you know kind of pick and choose their battles and that's where I like to be and where I like to think about is where can we create transitional animations that create the highest value for us do a kind of audit

**2:03** · of our animation and say hey where are the areas that look bad because we don't have a transition and try to focus there first and only really focus on those really specific cases if there's something you see a lot and you feel like is going to affect the players's perceived uh uh quality of the game at

**2:22** · the end of the day so in this episode we're going to focus a little bit more on the engine side than the animation side this time I am going to show you kind of how I set up the animation and a little bit of the authoring and exporting because it's a little bit different for this specific animation but primarily we're going to focus on building that transitional State and kind of getting it all to blend seamlessly when we trigger it in our animation graph so let's hop into Maya first we're going to set up our animation scene and then we'll move on to Unreal after that and hopefully by the end of this our run and idle will

### 02\. Setting Up The Scene

**2:54** · look a little bit smoother when we transition between them for the setup for this scene we want to basically recreate this scenario that's going to happen in unreal in Maya so we want to start with our run pose and then at the end of our scene as sort of our starting setup have a full loop of our idle animation to sort of simulate going from that run animation into that idle animation and we're just going to leave some space between it in our scene to kind of do our transitional animation so

**3:23** · I've opened up the idle animation here and the very first thing we're going to do is bake this down we build this all in a very sort of complicated way using layers and whatnot and we just want to blow all that away and and save out a version of this that's that's a baked version that we can use just as as a

**3:39** · simplified version of it in this transitional animation so I've opened up this idle scene and you can see here that we have all these breathing layers that we created in the previous episode I'm going to start by unlocking all of these and then I'm going to use shift hold down shift to select them all and then right click and we're going to merge all these layers what that's going to do is you'll see here in a moment it's going to start ticking across the timeline and it's going to take all the keys on all those layers and sort of merge them down into a single layer with

**4:10** · keys across the whole thing and we're not too worried at this point about that being uneditable because we're not editing the idle animation in this scenario we're just kind of using it as a reference uh in our current scene so you can see there that uh it seems like let's select all our joints just to make sure uh it's seems like it baked it all down let's see if we turn off all these layers and just make sure it does look like everything is now

**4:40** · down here onto this okay so let's now uh Delete out these layers from the scene and we should just have everything we kind of pull up our graphit to just make sure we have curves and stuff that we expect here let me hit G again oh Where's My Graph editor oh here

**5:01** · it is it's hidden off my screen invisible down here in the No Man's Land There we go uh so if we select everything you can see that there's stuff across all these curves and it seems pretty much like we'd expect now I want to get rid of these extra bits that kind of extended over the end so I'm just going to right here in my graph editor clean this all up just so we have a nice clean Baked scene to work with and I'm selecting the curves that went over the ends of this uh and just just

**5:29** · hitting delete to delete them out now this should leave us with uh a sort of baked out version of this scene and by baked I mean it just has keys all the way across it and just to be sure that it is truly baked and we don't mess anything up I'm going to shift select this entire timeline and do one more uh stop Gap here I'm going to go to edit keys and click bake simulation and what

**5:53** · that's going to do is it's just going to go and literally key everything I have selected on every single uh frame in this uh animation okay uh and so now our graph editor should uh look uh

**6:09** · oh like it's got keys across everything I noticed that there was some that just had a key here and a key there it's baked everything on every frame which is exactly what we want for now okay so we're going to close out of the graph edit and then what I'm going to do next is extend this timeline out to like 200 just to give us a little bit of space I'm going to grab all of these and pull them down to this end and this is going to kind of be our idle end okay uh and

**6:37** · what we're going to do then is grab a run pose to slot in at this other end and that'll leave us a nice little space here to work in for our transitional animation okay so I'm going to save this scene out as let's call this uh nav and we will call this stop transition okay we'll save that out and now we're going to go to our run animation let's go to open scene and find our uh final run

**7:12** · here can say don't save so we're going to do now is we're going to grab a pose that's sort of one of the more neutral poses in the run and we're just going to we're not actually going to use that Poe specifically because we don't actually know when you're going to stop exactly what Poe you're going to come from in the Run animation that's one of the tricky things about stops so what we're going to use this run post for is to mostly get kind of the gesture of the body uh

**7:39** · into that stop scene so that we just have a sort of reference point of the of the overall body shape and pose that we're going to come from and transition into our idle one so here's our run animation I'm going to do the same thing we're going to have to uh bake all these down so that I can copy a clean post from this we'll just merge the layers

**8:01** · and you want to make sure that if you're merging these layers and baking these all out that you don't accidentally save over your your original scene and sort of destroy that whole scene by baking it all down okay so just be very careful when you're doing this kind of baking stuff that you don't end up kind of destroying that based scene that you created okay so we merged all that I'm going to turn off all these layers here now that no longer have anything on them and I'm GNA kind of just pick I don't know like one of the passing poses um

**8:32** · since they're a little bit more neutral so maybe like this pose here at 11 uh and like I said it doesn't super matter what pose you grab from here because you really could transition from any pose in this animation into your stop so I selected everything I hit my select all and I set a key frame here just to make sure that everything was keyed and then I'm going to shift and copy this okay

**9:00** · oh I should shift and then right clicked and hit copy to copy that whole pose while I have everything selected okay now I'm going to go back to my stop transition scene we don't want to save this okay because that will destroy all the hard work we did in that original scene uh and then we're going to paste this pose right into uh our new scene as

**9:26** · soon as it opens okay we're going to select all again and you can just use the uh select all from the Picker like I noted in the last time I have a hotkey for it but you can use these selection uh groups up here to select all the body and whatnot if you don't have a hotkey for that I'm going to set a key here at zero and then I'm going to right click and hit paste to paste in that pose that we grabbed and you can see there that

**9:54** · now we have a run pose and then we have a whole looping animation and there's some wonkiness in between that we got to figure out it's probably here in the graph editor yeah it's just about how our our curves are set up here so let's select all these and turn on uh uh the

**10:12** · auto tangent here to just try to get something that makes a little bit more sense and you can see what we have here now is essentially a slow motion version of what we see in game right now uh which is that it just sort of interps between those two poses right and we we are going to go ahead and create a very simple animation to make that a little bit more believable so I'm going to stop with the setup there and then give you a couple tips on how to make this animation feel pretty good and actually

**10:43** · I led that's not where the setup is going to end because I thought of one way that we could actually make this scene a little bit more usable and that's by actually adding a whole Loop of the run in at the beginning as well and actually putting that translation in our scene to sort of replicate the character moving through space and coming to a stop pretty much exactly like it is in the game now I wouldn't necessarily advise to do this this much

**11:05** · set up every time but if this is your first time doing this uh kind of Animation this will just be really helpful in you sort of transferring that momentum uh into your transitional animation so I opened back up my run animation I baked it all out again uh and just so I didn't have to do this again in the future you'll notice I saved this out as a new scene called Run f baked uh and I'm going to do is I'm just going to grab the entire animation and copy it this time we'll go back to

**11:34** · our scene here um our transition animation uh I'll actually save that now that it is its own new baked version of it that we can reuse over and over later on soon as the scenes opens up we'll paste this whole sequence in there at the beginning and then actually add in

**11:53** · our uh our movement on our on our route to sort of replicate exactly what's going to happen in the game game okay so how I'm going to doal with this is I'm actually going to go into the negative frames here let's go to -20 um and I'm going to uh select all

**12:09** · again go here to -20 and set a key frame on everything and then paste in all of those frames okay let's delete out that last little guy there that we had and I'm going to shift this frame wise by middle click dragging all of those over to start at frame zero okay so we now have a whole Loop of our run and let's grab this uh and we want so I looked in

**12:36** · the game I was I went and I looked in the game to see does the character have any kind of drift when they stop and right now it's set up so that when the character stops they come to a complete stop pretty much instantly the moment you let your hand off so uh that's how we're going to make this look in this setup as well um we're going to set a key frame on the route here at zero I'm going to delete out the rest of these and then back here since it's easiest to do this um on a second 1 second Loop

**13:07** · we'll go back to 30 uh -30 here and set another frame you'll see why I'm doing this in a moment so that then we can open up our graph editor here look at the translate Z curve and now we have an exactly 1 second interval here to work

**13:24** · with to get the forward motion build in and instead of actually going driving this forward pushing this up so that our character is moving forward in space I'm going to do the exact opposite and think of it like oh the character's kind of like starting back a little ways and kind of coming up to origin so we'll select this very first key here and make this value 600 because if I recall I believe our character moves at exactly

**13:53** · 600 cm/ second and we'll make that a linear curve okay so that the character comes linearly in at 600 cm/ second and then suddenly stops just like it will in our game so let's downsize this and see what this looks like you can see the character runs in and then they're going to stop on a dime and we're going to have to figure out what the animation actually looks like there okay uh I'm going to crop this timeline as my final thing here to 8 just so we get that uh

**14:27** · just that Loop of the Run and then this will be the space that we're going to work within for our new animation all right so let's get going on this animation uh I was looking at my idle pose and just thinking about the body mechanics of this the character kind of has this left foot at the back

### 03\. Blocking The Animation

**14:47** · and so if I think about in my head how I as a character would stop kind of like which foot would be hitting the ground first uh you know I believe that the character would sort of come down with with that right foot First Step past with the left foot and then sort of adjust that uh you know that backmost

**15:05** · foot back into the final position so that's going to be kind of what I aim for so I'm going to start in this this animation more so than the previous ones I'm going to do a little bit more of a traditional pose to pose approach I'm not going to actually animate it in Step mode though I really like just working in spline so I sort of have this built in uh uh sort of Polish a little bit

**15:26** · already like I'm thinking about the Polish even as animating it because I'm seeing all the frames okay so the very first thing I'm going to do is actually grab a pose that's kind of somewhere I'm just going to use the the frames I have you're going of scrub through and grab something that's kind of favoring my idle pose a little bit somewhere here around 60 and set a key frame and drag this back and this is going to be kind of my first uh pose that I'm going to work with uh I'm going to grab the two

**15:55** · feet here though and what I'm going to do or I'm going to at least grab this uh back foot cuz that's the one I said that we want to contact first right and I'm going to copy its exact position from the idle pose and I did that by clicking here and then middle Mouse dragging over to here that that copies the the pose that I drag from to the new location and then when I get there set it as a key frame you can see now that that position is exact in space there

**16:22** · now I think that what I actually want though is for this to initially land kind of out here kind of sweep out in front to catch uh catch him and then step back once that forward foot uh uh lands behind so I'm going to kind of zero out this heel here and I want to actually have this foot on this pose still kind of sweeping through from the Run Okay uh something like

**16:56** · that and you can kind of see I'm imagining that this will kind of be the first pose when you stop and then we will lift up this foot afterwards and bring it back into that plant position okay so what we need now I'm I'm just focusing on the feet kind of as a starting point and I'll go back and do a little bit of a pass on the body but this foot is planted here now and we want to keep it planted until this other foot also comes in and lands in its new

**17:28** · position as as well okay so here it comes through it's going to sweep through land in its position and I guess I want to um copy the heel onto this foot too so it doesn't get all wonky sweep through and then we're going to pick up this foot and bring it back to its final location so I'm just I'm not worried about timing at all right now I'm just thinking about the literal motion of the the feet here okay so then

**17:57** · the character is going to kind of pick this foot fo up and start bringing it back into its final location like this here we go and I'm just going to copy another one of these over here I'm just middle Mouse dragging it and then setting a key and if I just sort of play this I know the timing is going to be a little bit wonky but physically it's kind of what I'm imagining already right uh it's

**18:24** · that this foot gets planted the other foot swings through lands and then the character steps back into the final position now let's start posing out the rest of the body uh when the character initially comes in because they were you know Sweeping in through this I'm going to ignore my friend requests there uh the character is coming in pretty hot and when they land I think I actually want to have him kind of you know lean leaning back like he suddenly comes in

**18:55** · and kind of leans back to catch himself to Skid out uh into this final pose okay so kind of come in leaning back and you can see here now that you know the momentum is going to carry him forward a little bit and then probably he's going to kind of overshoot this as he steps back and that

**19:18** · kind of makes sense with the weight that's happening right he's bringing himself forward over this foot that he just planted here as he picks up this other foot and brings it back okay and I'm going to copy this pose again because he's not going to take his body all the way back and like he's

**19:38** · going to plant this foot first and then the body is going to follow behind it a little bit okay so what I want is a frame here where he's starting to head back in this direction over this planted foot but hasn't quite reached there yet can of see that so the foot leads the action and then once it's planted then the body catches up and I might even push that a little bit further where this is still forward even a little bit

**20:03** · more okay now I can see already that this pose I made here this leaning back it's probably not going to work it doesn't transition well between these two poses um so I think I might change my mind here and actually uh kind of keep him lean forward in this initial uh pose

**20:26** · here to try to blend from that run a little bit more and then only have him sort of come up uh as he gets more forward

**20:43** · okay now I'm going to take all these frames I selected everything and I'm going to bring it back up here because one of the things that's going to happen in the game is that this transition is going to be pretty much instantaneous okay and I know it's going to look a little bit wonky in Maya but I want to uh Focus on kind of keeping the momentum carried through and so I am going to think about the timing of these frames a little bit now and we can see that it's way too slow this character is moving at like break neet speed and then they suddenly stop and this Forward Motion Peters out really really uh quickly so

**21:16** · uh I'm going to have move these over to try to capture some of that speed a little bit by condensing these way down to something that's more reasonable okay now once the character sort of catches their momentum forward you know we can cushion out really slowly back uh you know back into

**21:39** · the idol but we want to make sure that when the character stops that the forward motion here on this route kind of roughly matches uh you know how fast the character was moving and I might even have to push this forward a little bit

**21:56** · more and maybe you know I'm kind of thinking that based off how fast the character is going maybe we need to even overshoot with this other foot because as far as I've had to push this character for this foot doesn't seem like it's out far enough in front of the character so let's try uh adding like pushing this out in front a little bit more we'll copy it over so that its plant position is actually out in front a little bit more and then after we'll have a final little tiny foot adjustment

**22:29** · where this foot also slides back right here at the end something like that and we can maybe even uh lift this up a tiny bit in a in between frame here okay and I think that that is kind of roughed out what we want let's kind of play it and

**22:57** · see okay it's starting to feel like something now I'm going to try to uh now also use some up and down on the body here to cushion out uh you know like when you stop as a person you kind of come down you you you you come down lower to the ground and then stand up into your stop Poe so I want to capture that a little bit um and as the character is coming forward and planting themselves on this foot that they're actually coming down

**23:33** · into a sort of lower pose and then only at the end are they kind of coming back up into that final uh idle pose I'm going to not have all this idle play so that we can kind of see this at a little bit more of a rapid speed here when we're playing it okay now the other thing um you know

**23:59** · as far as just a starting blockout this is already starting to feel reasonably well um so the last thing I'm going to focus on here uh is just kind of getting the uh arm to also uh kind of follow

**24:14** · through in this action um they're going to kind of drag behind a little bit and I'm just going to work on them all at once here and then swing through into a more forward position I'm

**24:30** · just going to delete this key frame in here and let these kind of do what they will between um and then we'll just allow them to kind of drift back into their final position and I'll work on making the like actual overlap and stuff feel all good at the end but as a starting point uh something like that might be pretty good and I might use I'm going to use this little tween Machine Tool here um to uh try to get

**24:58** · something that's a little bit uh oops uh uh oh no shouldn't have used that I I do have it and I it seems like my login expired so I guess I won't use that tool for the moment being uh I wanted to grab

**25:16** · the sort of fist position uh from the previous frame but for now I'll just do what I was doing before here uh so let's bring this kind of back and I'll just select all the hand here and copy it manually from this previous pose and we'll keep it in the fist until it sort of swings forward and then we'll have the fingers come out um sort of in this

**25:40** · section okay and you can kind of extrapolate how using some of the techniques we used in the other animations I'll eventually take that motion that's all sort of happening on that arm all once and sort of feather it out so that it's you know swinging the the upper arm first then the elbow and then the wrist out after okay um so I'm going to do the same thing with this other arm uh and this is kind of

**26:06** · interesting cuz in like a lot of other animations we've done so far we've tried to like isolate this weighted um weapon quite a bit but because this is really heavy in this animation I think it's going to swing through maybe even more than the uh than the other arm is going to because of the weight of it so I'm going to start with it being kind of back like this and then have it um really swing up and then swing back and

**26:36** · unlike that other arm well I guess we'll have it you know not get back to its final position till way over here and then when I'm kind of polishing this I might actually even have it kind of overshoot past because it's so heavy um we can kind of block that out even now here if I add another frame over there I can have it actually come um

**26:59** · back past and kind of feather out into its final position something like that okay and the last thing I'm going to focus on is kind of blocking out the spine on these key poses that we have okay so I'm going to have the character come in just sort of as they are uh and let me think about what the motion's going to be I think they'll actually kind of Lean Forward more a little

**27:34** · bit and not stand up quite so straight until the very end here I'm not quite sure that's what I want let me play it and

**27:53** · see that doesn't look too bad um and then once I kind of get the rest of the motion in and let's just work on the head a tiny bit um I'm just kind of trying to get the feel for things here this will kind of like come forward as the character I'm thinking about it being kind of like a little bit behind the body so as as the body is coming forward the head drags a little bit and then overshoots down just a little bit uh to just kind of make it feel a little loose and more natural uh

**28:23** · and similarly it's going to kind of drag and take a little bit of time time to come up here at the end

**28:40** · okay okay now this isn't perfect by any means but it is kind of the blockout that I would start with and now I'm going to go off screen and just do a little bit of like polish on this using some of the same techniques we did in the previous episodes to get the overlap and everything feeling really good and I'll kind of loop back around and show you the final version and talk about how I blend it into our idle uh animation

### 04\. Polishing The Animation

**29:06** · here at the end and then we'll export it and get into the game so I spent about 20 minutes uh polishing up this animation just to kind of get in a good enough place to get it in game and I used mostly the techniques that we used in the idle and the Run kind of taking those those poses that I had blocked out and just using offsets to kind of offset

**29:29** · starting at the top of each chain you know like the top of the arm then the elbow then the wrist and I worked out starting at the center core of the body kind of went up the spine then out the arms in the same way that I did in all those previous animations now a couple things noting that I changed you know after thinking about it a little bit more uh to just kind of add a little bit of extra uh uh interest and asymmetry to

**29:52** · the animation is you notice that I uh torqued the uh the SP spine around this way added a little bit of twist to it as the stop happens um I felt like the original poses I had in there kind of were only happening in one axes and so adding that little twist in there helped not only make it feel a little bit more asymmetrical but uh helped sell the

**30:14** · weight of the the weapon a little bit too and the character kind of twists around uh uh with the weight of the weapon as it comes forward so that was one area that I think I kind of improved from the blockout the other is um I took a little

**30:31** · bit of time on these steps themselves to have these initial foot plants land at a little bit of a closer in location to you know if you're running straight ahead and you stop suddenly you don't put your feet out wide you actually put your feet kind of in a line in front of you you go and then you would step outward into your Final locations right because you're trying to stop your momentum forward you're not cared about stabilization in this direction you're cared about stabilization in that forward Direction so I pulled those feet uh kind of inward on that initial plant

**31:04** · and then only when the character steps back into the fontal position do the legs kind of um push out and you can kind of see that if I scrub through here so on those initial plants they're kind of closer in towards the center and then as they step the uh back into the final positions the character steps out okay

**31:20** · um so almost all of this was just achieved through uh offsetting from my poses uh with just a little little bit of additional noodling here and there I did add a little bit of animation on the hand so that the fingers opened up at a uh more interesting place um and I did a little bit of Straight Ahead animation on this arm to get it to kind of feel like how I wanted it um but really uh

**31:46** · you know if you have a pretty solid idea of what you're working for you can kind of feel out a lot of the bi mechanics starting at the feet and moving your way up through the body um so that is kind of it and next we're going to talk about how to get this to blend seamlessly into

### 05\. Exporting The FBX

**32:05** · our idle animation all right we've got our animation all finished up we build a nice cross fade it all Blends at least in Maya perfectly smoothly so the last step is to prepare this scene and Export it into an fbx that we can put into the game okay now we want to make sure we clip this in the right spot so I'm going to just run you through this process even though we've done exporting quite a bit before just to make sure that we get it exactly right so that we have the right asset clipped to the right place

**32:33** · perfectly for implementing it into the game so we're ready to put this asset in the game the last thing we want to do is just make sure that our timeline and everything is cropped to just the animation bit that we want for our transition in game we basically want to uh kind of crop out our run animation portion and make sure that we don't have any lingering frames at the end so when we set this up in unreal it all Blends

**32:58** · seamlessly okay so we're going to focus down here on the timeline um and we want to make sure that we are starting exactly on the first frame of our stop animation which in my case is frame one so let's clip this timeline here all to

**33:19** · frame one as our starting point make sure that that is indeed not like the first not one of the frames from your run but the first frame from your stop animation first frame from man what an alliteration there first frame from your stop animation okay and then we want to do the same thing at the end we want to go through and find where the exact last frame of our idle animation here is on our breathe blend uh uh layer and that

**33:47** · seems to be frame 141 okay so let's now crop all this to 141 and if we scrub through now we should have our just our stop animation and our one cycle of breathe at the end and this is exactly what we are going to export um so just a reminder I know I've run through this a lot of times but to export our animation we want to go in here into the outliner and grab our export group and just

**34:18** · before we do this just to make sure we should probably save our scene since we just made some more changes to it and then we're going to go through and click export selection yep we want an fbx and the big thing you want to make sure of for this animation since we did kind of uh crop it is that the frame range here actually matches what's down here on your timeline this is important because if you happen to have like extra space beyond the timeline down here that

**34:47** · uh you know if for example I was to drag I can actually show this if I was to drag this bar like this and even though this timeline might be snapped to the right duration the default there is that it will defa default to exporting the maximum duration of frames which is why I made sure that my maximum and minimums were also one and 141 okay so let's go

**35:10** · through that one more time export selection yep make sure that that matches make sure you have bake animations selected and your animations actually exporting and let's call this idle or we'll call this nav uh what did we name our my file stop

**35:28** · transition that makes a lot of sense and we'll export it okay and that is it for the uh Maya portion of this and so we're going to hop over to Unreal now as promised it's time to move to Unreal and learn a little bit more about how to build a transitional state in our animation State machine but the first thing we're going to do is actually make sure that our animation imported into

### 06\. In-Game Implementation

**35:50** · unreal correctly and just kind of compare it to our myene to make sure that it all looks good so that before we get into the blueprinting portion of it we actually make sure that our asset looks correct now we're going to hop straight into our animation blueprint get into that state machine and actually add a stop State a transitional State

**36:10** · between our run and our idle and hopefully by the end of this we're going to have something that looks pretty slick so let's go into unreal all right so I went through the importing process and rotated our character just like we had to do for all the previous animations and here's what we ended up with in unreal it looks pretty good it looks very close to what we animated in Maya so we're going to hop straight into the blueprint now and start building out that transitional State all right so straight from this

**36:38** · previewer we're just going to go right over here and click our blueprint tab to navigate directly to our Associated animation blueprint for this skeleton now once again if when you open it up it looks like this that means you're in the event graph and not the animation graph today we're going to be working primarily in the animation graph because we want to edit this state machine that we created last time so let's click on

**37:03** · into this and just do a little refresher of what we built last time we have our idle animation and our run animation and then we have these transitional rules that we created for is moving and is not moving what we're going to do is we're going to create a little bit of space here and we're actually going to create a new state and instead of run going directly through or directly back to idle it's going to route in instead through a stop State and then into idle

**37:32** · okay so let's rightclick and add a new state and we can call this stop and inside of this we want to add our stop animation okay so let's click in there and you can actually drag right off of this and we'll search for stop and it will hopefully contextually find your animation if you named it smartly

**37:52** · okay now the other thing we want to look at here is we want to make sure that we uncheck this Loop an tag we actually wanted that for the cases of our Idol and our run but in the case of the stop we don't want it to keep looping we want it to be like a oneandone once it fires off and completes we actually want it to end and then transition into our idle animation right so we want to unselect this so

**38:14** · that this plays only one time through and then we're going to go back up to our state machine here okay you can actually navigate using these top tabs here kind of in and out of the states now we're going to end up getting rid of this rule but first let's start building our transitional rules uh between idle

**38:35** · or sorry run stop and then idle first let's go from run to stop and this rule is actually going to replace the currently existing rule we have which is not moving so we can actually just copy this completely using control Z and then let's hop back out and then go into this one and do a control V so we're saying

**38:56** · if you're not moving you should stop right and then now this is where it gets a little bit tricky because what we want the rule that we want to go into idle is basically like is our stop finished right like we want to sense is our stop done playing if so we want to start transitioning back into our idle animation so how do we sense that well the developers of Unreal Engine were actually pretty smart they actually created a specific type of transition rule for this exact case okay so if we

**39:28** · create a new transition between here and go into it we'll find that there's actually a contextual um piece of info that was created here and if we rightclick we can search for time remaining and you'll see it gives you a bunch of options to sense what time is

**39:48** · remaining on the animation from the previous state that we just came from from that stop State okay and you can do it in a couple different ways you can do it you can get sort of relev animation time remaining and that's if there's let's say multiple animations that are sort of blending together in that previous state it will take the time remaining on the most relevant animation

**40:08** · or you can get the time remaining on the literal animation the nav stop transition in our case that's probably what we want to do you'll also notice that there's two options you can get the ratio of the time remaining like kind of a percentage you could say like hey I want it to start when that animation is 50% done um or you can get the Literal time remaining in seconds um so I'm

**40:31** · actually going to choose this latter one the uh Literal time remaining because then I can be a little bit more precise about when I want uh this transition to kick in based off of how how much of the animation is remaining okay so now the question is is like when in the animation do we actually want it to kick in so let's go back here and look at our animation um we probably want the blend to start kicking in right when

**41:01** · right around the time that our breathe idle actually starts right so if you think about it like this in the idle State that's going to be sort of crossfading into this it's going to be starting its breathe cycle we want to kind of have our Blends our cross blend happening basically at the same point in this stop animation that that breathe cycle starts which is roughly around somewhere around frame 45 okay so

**41:30** · that leaves us 90 remaining frames here uh to sort of uh count back from so what we want to say is if we do the math like 90 frames is almost exactly 3 seconds so what we want to say is when there's about 3 seconds left in this animation

**41:48** · when there's about 90 frames left we want to start transitioning into our idle State okay so let's go ahead back here here and build this we're going to say when there's when the time remaining on our Thor now stop transition is uh less than or equal to so just just to catch it too if it happens to like swing past it when it's less than or equal to

**42:17** · three then you can enter this transition okay and we can kind of modify this later if this ends up being a little bit wonky okay so let's go back back up here now to our state machine and we also can choose how long we want the duration of

**42:33** · the blend to be so we chose when we want the blend to start and we can also choose here the duration that we want the Cross Fade to happen so once again think of it like video eding you have two videos and they're kind of laying on top of each other and you can choose sort of like how long and how soft you want that transition to actually be as well as the starting point we just chose the starting point and now we got to decide how long we actually want it to be so 2 seconds is what that's about 10

**43:02** · frames is which is maybe fine as a starting point okay now likewise we probably want to go back and look at this transition 0 2 seconds here might be a little bit long because when we stop we want you to actually stop and it feel like you you know suddenly stop and 2 seconds 10 frames is a lot of time to blend between that run pose and this stop so I'm going to actually make this much shorter let's maybe make it 0.1 as a starting point we can always modify these later now uh now that we have this rule

**43:33** · these rules built here we can actually get rid of our old transition okay so let's compile this and save it and actually see if this works in game so let's downsize this and hit play and we will run around and then stop and lo and behold our stop animation plays beautifully look at that

**43:57** · we kind of look at it from a couple different angles now there's a little hitch there in our uh blend back to idle so it looks like we didn't quite perfectly line up or maybe we want to increase the am the duration of the Cross Fade between our stop and our idle so that that blends a little bit softer um the other thing that I will note is that while I'm stopping if I'm still in the if I'm still stopping and I try to run again

**44:27** · it doesn't interrupt the stop which makes sense because we did not build a transitional rule from the stop back to run okay so we're going to go back we're going to solve those two problems we're first going to solve the blend to idle we're going to soften It Out by making that duration a little bit longer and then we're going to build a transitional rule from our stop back to run so that if we start running while we are stopping we can actually start running again so let's hit escape and go back to

**44:54** · our animation blueprint and let's deal with that it one first now we actually have three seconds of total time that we could sort of cross fade here so why not take advantage of that and let's make it like 2.5 seconds of blend to just make this blend back to here really really soft since we're basically playing two copies of the animation parallel to each other we can make this really long without really having to worry about it being uh uh kind of mushy at all if

**45:24** · anything the mushiness will kind of help us in this uh situation okay and then we also want to build that rule from stop back to run and that rule is actually going to be identical to this one and because it's going to be exactly identical we could copy even though this is a simple thing we could just copy it over right that would be easy but there's a cool little feature you can do in here which is called a shared transition rule so in an instance where you want to reuse the same exact rule you can actually kind of create a uh like function Rule and share

**45:58** · it reuse it over and over in these blend graphs okay so how we do that is we'll click on this one here and we can actually uh say promote this to a shared transition rule okay so we can say promote to shared and we can give it a name and let's just call this I mean it literally only does one thing it checks if you are moving so we can say is moving okay now you can separately

**46:25** · create a shared trans blend setting the rule and the blend settings are actually separate okay so if I reuse this rule somewhere else on my graft it's not necessarily going to copy over these same blend settings you have to actually manage those separately but I'm not too worried about that right now okay so if I go down here now to this rule going let me make sure I get the right one it's sto to run if you hover over it it will show you you see stop to run and we

**46:53** · want to go up to here now and instead of saying promote to should we want to say you shared and click is moving okay and you'll see that it automatically uh uh unified the color of them and now all dark red uh uh transitions are representative of this is moving transition okay so let's go see compile and save if we solved both

**47:19** · of our problems okay let's look first at the um softness of the blend backed idle and see if there's any hitches in there now H there's still a little bit of a hitch in there um I think it might just be that we're not starting the idol at the ex we're not starting the transition at the exact starting spot where our idle sort

**47:43** · of breathe animation actually started to kick in uh in our stop so we'll go back and do a little bit of research on that let's see if we dealt with the stop situation it looks like we did so if you stop and and then start running again your character actually does stop and then immediately start running again which looks pretty nice okay so let's go do tiny bit more research um on that idle problem let's

**48:10** · go back actually to Maya and look at and see exactly where we kicked in and started our idle animation so that we can sync up our breathe in unreal with it perfectly oh and actually the idle animation kind of starts playing here at frame 21 which oh my goodness we're going to have to do a little bit of math here let's pull up our calculator the handy dandy frame calculator here so let's do um uh 141 minus 21 equal oh it

**48:47** · actually came out to be exactly 120 I should have just done this math in my head and so it's exactly 4 seconds so we're kind of like a second off actually um where we want our idle animation to kick in so let's go back here to Unreal and change this time remaining to be 4 seconds and we'll see if this fixes our problem and likewise we can kind of stretch out um our blend time here to also be around 4 seconds let's make it 3.5 now and see if we kind of got rid of

**49:21** · most of that little hitch in there and let's see and so now now that we like did the math actually did the math it looks pretty perfect uh now that we sunk up so if you didn't understand what we just did there essentially what I was trying to do was we have one full loop of that idle animation in our uh in the end of our

**49:49** · stop right that we animated in Maya what I was trying to do was try to get the cross fade back into our idle state to start start at the exact same time in our animation that our idle Loop starts to kick in so that's why I was looking at this and if we do that what's essentially happening is those two idle animations are starting at the same exact time and just crossfading between each other which got us a buttery buttery smooth transition

**50:18** · okay so let's just look at it a couple more times to see if we see anything else that uh looks off kind of let it play all the way out into Idol looks pretty good let's kind of look at it from the forward View and back all right so that is it let's look

**50:40** · lastly before we jump out at it actually working in real time here like we did before okay so you can see We're stopped we're in the idle oh we got to watch the right character so let's click over here and watch our third person character

**50:56** · okay okay um so we're in our run animation and we stop and we have a 4 second transition out of it you can actually see it literally counting down if you kind of look at the uh here if we kind of zoom in and look you can see the percentages as it's cross fading over as we stop so it's 100% And then it starts

**51:16** · counting towards the idle and away from the stop until it's eventually fully in our idle animation and likewise you can see that we stop and if we move again it's cutting directly over there let me Zoom back out a little bit to our run animation and so everything seems to be working exactly as we intended which is

### 07\. In-Game Review

**51:37** · awesome as with all things in game development that took a little bit of problem solving to get exactly what we were looking for but with a little bit of math and a little bit of knowhow we uh got something that I think looks pretty good uh and overall I think it in

**51:52** · improves the Fidelity of the character quite a bit and adds a lot of believability to that stop that wasn't really there before and you can kind of extrapolate at this point how adding transitions between lots of different motions in the game can get you something that looks really beautiful and really smooth now as always I like to kind of take a moment before moving on to the next project and go over my work with a little bit more of a fine- tooth comb so let's hop back into unreal one last time and just sort of talk through some areas that we could maybe improve on this animation uh to just

**52:25** · make it really Shine for the future future all right here we are back in unreal for the final time today and we're going to just look at this animation with a little eye for of of scrutiny to see if there's any areas that we can improve now I kind of looked at it already and have some notes for myself and I'll kind of explain to you some of my reasoning behind it the first thing that I was noticing on the stop was that when it's going directly away from camera and looking particularly right at the butt of the character which is very shiny by the way uh

**52:57** · that the the hips of the character just kind of go straight forward in one axis it's almost like a little punching bag going like this uh whereas the upper body has this sort of fluid nice natural feeling rotation to that it feels very disconnected from the lower body you don't see any of that in the hips you don't see any of that in that that butt pelvis area you definitely don't see any of it in the legs so I think the first thing that I would do in Maya is try to propagate some of that uh torque that

**53:26** · rotation from the upper body down through the hips and maybe even feather it into the knees a little bit so that they sort of you know have a little bit of twist out as well um the second thing that I noticed uh that I don't love is that the whole thing just feels a little bit gooey slow fluid it feels very

**53:46** · smooth like it it it feels like it Blends well and everything that's not the problem the problem is that's not really the character that we have here we have this like tough guy and I would imagine that he would have a little bit more flourish um so I think that what I would try to add is maybe the initial settle out is just this natural kind of slow into that forward pose but then as

**54:10** · the character sort of transitions back into their idle pose we could push the spacing and the timing of it a little bit to get a little bit more snap so you have something where the character kind of comes forward and then snaps into that final pose a little bit more like you know um idle or stop animations are

**54:28** · a really good and easy place to add a little bit of character personality because they're sort of a quiet still moment on the character and I think that this is particularly notable on that big heavy weapon there that's just sort of like swimming through space like it's underwater and it would really benefit from having like a nice snap at the end of it like the characters really regripping the weapon uh and sort of tightening up tensing up all the muscles there um the uh I was trying to think if there

**55:00** · was any other things um I think the only other thing that kind of bothered me was from some of the views that this arm with the uh uh mace in it comes so close to that leg there I think I might like to sweep it out and around that leg a little bit more um not only does it sort

**55:20** · of almost hit the leg but it kind of comes forward straight just in one axis as opposed to sort of arcing out around the body and sort of swinging around in front and then swinging around back it just sort of feels like it's going in one axis like this um and it's particularly most notable in when uh the

**55:38** · character stops right towards camera um so I think just adding a little bit of a Arc out and around the character and then the same thing on the way back would really help it just feel a little bit more natural and fluid and other than that I don't have

**55:56** · too much feedback I think I just have some Polish points of maybe adding a little bit of Animation to the fingers because they feel pretty stiff and maybe something on the face um but that's all like extremely high polish stuff that we can add in later and that sort of wraps up the episode on transitional animations we have some nice notes a little bit of homework to polish up this animation into hopefully a nice little gem that will add a little bit of believability and a little bit of higher Fidelity to our character as I always

### 08\. Bonus Challenge

**56:25** · suggest this would be a great time to get some feedback yourself from another animator it's always nice to self critique your work but I always find it's way more helpful to get some feedback from somebody else if possible if you want a little bit more homework to work on we built one transitional animation but we actually have space in our graph even now for one other transitional animation and that is the transition from idle to run you could

**56:51** · try your hand at building a little uh Run start animation you know have the character sort of lean forward and do a nice push off run starts can add a lot of uh Power and sort of push off feeling to your character right to to sort of add some Pizzaz to that moment where you push the forward button uh that's a

**57:10** · great place to start and as we sort of flesh out the rest of this animation graph you'll see me touch back on transitional animations over and over again because they're really powerful tool to just add a little bit of believability to your character well I hope that you enjoyed building the stop animation with me I had a lot of fun and I'm looking forward to seeing you next time until then Happy animating