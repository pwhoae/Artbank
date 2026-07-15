---
title: "🎮 Maya To Unreal Game Animation | 01 Intro To Unreal Engine"
source: "https://www.youtube.com/watch?v=Sx94L056ZCA&list=PLzn9qrbm2X8OuNjFPw2rIj8O1h1Kt8JX0"
author:
  - "[[Agora.Community]]"
published: 2022-01-29
created: 2026-07-15
description: "Learn how to create animation in Maya and import it into Unreal Engine! Skylar Surra (Principal Animator at Riot Games), takes you through the basics of setting up Unreal so you can get an animated pl"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=Sx94L056ZCA)

Learn how to create animation in Maya and import it into Unreal Engine! Skylar Surra (Principal Animator at Riot Games), takes you through the basics of setting up Unreal so you can get an animated playable character in the engine.  
  
Although we don't start animating straight away, this episode is the foundation that will set you up for success and make your character look as appealing as possible inside the engine!  
  
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
02:31 02. Creating The Game Project  
07:59 03. Preparing The Rig  
17:53 04. Importing The Character  
24:23 05. Testing The Character  
34:49 06. Fixing The Materials  
45:08 07. Adding Props  
52:28 In The Next Lesson...

## Transcript

### 01\. Course Introduction

**0:00** · by the end of this course you'll have a playable character in unreal that can do basic locomotion that means things like idols runs jumps and all that jazz \[Music\] hello animators and welcome to my game animation workshop i'm skylar i'm a principal animator at riot games and i've been a game play animator for about 10 years some of that time i spent animating champions monsters and skins on the game league of legends but much of it i spent working in the r d space animating and

**0:30** · building prototypes for new games in this course i'm gonna hopefully take some of those learnings from over the years and teach you the basics of game animation by the end of this course you'll have a playable character in unreal that can do basic locomotion this course is going to focus on basic locomotion first because it's kind of the the earliest and easiest stuff to sort of familiarize yourself with how games work that means things like idols runs jumps

**0:57** · and all that jazz now each episode is going to be split into two parts the first will be an animation portion where we actually sit down in maya and do the animations and talk about workflow and talk about tools in maya but the second is an actual implementation portion where we take those assets that we built those animations that we built in maya and actually put them in the game and make them playable on our character

**1:21** · so if you're an animator who's been thinking about getting into games or dabbling in games a little bit and just wants to get a good foundation to to start from this is probably the course for you i'm gonna walk through every step of the way so you shouldn't run into too many roadblocks if you follow along through these episodes now this first episode is a little less glamorous than maybe you hoped it's going to be a setup episode before we actually get into all the nitty-gritty of animating there's a certain amount of just foundational work we need to do to set up our projects and characters so in this episode we're going to first

**1:53** · set up our basic unreal project then we're going to get our character from maya we're going to set up our character and export it and bring it into our engine so we can make sure that we can put animations that we do in maya actually on our character and game then we're going to spend a little bit of time just fixing up the materials on the character to make sure that it looks really good before we move on and lastly i'm going to show you how to either bring your own props from maya

**2:17** · into the engine or how to download a free package of weapons or props that you can use for your character i hope that you're as excited as i am to get started so let's get right into it and build a game all right now that we've got the preliminaries out of the way let's get started setting up this project now whenever you start a new project it's important to think through a little bit what you want to build what tools you want to use all that jazz okay so what are we going to build we're going to build a third person game using unreal

### 02\. Creating The Game Project

**2:49** · engine that's the tool we're gonna use now why did i choose a third person game well the third person camera is a pullback camera generally behind your character it's used for a lot of fantasy rpgs or that kind of stuff there's a lot of other great cameras that are really fun to work with like first-person shooters over-the-shoulder

**3:08** · top-down uh cameras for strategy games they're like that they all come with their benefits but since this is an animation course i chose specifically the third person camera because it's one of the few cameras that shows the whole character on screen but still pretty close up it's just a great view for showing off your character's animations so i'm going to run you through the setup for a basic third person game and that's where we're going to get started so let's hop over to the work machine and i'll run you through it all right so the very first step that we're going to take is actually building

**3:39** · a basic unreal project that we can start from that we can start implementing our animations into now unreal they already built a lot of templates for different types of games so we're actually gonna while i said we're gonna start completely from scratch we're actually gonna start from one of their templates there's no real reason to start completely from nothing when building an unreal project even most of professionals will usually start from one of these templates so i'm going to walk you through the process of getting

**4:07** · set up with a third person template game in unreal now the very first thing you're going to have to do is go to the epic site and download the unreal launcher this is sort of the portal for all of epic's products and if you're doing any kind of unreal development you have to download this to get access to the engine once you've downloaded this you're going to click on the unreal engine tab and you're going

