---
title: "🎮 Beginner's Course To Game Animation | 02 The Idle Pose"
source: "https://www.youtube.com/watch?v=o5418vCJsw4&list=PLzn9qrbm2X8OuNjFPw2rIj8O1h1Kt8JX0&index=2"
author:
  - "[[Agora.Community]]"
published: 2022-02-04
created: 2026-07-15
description: "In the next lesson of our Game Animation Course, Skylar Surra (Principal Animator at Riot Games), takes you through crafting an idle pose for your character, getting it into Unreal Engine, and moving"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=o5418vCJsw4)

In the next lesson of our Game Animation Course, Skylar Surra (Principal Animator at Riot Games), takes you through crafting an idle pose for your character, getting it into Unreal Engine, and moving it around.  
  
Skylar will show you his process of gathering idle pose references and you'll get to see him work in Maya as he blocks out his character, getting it ready to begin animating in Episode 03!  
  
If you missed the first episode that breaks down the basics of setting up a project in Unreal Engine, you can watch that here -  
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
01:48 02. Analyzing Idle Poses  
08:56 03. Gathering Reference  
18:19 04. Roughing Out Poses In Maya  
35:04 05. Evaluating The Poses  
39:19 06. Getting It In Game  
52:42 07. Evaluating In Context  
56:31 08. Your Assignment

## Transcript

### 01\. Course Introduction

**0:00** · \[Music\] hello animators and welcome back to game animation now that we've got the setup all out of the way it's time to actually start working on our character i know this is what you actually came here for is to start building this character so the very first and one of the most important pieces that where you can build for a character is the idle or default pose now this is the pose that you see when your character's standing around in the game doing nothing

**0:25** · now at first it might not seem like that's a very important thing because most games you don't really stand around and do nothing for a large part of the game and that's true this is a pose that you don't really see that often in a lot of games when you're just playing them naturally but the thing about default poses is they're really important for one kind of getting a feel for the character as an animator and two they're a pose that many elements of the game

**0:50** · kind of come back to over and over and over again so it's a pose that we as animators really care about a lot you know when your character starts to run and then they stop this is the pose it goes into when you do an attack and let that sort of time out this is the pose you go into it's supposed that almost everything in our game is going to start from and and that so before we get in there and start making our own idle pose i wanted to take a moment at the beginning here to kind of look at some idle poses from other games and talk about how the the feeling the shape

**1:22** · the tone what you choose for your idle post how it can affect the overall feel of the character and also might dictate in a lot of ways what players kind of envision is is the character they're playing in the game so let's hop on over to the workstation and i'm going to run through some screenshots some images from games and talk a little bit about the choices they made in the idle pose and how they influence the feel of the character overall alright so i grabbed some screenshots from some games i'm playing now and also a couple of my favorite games from over

### 02\. Analyzing Idle Poses

**1:54** · the past few years and i'm just gonna run through and talk about some of the takeaways that we can grab from their idol poses okay so this is a screenshot from inside this is this is one of my favorite games of all time if you haven't played this go play it but one of the things i love about this game is that unlike a lot of other games you're not really a very

**2:17** · heroic character and i actually really like that the the idle pose kind of messages that to you as a player you know if you look at this pose the character is you know they're sort of hunched forward the heads the head's out in front they're sort of crouched and ready their hands aren't out in this in this ready pose like they're in action here or anything like that they're kind of closed and contained and huddled

**2:42** · and that really tells you almost everything you need to know about this character and as you play through the game you find out that you're being pursued the world is a bad place and so just by the first moment this is right at the very beginning of the game you can tell that this character is not a hero it's just a kid and they're in a world that they don't really understand and are nervous about and they tell you that right off the bat with the idle pose

**3:09** · now if we contrast that with uh our next one here let me clear this up now this one you're probably familiar with this is uh god of war um this is a totally different scene right they one it's a different camera uh so it's much more dynamic we know that this game just from the camera just from the get-go is going to be an action game where we're gonna do action things but also the the the character tells you

**3:36** · that too in their idol pose he's got a really wide stance uh that shows he's sort of ready to fight his arms are out he's got weapons in the hands not only that it's sort of a three-quarters view which gives us a much more dynamic feel of the character like they're ready to charge into action there's also a couple other subtle things here uh that the animators did that i really love which is that he's slightly lean forward this way and you can see that the head is also looking that way so what you get is this feeling of a really

**4:07** · grounded tough character that's leaning into the fight and if you've played god of war you know that is exactly what the game is about it's about a tough guy who literally leans into every fight another game that i've been playing recently that has a similar vibe is godfall um

**4:30** · now in godfall you can see there's actually a similar camera we're kind of behind the character over their shoulder but even more so than god of war the character is uh is three quarters shoulder towards us really sort of like leaning forward and one of the things that i like about this pose in this game is that this weapon is or this this game is so much about the weapons you're carrying you sort of pick up these really insane weapons that are huge on

