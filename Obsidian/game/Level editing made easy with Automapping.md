---
title: "Level editing made easy with Automapping"
source: "https://www.youtube.com/watch?v=QXeCCvGgHhk"
author:
  - "[[AdamCYounis]]"
published: 2022-12-11
created: 2026-11-15
description: "NOTE: Since Tiled v1.9 was released, some of the details in this solution are no longer necessary (specifically, region layers can be omitted if you use the new workflow). as always, check your versio"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=QXeCCvGgHhk)

NOTE: Since Tiled v1.9 was released, some of the details in this solution are no longer necessary (specifically, region layers can be omitted if you use the new workflow). as always, check your version and the relevant documentation for the most up to date information :)  
  
Hey Pals!  
  
Back with a new video all about Automapping in Tiled, which is my level editor of choice. Automapping / Autotiling can make level design really easy and fun without sacrificing fidelity in your designs by automating the process of placing each tile once you've input your scaffold. I use it all the time for Insignia, and in this video I show you how to set it up yourself.  
  
Get "Tiled" here: https://www.mapeditor.org/  
Get the Unity importer plugin "SuperTiled2Unity" here: https://github.com/Seanba/SuperTiled2Unity  
  
Chapters:  
0:00 - Introduction  
0:35 - About automapping with Tiled  
3:58 - Why I don't use the native Unity solution  
5:06 - Creating a simple tileset  
11:20 - Setting up automapping in Tiled  
15:32 - Creating rules  
28:56 - Taking your maps further  
33:25 - Conclusion & Outro  
  
Music:  
Helynt - Chillcraft \[Gamechops.com\]  
\----  
  
This video features clips from my stream. Catch it live: Mon, Tues, Wednesday and Fri 1-6pm AEDT.  
  
Twitch: http://twitch.tv/adamcyounis  
Twitter: http://twitter.com/adamcyounis  
Discord: https://discord.gg/9WkRG7s  
Become a Patron at https://www.patreon.com/adamcyounis  
Download assets and games from the stream at http://uppon-hill.itch.io/  
  
Later, pals!

## Transcript

### Introduction

**0:00** · foreign welcome back to a new video today I thought I would cover a topic that I've actually not really ever gone into this much detail about but it's kind of been around the channel quite a lot which is auto tiling entitled my first video on this channel was actually a video covering this topic but it was me figuring stuff out on a stream it wasn't very uh tutorially so since many of you

**0:27** · have been asking for it here is a video where I'm going to go through the process and the motivations for why you would use this system so let's get straight into it the first thing I want to show you is like a scene that has you know a level of polish that I would say is consistent with what I want to do in

### About automapping with Tiled

**0:44** · my game right so we've got a nice lovely sort of like parallaxy background we've got uh you know mid and foreground art resources and we've also got this level here in the middle which the player is standing on and that's a tile set basically that's the geometry of the level now this asset here is the is the

**1:03** · tile set and everything here is is files right so I can go here I can go into the grid this is a Unity tile set and you can see that each of these pieces fit inside of these little grid spots okay it's very detailed there's a lot of variation you can see just to represent the ground we have one two three different tiles we have slopes we have different kinds of slopes we have slopes even on the ceiling different kinds of walls and there's not a lot of repetition visually so it's a lot of detail and if I was to place these one

**1:33** · by one it would be very difficult to modify this geometry right if I wanted to make the bridge a little bit wider or make the ceiling a little higher it would take all this time you know very meticulously cutting and pasting things to try to make it all work and to tessellate correctly but there is an answer to this and that is using a feature that exists in something like a software called tiled tiled is a free piece of software you can download and the plugin for Unity super tiled to Unity is also available for free so

**2:05** · there this is the map and basically that map is is this right this is what is it's like the output but it's not the input right it's not what I'm working with what I'm working with is this a more simplistic version so all I do is I

**2:20** · work with the Prototype all I have to deal with is this like 12 tiles right or whatever it is so if I want to make this you know a little bit lower I can bring this down like that and maybe I want to make that bridge a bit wider I can come across this way and I work that way then I just press Ctrl M and it will update if I make this less visible again you can see it it looks just fine right I didn't have to do anything on a per tile basis

**2:47** · to get that visual representation right just to make it really obvious I can still stay in this prototype layer and I can just grab a bunch of blocks and I can draw like a big brush out here Ctrl M it updates immediately and yeah it looks like it's designed to be that way and what's great about this is that this file is saved inside of unity in my project folder and when I come back here it will update immediately it can be really really easy to work with these very high detailed assets which you know