**4:32** · to go over to your library now you'll see i have a bunch of games already here they're little small things that i've been working on this will all be empty for you as will this part up here you won't have a version of the engine downloaded and installed yet so you'll have to do that you can do that by hitting this plus sign here and you can add any version you want now you probably just want to select the most recent one don't do the preview one probably the the most recent stable one uh right now

**4:59** · i have 4.25.3 which is one of the more recent ones but by the time you're watching this video there may be an even newer one just download whatever the latest stable one is and you'll probably be fine once you get to that point once you have your engine installed and you're ready to go you're gonna hit this launch button and this is gonna bring us to it's gonna take a moment to open but it's gonna bring us to basically a game creation wizard which will give us a bunch of options for setting up our unreal project um

**5:31** · you'll see in here that there's actually a bunch of different templates you can work from you can work from uh a like side scroller game you can work from a vehicle game you can work from a flying game so we're gonna go through this process and we're gonna be setting up a third person game i'm gonna just pretend like we're building a sort of third person fantasy game just because i think that that's a great camera to sort of show off our animations from uh you

**5:57** · get to see the whole character on screen it's pretty centered it's just a nice way to see your animations and your whole character moving around in the game so once you get to this uh project creation wizard we're going to click on a game because we're making a game we're going to hit next and here's the menu i was talking about where all your templates are you can see there's a lot of options here and if you want to explore these i'd highly recommend it they sort of have the basic functionality for whatever genre or type

**6:21** · of game they're describing but for the sake of this demo we're going to click on the third person game and hit next and this is the last step we've got to do you don't really need to worry about this stuff unless you're a little bit more of a power user and you're doing fancy stuff the main thing that we care about is putting in a name here and making sure that this isn't a location that makes sense for us okay so i'm just going to call this third person demo and i'm going to leave it on my

**6:49** · desktop i'd recommend you maybe put it somewhere more reasonable than that but for the sake of ease for me right now i'm just going to drop it on my desktop and it's going to compile and build on this project there so let's hit create project this is going to take a few moments and it's actually going to open the project we just created for us

**7:08** · now when this opens what we're going to see is the generic unreal assets with some basic third person functionality and if we hit play up here you'll see we have a character camera all set up this is the basic unreal mannequin they call it you can run around using the wazdy keys jump with the bar it has some fun basic stuff in here like falling and whatnot and this is the foundation that we're going to start from now we're going to add a lot of functionality on top of this uh but

**7:39** · as a starting point this sort of has the basic controls and features that we already want so there's no reason for us to start from anything but this template now that we've got the initial project set up out of the way we're going to hop back over to maya and i'm going to explain to you how to prepare and export your character so that we can bring it into the game

### 03\. Preparing The Rig

**8:01** · now i'm going to walk you through the process of kind of picking apart our rig in maya a little bit to get only the pieces we need and then exporting those out into a file format that unreal can understand now when i say we're going to pick it apart what i mean by that there's actually only a couple things that we need from this rig you know when you open up any rig in maya there's a lot of stuff in there there's your controllers there's sometimes extra helper things and whatnot the only things that we really care about getting into the game engine are the skeleton and the mesh now

**8:30** · if you're not familiar with these concepts the skeleton is the group of bones that the sort of underpinnings of your character that control your puppet and the mesh is the actual skin on the outside the shell what you actually see moving in the game uh there's a thing called skinning that's connecting those two things together and those are the objects that we want to bring out we want to bring the bones the mesh and the skinning information it's not particularly complicated but it is a couple steps so let's hop into maya and i'll walk you through it okay now before we get into

**9:03** · fixing up our rig and getting it ready to export slash import into unreal there's a little bit of housekeeping i'd like to do first and that is setting up some basic folder and infrastructure for this project and the assets that we're going to work on now this might sound kind of boring but i try to think of it as paying it forward to my future self you know i'm going to be working in these files for probably months and

**9:30** · it's worth it to take the time to make sure that it's organized up front so that once you get hundreds or maybe even thousands of assets depending on the game you're working on you have good naming conventions and they're all sort of placed and put in folders that make sense so i've downloaded the thor rig from the agora community page that's the character that i'm going to be using for this workshop uh and i have my thor rig

**9:53** · folder and my third person project folder that i just created so i'm going to open up my project folder here and i'm going to create a new folder called source assets now this folder is going to contain all of my assets that don't go into the game

**10:13** · so it's going to be all my maya files all my character material files all this junk that i have my animation files that aren't actual like game things but our assets that are related to the game are all going to go in here so next we're going to create a folder in here called

**10:32** · and sorry for my clacky keyboard i'm sure you can probably hear that on the mic and lastly in here we're going to create a folder called thor and i said lastly but we're actually going to have one more layer where we create some categories of things for this character so we're going to create atoms where all our animations are going to go we're going to create one called rigs

**10:58** · and for real lastly we're going to create one called textures okay now we're going to pull all the stuff out of this thor file and put it into our own hierarchy so inside the scenes