**4:57** · your character and if the character was facing any more towards the camera kind of like how it was in the god of war pose these weapons would get kind of lost in the silhouette but because they turn this character even more almost almost not even three quarters it's almost completely with one shoulder forward what you get is these weapons really nice out in silhouette behind the character so choosing the posterior character is also a lot about telling the player what they should care about right so in this game

**5:29** · i know i'm caring about the cool armor that they're featuring to me right here in the foreground and the really cool weapons that are on my back okay so let's go take a look at just a couple more here

**5:45** · so this one is a mortal phoenix rising this is a game i've been playing recently um and you know this one the characters a little bit further away it's a little bit more of an arcadey action-y game if you've played like the assassin creeds game or anything like that it's a little bit like that uh and you know while this character feels a little bit more generic they still have some cool heroic-y feeling elements you know you can tell that this character is intended to be a hero the shoulders are back

**6:16** · the hands are down and these nice fists once again you've got this really wide stance which sort of like tells me this character is stable and ready to go uh and there's some nice little elements about the character that just sort of draw your attention you know this nice light and the edges the weapon so they they not only through the pose but also through some nice art and color uh tell you what to really focus on

**6:40** · now this last one i'm going to show is probably a you know a popular contender for a lot of people's favorite game over the last couple years and that is breath of the wild now one thing that's interesting about breath of the wild in a lot of games like this is you look at this pose and

**6:55** · there's really not much there he's really just kind of standing there um and you could probably argue well they could have made link more heroic or they could have done you know turn them three quarters to make them feel a little bit more actiony but one of the interesting things about breath of the wild is that mechanically one of the things you do over the course of the game is use tons of different weapons

**7:17** · and you stack things up on your character so if the animators had really pushed the you know dynamic pose here what they what would have happened is they would have run into some challenges down the road when switching weapons and whatnot that they would have had to like redo that pose every single time because it would be so dynamic they'd have to worry about clipping whatnot and because they chose this sort of neutral pose what it allows is you two and i'll show you here this next uh this next frame here

**7:47** · it allows them to stack up all sorts of weapons on this character it allows them to just change the arm positions to hold different weapons and really allows link to be this every man this kind of blank slate character uh that is what you play in the game so it's almost interesting to me that they that they that i think they knew that link is a kind of blank character that

**8:11** · is going to be this palette for you to pile a bunch of stuff on and try out a bunch of different weapons and because of that they chose a very vanilla and neutral pose so that's it that's all the screenshots i'm going to kind of look at and draw over here next we're going to take a look at our character and decide what might be

**8:30** · some good choices for us to try out for our idle pose so that was just a little bit of taste of some of the games that are out there i could go all day doing analysis of the idle poses run poses cameras whatever of a slew of different games but uh hopefully that gives you a little bit of an idea of where we're going to go in this episode as we start to explore and figure out what might be a good idle or default pose for our character

### 03\. Gathering Reference

**8:57** · now anytime i start a new animation project a new character a new anything in games honestly the first thing i like to do before diving in and actually getting right down to the animation is to just sit down and think about it for a while i don't use a lot of video reference for my animation sometimes i'll collect images and whatnot but really most of my planning for a lot of my animations is really just sitting down and thinking about it a lot beforehand i

**9:24** · you'll find this repeated in many of my videos that i like to just take a moment set aside some time and just think about it so what do we want to do here we're going to come up with an idle or default pose for this character i already showed you in the setup that we're going to use this thor guy that we've got and

**9:42** · i'm just going to sit down and try to generate some some some key words that i think are important aspects of this character that we can maybe use to go search image searches to try to find some images that we can use to reference or that might influence the pose that we end up using for this character so i already wrote down a couple here um as you can see you know thor comes with some some baggage already from from what

**10:07** · we've seen of him in in the marvel universe he's a very confident heroic tough guy right um so that's a kind of baseline what we know about this character if i was to have been given this character by someone else this is probably the brief they would have given me but i kind of want to take a little bit of a different spin i don't want to just do the same thor that we've seen a hundred times um so i was thinking about maybe taking this in a little bit of a different direction more like old school actually actual

**10:38** · norse god thor he's ian nor scott he's some god and maybe going more of the barbarian route so that's something i'm going to write down here is barbarian i'll just write barb for now now that kind of comes with a little bit of a different vibe right you know it comes with like a tough but maybe not so smart a little bit more angry maybe is a thing i would would consider with barbarians so i'm gonna write that down angry

**11:06** · and another thing that i uh uh uh sort of connect with barbarians is big chunky heavy weapons um so i know that thor traditionally has a hammer but we could maybe even explore using a different weapon for this version of thor that would give us more of that barbarian vibe so i'm gonna write down big heavy weapon

**11:33** · and while we're at it we can maybe start crossing off some things as well so if we go with this barbarian direction maybe some of these no longer quite work like heroic i don't know if i really think of barbarians as being particularly heroic they are

**11:53** · heroic in battle in their own way but they're not this sort of like confident heroic that we think of when we think of like the marvel thor so for now i'm actually going to cross these off we'll cross off heroic and confident and i think tough though tough is one that that we still i think really fits with this barbarian angle so here's what i've got right now i've got barbarian angry big heavy weapons and tough and i think that that is kind of an interesting list to start

