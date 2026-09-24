---
title: "Animation For Beginners! Default Cube To Short Film in 29 Minutes | Blender Tutorial"
source: "https://www.youtube.com/watch?v=RYk2H2uv2fk"
author:
  - "[[CBaileyFilm]]"
published:
created: 2026-09-24
description: "In this tutorial we cover every step from creating the characters, to texturing lighting and animating a finished short film! This tutorial is a great intro ..."
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=RYk2H2uv2fk)

In this tutorial we cover every step from creating the characters, to texturing lighting and animating a finished short film! This tutorial is a great intro ...

## Transcript

### intro

**0:00** · hello and welcome to another exciting blender tutorial today we're going to be making a short film in one video as an intro to animation for beginners let's get started \[Music\]

**0:26** · \[Music\] alright so first thing we need to do is make our scene so I'm gonna it a to select all and X to delete let's start off by creating a UV sphere I'm going to shift a UV sphere and right here we have ADD UV sphere I'm just going to bring this up so let's just change the properties of this initial UV sphere that we've created I'm going to double everything so I'm going to take this up to 64 segments and 32 rings and that

### modelling a bowling ball

**0:51** · gives us a lot more of a dense mesh in three to go into face mode and I'm going to select a couple of faces here we're making a a bowling ball okay so you can guess where this is going all right so we've got our bowling ball there we go we get the little uh area this is where we'll have the holes for the fingers so I'm going to select those hit I to inset and just bring my mouse in a little bit that will inset those faces then I want to select each of these one at a time hit F3 to bring up the search menu and I'm going to type in two sphere and that will bring up the

**1:21** · two-sphere command now enter to select it and I'll just drag my mouse I'm not clicking I just drag my mouse all the way until it stops moving so I've maximized the two sphere um uh control on that so I'll shift select these guys F3 to sphere drag same

**1:38** · thing right here it's like those guys F3 two-sphere drag now we need to delete the little vertex so go to vertex mode delete this little vertex that's popping out on each of these now we've got these Rings now I'm going to hold down alt and this is Loop select mode so if I hold down alt you select a loop of edges or vertices as long as they're connected it'll select a full loop so I'll hold down shift and ALT and click another one to grab that one and that one as well so now I've got three I'm going to switch from Global to normal uh orientation and I'll turn on

**2:11** · my widgets you can see what's happening so normal orientation basically just means the widget will be pointing in the direction that the faces are all pointing in if you have multiple faces selected or multiple vertexes like this it will create the average of all of those and give you what direction that is this way if I hit e to extrude I can

**2:29** · now hit Z and to lock it on the Z and I'll just bring it back and they'll move in the in the same direction as their kind of the angle of those faces now I need to hold down alt select each of these one at a time and type grid fill and that will fill that and I'll turn my span up to two which will create this nice little cross hatch there to close

**2:52** · off those holes all right I'm going to right click shade smooth and then I'm going to go over here to I'll just bring this up a bit go to the wrench and I'm going to add a subdivision surface modifier I might Crank that up to two there we go we're going to go back into edit mode and I'm going to hold down alt and I'm going to select the the vertexes

**3:10** · that are around the hole there if I turn off my overlays you can really see how this works I'll hit F3 I'm going to go to 2 sphere again and I'll drag my mouse and I'll just see that shape change to a circular shape I'm just looking for it to get a little bit circular and then I'll click to commit to that and I'll just do that for these as well

**3:32** · and Bank three two sphere Okay cool so now I've got that nice bowling ball of shape all right I'm gonna grab Zed just set him on the floor there grab y to move them over a little bit okay now I'm going to create a pin so I'm going to go shift a and circle this will create a mesh Circle I'll scale it down a little bit and enter edit mode and then I'm going to hit e instead

### modelling a bowling pin

**3:56** · actually I'm going to switch back to Global transform orientation that way see it is straight up and down again so grab Z scale that out E Z scale that a little bit EZ scale that in Z scale that end e Zed scale it out a Z

**4:14** · scale that way out e z and scale that back in E Z scale and something like this and then we're gonna go F3 grid fill go now I'm going to right click shade smooth and go to the wrench add modifier subdivision surface now I'm going to get this looking a little bit better I'm going to go back to hit mode hold down alt I want to actually click this little button as well on the subdivision surface modifier this will allow me to see the shape of the subdivision surface