**11:14** · uh this is the the rig that i'm going to be using yours might be called something different um i have rigged version 17 whatever that means i'm actually just gonna for now for my own sake delete off the 17 just call it thor rig and we're going to drag that into our rigs folder i'm going to go back up to thor we're going to go back here to source images i'm just going to grab everything these are all of the texture images for this character and we're going to drop those into our textures folder

**11:44** · now there's lots of other stuff in here like if you want to set up the picker and whatnot and have some of these other other functionality in there you can feel free to move those into folders that make sense for now i'm just going to abandon the rest of this stuff and leave it where it is all right so now that we have our rig in the right place we can now go over to maya open this up and get started so i already have my open here and we're going to file open and navigate to that folder so that was called third person demo

**12:15** · and in our source assets characters and what i'm going to do is i have an old one here i'm going to remove this and i'm going to add this to my hot bar over here because this is a folder we're going to want to go to a lot this thor folder so now it'll always be in my hot bar here and i can easy access it we're going to open up this rig

**12:37** · oops i am in the wrong place let's go back i selected the wrong demo third person demo here we go source assets characters thor there we go we're gonna open that one

**12:54** · all right it's going to take a moment to open up this rig has a little bit of a load time but once it gets going it runs fine and here we are all right so i'm going to turn on my materials here we're just going to run the basic materials and here we go here is our thor character now we only care about two things in this for the sake of our game right now we care about the bones and we

**13:22** · care about the mesh those are the only two things that we're going to export out of the scene so what we want to do is we want to strip away everything else and basically create a version of this rig that has only the things we want to export we don't want to get all the controls all the groups all this extra junk it's just going to confuse unreal and turn into a mess when we try to bring it in so how we're going to do that is we're going to go over here to the outliner if you don't have your outliner open you can go to windows outliner it'll bring this right up

**13:50** · we're going to navigate down from this thor group down to this export group and inside of this esport group there's two other groups the bind group and the render group the bind group contains all of our bones among other things and the render group contains all of our geo so these are going to be the things we care about but we want to pull them out of this hierarchy because we don't care about all the other stuff above it so i'm going to grab the root bone by just clicking on it left clicking on it and i'm going to middle drag it out of

**14:16** · the hierarchy out here into the top level then i'm going to do the same thing with the geometry we don't want this render group we just want the thor geo group and we're going to drag that out of there too and then to clean up this scene we're going to delete everything else out of here we're just going to literally click on these things and hit the delete button it may take a moment to actually do it um

**14:38** · play some jeopardy theme music okay we're going to delete this we're going to delete everything we can out of here that's not our character we'll delete animbot and there we go we have just the root and our geo now for the sake of saving ourselves a headache later we can save this out as thor x port rig

**15:04** · and drop it in the same folder there just in case we have a crash or something we'll save ourselves time down the road now we got to take this thing that we made this stripped down version of the rig and actually export it out and we're going to export it out as an fbx file now if you haven't used fbx before there's sort of a universal more generic type of file than like ma files or mb files and that's generally the type of files that you're going to import into game engines it's fbx don't ask me why i

**15:34** · don't know the reasons it just is what it is um so what we're going to do is we're going to first grab the root and our geo and say file export selection we're going to click that little dialog box because we want to make sure that we're exporting as an fbx okay now if you don't have fbx as an

**15:51** · option which is possible what you can do is make sure that you have your fbx export plugin turned on this is a default plugin for maya but sometimes it's not turned on by default so if you go to windows setting preferences plugin manager and type in fbx you want to make sure

**16:10** · that your fbx maya plug-in is actually loaded if it's not check those boxes and then when you go to file export selection again you should see fbx export as an option okay so i'm going to hit export selection and we're going to be confronted with a whole slew of options here you don't need to worry about these too much the only thing is if you have this animation box checked you probably want to uncheck it because at least for now we don't want to actually export any of the animation from the scene we just want this the stuff that we have selected the

**16:42** · the the model and the bones okay so let's navigate back to our folder where we're at again do our third person demo uh source assets characters thor riggs and in here let's create a new folder called fbx

**16:59** · and we will call this thor scale mesh and this stands for skeletal mesh because that's what characters are called when you bring them into unreal we're going to hit export selection this will take a minute to go through all the pieces of this character export them as an fbx you might get some warnings don't worry about it they're not important things it's just about materials so that's it for the export process now we're going to hop back over to unreal and we're going to import this character into unreal now assuming we've done all

**17:33** · the steps correctly up to this point what we should have is a nice clean fbx file that has only the things in it that we need to get into our game now the fbx file is this sort of intermediary or middleman file type that both maya and

**17:48** · unreal can interpret and understand so next up we gotta get this baby into the game let's hop back over to unreal now and take that fbx we created in the last step and i'll show you how to import it into the game okay so here we are back in unreal uh let's talk a little bit about