**3:16** · you want to make for your game without having to go through the effort of manually placing every block so you might ask the question how do I do that so the tile sets themselves look like this lots of tiles lots of detail and the input tile set is is this one here right very simple there is a middleman file that you have to create which is called the rules file that does that and this rules file defines a series of regions and a series of inputs and a series of

**3:46** · outputs on different layers above them and so all you have to do is Define the input and the output so you're effectively creating an algorithm that is a series of rules that says when you see this output this so that's it that's basically how it works I want to like build a fresh tile set for you and then we'll make it auto tile now okay now some of you might be aware that Unity does have its own uh Auto tiling solution it's part of the experimental tile set package it's not ideal for

### Why I don't use the native Unity solution

**4:16** · reasons that I'm going to get into but very briefly off the top basically the reason why I don't like it is because it creates its rules based on proximity alone so whether they're is a collider or a tile above below diagonally left

**4:31** · right up down to the current tile it doesn't have enough space for context out of the box where you can't say if you see this cluster of tiles output this cluster of tiles right you have more control in something like tiled and I actually really like the input method it's very easy to Define these rules and

**4:51** · see them visually I think it's a really really intuitive way to do it once you get started so yes you can do it in unity yes it is limited and so I recommend the way that I'm doing it because that's the way that I like to do it so you will start here in your art creation

### Creating a simple tileset

**5:10** · program of choice I use a Sprite and you may have a tile set you may not I think the best place to start if you don't have your tile set finished already is to start with a template the templates online if you just Google like Pixel Art Tile set template for side scrolling you will see a bunch of assets that give you a pretty complete set of tiles you would probably have something like this right so the first tile you want to create is just a simple filled in tile not every game has single block tiles but some

**5:44** · games do depending on the sort of resolution of your game like my game the terrain is too detailed and the character is too large for one tile to be the smallest unit of tiles in fact for me in my game the smallest unit of tiles is three by three I don't really have any colliders that are smaller than this I might have two on an edge and then I come out and make it wider something like this but I never have a

**6:09** · block that's just this big in my game because the character controller he has like ledge grabbing he can like get up on a Ledge and sort of like walk a little bit and it needs a bit more clearance than two tiles to sort of like go through his animation process but for a simpler game you might have something that looks like this so you've got like an empty tail and then you've got like one filled in tile and this tile doesn't

**6:31** · connect to anything else so you would you would sort of go through this process of describing essentially what is touching air and I often like to just shade them like this so green is my base color and then you know air I might say

**6:46** · is is this lighter color you might also go a shade higher if you want to talk about what the player can stand on right so you've got these like four colors that you can work with so this would be like a block on its own and then you know you might take this and sort of think about it in a wider Dimension right something that's a bit taller and what you're doing here is you're defining a number of blocks that are

**7:09** · kind of like puzzle pieces right that's how I want you to think about this so here what we're defining is a block that has nothing on its left nothing above it but it does have something on its right and it does have something beneath it so the the process here is to create a dictionary of unique tiles that's what a tile set really is and you can put these next to each other if it if it helps I like to create a buffer just a gap so that I can visually recognize the differences between them what you can do another thing that I sometimes like to do is just have a color that defines

**7:41** · like edges so you could even do something like black that just says these colors represent where there is a tile kind of next to us and so if you don't have these then you know that your tile doesn't have an edge in that direction we could we could use a different color something brighter maybe but you can see here when I double tap this grid space we can see very clearly where the seams are and what they mean so can we make everything that we want

**8:07** · to make out of just these two tiles the answer is no because what if I wanted to make something that had uh you know three by three right if I wanted to make something that was like this it doesn't work because where is the tile that's surrounded on three sides but not on the side above it okay there's no tiles like that yet so instead I have to make that okay so now we have more okay what if I

**8:28** · wanted to make you know a three by three tile well we don't have the equivalent of these two but for the sides so again we have to sort of create a new tile by making it something like this okay so now we have a single we have three by

**8:44** · three we have two by two can we remove any of these you'll notice that this tile is the same as this tile so we can actually remove them now in a Sprite just quickly we can convert this into a tile map layer and it will do that process for us if you have the steam version you can click the beta track inside of steam and then you'll be able

**9:06** · to download 1.3 beta which has the tile map feature you can see in that feature if I hold um control number two this tile two is the same as this tile two so you can see here if I just was to delete these there is no change in the amount of indices right we started with this many and then we ended with this many so those were extraneous tiles we didn't need those tiles so now we've got a you know as set you can go a little further so here we're pretty close we're almost there but there is another version of a three by three block that is kind of a