**12:25** · with for a character because i think it's enough to really start thinking about what a pose for this character could look like and also get us kind of searching for some reference images so i'm actually going to hop over the computer now do a little image searching and try to grab some reference that might help us pose this character out all right so i took a trip over to the good old google and did an image search for barbarians and came up with all

**12:50** · sorts of crazy stuff uh of course i got a lot of you know pulpy images from the frankfurzeta era and whatnot and i tried to grab just a few that i thought had some interesting elements uh that were relevant to what we wanted to do here so here this image was pretty close to

**13:11** · what i you know just think about when i think about barbarian there's not a ton that i can take from this one exactly other than you know this sort of arms out i feel like that's a uh that's a pretty common thing and a

**13:26** · lot of these is that they're never barbarians in art are never portrayed as like closed up they're always making themselves look bigger and wider than they actually are so let's take a look at some of these other ones this one i thought was very interesting because another element that i noticed in a lot of these was this sort of hunched let me change this to blue this sort of uh hunched

**13:54** · forward look to their upper body many of them are very tough but oftentimes when you think of a tough guy you think a shoulder's back um standing upright but a lot of these barbarians they're they're not worried about their posture so they're a little bit more forward so you notice that it still has

**14:12** · the the shoulders back right the shoulders are still pushed back but the chest is sort of hunched forward because it doesn't care about his posture and the head's a little bit more jutted out in a forward angle right and still we have this uh i'm really wide tough guy

**14:32** · look right so that's probably something that we want to think about getting into our pose is that if we wanted to feel like a barbarian the pose is going to be wide let's take a look at some of the other ones we've got here let's trash that go next

**14:55** · okay so here again we have a similar thing uh this has the same kind of things you can see that the character's sort of leaning forward the chest is a little bit hunched so we're starting to see some common themes here in what we think about as barbarians once again we got this huge wide stance and in fact maybe my only critique of this would be that if we wanted to be consistent with uh with our other ones that maybe this even wider

**15:23** · grip would make this feel a little bit more barbariany because uh he'd be sort of showing off and making himself as wide as he possibly can but once again we've got the head forward so the things that i'm starting to see as consistent across many of these images is this really wide stance this idea of making yourself bigger even than you actually are even they're already big guys and then this sort of hunched forward uh uh bad posture uh look that a lot of these

**15:54** · these barbarians have okay let's hop over to the next one and here now here's one that has a little bit more of a confident vibe now i would say that this isn't quite an idle pose so much because of the the leg up but once again we've got the some of

**16:15** · the same features you know like the arms way out here to the side not in like a natural position that we'd expect like a normal person to be holding their arms the legs instead of being you know straight down to the ground are out in this big wide triangular shape so

**16:34** · i think that we're all starting to see some uh uh similar things across a lot of these and here is maybe the most exaggerated version of all of these we have a literal triangle of a character here and these arms are way out to the side he's way hunched forward way head out in front okay so

**16:56** · i think that the things that i'm going to take away from this that kind of make a barbarian character a barbarian character in our brains and this is sort of just consistent across the archetype is really wide stance chest kind of forward a little bit and head jutted out in front so physically that's what we're going to be aiming for now i also was thinking about weapons and i think like i said that while thor traditionally has a hammer for a weapon

**17:23** · uh i was thinking of some of these old old more brutal weapons like a spiked club or something like that so i think i might aim for a pose that's something like this but instead of a hammer i think i might end up making a mace with just some big spikes on it to just add a little bit of brutality to this character give us something that's a little bit heavier kind of like a meat grinder or a meat tenderizer that we can

**17:50** · just beat them up with so that's it that's kind of where i'm going to stop with my reference and we'll hop over to maya next and see what we can come up with now with just a few minutes of thinking i feel like i've really got some good nuggets to work on for this character i have some ideas about what i might want to do with the pose i have some keywords that i'm going to try to hit for this character when i start building these pose in maya so i think the next step is to open up our character and really just start digging in

### 04\. Roughing Out Poses In Maya

**18:22** · now that we're finally ready to start animating let's head over to maya get this scene get our character all set up and ready to go and start working on this pose now i'm going to try to explore a few different variations of this pose and hopefully by the end of this we'll have at least one that we think is worthy to get through the process and put into the game let's go

**18:43** · all right we're finally headed over to maya to start animating and the first thing we're going to do is set up our scene with our referenced characters now if you haven't done this kind of thing before if you haven't referenced characters in basically all we're saying is instead of opening the rig files or the profile itself we're actually going to create a reference of those in our scene now the reason for that is that if we ever want to edit either the rig or our prop file what this will do is it will let us edit

**19:11** · that external file and any changes we make to it will actually propagate automatically to the reference scene so if i want to change slightly the size or shape of my weapon in the future for example if it's referenced into my scenes changing that will automatically change it in all the scenes that it's referenced in it's pretty quick process pretty quick setup so let's hop over and do that first before we get to posing