### 04\. Importing The Character

**18:06** · the layout here for those of you who may not have really used unreal at all before here you have your main viewport we did do a tiny bit here before we hit play and worked in it this is where your sort of game level and characters actually run from uh and is this the

**18:22** · closest visual representation you have to what your game is actually going to look like down here a lot of the area we're going to work in this is called the content browser i personally like to have this torn off and pulled over to another screen but because i only have one screen i'm going to kind of leave it in the default layout now the one thing i am going to change though is the way that this uh the the

**18:42** · view here works so i'm going to turn on this uh folder view here so i can kind of see the hierarchy of the project and then this is just sort of a personal preference but i kind of like it to look like windows file explorer a little bit when i'm working so you can also go here and switch this to columns so you can just see names and small icons kind of how you would when browsing around in window that's 100 up to preference but that's kind of the layout that i like to have now before we import our new character in i want to do

**19:14** · just like we did on our art asset side do a little bit of folder structure here so that as closely as possible our unreal folder structure matches the folder structure that we have on our source asset side so basically we're going to just duplicate the exact setup that we did before but here in unreal so i'm going to click on content and make a new folder which we'll call surprise characters and inside that characters folder

**19:44** · this is going to sound repetitive but we're going to make a folder called thor and in this you guessed it we're going to create three folders called anims and instead of rigs we're going to call it mesh on this side and they also don't call textures textures and unreal textures are just the actual images so we're going to call this folder materials

**20:15** · okay so we've got all of our folders set up let's bring this character in and see what it looks like so we're going to click on this mesh folder because that's we're going to bring our skill mesh into now to bring a file into unreal there's lots of ways you can do that as it indicates here you could just drag and drop it but i like to just click import up here it's going to import into whatever folder you have selected so we'll click import and we're going to navigate over to our project third person demo

**20:44** · go into our source assets characters thor riggs and remember we dropped it in this fbx folder so we're going to grab our thor skelmesh.fbx and hit open now just like when you exported from maya when you import here you're once again confronted with more options than

**21:03** · you will ever understand what you need to do with i don't know what half these things do you can kind of expand these out by clicking these little arrows so if you care to look through them all you can the only one that's particularly important to us is in this first menu so if this is collapsed like mine was just click this little arrow drop down to get these sort of main import options now by default this option might be selected use t0 as reference pose what

**21:30** · this means is instead of using the actual default pose of the rig if this is selected it will instead use the pose from time 0 or frame 0 on the like animation file that's coming in we don't want that we want to actually use the

**21:46** · default pose of the character because that's how it was rigged and that's what we want right so we want to make sure that's unchecked other than that you can pretty much leave the rest of these as they are by default they should work fine now you'll notice that it already automatically recognized that this was a skeletal mesh and that we'd want to import the mesh and whatnot so unreal is

**22:06** · pretty smart it can generally recognize the type of asset you're trying to import and it will try to appropriately give you the menu and and type of thing that it is uh and i would say 99 of the time it gets it right so we're just going to hit import all and this will take a minute because it's going to be importing the skeleton the mesh all the skinning

**22:27** · weights it's going to be importing all the materials and whatnot as well so we'll just be patient for a moment as it comes in can home a song do whatever maybe go get a cup of coffee and there we go okay so let's take a look now it did give us some errors um i'm just going to say that these are nothing that are particularly important it's just some information about smoothing groups so we're not going to really worry about them let's open up our scale mesh by double clicking on it

**23:00** · it opened over here so let's bring it here and lo and behold this looks pretty similar to our character in maya let's pull it up now you will notice that the uh the pose is a little bit different because the actual default pose of this character the bind pose does have the characters arms down at 45 degrees what you're seeing in maya is a sort of artificial

**23:24** · pose that's then that's then put on the the rig to give you just like a more straightforward pose to actually start animating from but the actual buying pose of the character is correct to what we're seeing in unreal okay so all this looks pretty good the next thing we're going to do is bring in one of our test animations that i made to just make sure that it's all moving as we expect and then after that we're going to update all these materials so that this character actually looks like the beauty shot with all the shiny armor

**23:55** · and all that beautiful jazz so let's hop back to maya briefly we'll pull in an animation and we'll do the export process for an animation so that we can make sure this whole rig is working exactly as we intend in the game and with that we have our skeletal mesh set up in unreal what we should have at this point is essentially the same skeleton same mesh same skinning that we have from maya now in engine ready to hook up some animations too

### 05\. Testing The Character

**24:25** · at this point in the game it's tempting to just move on and start animating our character but we want to pause and actually make sure we do a couple tests to make sure everything is working as we expect we put that scale mesh into into unreal from maya but we