**9:38** · little different okay so these tiles are all facing outward and there's nothing on the edges and they have a center tile that's filled in the middle but the opposite of that would be having tiles that have nothing in the center right so we can just delete this all together and then solid all around the outsides empty in the middle and so you might end up with something like this now in Insignia I have lots of additional types of tiles I have slopes

**10:09** · I have multiple layers of uh like distances away from a surface so I have a tile if you look here where you know it's the surface which has like grass sticking up on top and then I have like the solid layer so this has the actual collider and then I have a tile beneath that layer for any grass so there's a

**10:31** · lot more detail and the more detail you add the more rules that you have the more tile variations you end up with so if you want to go like full full depth with your tile set so they can get very very complicated but to start you off something like this will will get you pretty far for the basics I've just realized we've got a little bit of an issue here where we need some of these to be outlined as well so for the purposes of this video this is done I have other videos on my channel where you can look up some more complex and more nuanced tile set

**11:03** · examples if you want to do more detail you want to add some grass or bricks or whatever it is you want to do and if you want to see more of those videos if you want to see how I do something more complicated let me know in the comments and I can show you how to do that too but so from here you would export this

**11:19** · if we're finished with this so then I would come here to tiled map editor.org or they've got their page on edge.io where you actually do the downloads you can pay for the software it is usable for free without paying so however you want to do it you can do that now once we're here entitled you can press file new tile set I'm going to call this

### Setting up automapping in Tiled

**11:39** · example video tile set but you should call it whatever you're going to use for your game and I'm going to go tile sets video example pick my file once you've added your file make sure that you've got the right tile width and height if you're not using the default 16 then make it whatever you know that it should be and then press save and then save it

**12:01** · somewhere in your Unity project ideally if you're in unity or whatever software you use to make your games so I'm going to call this example video title set again because we're in a video so these are my tiles they've come in very well and here you know you can do things like add your collisions so if I click this insert rectangle I can create a little rectangle that covers the size and it will then be able to be recognized in unity as a collider and I can add metadata Here For What layer that should

**12:29** · be saved to and stuff like that but I'm not going to cover that today so here's my tile set but this isn't a tile map right it doesn't Define a level this is just the tile set so if I want to make a new tile map I press file new map and I can make it whatever I want this is fine for me so let's just save that and we'll save it in the same spot and I'm going to call this Auto tile map example okay so here's our map and

**12:56** · what have we got we have our example tile set and we can come here and draw some stuff what I'm going to do for the purposes of this video is treat my filled in tile right the center tile of my 3x3 filled in this middle tile I'm going to treat that like my prototype tile this prototype tile is in place of what I

**13:17** · would call a prototype tile set so in Insignia I use a tile set that I call prototype to use as the kind of backing for this right so I have my base basically the shapes the geometry okay

**13:33** · and that's this purple layer so it's just like a filled in tile a diagonal tile you know and that's it that's basically all it is filled in and diagonals in the different directions so this doesn't Define anything to do with space doesn't Define anything to do with Air versus ground or Texture or anything

**13:52** · it's just where is there something and what is the shape of the geometry for that something if your game doesn't have slopes you can literally just get away with one block and you can pull that from your actual tile set you don't need a second tile set but for Insignia I have a second one so since we don't do that what I'm going to do is have this

**14:11** · be just the tile set from the middle here and what I'm going to do just for the sake of helping us out here is I'm also going to create a tile in the middle this empty tile that I'm going to treat as like the ground and I'm going to place this in the center but where there was a gap right maybe we can even do something to make it a bit more obvious that this is not you know an

**14:32** · actual tile we can check about it to say that this represents transparency right so I'm just going to copy and paste this a few times okay so that's just for us to remember that this isn't part of the tile set it's just a template like a placeholder for what we call empty air and then we can fill the level with that empty air and we can make our level I'm going to make this a bit smaller so let's uh let's do like this and then we

**14:54** · could just Auto crop and then fill so here we are here's our level and I'm just going to create a bunch of basic example shapes that I expect to be able to create with this system so I can do this I can do this this should be fine uh to do something like that something like this that should work I

**15:15** · don't think I've got oh I kind of have corners like that I think that might work we'll find out I guess can we do maybe a plus sign like that okay so a bunch of shapes right nothing nothing special so here's our prototype level and uh we're gonna see if we can Auto tile this okay so to do this we