**19:34** · alright so i opened a fresh scene of maya here and the very first thing we're going to do actually is edit the frames per second now for anybody who's worked on film before you're probably used to using 24 frames per second but we're actually going to use 30 frames per second and that's pretty standard across the game industry using either 30 or 60 frames per second it's what most game engines expect so get used to thinking a

**19:59** · little bit differently at a little bit different frame rate now that's we're going to do right down here the frames per second we're going to grab it change the 30 frames per second and that part is done so next up we're going to go and grab our reference files first off

**20:15** · we're going to get the rig and then we're going to pull in the prop so let's go to file create reference and we're going to navigate to our thor rig grab it here and this is going to take a moment to open it's just like opening the scene normally uh it's going to spin for a second and it's just generating a reference of our rig file here in this new file that we've created and here we are here is the glorious

**20:44** · thor in t pose now i'm going to press 6 to give me my materials and i have a nice little hotkey for turning on and off my nurbs curves for the controls so that's something you might want to think about and if you see me flicking these on and off constantly that's what i'm doing i'm going to turn on anti-aliasing here to just get nice smooth stuff and that's it i think for the character referenced in next we want to go grab our prop so we're going to do the same process again file create reference and

**21:16** · this time we're going to navigate to our thor folder into props now in between videos i actually stopped for a minute and actually made that prop i talked about a nice spiked club thing so if you haven't done that yet or don't have a weapon yet maybe go find something find a hammer find whatever and get that prop ready to go before moving on but since i already have this here i'm gonna select it now hit reference and bring it in here and you can see i have this nice spiked club

**21:44** · now this club was just from the infinity blade weapons that i showed how to uh how to grab and export in the setup episode so you can hunt through those weapons if you don't really want to like make something from scratch yourself and see what there is in there that you could use now the last step we want to do for the setup here is actually get this thing in the hand and thankfully we have these handy little prop bones it's this little diamond here below the uh wrist

**22:14** · of the character right there now if you're accidentally selecting the mesh and stuff for the moment we can turn that off using this little button up here click that and it'll make you no longer able to select the mesh so you can select these curves easily now we're going to create a constraint between this bone and our weapon by selecting that first turning back on mesh select and hitting shift so i'm holding down shift and selecting this

**22:43** · and then we're going to go up here to constrain now if you don't see constrain up here you might be in a different working format so you want to make sure you have animation selected that'll make the constraint menu appear up here so you want to click constrain and we're going to point constrain it

**23:03** · we're going to click again and orient constrain it and then click again and scale constrain it okay now why did i do all those different constraints well those are all the different ways that we want this weapon to move with this bone so the point constraint pulls it to the point the

**23:23** · orient constraint means that as i rotate it it's going to orient with it and the scale constraint is constraining the scale so that when i scale this it will scale with it right those are all the different behaviors that we want out of this so we can see now if i translate it move it around it moves with it if i rotate it rotates with it and likewise if i scale it will scale with it so the reason i do

**23:51** · all those constraints is because those are all the things that we want it to do when we attach it in game when we bring these animations into game we're going to attach this actual weapon from unreal to this same joint so that any animation we've done in maya should look exactly the same in unreal as it did in our maya scene because we parented it and animated it just like this so that's it for the scene setup we're going to just save this out quick let's save this out as thor annum scene i just have this in my thor anims folder

**24:22** · and it's nice to keep your naming clean and and take some time to make sure that your names and whatnot make sense okay i'm going to save this out for future use i'm just going to replace the one i already made and that is it for our scene setup we're ready to pose

**24:38** · all right so now i'm going to actually start posing out this character i'm going to use the reference you know the reference images that i pulled take some of those those thoughts that we had in our brainstorming planning session and actually start to get this character into our barbarian pose so

**24:56** · generally uh i like to start with the big gesture of the pose first so we'll kind of start by moving around the root getting like the leg positions planning the planting kind of right uh and then move upward and outward from there to you know working from biggest to smallest so i'm going to start off

**25:14** · showing you some of this posing um but then probably i'll sort of fast forward through some of it and show you the final results afterwards but let's take a look and start posing out this character so here was the image that i kind of you know liked the most this kind of hunch forward character um and i think this was pretty representative of a lot of the things that we wanted to get out of this character um so i'm going to start by

**25:41** · kind of getting the character low spreading out the legs getting that center of mass um you know over like a really wide platform getting get the arms and whatnot out and then later we'll work on things like the fingers and the the face and whatnot so let's get started um i'm going to turn on my controls here and i'm going to actually i don't know how much i'll use this but i am going to open the picker that they have for this character make sure that it's working and it is um and let's start moving this

**26:11** · character around so let's bring these hips down and start getting these feet out into a wider position and i think that i want like some of those more action games that we looked at i think i'm gonna want to have the character a little bit more uh three quarters towards the the camera i think that just makes the character feel a little bit more dynamic and uh asymmetrical than if they're