**4:44** · while I'm still in edit mode and this can be great for just refining a shape making sure things look right now I'm just kind of modeling this from memory I don't really know what a bowling pin looks like properly and that should be good for a body pad all right the six at the bottom I'm going to hold down alt get that bottom ring I'm going to hit e to extrude grab Z scale just to bring it in a little bit and then I'll go F3 grid fill

**5:11** · all right I'm going to make some little funny eyes on this character so I'm gonna go shift a mesh UV sphere again but I don't need all these vertices we have from the previous settings so I can just drag these back down to something a little bit smaller should be fine grab said scale it down grab X until it hooks through I'm going to right click shade smooth shift e and Y bring that over two eyeballs and then shift d wrap y x

**5:41** · scale that down these will be the pupils let's create a four chip day mesh plane scale that right up then we'll create a camera shift a and Camera I'm going to enter the camera by clicking the little camera icon I'm going to open the side panel by clicking that little tiny Arrow or hitting the N key and go to view we're gonna come right

### setting up the scene

**6:04** · here to view lock and we want to take camera to view this allows us to change our perspective change the view and it'll just bring the camera along to the right which is nice okay now I'm going to untick lock camera to view and I want to go to my camera and come here to the camera Tab and viewport display I'm going to turn passport 2 all the way up to one so it just darkens the outside of my view and I can focus now I'm going to parent these eyes to the

**6:31** · pupils I might scale them down a little bit more and I'm going to select the first people then shift select the I and then Ctrl P to parent do the same for here repeat to parent and then I'll select both eyes and then shift select the pin control p parent what that does is that puts them underneath each other basically so now the pupil is underneath the eye and the eyes underneath the pin I'm going to rename these guys so things make a bit more sense so pinned now if I move the

**7:01** · pin around it'll take the eyes with with the bin now let's get a little bit of rendering going let's just get some materials we're going to do some pretty basic shaders on these guys so I'm just going to switch to render View and I'm going to turn on ambient pollution Bloom and Screen space reflections I'm going to take uh let's put an hdri and

### hdri and render settings

**7:22** · actually I'm going to switch swing over to polyhaven polyvin's a great website you can download free hdris and they're great for the lighting your scene so just come over to uh it's playaven.com browse hdris and you just pick any one of these you want and download it so I might download something like I don't know this one Pine attic that looks cool so I'll just go with the 2K size and I'll download that off to the side and then we're going to bring this up here we're going to open up the Shader editor and I want

**7:52** · to switch from object mode to World mode this will allow me to change the Shader that goes on the the spherical world that surrounds my scene and I want to go shift a search grab an environment texture and then with this I can click open and navigate to that texture I just downloaded now we're going to take the color output and plug it into the input and there we go we can see it now I want to rotate it around so I'm going to grab a texture torment node and I want to grab a mapping node

**8:20** · generated into the vector vector into the vector now I can rotate this around I'm going to get a good view all right script the ground here we're going to go to the material tab click new to create a new material and we'll just darken this one down a bit and then with the bowling poll we click

### materials

**8:41** · him click new to create a new material we're going to give them a bit of a blue color um and let's take the bowling pin click new create a new material we're going to bring him down a little bit so it's more of a grayish color it'll be its eyes stand out I'm going to click a new on the eye call this the eye material and

**8:59** · we're going to switch over to the object Shader editor and with this eye material I want these eyes to show up no matter what I want them to just be white Pure White so I'm actually going to get rid of the principal bsdf Shader and I'm just going to grab an RGB make it Pure White and then plug that color

**9:17** · make sure it is pure white make that color the input on the surface now that guy is just going to be white and then I click the other eye and click on the drop down and select the eye material there it is now the pupils do the same thing but for the black material so click new call this material pupil

**9:40** · delete that and grab RGB and we're just going to make this black and plug it into the surface and I'll do the same here there we go nice now with the bowling pin um we need to I want to have like a red stripe on it so I'm going to go into edit mode and I will switch to face mode and hold down alt and click to select this row of faces click plus to add a

**10:03** · new material slot click new to create a new material I'm going to make it red and what I'm going to do is I'm going to click assign that will assign this material to the faces that I have selected I'll do another one up here there we go the roughness down a bit so it's a bit shiny and let's go back to the bowling ball let's take its roughness down so it's shiny as well now the bowling ball it's a little hard to see if it's rolling because there's no texture on the bowl so we're going to add a or an eye