**24:41** · haven't actually confirmed 100 that everything is moving as we expected so what we're going to do is we're going to take a test animation from maya a nice range of motion thing that kind of moves the character around a lot bring that over into unreal compare the two and make sure that we're actually getting all the same motion and behaviors that we expect in both before we get too far ahead all right back over in maya

**25:05** · i've cooking showed this a little bit so i already have an animation that i previously made that we're going to use as a test animation but if you want to go through this step and actually create a little test animation uh generally what i try to do for these kind of test animations is create an animation where just all the bones in the character are moving it's not about making a good animation or an animation that is actually anything

**25:32** · the point is to just get movement on all the bones so that when we put it into unreal we can actually see if all of our pieces of our character are moving as we expect okay it just gives us something to uh sort of test and compare against okay now the one thing to know whenever you're making an animation for games is you want to make sure your rig is referenced into the file you never want to actually

**25:56** · open your rig file and work directly on that now that's a new concept to you i'm going to explain it really quickly when you're making an any animation for games so we're going to go through this i'm going to create a new scene we'll just save this guy for now

**26:15** · when you're creating a new scene you want to reference the rig in what that means is you're basically bringing in an instance of the rig file and sort of uh creating this connection between that other file out there you're just dropping an instance of it in this scene that way if you make a change to the

**26:31** · base rig at all or let's say agora studio releases a new new rig that has a new control feature on it that you want to do you could actually update your existing rig and all the scenes you have it referenced into all those referenced versions will update as well okay so it's really just about like future proofing your scenes and how you do that is you just go to file create reference and you can navigate then to your rig

**26:58** · we're going to grab our normal rig it'll take about the same time as it would to actually open the rig to reference it in here and as we saw before this does take a moment to open but once it's in here it will act as if you just opened your rig scene but this is just an instance of that rig not the actual rig itself so you can see here it looks and acts in every way

**27:22** · like our rig does but if we go to file reference editor we can see that this is actually just referenced into the scene and in fact if we pull this menu down uh oh i thought it would actually show us the file name yeah there we go you can actually see that it's referencing the file location of that actual file

**27:43** · uh and you could turn this off it'll remove it from the scene temporarily you can turn it back on you could have lots of different things referenced in here click them off referencing is just a really powerful tool for workflow that you should get used to using okay so let's hop back over to my animation i don't want to wax eloquent about referencing but let's hop back over to our animation test and we're going to export this out bring it in unreal and use it as a test

**28:07** · animation okay uh so let's wait a moment for this to open sorry i'm doing a lot of opening waiting but that's par for the course in game animation you spend a lot of time waiting for things to open okay here's our animation now when we export an animation we don't care so much about stripping down anymore because actually all we're exporting all we care about is the actual like transform and rotation information on the bones themselves okay

**28:38** · so what we're going to export we're still not going to just export every old thing but we're not as worried about stripping it down in the same way that we were with the rig so what we're going to do is we're still going to go here in the outliner we're going to go down to the export group

**28:54** · and we're just going to export the bones that's all we need we don't need to select anything else we'll just select this root bone and then we'll hit file export selection just like we did before we want it fbx again as i said fbx's are

**29:09** · what we're going to use for everything that we transfer from maya to unreal export selection and this time instead of ignoring this animation box we actually want to check it i'd also recommend checking this bake animation box uh what this will do is it'll bake the animation out before it goes and just generally i think it tends

**29:32** · to uh guarantee that your frame data is better but you probably might might even know more about that than i do i just know that i've got better results checking it so i recommend checking it uh we're gonna go up we're gonna drop this in our atoms folder here we'll create yet another uh fbx folder to hold all our fbx's because in the future we're going to have a lot of fbxes in here

**29:58** · put this in here and we'll call this uh what do we want to call this thor anim test how's that sound and we're going to hit export selection now what this is going to do is you'll see that this little marker is running along the bottom here what it's doing is it is running through all the bones in the character and exporting all their transform rotation location information

**30:22** · per frame it's basically cashing out all the frame data on those bones for us and that bone data is what we're going to bring into unreal onto that rig that we put in previously this should just take a moment more usually doesn't take too long there we go it'll give you a warning that complex animation was baked gives you this warning every time i don't know what it means it's never affected anything i've ever worked on someone smarter than me can probably tell you what it means but

**30:49** · who knows okay so then we're going to go back over here to unreal and we'll go to our anims folder now we're going to go through the import process again import we'll go up one level to our animations fbx animtest boom open okay now you'll see that contextually

**31:10** · it recognized that this was not a skelmesh that we were importing right you see all that stuff that we had in that other one about meshes and all that junk it's gone it actually recognized that because we checked that box and actually exported the bone transform information that this is an animation and it's just asking us

**31:28** · what skeleton did you animate this on okay and you'll notice when we click this drop down that we have two options we have the thor skeleton or the mannequin skeleton and of course we're going to select the thor skeleton because that is indeed what we animated on and we're going to hit import now it's doing the exact thing in reverse that maya was doing it's looking through all that frame data and in this case it's looking at our skeleton and matching up all that bone data to the bones in our rig okay once again you get some warnings trust me it doesn't matter let's open this up and see what we got