### Creating rules

**15:34** · need to create some rules right we need to create some logic to determine how this is even going to work and to do that we need to create what's called a rules file so what I'm going to do is go to the containing folder where this is saved and here it is in my game folder I'm going to create a folder that's called rules like that inside of that I'm going to create a new map file that determines all of the inputs and outputs for my files and a text file that points

**16:02** · to that file okay so the first thing we're going to do is we're going to make a new map and we're going to call this inside of rules we're going to call this Auto tile rules name wise you can call it whatever you want as long as you refer to that name correctly later so yep Auto Tire rules and here is where the magic happens the first thing you need to do is Define a layer called regions then a layer for what your rules will look

**16:31** · for this is going to be called input prototype input underscore prototype that tells it what to look for for an input and then output we'll call this Terrain so what's important is that you use the word regions and then input underscore something and then output underscore something for reference there is

**16:52** · documentation for this and you can find this in Auto mapping so all of these rules about what you have to call certain things or what you can call something else is found here so input and output within underscore and then the name that's how that works and here's an example here so regions input ground Apple ground that's how it works so we've got here regions input prototype output terrain so I'm going to

**17:18** · be really clear about this because it's kind of a bit specific you start with your regions layer and in this layer what you're doing is defining the spaces where rules are created a rule is considered its own rule any time that the space is closed around it so this is one rule this is one rule this is one rule if I do this now this entire space is considered one rule and it will look for this specific shape to apply logic

**17:44** · so they have to be separated by empty space to be considered separate rules that's how this works okay so you create your base tile Rule and then you create essentially starting with the simple list rules from top left to bottom right

**17:59** · that's how these should be laid out and that determines the order that they get rendered in okay so this is the starting region we can make this kind of more faded out if we want then you have your input contents and we're going to use remember this Center tile for all of our inputs so just paste that there and then the output is what you want this to turn into and in this case I'm going to fade this down again the output I'm going to say it's the same tile in this case this

**18:25** · is the simplest rule put in this you get that out if it was this simple you would just not have this rule but for the sake of the video I'm going to show you like that let's create a new region okay so here we've got a space of two and the input might be something like this Solid ground below and nothing on top hey Pals I'm here in post uh I want to be very specific about something in our Region's layer we use the air tile as the tile to represent what a region is in the input prototype I've

**18:57** · said there's nothing above what I mean is there is air above and you have to explicitly Place Another air tile on that input layer where you want there to be air okay even if it's nothing in the output you still need to say that it's air as a tile okay so solid tile air tile even if there's

**19:20** · an air region the regions don't matter they're not counted as the input they're just saying what the rules are okay so don't make the mistake of not putting anything in this slot in your input okay it has to be an air tile or it won't work all right

**19:38** · now the reason why we have Auto tiling is because the output for this is different from the input the input is just a block with some air above it but the output is going to be this block right because that's what it looks like when a block has air above it that's like the most basic version of what that looks like not knowing anything else about this block let's pretend we want to use that one in all cases okay and we

**20:03** · can continue like this right we can have two blocks the input is going to be a block something and then air beneath it and then the output for that block is going to be this one okay nothing beneath it so it's got this like Underside Edge filled and you go through this process for every every side until you've filled out the basic basic rules so there's a region input is ground and then nothing on the right output is this block nothing on the right one more

**20:32** · now I want to be really clear that for all of these in the inputs we're just using this simple block which is covered on all sides and the reason why we're doing that is because in the auto tile map example that's what we used for all of our geometry right these are all the same tile and we're using this to represent just a generic tile geometry

**20:54** · it's the most basic tile we have so everywhere that there's input that's looking for these tiles and it's deciding what to do in the output okay and so the output is what comes out here now we can just go this far and we'll get something when we use the Autotire rules so let's stop here and create the

**21:13** · next step that we need to actually get Auto tiling working and I think doing this is really important because as we're troubleshooting this will help having this system set up at least at the basic level so what we need is to go back to our rules file we've got a we've got everything we need we've got our tile set graphic we've got a tile set made out of that graphic we've got a tile map that's our level and an auto tile rules file which is also a tile map TMX file so what you should have is

**21:40** · something that looks kind of like this it doesn't have to be like this this rules folder I usually just create to create a separation between my actual levels and the rules tile Maps which are kind of like their own separate thing from here the last thing that we need is a text file called rules Dot txt