**10:31** · texture and a bump Corona is a random procedural Shader that blender creates if I plug it here into the emission you'll see what it looks like it's like a white and black pattern it's kind of like this cell shaded look if we plug the distance into the height or the color or the position anything into the height the height is basically going to look at the black and white values and where you have a white

**10:55** · value it makes it a high point dark value is a low point and it creates this sort of simulated geometry I'm going to take my distance down to like 0.01 because I want to say the the distance between the height and that depth the White and the black values is really small because it's just fine surface detail but I could take that scale up a little bit yeah now we'll be able to see easily when this thing rolls right all right cool so now I'm going to take my bowling pin and I'm going to

**11:24** · right click on it and select hierarchy this will select the pin along with everything that's parented to it now I can hit shift d to duplicate and wide and x and just bring it back here that and then Shifty again Y and put him here so I've got my three characters and my bowling ball things looking good all right I'm gonna back my camera up a little bit I think and I'm going to go for maybe a longer lens flatten out the scene a little bit

**11:54** · here I'm not going to shift a and create a light sunlight not just a little bit around turn it up take my camera and I'm going to turn on depth of field go to the camera tab turn on depth of

### lighting

**12:13** · field bring my desktop right down and then I'm just going to pick one of these pins as my focus object and then bring it back up a little bit all right now we're going to switch over to the dope sheet dope Sheet's my favorite way to animate it's much better than the timeline gives you a lot more detail we're going to click this little side arrow thing we're also going to go up to edit preferences we're going to go to animation and right here where it says default interpolation under F curves we're going to switch this from bezier to constant now constant is a really

### animating the characters

**12:41** · great way of working when you're animating because what it does is it you set a keyframe set a pose and then when you get to the new pose instead of you know animating between them and interpolating between those poses it just goes from pose to pose to pose this gives you a lot more control as an animator if you're setting those poses and blender's not doing any work in between allows you to really get the timing right if you want to learn more about that and really go deep um get a great like sort of foundational introduction to this head over to my

**13:08** · animate like a pro tutorial that'll give you like if you know nothing at all it's a perfect way to get started and there's some really Advanced ideas in that video that you'll get to so it's worth watching if you feel like some of this stuff doesn't quite click go watch that after this and then you'll be able to do this again and it'll really click for you now the dope sheet is what we're going to be using to animate mostly and I'm going to turn off only shows selected which is this little button here this will show me now everything in my scene that has keyframes now right now nothing has keyframes we're gonna change that I'm just gonna drag and split my view here and switch

**13:41** · to the timeline just so I've got my playhead controls and I'm going to click this this is auto king I'm going to turn auto key on so now whenever I move something it will set a key for all the properties all right let's start with the ball I'm going to go gy to grab and just take him off off camera and just make sure his shadow is out and then we've got a key automatically set there I can open up this transform so you can see we've got a key on everything even to scale so I'm going to come forward a little bit maybe 20 frames grab Y and bring it

**14:09** · in here like this it's going to come in now I do want to see him interpolate between these so this one I'm going to right click these Keys interpolation bezier this will automatically switch it back to bezier this way I can get a better sense of the timing okay I'm gonna come back here and I'm gonna jump out of my camera view and I'm going to roll this guy back a little bit here so he actually kind of rolls forward a little bit more

**14:38** · and I wanted to do a little like kind of forward back correction so I might come here a little bit roll in a little bit forward come forward and then come back and then roll it back like that let's see how that looks

**14:59** · a little bit more spread those keyframes out okay all right now as soon as he arrives I want these guys to kind of flick their eyes over to it like oh what's this so I'm going to just zoom in a little bit so I can actually grab their eyes

**15:22** · just holding down shift so I get all of them I'm going to hit I this allows me to set a keyframe for the current position where they're at the I keyframe menu gives you all these different things you can keyframe I'm just going to keyframe location rotation and scale these guys so I'll just hit that you see now they all get added to the dope sheet each one and now we've got a key on all of those parameters that we've just set now I'll go forward just a little bit and I might grab and just move off like