**26:39** · just you know sort of standing straight forward looking right and you're looking right at their back um so getting these feet out really wide we're gonna lean back a little bit and then i'm going to grab all these spine controls um and sort of start getting in a little bit of a hunch forward here

**27:04** · okay and i'm just you know i'm not too worried about it looking beautiful yet i'm just trying to get the feel of it um and you know i was looking at this this image one of the things that's interesting is the the waist is kind of straight up and down and the hunch doesn't start till uh till up here so i'm going to try to get

**27:25** · this to be sort of straight here and then feather my hunch a little bit oh that's my hips there starting here and then it's a little bit more in the stomach area that the hunch really starts to take over and then get that there okay uh i'm gonna change these arms to follow

**27:54** · world so i set the follow to zero and that means now if i move around the rest of the character they'll start to stay oriented to their world position so i'm going to change that other one too there we go and i'm going to start to get these arms down in a position that i like i'm gonna grab these from here because he has a lot of controls on his arms

**28:22** · a lot of times i like to work with the controls completely off on my character and just grab things from my picker that allows me to be really clean here in my viewport and really see the you know the silhouette of my character

**28:40** · um so there's the arms kind of now i'm going to look at it from behind because this is kind of going to be the pose i see in game and i don't really like this tilt i've got going on there um and i'm going to actually have him as he's kind of leaning forward he also

**29:01** · uh is sort of straightening out his upper body as well a little bit to camera so there we're starting to get like a little bit of a nice hunch like i want i'm to pull the body down just a little bit to get the knees bent a little bit more and now i'm going to start working on actually getting you know some of these details exactly how i want really sort

**29:23** · of micro adjusting the arms taking the shoulders bringing them hunching forward a little bit to give them that rounded shape that i think is sort of uh a key part of the you know barbarian feel um and get this arm down and i think that

**29:44** · you know i talked about one of the things that i wanted to do is have the weapon feel nice and weighty so i think it might be good to actually like lean the character a little bit towards the weapon so that it feels like the weight is kind of um over the weapon and let's grab do i have a control here

**30:09** · for the prop it doesn't look like it so i'm gonna have to grab my prop control manually and i'm gonna take this and adjust it into a little bit more of a natural grip position and i'm going to start to you know bring these fingers around it and just start sculpting some of the more micro bits of this pose i don't care about it being perfect like a really

**30:33** · beautiful grip position yet because all i'm really caring about is the uh sort of natural or the overall gesture of the pose now i really liked in this image the way these hands were sort of like clawed it added a nice feeling of tension to it so i'm gonna try to do something kind of like that where um i grab the top joints bend them just a little bit but really get the tips to be a little bit more like

**31:04** · claw like and sort of feather these into a little bit more of a natural pose by just grabbing these and i'll fine-tune all this later but as a starting point you know i'm just grabbing things in groups knowing that i will later pull them out and really really fine-tune everything on this pose

**31:34** · okay so there's a nice like sort of clawed hand um now i'm gonna now work on the feet a little bit to get them a little bit more natural let me bring them in a tiny bit bring this one on a little bit and get these heels let's see where's my heel control is this it yeah there we go and rotate that a little bit you can see that i just like rotate things in world space a lot i'm not too worried about having um clean rotations or anything on

**32:07** · my character at this stage in the game um is that my knee pv nope let's see where's my knee pull vector there it is okay

**32:24** · there we go i want to bring this out a little bit choose where i point the knee a little bit more forward bring this guy out a little bit so i'm just kind of really now microwaving this pose a bit to be more what i want now i'm looking back at my reference again oops wrong one and seeing that maybe even i could pull these out um you know pull this character out even wider and broader

**32:54** · okay so i'm gonna take the arms and bring them out even further give them a little bit more of a bend a little bit more of a claw like feel there and i'm gonna have this arm be a little bit more bent that's holding the weapon

**33:22** · just fine tuning this getting it to look like a barbarian now this neck while i do like how forward it is it's a little bit unnatural i think the character would actually have to be you know looking down a little bit to be able to reasonably be in that pose i might bring the neck up just a little bit here

**33:47** · so that when we see from behind we see a little sliver of the head over there now what i'm looking at from game view the generally i like everything except for the silhouette i'm getting here i think i might want to have this weapon actually turned out in silhouette a little bit more um so that from our camera view we get something you know where we see the weapon uh a little bit more out in profile so i'm

**34:12** · gonna work on that section a little bit here get the weapon kind of out maybe turn this arm a little bit more like that you know maybe even have the weapon back here like this more ready to ready to strike might help

**34:34** · a lot for my silhouette back here yeah i actually like that a lot because now this is in our nice ready pose where if i was to do an attack it's already almost like wound up and ready to ready to strike so i think at this point um i'm going to uh stop working on this pose i might fine tune it a little bit but it's in a good enough place that i think it's worth now exploring some variants so i'm going to do that off camera and then i'll kind of come back and round up once i have a few poses to talk about

### 05\. Evaluating The Poses