**32:01** · now there's an obvious problem uh thor is laying down on the job which uh this is a result of how this rig was authored um the orientation in maya is different than what the orientation in unreal expects and that might seem like it's a big problem this confused me at first yours may actually come in right depending on if the rig has been updated i'm using maybe a little bit older version of the rig but if your character

**32:27** · comes in like this your animations do not fret it is very easy to fix what we're gonna do is we're gonna go here to the uh import rotation data so over here in your menu your asset deal sales if this isn't open for some reason you can go to window asset details and it will open this menu up so down here on import rotations we can actually apply a rotation on import to this animation to fix this

**32:55** · now i just know for a fact because i messed with this before that the rotation we need is 90 and x if your character is rotated some different way or using a different character and you have this problem you just have to figure out what the offsets you need to apply are so i'm going to put 90 in x

**33:11** · and then we're just going to click this re-import animation button now it's going to reimport this animation but on import this time it's going to apply the 90 degree rotation onto it and we should see when i click this button the character come in playing the same exact animation but now upright exactly as we expect let's see if i'm right

**33:34** · and lo and behold there we are we have our character upright doing all these weird wobbly things and it looks just like it did in our maya and we can actually go one step further and actually drop this directly into the game we can go back to our content browser here grab this animation

**33:55** · drag it i just clicked and dragged it right into here and we play the game we can get a little look at what this will eventually look like when our character is moving around in game pretty cool and it looks like at least at a glance everything is working correct so we're going to stop with the character and animation portion of this right now and move on to getting all the

**34:18** · materials cooked up to this character with that complete we're pretty much done with the animation portion of the setup for this character now if you don't really care about what the materials or the textures on the character look like or adding props to your character at this point you can kind of skip the rest of this your character is ready to go ready to animate but over the next couple steps i

**34:39** · am going to walk you through how to make your character look a little bit prettier a little bit more like the beauty shots and help you set up or potentially bring in some props into unreal that you can use later for animating you probably noticed at some point during this process that your character's materials don't look like they do in the beauty shots of this character they're probably just gray flat colors or at least they're not

### 06\. Fixing The Materials

**35:02** · right in this step i'm going to walk you through how to hook up all the correct textures and materials and to get your character looking all pretty now this is a purely aesthetic step you don't need to do this but it will make the character look pretty much like it does in the beauty shot with the shiny armor and whatnot and it's kind of a one-and-done thing so once we get through this process one time it's done

**35:23** · we never have to come back and do this again i also want to warn that we are going to be working in one of the more confusing editors in unreal the materials editor if you're not familiar with building like materials and shaders some of the concepts in here might not really make much sense but just bear with me i'll walk you through each step and i'm only going to really show you what you need to know to be able to get this character looking good and then you never have to come back to these editors again if you don't want so let's go ahead hook up

**35:49** · these materials and get confused in the material editor together now the next thing we're going to do we're going to step out of the animation and skeleton and and mesh wheelhouse will world that maybe we're all a little bit more familiar with and step into materials and textures a little bit now if you don't really care about your character looking like those beauty shots up on the agora site with all the materials and and whatnot

**36:19** · and all the shiny armor and whatnot and just want to focus on animation you can skip this step i understand it is a little bit tedious and a little bit outside the realm of normal animation stuff but it's also kind of a one and done thing it's a little bit of a tedious process to go to and hook up all these materials but um once it's done it's done and you don't have to worry about it anymore so i'd recommend taking the time to do it if you want your character to look nice so what we're going to do is the first thing is to hop back over to our mesh

**36:47** · folder okay now you'll notice that when we imported our scale mesh it actually imported a lot of other stuff along with it the thing that we care about that it imported was these placeholder material assets all these things labeled mat

**37:03** · okay so we're actually going to grab all those mat files this one is not called mat but it is a material so we're going to grab all those and we're just going to click and drag them over into our materials folder and you have a couple options here when you do that but we just want to move there okay so this is just organization we're just going to plot them over there for now so they're in the right folder now these are mostly blank materials if you open

**37:32** · them up you sort of brought to this editor and this looks like a lot of stuff but you can see basically these just have a grayish white material plugged into them what we want is we know in those source asset folders that we actually have all of the texture sheets for this so we want to grab those bring them in here and start hooking them up plugging them in i'm not going to hook up every single material for this character i'll run through a couple of them just to kind of give you the idea and give you all the information you need to be able to do the rest the process yourself okay

**38:04** · so let's go ahead and close this material for the moment we don't want to save it and we're going to go to import and we'll navigate back up to thor and then to our textures folder now there's a lot here we're going to bring in literally everything so let's grab it all open it's going to take a moment to go through all of these