**21:58** · and what this is is a little directory that tells you where to look to find those rules files so for the structure that I have now the directory that the rules dot txt file is in has a folder called rules inside of it which is here and then inside of that folder we use a backslash to say that I've got autotile rules.tmx and that's inside of this the same name so as long as you point to the right file you should be able to come here entitled press Ctrl M and get

**22:28** · something once you're at this point here you're good to go so already in this really simple setup you can see the benefits of this right we can see that oh we've got some light you know where everywhere we would expect it to be we've got like different shades where you would expect different shades of color if we were to do this by hand would have taken a lot longer right to make a decision oh these ones should all be lit up and these ones should all be in the center and the closer we get to getting this right the more accurate it

**22:56** · will appear so maybe we we can Define some more rules what what are we looking at that doesn't look correct the first thing I'll say is that some of these rules don't they're not defined enough so in this case yes there is a block here that's got nothing on the left but this block also has nothing above it it has nothing on the you know Northern diagonal it's got nothing here on the

**23:20** · right and so this isn't what I would use here right what how would we describe that that region would look like maybe this and then it would look something like this on the input so this with nothing around it and that block on the output looks like this okay that's what that block would look like and what you can do is you can copy and paste entire if you've got all of the layers selected you can copy them and then paste entire regions if that helps and here we can do

**23:47** · the same thing we can just like erase this take the input cut it paste it here give the output there and then the output for this one instead is the bottom one so like that and then we can do another region so here you can see we've added some rules for areas where we've got like an end cap and if I press

**24:05** · Ctrl M now we get this looking exactly how we want it to look so that's right and you can see it's updated here and here as well much better we're missing some additional rules here so one where we've got the middle section of this kind of like long snake so maybe we can do that one now as well now it's really important when defining these to Define them in the most absolute minimum way possible so what I like to do when I'm thinking about them is to think about a subject tile what is the center of this

**24:32** · logic I'm just trying to Define one output tile and in the input tile that's the context the minimal context so the minimum thing that I would expect to see this tile would be something above it something beneath it if I want it to be really specific about this in fact these tiles aren't important in the region what's important is only these four if I

**24:55** · was to keep it like this this requires there to be empty here but in reality because our tail set's not that refined we don't have anything there's nothing about this tile that suggests that this should be empty right down here there's no like extra bit of light that says there's nothing here so we should remove these parts from the region because if we had ground here instead of um empty air this wouldn't work but now it will so let's do that everywhere where that's the case and that's really what we're talking about don't forget to put your air as well as the regions so

**25:27** · these are the rules if we go like this we can remove them all at the same time so that's a bit more specific and if we come over here we can press Ctrl M and there you go the only way to really do this that I'm comfortable with is to essentially just by hand and by eye just

**25:43** · create variations and update those variations you could you know realistically you could figure it out on your own with some sort of mathematical process or like logical process where you kind of just like create an algorithm and then carry that algorithm out we're kind of doing that here right we can see that the there are different permutations you know if I've got something here or I'm looking above it's like well obviously then I want to look below to the right to the left right we're going to be thorough and try to do every exhaustive option that we need to

**26:11** · so here complete emptiness that applies to this guy here there we go updates and it's perfect so what are we missing we're missing Corners basically now like I said these update on a row by row basis they go horizontally so that every rule the top left part of that rule will be the start of where it searches and it will kind of execute them from the top across across across across across okay

**26:37** · what's next okay so here are our Corner tiles and you can see that Something's Happened right we went from having a tile work to having it no longer be correct when we update this Auto tiling it works for our corners but it undoes the logic here why does that happen it happens because this rule is being Satisfied by this Arrangement okay but this comes after this in the list so the

**27:03** · way to get around this is to basically spread these out a little bit more and add some more context okay so what we need in the regions is something more like this where we have solid here as a part of the criteria right so this tile only exists if there is a solid block to its West and to itself and emptiness all around and we could be if we wanted to be really really picky we could say well maybe we don't care what's here as well

**27:31** · we press Ctrl M and we should get something that looks pretty good there we go and I think that for what we've just created we're pretty much there yeah for this we're now done uh I don't think I see any tiles that aren't correct there is one rule that I know we didn't get right which is what happens when there's something in the middle so if I press this press that here we've got a solid tile here where there should be nothing so we can Define that rule if we wanted to be really particular about it and that would look something like this how would we do that it's the output is this block

**28:03** · and so the input would be something like this now the Fidelity of that we would need to create this block is a little bit um trickier than the other space because what this is requiring is an empty space here and filled in spaces there which is kind of a little more specific than the