**35:07** · all right so after about 10 minutes of experimenting and just sort of pushing around a few different poses i ended up with i think five different poses here that we're going to look through and i'm going to do a sort of self critique on these to try to figure out which of these are best hitting our goals and maybe what we can improve about them before we put it in the game so let's take a look all right so here is the

**35:31** · pose that uh i sort of started with you saw me kind of build this one uh this one is still for me a strong contender uh i think the one thing that if i was to take this pose i would sort of brush up is to try to get rid of a little bit of the mirroring feeling of it and also fix up this tangent that's happening right here but otherwise it's a pretty good contender i think

**35:54** · so let's check out the next one so in this one i took the same idea actually i just started with that pose and tried crouching it down even more now i like this as a pose i think it's actually maybe overall a stronger pose than the first one but it was a little too crouched feeling um to be what i would consider the normal default pose for a character uh so then i tried to do a more forwardy

**36:25** · action pose um with the arms back this one i really liked a lot uh but once again it feels almost too dynamic to be the the bass idol like it feels like he's about to dash off and smash thing like it's almost like an anticipation for an action as opposed to a more natural resting pose

**36:48** · uh then i tried uh like i had i was looking back to some of the other reference and i thought oh what if i did the godfall thing where the characters really rotated towards the camera and has the has the weapon really like right up in your face at the camera this one once again i like quite a bit i think it's a reasonable contender uh it

**37:10** · might be a little bit more pushed than i would like for an idle pose but it has some nice things where the weapon is here nice and highlighted in the foreground i think one of the challenging things with a pose like this where the characters really has his side towards the camera

**37:25** · is that you your character just has a lot of things overlapping you know it's difficult to get all these bits and bobs out in silhouette without getting weird tangents or having shapes that are sitting on top of one another you know for example this upper arm here gets really kind of lost and muddy in the character um so we'll consider this one but um i think i would have to clean it up quite a bit to get it to work uh the last pose i have is this one i

**37:54** · thought well okay i did all these ones where he's hunched forward but i actually had this uh one piece of artwork this one that i had looked at where the character was actually sort of uh hips forward uh body back at the shoulders back but still had the hunch in the in the chest i thought that was a pretty cool pose as well uh and i think other than the first one this is probably my favorite um it feels like a a a like mike mignola pose or

**38:26** · something that you'd see in hellboy really kind of stylized and pushed um so i'm kind of on the fence between uh this first one and this last one um i think for my animatory eyes like i like this pose better just because it's a little bit more pushed and cool but i think for game purposes of feeling like a little bit more natural and relaxed and actually reading well from my from my camera angle uh i think that this pose

**38:56** · this kind of initial one that i did is actually still the winner you know sometimes your first idea is the best sometimes it's the fifth idea i often find that i loop back and back and back to early ideas sometimes your first gut uh gut try at something is often the best so i'm going to brush up this pose a little bit and then i'm going to run you through the process of putting it into the game all right now that we've settled on a pose it's time to get this baby in the game so now i'm going to run you through the process of exporting this animation

### 06\. Getting It In Game

**39:29** · and putting it onto our character in our third person project in unreal this is going to be our first animation in the game so buckle up there's a few steps it's not too difficult but i follow along and i'll get you there here we go all right so here i am in maya i've kind of cleaned up this scene it's got just this one pose in it i'm going to quickly

**39:52** · just change my uh my time slider here to just be 30 frames and we're going to export this baby out of here now if you did the setup you're probably kind of familiar already with the exporting process but this will be a nice little refresher we're going to go

**40:09** · to open the outliner so we're gonna go to windows outliner and we're gonna open up the thor group and click on export group and we're gonna export from there so that's gonna select the mesh and the joints we don't really need all those other things and by selecting that will remove a lot of the extra bits that we don't really need to export as part of this so once we've got that selected we're going to go to file export selection and we want it to be an fbx just like it

**40:40** · says once again as i said in the setup if you don't have the fbx export option there you might have to go to windows settings plugin manager and make sure you have f b x export this thing here turned on otherwise it won't show up as an as an option so we do that again file export selection fbx we'll hit

**41:04** · export and you're going to be given a bunch of options all we need to worry about is that we have animation selected and that we have bake animation selected and we want to make sure that the frame range is actually the frame range of our timeline here which in this case it is so we're going to navigate back to our thor anims fbx folder and we're going to call this thor nav idler f all right so that stands for

**41:36** · thor the prefix is navigation idle forward and this is just because later we might make like lookouts and stuff so we want to make sure that we have enough descriptors in here and as i will repeat over and over and over and over and over again take the time to name your things appropriate so you can keep organized otherwise it's going to be a mess so let's hit export selection this is going to take a second to run through the whole thing but it should be pretty quick we'll see and while we're waiting for that i'm

**42:06** · going to hop over into the game and do a short refresher here while we're looking in the background so we want to navigate to our thor folder okay that just finished in the background let's make sure there was nothing it says complex animations baked

**42:27** · that's fine no warnings good so hopefully this will come in without a hitch so over here we're going to navigate to our thor character and we already built this animations folder previously where we put our test animation and we're going to import this baby so import we'll navigate to characters thor anims fbx select our nav idle f open and here we have to select the skeleton