**15:48** · that so now they're all looking at the bowling ball also might come here and I'm just going to set this to individual Origins this is the transform pivot so that means that when I do any transforms now it's going to transform not from the median point of all the objects I've selected but from the origin of each individual object so now I can hit s and z and just scale their eyes down a bit like that maybe y scale it out a little

**16:14** · bit quick now they've got a little funny blink I want to offset them a little bit so they're not all exactly in the same order so I can collapse these just so I can see them a bit easier and what I could do is actually just go all right I know people 1 and 01 are probably on the same object uh yep it's that guy so I'll just move his forward a little bit I'll grab these two which are probably the next guy just to offset them all a little bit

**16:45** · there we go now when I have them kind of like pop up and bounce away a little bit like oh let's get away from this guy so he shows up blink blink and then I'm gonna grab the pin itself again I location rotation scale set one for everything go forward a little bit maybe like five frames I'll rotate him a little bit like this and then come forward and then rotate it back and lift him up and over maybe not that far up and down

**17:14** · and then that way back maybe over just a little bit more back a little bit so there's more of an arc to his most and right here I'll just come back to his rotations and there's object properties and I will just zero out the Y and the X should be what I want

**17:43** · we'll make him go like this so he's going to lean and then when he jumps I'm going to scale Z bring him up let's switch to the local that will scale him in the direction he's actually pointing and then I'm going to scale shift Z that

**17:58** · will only scale him on the X and the Y not the zip that way I can bring those down make the Z tall and make those those down so think about it like he needs to maintain the same amount of volume right so when you do a Swatch and stretch action you stretch him out but you also need to decrease him on the other two axis so that his volume kind of stays roughly the same so and it will come a few frames before that 'll be right here scale Z scale shifts it and go out

**18:28** · yeah so now that I've got that action on the pin I'm going to put it on the other guys so what I could do is actually open up the pin and I want everything pretty much the same I want like the up and down motion I want the rotation some with the scales what I do want to change is I want to keep these guys kind of where they're at in the X Direction

**18:48** · um and I also want to keep them where they're at in the Y but he's jumping on the Y and kind of moving over so I think what I'll do is I'm going to copy everything except for the X that way we keep them on the way they're up with the X it's going to move them to the same y position as the sky but then I can adjust that in the graph editor and I'll show you how so I'll select the PIN and I want to grab everything all of his animation except for the X location so

**19:13** · I'll just box selects all these and then Ctrl C to copy and then come over to this guy and just to make it easier I'm just going to click this to only show selected and then I'm going to hit I and I'm going to set a key for the location rotation and scale just open this up and

**19:29** · with this guy's channel so hit a to select all the channels and then Ctrl V to paste and that will paste the same keyframe data into those channels you can see I didn't get anything on the X so he's still set back a little bit but he has moved over on the Y to match where this guy was so we're going to adjust that a little bit so what we can do is go into the graphite now a great hotkey to jump to the graph editor when you're already in the dope sheet is control tab I use this

**19:53** · all the time you can just pop in back and forth between the two of them it's really awesome so control tab come over here we're going to grab the Y location we're going to move him back but I want to keep his animation his Arc so you can see here are the keys this is the animation I want to preserve so I can actually just select just these these y curves here like this all one setting you may need to set to do this if you go up to preferences and we go up to interphase uh animation

**20:22** · uh here we go if you go to animation you want to make sure you've got only shows selected F curve keyframes ticked if that's not ticked if I was to box six here but select all the keys from all these channels which isn't what we want so we're just going to select that I've just got these guys and now what I can do is G and Y and I can adjust all those

**20:41** · keyframes they maintain their relation to each other but now I can position it where I want it I can go back over to here this guy decide when I want him to move I location rotation scale select all the channels Ctrl V to paste control tab to go into the graph editor Y location box select grab Y and reposition

**21:13** · and the ball is going to start to roll all right so he's going to pop over and then this ball is going to go set a location rotation keyframe Port there go forward a little bit this guy is going to roll back make sure I go back to Global so I can just grab on the Y and slide him \[Music\] maybe a bit further

**21:38** · really anticipating that move \[Music\] and then I in case rotation scale and then he's going to zoom so I'll roll in like this and grab Y and bring him right off the camera like that