**38:27** · but it is going to bring these in as texture sheets just like basically images in here that we can start plugging into materials you'll see it brought in all of these images let's just save those quick

**38:42** · and how we're going to do this is we are going to go back to our skel mesh and we're going to find a material that we want to hook up and i think the best one to start with is probably the chest because it's the primary one

**38:59** · that has kind of like the shiny metal parts to it and whatnot so that's going to be the torso material now we can actually navigate right to our placeholder torso material right here we can just double click on it and it's going to bring us to this now as i said before this looks a bit daunting we're not going to do anything fancy in here you could teach entire classes about this materials editor we're going to do the most basic thing which is just plug in

**39:25** · the things that are named the things that are on this so when we look at the files we're gonna see that there's files called color metallic roughness uh ambient occlusion uh normals and so on and so forth and we're literally just gonna plug them in to the to the name of the thing that they are so let's minimize this a little bit go to our materials folder we're going to scroll down until we find the ones that are all listed torso and we're going to shift grab all them

**39:54** · drag them into here and that's going to generate a bunch of textures in here okay let's spread them out a little bit okay and we actually don't need this basic one that's in here so we're just going to get rid of it so let's click on this and you'll see over here that it tells you what the name of this file was weirdly it doesn't display it here but it does over here

**40:17** · so we can see this one is the torso color let's say the rbg value of this that's all the colors combined plug it into base color next up we have the metallic we're going to do the same thing we're going to plug this into metallic then we have ao that stands for the

**40:33** · ambient occlusion we're going to plug that down here into ambient occlusion you can see this is real hard stuff this is the normals we'll put that into the normals and lastly we have the roughness which we're going to plug into the roughness let's straighten these guys out i always try not to have my pins crossed over you trying to cross the streams as they say and there we go let's take a look at what it looks like on thor we'll save it

**41:08** · and check it out okay so that's pretty easy right now the only thing is i did notice that um this comes out extremely shiny uh it looks a little bit like wet plastic or something so i'm going to show you quickly how if you want on any of these materials you can kind of increase or reduce the shininess of

**41:29** · these because some of them did come in a little shinier than i would have liked so i'm going to go back over here and the shininess primarily is coming from this roughness so what we can do is we can add a very simple multiplier to this to either increase or decrease the roughness so what i'm going to do is i'm going to pull off i just clicked on this rbg i'm going to pull off into nowhere's land and i'm going to say multiply

**42:01** · and we're going to plug this multiply in here now when we want something to feel uh less shiny or less smooth we want to increase the roughness so in this case we want the number to be higher so if we're multiplying it by one it's just going to look exactly like it did because it's multiplying one of its roughness by one right so if we want to reduce how shiny it is we want to increase the roughness so if we go to let's say five you'll see it

**42:30** · starts to load here and now it's like pretty dull so maybe we want somewhere in between maybe let's do three and that'll probably be kind of in the ballpark of what we want because we do want it to be shiny i just personally wanted it to look a little bit more math than what it was oh we do have to save it to actually get it to update

**42:52** · okay and you can see when we go back over here now we get something that looks a little bit more um like brushed metal as opposed to buff metal which i think is probably more appropriate to what we want so if you go through each of these different materials and sort of plug in the different parts of them you'll get something similar to this and the only thing you'll probably need to mess with like i said is the roughness the only one in here that's sort of an anomaly is the eyes because i

**43:22** · don't think there is any textures for the eyes so i'm going to show you how to just make an extremely simple eye glow material super basic will take like two seconds we're just going to take this color here make it kind of bluish

**43:40** · because we're going to have glowing blue eyes and we're also going to plug this color then into the emissive so that it basically glows this color as well and we could do a multiply here too and really amp this up

**43:56** · make it more emissive by let's say five and really get a good glow on maybe we want to make this a little bit paler so it's a little bit more white with just a tint of blue around the edges that looks maybe right and you can kind of tweak that however white or however blue you wanted heck you could make it red we could make evil thor let's save that out

**44:26** · and go back over to our skill mesh and we now have glowing blue eyes they could maybe be a little bit more blue but you can fiddle with that so that's all i'm going to do for the materials i'm going to skip ahead now and we're going to go on to the last step which is adding some props into this project okay all right now i've showed you all the steps and tools you need to go through and finish all the materials for this character now it's probably a good time to pause in this tutorial and actually go

**44:55** · through and finish all of those i know i didn't get through every one and they will take a little bit of time i know it's a little bit tedious but it's best to do it now while it's fresh on your mind and just get it out of the way after this we're going to go on and try to get some props into the game and then we'll be finished with setup

### 07\. Adding Props

**45:12** · here we are in the final stretch in this last step i'm going to show you how to take some cool weapons or props from the unreal marketplace bring them into your project and then also how to take those same weapon props export them back out and get them into your maya project this is really important because if we want to have these weapons and whatnot to animate with we want to make sure that we have the same exact models to the same exact scale in both unreal