**42:58** · we wanted to be on so let's search for thor boom and we do not want to import the skeletal mesh oops we don't want to import the mesh we just want the uh the animation okay so this is going to bring in the animation on this skeleton we'll hit import should bring in just the animation file there we go and if we open this up it should be our pose now as we recall from

**43:30** · previously he's on his side but other than that it looks good so let's fix that quick remember we have to add this little offset to each of the animations on this rig if we look back to this one it was 90 in x so let's open up this file put 90 in x and hit re-import animation

**43:52** · and all that done we should have this guy rip roaring and ready to go okay so there's our idle animation as i said it's just a pose it's not animated yet but it's enough to get us started so we're going to go through the process of hooking this up to our character okay

**44:10** · now our character here in the game right now is this mannequin character we're gonna go and actually replace this whole thing with our uh let me focus on them with our thor character okay so let's start doing that the very first

**44:27** · thing we need to do before we do anything else though is we need to generate an animation blueprint now what an animation blueprint is is it is a piece of code it's like a blueprint for how the animations on the character are going to operate we're going to spend a lot of time there in the future but we're going to do just a very simple generation of it here so we're going to go to the skeleton it's skeleton base we're going to go to our thor skeleton file right click go up to create and we're going to create an anim blueprint and let's call this thor

**45:00** · anim bp okay now this is going to be a whole new world and we're not going to go super deep into it at this point but i'm going to open this up and just for the sake of simplicity because we don't want to get too deep on the blueprint now we're just going to plug our idle animation to this this is going to be our first animation we're going to hook up in a blueprint okay now you see here

**45:22** · that you have two sides to this blueprint if you look down here on the left side you have the event graph this is where we're going to eventually sort of generate our code and our data that's going to drive our animation blueprint and then over here in the animation graph we're going to have states and state machines that actually play our animations based off of that data

**45:42** · so all we're going to do for now is right click in here and we're going to search for animation by name so we're going to search idle f and you see it actually automatically contextually finds it for us and this is a play animation node and

**45:58** · we're just going to plug that right into here so what we're saying is no matter what happens to this character there's no data there's no anything this character is just going to play idle f and that is it that's all we want for now so let's hit compile you can see that he changed the pose that we brought in here we'll hit save

**46:17** · and that is it for the animation blueprint for now so now that we have all the pieces we have our we have our scale mesh we have our animation we have our animation blueprint we got to actually hook it up and replace this mannequin character that's currently in the game so we're going to navigate down to the template here into third person blueprints and in the blueprints folder here we're going to grab the third person character

**46:44** · now this is called a pawn and what this is is this is sort of the controller or the character controller that controls the whole character it has you can see the inputs it has the mesh the camera it's basically this thing like it's like a container that contains all the bits and bobs that uh uh that the character needs to operate

**47:06** · so we're gonna replace a couple pieces of this with our pieces that we just generated primarily we're going to be focusing on the mesh so if you look up here in the top left there is a module in here called the mesh we click on this you can see the mannequin skeletal meshes in there and

**47:24** · it doesn't have an animation blueprint right now so what we're going to do is we're going to replace this with our character so let's go ahead and click here and we'll get our thor character and under the animation blueprint we will get our blueprint so let's search thor again store blueprint and compile and save

**47:47** · this now if we look here in the window look our mannequin has been replaced with our character and our animation so let's hit play and see what it looks like there we are there's our hulking character and of course it doesn't run or jump but he plays the idle animation and all the controlling all the inputs and controls all work because we use the same player controller we just now have to fill out the animations uh for the

**48:18** · jump and run and whatnot but overall this pose reads pretty well if anything i think the camera is maybe just a little bit too close which we can fix later but um you know the pose itself reads okay for now so what we're going to do now is we're going to drop the weapon in there and i think we're going to be pretty much wrapped up for now so let's go back to our third person character here and we need to go through the same steps to basically bring our uh our mesh for our

**48:50** · uh weapon into the game okay so we're gonna nope maybe we are we're gonna save this scene and then we're going to open up now our prop

**49:09** · spike club and we're going to basically go through the same exact process i'm just going to select this file export selection fbx export now because this is a mesh not a skeletal mesh we don't need any of the animation settings so you can just uncheck that let's put this in the right folder props fbx and we'll call this thor spiked club

**49:35** · i'll replace that i happen to have that in there already okay and now we're good to go let's hop back over to unreal hop back down here and in our thor folder let's create a new folder corresponding to our one on the art side called props and we're gonna bring that baby right into here uh we'll go to import navigate over to characters thor props fbx spiked club boom

**50:04** · and we can just leave all the settings default we want to hit import all so it imports all the materials and everything with it as well okay now if i open this up it should look just like our thing in maya did and look at that there it be all right so the last thing we got to do is connect this to our character okay so we're going to go back and we're going to open up our third person blueprint third-person character blueprint again and we're actually going to add a new module because this character didn't have a a weapon attached to it so we