**21:54** · what we're going to do is have these guys jump so as he goes by I just realized he's not not in the right spot he's not lined up with a second to hit them no matter what let's light him up a bit better I'm going to go into my graph editor with the sphere here and I just need to get his X I'm just referencing up here when I want to know which orientation I need to go on hit a to select all full stop

**22:14** · I've got a bunch of keyframes here but you see it's all flat so it means that there's no value in the X so in this case actually delete any keyframes from the X channel so I can just delete them and now you can see X disappears here and he's not yellow anymore and I can just change this to whatever I want

**22:31** · all right now let's have the pins jump out of the way so I'm going to select the spin and the ball starts to move I'm going to hit I location rotation scale and scale Z scale shift Z and then up to the time is going to be off but that's all right said

**22:51** · it pops straight up and then rotate them a little bit bring him up a bit higher a little bit and then down a bit more rotation down and then

**23:13** · let's put his scale back to whatever it was before let's see how it looks yeah go back to my dope sheet and I kind of want him to just get this position so I'm going to grab this set of keyframes which is his Original start position I'll just bring that back over to here

**23:36** · it's good and I can decide when I want the scale to correct so I want him to kind of be stretched till about here I think so I'm going to delete all these keys and just grab the scale keys and I'll pop them there and replace probably beat right on that and I've got a few too many keys I think I'm just gonna speed all that up

**24:13** · I'm going to do a little corrective bounce

**24:37** · up a little bit so for this one what I'm going to do is just use the Z location and the scales and the rotations so I'm going to select him again and then I'm going to grab everything from here down so I'm going to beat a box select all that copy select one of these other guys

**25:01** · here hit a to select all the channels and then B to paste Ctrl V sorry and with this guy I might have him go the other way so instead of up like that go over like this \[Music\]

**25:18** · let's go let's put it on this game maybe not need to adjust the timing so by the time he's right here these guys really need to be high enough so I've selected a shift selected each pin and then if I beat a box select I'll get all these Keys here let's see I can

**25:43** · yeah we need to adjust this so the speed with this guy takes off can't do any reaction until after so I need to speed this all up so I'm going to scale with those keys selected that will tighten them all up so they happen quicker also slow the ball down a touch probably by just dragging out the final keyframe I feel like he needs to go a little higher so it's really clear that he

**26:22** · well now once they lands I'm gonna have them change their eye position \[Music\] that all right let's have the camera Shake as a final touch so the ball zooms off

**26:46** · and maybe right about here let's select the camera we're going to I and I over the location rotation of the camera go forward just grab up and grab down go the other way back back a little bit less

**27:06** · uh a little bit less and then I might grab the original key and bring it right back out and then I'm going to select all of them and right click interpolate bezier scale to bring these in closer

**27:22** · cool all right I feel like last thing we need is some blinking in the eyes so I'm going to go to the eyes and we've already got one blink here so I can just reuse this for all of it so I can shift select each of the pupils

**27:39** · so now they're all included here in my dope sheet with only shows selected turned off this is cool search box feature it like Narrows things down so if I open this up on all these guys see and then I just type in scale it'll just bring the scales up so that way I only see the scale keyframes so what you can do is we can you know select shift select each of these guys here and then in the dope sheet just

**28:04** · type scale and now if we box like we're just grabbing the scale keyframes so now you can see their eyes will keep looking in the direction that we want them to but I'll be able to do funny little blinks double blinks and stuff and there you have it we've got our own little short film hope you really enjoyed this and learned a lot of cool things in the process if you did please hit that like button and don't forget to subscribe to the channel now if you want to get the full version of this tutorial we got this full uncut version runs

### time-lapse

**28:31** · pretty long over an hour and I go into a lot more detail and I also talk about how to get the final look of this render to get this sort of painted style so if you want to check all that head over to patreon or join on YouTube If you join at the all access past level or higher on YouTube you can get access to the uncut tutorials or if you join at any tier on patreon you get access to those as well along with on patreon you can

**28:52** · join at the second tiering up to get project files every month so the project files are only available the month that the tutorial launches so this month you can get that for this one here and uh yeah then you can use those cool effects in your own projects so special thanks to all the patron supporters everybody that supports this channel thank you so much everybody's joined on YouTube as well really appreciate all of you thank you and I will catch you guys in the next one until then have a great \[Music\]

**29:24** · \[Music\] \[Music\] thank you