**45:38** · and maya so let's hop over to the marketplace and buy ourselves some weapons so here we are on the last leg of this episode which is adding props for our character to use now i wanted to have some kind of weapon to use for animations you might want to try to add a thor's hammer or a sword or whatever

**46:00** · i'm not gonna abide by the classic thor mythology and i kind of wanted to have maybe like a spiky mace or something so i'm gonna show you two ways that you can go about finding some weapons and bringing them into this project so that you can use them for your animations in the future so the first method i'm going to show you is the marketplace method

**46:28** · if we go back over to the epics game launcher we'll go back and open this up i just right clicked on my menu down here and hit unreal engine over in your library you see that i have a bunch of assets that i've downloaded from the marketplace and we can add these to our project now i know for a fact there's a nice little pack of weapons called the infinity blade weapons that are free uh you can go to the marketplace

**46:57** · just take a moment to load and you can search infinite e and you can get these infinity blade weapons now they're free to download so they're a nice little pack there's a lot of crazy stuff in there they're not always on a style but they're always a good starting point for me when i'm just trying to look for some weapons to prototype with once you've found some weapons on here that you like you can go back to your library and from here

**47:28** · you can click add to project okay so this is going to then bring you up all of the projects that you potentially have on your computer now you probably only have the one you just created unless you have your other own personal projects but here is my third person demo that i made i'm just going to click on this this is easy peasy and we're going to hit add to project now you see in a moment that this actually will happen live it was almost instantaneous all these weapons are now in here we have oh they're slowly being added here uh this is bringing in all of the

**48:01** · uh uh the meshes and skill meshes for all these things so we can open up one of these and look at it so here's like a bludger mace thing and whatnot they're pretty cool okay now i'm not gonna go too much further with this um the only thing i'm gonna show you is you're probably wondering like okay well i got this in unreal how do i actually get it out to uh actually use it

**48:26** · in my maya scene okay so on any of these uh on any of these weapons you can actually do like a reverse export out of unreal that you can then use in maya so on any of these skeletal meshes you can right click and say asset actions export

**48:50** · and you see that you can actually export this as its own fbx if you wanted to do this you could just save it out to a props folder or something in your scene or in your source assets and then pull it into maya as if it was any other mesh asset it'll have its materials and everything associated with it it's pretty cool okay i'm going to show you one other way to bring props in which is if you have happened to download or make your own props in maya

**49:18** · you're going to use a very similar workflow to how we exported and imported our skeletal mesh so as an example i created this perfect beautiful representation of thor's hammer maybe the best version that's ever been made and we're gonna try to put this in the game okay now the important thing is if you make your own or try to download one

**49:41** · the only thing you really need to be worried about is that whatever you expect the grip position of the weapon to be that should be at origin and you should have no transforms on your on your weapon okay so make sure that your grip position is snapped to origin

**49:56** · and then you've frozen out all your transforms so if there's any transforms over here you want to click on all this say freeze all freeze them out okay now i'm going to undo that because that actually just messed up my position and then the other thing you want to do once you freeze things just to make sure that this comes in clean and to unreal you want to make sure that you delete all history on this object so you can do edit delete by type history

**50:21** · that'll turn this mesh into a clean mesh doesn't have any transforms doesn't have any history associated with it should come into unreal nice clean and easy so we're going to export this we're going to go through file with it selected say export selection just like our other meshes and whatnot that we did we're gonna make an fbx

**50:46** · we don't want any animation in this case and let's go put this up into a thor we'll create a new folder here called thor props and we'll make a folder in here called fbx

**51:02** · call this thor's thor perfect hammer because what is better than this and we'll call it done super fast this is a simple piece of geo you can go back over here we can add a props folder here in our thor as well

**51:26** · and just like all the other stuff we imported we'll click on import navigate to our fbx select it open you see it recognizes that it is a mesh it notices there's not bone so it doesn't check a skill mesh unreal is really good at understanding what you're importing and we just import

**51:48** · and there we have it a what happens to be very minuscule hammer i didn't check the scale of it before i checked it in um so that is one thing that maybe you want to consider is that you actually scale your weapon relative to your character so that it doesn't come in as a microscopic ant hammer what is this a hammer for ants uh so i would go back and fix that and

**52:10** · scale it up in maya then freeze out all those transforms again and get it to be something that's more appropriate for my character but that pretty much covers all the ways that you could or would want to get a weapon or prop asset into unreal so that is it for the setup for today and that's going to conclude episode one in the next episode the first real animation episode

### In The Next Lesson...

**52:35** · of the series i'm gonna focus on idol animations so we're gonna talk about what makes a good idol pose how to get some character into that and get our idol in game on our character in the next episode so tune in next time and until then happy animating