**50:35** · want to add that bit so we're going to go to add component and we want a static mesh this mesh didn't have a skeleton so it's going to be a static mesh okay we can rename this weapon mesh okay and let's grab our mesh you see when i click here it opens up all the settings for the mesh and we want to stub in our

**50:58** · club and there it is okay now if we go to the viewport here you can see that the club is in there it's just sort of attached to the root now we want to actually parent it to this character and attach it to the hand now if you've ever done any kind of parenting in maya or even in photoshop with layers and whatnot this is very similar over here in your component editor you literally just drag this up under it and it will become a child of it you can see it nested it right under our mesh

**51:27** · and now you will see over when we select the mesh it actually has some new options like the parent socket okay so we're going to hook this up i believe it's called prop write okay and we want to make sure all these offsets up here are zeroed out

**51:51** · okay now it looks like we have some issue and this is game development now why isn't it going into our hand prop write is not in the right place let's search for prop again ah we want ik hand prop right there we go that's in the right place so there we are we've got our character weapon in hand all good to go let's

**52:16** · compile save this close it and check it out in the game just to make sure everything is as we expect there we are there our character is in the game holding their weapon and they're going to animate beautifully as we go forward okay so that is it for getting into the game i'm going to do a quick wrap-up where we kind of like look at this and assess it and see where we landed

### 07\. Evaluating In Context

**52:44** · all right so we've got our character all set up in unreal and we've got our first animation running on it we can run around as our character all in idle pose it's very exciting but now is the perfect time to take a small step back and take a look at what we've made so far and make sure that it's really nailing it we

**53:02** · want to make sure that this core idle pose is exactly what we want before we move on to other things so as with all things it's important whenever you're nearing the end and looking at moving on to the next thing to take a moment and really do like a self critique of it and try to make another rev on it okay so let's take a look at this in game and see if we have any little bits or bobs or little noodly critiques that that we can uh polish up

**53:29** · before we move on to runs and whatever comes next alright so it's always important to look at the thing in game context and make sure that it is hitting all the things that we wanted to hit okay so overall i'm pretty happy with this pose it feels very aggressive feels very actiony uh you know it looks pretty

**53:47** · good from the camera as i noted i might end up pulling the camera back a little bit if i decide to do that i'll show you how to do it in the next episode but let's just for a moment talk about the pose and potentially what we could improve okay so here are my thoughts generally the things that are bugging me about this is this tangent right here kind of stands out very immediately i think that uh i might go back into maya

**54:13** · and actually pull this arm out a little bit more or shift the pose of this weapon a little bit just to get rid of that tangent that's really bugging me now of course you're gonna end up seeing the character from all different directions so it's unavoidable that there will be some tangents but just knowing that this is the camera that you'll see most of the time behind the character you want to try to clean that up as much as you can another thing that i don't love is the silhouette that this hand ended up striking now i didn't spend a lot of time on this hand pose when i was doing it uh but i think i'll probably go back

**54:44** · and take the extra time to get those fingers out into a little bit more of a clod shape that uh you know reads really well from from this camera angle uh let's spin the character around a little bit and see what else we can see um you know i think one more thing from this direction that i might have is that the character does feel a little bit twinned uh so i think i could do a little bit of work to rotate the character um and get them get that maybe

**55:13** · the upper body feeling a little bit more asymmetrical where that that right arm with the weapon is more back towards camera and the forearm is a little bit more towards a you know like a linebackery pose just to get a little bit of asymmetry into it uh on a more noodly uh perspective as we

**55:31** · sort of dig into the real details i can probably afford to add an expression to the face now i think that that uh just sort of blank expression could be improved with a little bit of a you know we didn't do any work on the face at all so that would be a nice little extra step and lastly uh the

**55:50** · the hand grip pose here just feels like he's sort of meat fisting that uh that that that that club and i think that we could get a little bit more natural grip on it um now that we've sort of decided that we like the pose so with those notes in mind um i'm not

**56:09** · going to show it in this episode but i'm going to go back and do a rev on this pose so the next time you see it in the next episode it'll be all cleaned up with those notes taken into account and with that we've wrapped up our idle pose for our character we covered a lot in this episode all the way from initial brainstorming to actually seeing it in game and critiquing it

### 08\. Your Assignment

**56:32** · now is a great time if you haven't been following along and actually doing this in the episode to go ahead and actually build your idle post for your character it's really important to make sure that this pose really shines really chef's kiss right there's so much that's going to be built on top of this pose down the road that

**56:50** · if you're not happy with it now you're never going to be happy with a lot of your other animations later that transition in and out of this pose so make sure you take the time to explore a few different poses follow through get them into game and try to find the one that you like the most and really really be hard on this

**57:07** · animation because you want to make sure that it really shines i really recommend too that you know if you're not particularly good at doing self critiques that you reach out and try to get some feedback from other animators oftentimes there's things that we miss i miss things all the time it's very hard to critique your own work so make sure that you get another set of eyes on your work and that you're looking at it in game context so that's it for this episode i hope you'll join me next time but until then happy animating