**28:23** · others it's kind of like uh we don't really have diagonal context anywhere else with these tiles so this is kind of a bit of an anomaly but I'll let it slide for this uh this one time if you were to make a more complicated uh a more complicated tile set you'd need a lot of these okay

**28:42** · so here the issue is that we don't have an example of what this should be doing if there is nothing above it and that's why I was saying the diagonal context makes it a little more complicated because now you would need a version of this tile which has got nothing above it I will say right now everything that we do is being it's not being overwritten correctly so we need to make it so that

### Taking your maps further

**29:05** · the previous layer is deleted every time we redraw the map every time we re-add the map so we can have a property called delete tiles we can set that to be true so what you want to do is go to your rules file go to map go to map properties which is then going to update this panel and add a new property called delete tiles with capitalized for the

**29:27** · first letters of those words but keeping them all one word and click that button there what that will do hopefully is yeah basically clears the output every time you re-apply the logic so you know if we went out into our prototype layer which looks like this and then we created a bunch of of space it's more transparent and then got the output of

**29:49** · that if we then deleted that from the Prototype and then pressed it again it would get removed from the next update if we didn't have delete tiles that would stay because there are no rules that re-updated so now we're in a pretty good spot this is essentially working how I would expect it to work in in tiled and we're getting results that are pretty spot on from here you can very easily go

**30:14** · over to your a Sprite file and just update these to be whatever you want and the you know the solution will will remain effectively you know you can just press save and Export the same file and you should see that apply here so now you can start doing some more creative designs with your tile sets and seeing what that does so you could do something like this right and then we've got a bit more of an interior for all of our tiles you could do the same thing here all on the outsides and yeah now you've got you

**30:43** · know the start of a pretty decent tile set it's also Auto tiled so you know again we could be here in our prototype and we can still be working however we want right we can start designing any kind of levels you can just do whatever you want with the geometry and that should update just fine this is how I do my work in Insignia the process is not much more complicated than that I do have multiple levels of tile sets so my

**31:09** · rules you might have noticed earlier when I was playing with it I've got these rules files but in Insignia right all of these tiles here all of these levels of grass they all satisfy the same the same condition right just solid here nothing on top Solid below so why

**31:26** · then do all of these grass tiles seem to be different now there are a couple of ways to do this in tiled Auto mapping you can have a random tile and it will try to basically give you one of the different versions inside of that or you can do what I do which is I actually Define a second rule so like after all these rules get applied I've got another document here and that document takes the output of this and then depending on what that output looks like applies a second layer of Polish so

**31:58** · here what it does is it says well I'm going to take everywhere where this happens right and that's what's going to happen based on this rule set right every time you see this you're going to just get that over and over again so wherever I see this over and over again instead give me this right it's not randomized and it's it's predictable it means everywhere that you will see you know two side by side like this they'll

**32:23** · look like that but because of just how dense my tile set is you really don't notice it just looks like a bunch of grass so yes like every every Edge will have the same configuration in the same order but it's not really noticeable and I think it's it's fine for my tile set so that's how I do that and you can get you know very specific with these as well you can come all the way down here where I've got you know um quite complicated structures that I

**32:50** · wanted specific unique things for and here I've got like a bridge set up so anywhere you see tiles like this you know replace them with something like that and that will yeah pretty pretty easily just turn a simple set of of blocks that look like this into you know

**33:06** · a bridge that has little supports on the edges Etc you can get as creative and as complex as you like with this stuff and as long as you put the input in it'll just do the output so that's it basically once that's working you can just save this file bring it into a Sprite and if you've got your Collision set up you've got a playable level that's Auto tiling entitled and uh yeah

### Conclusion & Outro

**33:28** · I'll put some links in the description for where you can find tiled and also super tile to Unity which is the Importer that I use so that's it thanks for watching and if you like content like this you might have noticed I've started uploading some tick tock content most of that content is from my stream on my stream I'm working on my game Insignia every single day and people in

**33:49** · chat are more than welcome to come in ask questions and provide little prompts and if you're lucky if you catch me in a good mood I might give you a little bit of advice or a bit of a tutorial on something that I'm working on then and there so definitely come join my stream it's twitch.tv Adam C Eunice same as

**34:05** · this and uh yeah hopefully I'll see you there hey pal thanks for watching and thanks most especially to the patrons and twitch Subs who support this Channel and my gamedev project insignia to find out more click the links in the description below and if you like this video tell YouTube by clicking the like button and then YouTube will tell me and then I'll make more videos that's nice thanks again and until next time \[Music\]