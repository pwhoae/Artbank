---
title: "How Rockstar fit an entire city into PlayStation 2 memory"
source: "https://www.youtube.com/watch?v=cIbCxbrBCys"
author:
  - "[[Game Maker's Toolkit]]"
published: 2026-05-11
created: 2026-07-03
description: "🔴 Get my premium monthly newsletter - https://gamemakerstoolkit.com/digest/ 🔴With Grand Theft Auto III, Rockstar North performed a magic trick: it squeezed an entire 4 kilometre wide city into the"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=cIbCxbrBCys)

🔴 Get my premium monthly newsletter - https://gamemakerstoolkit.com/digest/ 🔴  
  
With Grand Theft Auto III, Rockstar North performed a magic trick: it squeezed an entire 4 kilometre wide city into the tiny 32 megabyte chip of the PlayStation 2. Here's how they did it.  
  
\=== Sources ===  
  
\[1\] Hackers Reveal Rockstar Earns Over $1 Million A Day From GTA Online | Kotaku  
https://kotaku.com/hackers-reveal-rockstar-earns-over-1-million-a-day-from-gta-online-2000687207  
  
\[2\] ABC Nightline Broadcast, July 2002 | YouTube  
https://youtube.com/watch?v=zeWMXFkJAU0  
  
\[3\] Tapping into the power of PlayStation 2 | SCEE  
https://web.archive.org/web/20110720105403/http://www.technology.scee.net/files/presentations/agdc2000/ThePowerOfPS2.pdf  
  
\[4\] IDUSTNE.IPL | GTA 3 Files  
  
\[5\] Streaming | Inside Rockstar North  
https://gist.github.com/WillPresley/d57d48b3d5f7f7b4bde4a2a3547c7de6#streaming  
  
\[6\] WORLD.H | GTA 3 Files  
  
\[7\] STREAMING.CPP | GTA 3 Files  
  
\[8\] Crime of The Century | Play Magazine  
https://pocketmags.com/us/playstation-official-magazine-uk-edition/xmas-2021  
  
\[9\] Soul Reaver's Gex Engine | The Lost Worlds  
https://www.thelostworlds.net/TechDocs/Soul\_Reavers\_Gex\_Engine.html  
  
\[10\] POOLS.CPP | GTA 3 Files  
  
\[11\] @ObbeVermeij | X  
https://x.com/ObbeVermeij/status/1790730197286752530  
  
\[12\] MEMORYHEAP.CPP | GTA 3 Files  
  
\[13\] 191 - Obbe Vermeij Interview On The GTA Trilogy, GTA VI, Rockstar And His Indie Game Plentiful | Kiwi Talkz  
https://rss.com/podcasts/kiwi-talkz/2094543/  
  
\[14\] @ObbeVermeij | X  
https://x.com/ObbeVermeij/status/1783484201171321148  
  
\[15\] Resource Streaming | GTA Mods Wiki  
https://gtamods.com/wiki/Resource\_Streaming  
  
\[16\] The Road to PS5 | PlayStation  
https://youtube.com/watch?v=ph8LyNIT9sg  
  
\[17\] From Bedrooms to Billions: The Playstation Revolution  
  
\[18\] @ObbeVermeij | X  
https://x.com/ObbeVermeij/status/1876365778594812240?s=20  
  
\[19\] Disc-Read Errors | GTA Forums  
https://gtaforums.com/topic/153520-disc-read-errors/  
  
\[20\] @weaita\_7 | X  
https://x.com/weaita\_7/status/1841470960349688132  
  
\[21\] @ObbeVermeij | X  
https://x.com/ObbeVermeij/status/1783489687522324609  
  
\[22\] @ObbeVermeij | X  
https://x.com/ObbeVermeij/status/1783694998711452141  
  
\[23\] @MikeDiskett | X  
https://x.com/MikeDiskett/status/1783608214170546610  
  
\=== Chapters ===  
  
00:00 - Intro  
00:57 - How Memory Works  
02:13 - Liberty City Explained  
03:40 - How Streaming Works  
04:40 - Streaming Demonstrated  
07:13 - A History of Streaming  
08:47 - The Pop-in Problem  
10:49 - More in Memory  
13:28 - Memory Fragmentation  
15:34 - Desperately Seeking DVD  
17:40 - Slowing Players Down  
21:15 - Outro  
23:45 - Credits  
  
\=== Games Shown ===  
  
The Legend of Zelda: Breath of the Wild (2017)  
Cyberpunk 2077 (2020)  
Ghost of Yotei (2025)  
Psychonauts 2 (2021)  
Grand Theft Auto III (2001)  
Legacy of Kain: Soul Reaver (1999)  
The Last of Us Part 1 (2022)  
Metroid Prime Remastered (2023)  
Driver 2: Back on the Streets (2000)  
Marvel's Spider-Man Remastered (2020)  
Grand Theft Auto: San Andreas (2004)  
Grand Theft Auto: Vice City (2002)  
Grand Theft Auto V (2013)  
Grand Theft Auto IV (2008)  
Marvel's Spider-Man 2 (2023)  
Grand Theft Auto VI (Unreleased)  
  
\=== Credits ===  
  
Music provided by Epidemic Sound - https://www.epidemicsound.com/referral/vtdu5y (Referral Link)  
  
How a Hard Drive works in Slow Motion | The Slow Mo Guys  
https://www.youtube.com/watch?v=3owqvmMf6No  
  
GTA 3: Scenic Dodo-flight over Liberty City | GeckonCZ  
https://youtube.com/watch?v=iIMFEd10IVk

## Transcript

### Intro

**0:00** · This is Grand Theft Auto III.

**0:02** · And this game... this game is a lot of things.

**0:05** · I mean, it laid the foundations for one of the most profitable franchises in video game history.

**0:12** · It started an unstoppable tidal wave of open world games.

**0:16** · And it kept the news channels very, very busy.

**0:19** · REPORTER: This is the nation's top-selling video game, and millions of kids are mastering it by learning to slaughter bystanders.

**0:28** · But this game is also nothing short of a magic trick.

**0:31** · A trick where Rockstar North, then DMA Design, managed to squeeze an entire city, an entire four kilometer wide pastiche of New York City, into the tiny 32 megabyte memory chip of a PlayStation 2.

**0:46** · So, I'm Mark Brown.

**0:48** · This is Game Maker's Toolkit.

**0:50** · And here's how they did it.

### How Memory Works

**0:57** · Okay, so I think we need a super quick, and super simplified primer on how memory works in games...

**1:04** · or else none of this is going to make sense.

**1:07** · So on PlayStation 2, you've got the DVD - which is a whopping 4.7 gigabytes.

**1:14** · That's big enough to hold the entire game - every model, texture, sound effect, and radio station.

**1:21** · But it's also painfully slow, with a transfer speed of about 5 to 6 megabytes per second.

**1:27** · Way too slow to load assets on the fly.

**1:31** · But then there's the memory inside the system itself.

**1:34** · This thing is lighting fast.

**1:36** · It can move files at 3.2 gigabytes per second. Gigabytes!

**1:41** · So that makes it perfect for assets.

**1:43** · But it's also tiny at just 32 megabytes - less than 1 percent of the DVD's capacity.

**1:50** · Now in a traditional game, well, the console loads all of the data needed for the current area, from the DVD and into the memory.

**1:58** · All of the models, textures, animations, sound effects, and so on.

**2:03** · Then when you leave the area, those assets can be flushed and the assets for the next area can be copied into the memory - with a loading screen while the assets are shifted across.

### Liberty City Explained

**2:13** · But this set-up would not work for Grand Theft Auto 3.

**2:17** · It doesn't have individual areas, with walls and doors to separate the zones.

**2:23** · Instead, it's a sprawling metropolitan city that you can explore, freely in any direction.

**2:29** · A city made up of thousands of unique models, for every building, vehicle, and pedestrian in the game - about 77MB in total.

**2:39** · And then thousands of different textures for every material, sign, and character skin - another 45MB.

**2:48** · And so with a total of about 130mb of data, Liberty City is way too big for our paltry 32mb budget.

**2:59** · Well - okay, let me be perfectly honest.

**3:02** · Liberty City is split into three different islands.

**3:05** · The industrial zone of Portland.

**3:07** · The downtown sprawl of Staunton Island.

**3:10** · And the luxury suburbs of Shoreside Vale.

**3:13** · And these are treated as separate levels with quick loading screens whenever you cross between them.

**3:19** · But even still - each one of these islands is still too big to fit into memory.

**3:25** · Take Portland: it's got over 600 unique models, requiring roughly 40 to 50 megabytes of data for the models and textures.

**3:33** · Still way more than the 32MB budget.

**3:37** · So what could Rockstar do?

### How Streaming Works

**3:40** · Well, the studio's first idea was to just make the city in a much more simplistic way.

**3:46** · To use basic 3D models with low resolution textures - so each island could comfortably fit into memory.

**3:53** · But the game's technical director Obbe Vermeij said this "resulted in the city looking bland".

**3:58** · So the game's other technical lead, Adam Fowler, came up with a much more ambitious solution.

**4:04** · It works like this: Liberty City is split into thousands of small sectors.

**4:10** · Then, there's an invisible square around the player.

**4:13** · And all of the models needed for the sectors in that square are loaded into memory.

**4:18** · Then, as you move around the city, the game loads the models and textures for the buildings in the sectors you enter - and unloads all of the assets from the sectors you as leave them.

**4:29** · And because the new models will always be far away from the player, it doesn’t matter that it might take a short while to load them off the DVD.

**4:37** · It's a technique called "streaming".

### Streaming Demonstrated

**4:40** · And we can actually see this happening.

**4:42** · Like come with me for a second.

**4:44** · I'm just going to pop you here.

**4:47** · So I've got GTA 3 running on PC in this window and a process monitor, which shows everything happening in memory, in this window.

**4:56** · And so if I get in my car and start driving down the street, you'll see that files start loading in.

**5:04** · Specifically, txd.img and gta3.img, which hold the textures and all of the models.

**5:10** · Now, it's just a small chunk of those files.

**5:12** · So if we take for example, gta3.img, and we see that it's loading in at the offset of 9291800.

**5:22** · And then, if I open the gta3.img in this tool and find the file at that offset.

**5:28** · Here it is, 9291800.

**5:31** · It's a diner sign.

**5:33** · And if we extract it and load it into this page, we can see, hey, it's the sign for the diner that's just loaded into memory.

**5:42** · Which is all the way over here.

**5:46** · Now I’d love to show this happening in a more real-time, visual way.

**5:51** · But because the streaming system is tied to the camera, and not the player… well, even if I take control of the camera and fly far away, the streaming will just follow me and the city will materialise around me.

**6:04** · The only solution, ultimately, would be to somehow get the GTA 3 source code, rewrite several sections of the program, and compile a brand new executable.

**6:15** · So, I got the GTA free source code, I rewrote several sections of the program, and I compiled a brand new executable.

**6:25** · Now you can see the trick: how Grand Theft Auto 3 loads and unloads a small number of assets into memory as you move around Liberty City.

**6:35** · It secretly builds the world in front of you, and it silently deletes the world behind your back.

**6:41** · Basically: instead of trying to fit a whole city into memory, Rockstar instead built a moving window which shows just enough of the city to make the illusion work.

**6:52** · And with this, Rockstar could build a city as big as it wanted, with artist Aaron Garbut saying "getting it right effectively removed a lot of limitations for scale and detail.

**7:04** · We could build what we wanted as long as the area around the player would fit in memory and we could get it off the DVD fast enough".

### A History of Streaming

**7:13** · Now: I should note...

**7:14** · GTA 3 is certainly not the first game to come up with the idea of loading assets into memory while you play.

**7:22** · In fact - this was already happening on the previous generation.

**7:26** · Take the PlayStation 1 game Legacy of Kain: Soul Reaver, developed by Crystal Dynamics.

**7:32** · The developer realised it could chop an entire world into lots of small chunks, and then lay them out, end to end, in a line.

**7:40** · Then, when a player approaches the boundary of one chunk, the game would quickly start loading the next part so it was ready for you by the time you got there giving you a whole world to explore without needing to stop for a loading screen.

**7:54** · That same technique has been used in hundreds of games - from Jak and Daxter and Metroid Prime, to Uncharted and God of War.

**8:03** · It also explains why video game characters spend so much time slowly squeezing through tight gaps: it gives the console time to load the next area into memory.

**8:13** · But, back to Grand Theft Auto - this probably WAS the first game to use a streaming solution to create a dense urban environment.

**8:22** · A world where the developers can't predict which area you'll go to next, or hide its loading behind doors or elevators or tight gaps.

**8:30** · This was an actual open world that you can explore freely, in literally 360 degrees.

**8:37** · But pulling it off was not easy, and this ambitious plan led to 5 big problems for Rockstar to solve.

### The Pop-in Problem

**8:47** · So, here's the first problem.

**8:50** · Pop-in.

**8:51** · If GTA 3 worked exactly as I just described, with assets loading and unloading in a tight rectangle around the player, then it would look something like this: a game where bits of the world materialise out of thin air in front of you, with the dreaded pop-in effect of a last generation game.

**9:10** · So it's not enough to just stream in the models nearest to the player - but, at the same time, you can only cast your net so wide before running out of memory.

**9:21** · So here's the solution: the game checks a large number of sectors - but in those far away zones, the game only loads the bigger structures, like buildings, bridges, ships, and cranes.

**9:33** · So the area around your character is fully loaded in, but anything more than a few sectors away will only feature the largest structures.

**9:41** · Of course, this would still eat up a lot of memory.

**9:44** · So instead of using the actual models, these far away structures use a simplified, low polygon imposter with a crummy low resolution texture.

**9:54** · Then, when we get close enough, the real model and texture can be streamed in, and gracefully fade in over the top of the low poly copy.

**10:03** · It's a system called LOD, or level of detail.

**10:07** · And it even extends to the other islands.

**10:10** · Portland, Staunton, and Shoreside each have low poly models that sit on the horizon as stand-ins for the other bits of Liberty City.

**10:19** · Actually, Staunton has two - with different models depending on whether you're looking over from Portland or Shoreside.

**10:26** · There's no point rendering the back of these skyscrapers if you're in the east, after all.

**10:31** · Better to save on triangles.

**10:33** · All of this lets Liberty City maintain its distant skyline, for immersion and navigation purposes.

**10:40** · But by using low resolution stand-ins for these faraway buildings the game can save a lot of memory.

### More in Memory

**10:49** · The next problem is that, well, Liberty City is not the only thing we need to store in memory.

**10:55** · That 32 megabyte pile of RAM also needs to keep track of animations, pedestrian AI, physics calculations, the location of your last car, and so on.

**11:07** · The only thing it doesn't need to store are the radio stations - which play directly off the DVD.

**11:12** · So this means only a small slice of the total memory overhead can be dedicated to streaming.

**11:18** · I don't know exactly how much memory GTA3 uses, but if you take San Andreas, which is using the same engine on the same console, take the DVD and put it into your computer...

**11:29** · you'll find a file called stream.ini, which shows that just thirteen and a half megabytes of memory are dedicated to streaming the city.

**11:40** · On top of that, Liberty City is more than just buildings and lamp posts.

**11:45** · This is a bustling city filled with cars and pedestrians, which must also share that memory space.

**11:52** · So, all of these systems had to be heavily optimised to save enough room for the city streaming.

**11:58** · Take the cars: GTA 3 has about 60 unique vehicles.

**12:01** · And I'd estimate that the full fleet is about 10MB worth of models and textures.

**12:07** · So it wouldn't be sensible to keep them all loaded in at the same time.

**12:11** · Instead, the game keeps a very strict pool - only eight vehicle types can be loaded into memory at any one time.

**12:18** · When a car is spawned in - it must either use a vehicle from one of these eight slots, or boot an older car out to make room.

**12:26** · And because that tiny pool also needs to contain the car you're currently driving, the last car you drove, any parked cars in the nearby area, and common vehicles like taxis and police vehicles - including SWAT cars, helicopters, and army trucks if your wanted level is high enough...

**12:43** · Well, this is why you'll sometimes see the same cars repeating again and again.

**12:48** · There's only a few spare slots left for vehicle variations.

**12:53** · This also explains that spooky GTA phenomenon of looking for one very specific car, only to finally track it down, and now everyone in Liberty City seems to be driving that car.

**13:05** · It makes sense: because it's now in one of those eight car slots, it's much more likely for it to be spawned in as the next vehicle.

**13:14** · My car's on fire. Help.

**13:16** · So basically, with only a tiny amount of memory to go around, everything in the game must be as optimised and streamlined as possible to make sure there's room for the main city streaming system.

### Memory Fragmentation

**13:28** · Fancy another problem? How about memory fragmentation.

**13:33** · So, in super, super simplified terms, if you remove a small asset from memory, then it leaves a nasty little hole in your total memory space.

**13:43** · And let's do it a few more times.

**13:45** · And then if we load in a bigger asset - well, even though there's space for it...

**13:51** · that space is fragmented into lots of little holes, and so the asset just has to lump on the end - exceeding the total amount of memory and causing the game to crash.

**14:01** · Not good.

**14:02** · That's fragmentation.

**14:04** · And so if you're constantly pushing assets in and out of memory, fragmentation becomes very likely and memory blockages are almost guaranteed to occur.

**14:13** · So smarty pants Adam Fowler had to write a bespoke memory manager that could deal with these issues, with functions that can merge and move blocks of memory around to avoid fragmentation.

**14:25** · It can also aggressively free up memory if needed - going in and deleting stuff behind the camera, or big buildings in the distant skyline.

**14:33** · Another clever trick was to keep many of the asset files as the exact same size.

**14:38** · Like, among the models and textures, over 500 of them are exactly 2 kilobytes, and 416 are exactly 4kilobytes.

**14:47** · That way, assets can seamlessly take each other's place as they load in and out - filling those gaps in memory and avoiding fragmentation altogether.

**14:56** · To check if this all worked, Fowler would attach the player character to the train that zips around Portland.

**15:02** · And then set the game running on five or so PS2 dev kits before he left work for the night.

**15:08** · And as Vermeij explained on the podcast Kiwi Talkz...

**15:11** · VERMEIJ: "He was hoping that he'd come in the morning and that the games were still running.

**15:14** · And the first time he did that, they all crashed after five minutes.

**15:17** · And then he would spend a couple of days figuring out what had gone wrong.

**15:20** · And then he did it again.

**15:22** · And then they crashed after thirty minutes.

**15:24** · And then maybe an hour.

**15:26** · And eventually they got through the night.

**15:28** · So that meant that for the whole night, the game was loading models and unloading, loading models and unloading".

### Desperately Seeking DVD

**15:34** · Problem number four is seeking.

**15:38** · So here's the thing.

**15:39** · CDs and DVDs are designed for the continuous read of something linear like an album or a movie.

**15:46** · And so the data is embedded in a non-stop spiral that goes from the edge to the centre - and the laser reads that microscopic groove in a continuous line.

**15:56** · But if you want to jump around to another part of the disc - called seeking - then the laser head has to move.

**16:02** · And the acceleration, movement, and deceleration of that mechanical part all takes time.

**16:09** · So now imagine how GTA 3 is constantly asking the PS2's DVD reader to seek out different bits of the disc.

**16:17** · To speed things up, Rockstar had to literally optimise the position of assets on the disc to reduce seeking time.

**16:24** · That meant bunching up assets from the same part of the city, so the laser wouldn't have to travel as far to get the next batch of buildings or roads.

**16:33** · Also, the DVD reader code is given a queue of assets to load in, but it will prioritise the ones closest to its current read position, instead of going through them in the order they came in.

**16:44** · And Vermeij says the team experimented with duplicating assets on the DVD - because it's more actually efficient to have multiple versions of common models like trees and lampposts at different points on the disc, instead of having to constantly seek back to find that single tree model.

**17:01** · And this technique is still used in game development, with a game like Insomniac's Spider-Man having hundreds of the same mailbox model at different points on the Blu-Ray.

**17:11** · Now you might wonder if all that seeking is safe for the DVD drive.

**17:15** · And Rockstar shared that worry.

**17:17** · Here's producer Leslie Benzies, in the documentary The PlayStation Revolution...

**17:21** · BENZIES: Streaming was a risk.

**17:23** · Could a drive inside a machine constantly move for 24 hours and not melt?

**17:29** · Now it obviously didn't melt your PS2's drive - and Vermeij assumes this was cleared with Sony before the game was sold.

### Slowing Players Down

**17:40** · And then, the final problem.

**17:43** · Even with all of these techniques and optimisations, the disc simply couldn't read assets fast enough - and if players moved through Liberty City too quickly, they could outrun the streaming system and see the world appear in front of them.

**17:57** · Or even worse: fall through the floor and into the blue hell beneath.

**18:02** · So the only real solution was to just slow players down.

**18:06** · Cars were given a strict maximum speed - and in certain parts of the city, the developers secretly increased the air resistance on vehicles by a few percentage points - not enough for players to notice, but enough to let the disc catch up.

**18:20** · Flying vehicles were completely ruled out, and the only plane in the game had its wings clipped so it was impossible to fly.

**18:27** · Well, almost impossible.

**18:30** · And the layout of the city needed adjusting, too.

**18:33** · Vermeij explains that in its original form, Portland featured a main drag that ran practically across the entire island - a nightmare scenario where players could build up to max speed while the streaming code struggled to load in the buildings on both sides of the road.

**18:47** · So in the end, this big building was placed directly in the centre of the main thoroughfare so it wasn't possible to go so fast.

**18:56** · Now I kind of want to put this to the test and see if I can push the game to its absolute limit and move so fast that the game can't load in models and textures quickly enough.

**19:06** · So I went to Staunton Island to get the fastest car in the game, which is the Infernus.

**19:12** · I feel like that's a pretty good start.

**19:14** · And I actually am going to go to that main drag in Portland because even though they put that building in the way to stop me going so fast, there's still an alleyway down the side of the building, which I can use to slip by and hopefully get some real speed up.

**19:31** · Okay, I mean, I can actually just about see that alleyway in the distance.

**19:36** · Now I'm going to put on a cheat that Rockstar put in the game that lets you speed up the gameplay, which seems like kind of a strange decision to put in a game that's all about slowing the player down, but here we go.

**19:46** · Okay, now we're going at like much faster speeds.

**19:49** · And we're just going to have to get quite lucky with the traffic to blast through that hole.

**19:56** · Okay, let's go.

**19:57** · Look out! Look out! Look out!

**20:03** · Oh!

**20:05** · So, there's a trick that speedrunners use where if you're in the cinematic camera, it despawns cars, and so there's less traffic to deal with.

**20:12** · So, I guess we're just going in a straight line.

**20:15** · It's maybe the best thing to use.

**20:19** · Oh! Oh! I saw it! I saw it! Not enough to fly into the abyss, but I saw it.

**20:28** · I saw the world streaming in.

**20:30** · But still.

**20:32** · Pretty impressive.

**20:33** · And also, you have to remember that this PS2 and this copy of GTA3 are like 25 years old, and this disc is.

**20:43** · A little bit scratched.

**20:44** · And seriously, the speed of the streaming technology is entirely dependent on the surface of this disc and the condition of the laser inside that PS2.

**20:54** · And also this has happened.

**20:56** · Uh it doesn't really affect anything.

**20:58** · It just it just makes me sad.

**21:00** · I need to get some glue.

**21:02** · And ultimately, that was pushing the game to its absolute limit.

**21:06** · And using cheats.

**21:07** · And in normal play, you almost never see this happen - a testament, I reckon, to how well Rockstar implemented this system.

### Outro

**21:15** · So - that's the trick.

**21:17** · Rockstar had to fit a roughly 130 megabyte city into the tiny 32 megabyte memory chip on your PlayStation 2.

**21:25** · And the only way to do it was to move assets from the disc and into memory at rapid speeds, constantly chucking out the buildings and trees in your rear view mirror to make room for the shops and bridges just around the corner.

**21:39** · But with this, and a lot of clever optimisations, Rockstar showed it was possible to have a rich and detailed open world on console - and it laid the foundation for the rest of the series.

**21:51** · That, of course, includes two more GTA entries on PlayStation 2, which are even more impressive in their implementation.

**21:58** · Vice City added helicopters - by only showing low poly models when you're above a certain altitude, so there's enough memory spare for the most distant skylines.

**22:09** · And San Andreas got rid of the separate islands and halting loading screens - partly by having so much empty countryside in between the cities that one will be entirely out of memory by the time you reach another.

**22:22** · Even so - it's pretty mind blowing that THIS is working on such a low powered console.

**22:29** · But even as gaming hardware got better, these techniques still needed to be used - because the worlds became more detailed and rich in step.

**22:39** · Like, on a modern computer with gigabytes and gigabytes of RAM, I can easily fit all of Grand Theft Auto III's Liberty City in memory at one time.

**22:48** · No streaming needed!

**22:50** · But I can't fit the whole world of GTA IV or V - so it's back to the cheeky optimisations.

**22:57** · Like putting roadworks in the middle of Algonquin's longest road, to stop players from driving so fast that they outpace the streaming tech.

**23:04** · Now in more recent times, a move to solid state hard drives is making things easier for developers.

**23:10** · There's no more seeking - so you don't need to optimise asset location or duplicate dustbins everywhere.

**23:17** · But even still - I can promise you now that Grand Theft Auto VI will still stream bits of its world in and out of memory.

**23:25** · And it will use some of the same techniques, optimisations, and maybe even a few lines of code from Grand Theft Auto 3 - the game that performed a magic trick, and proved it was possible to squeeze an entire city into just 32 megabytes of memory.

### Credits

**23:46** · Hey, thank you so much for watching.

**23:48** · So, one of the fun side effects of making this video was getting to debunk a video game myth I had been carrying for about 20 years.

**23:59** · So I'd always believed that the reason you can't fly the plane in GTA 3, the dodo, was because of 9/11.

**24:07** · Basically, Rockstar didn't want you to emulate a terrorist attack in their game.

**24:13** · And it makes sense.

**24:14** · GTA 3 was just about to come out when New York was hit by an awful terrorist attack.

**24:21** · and it wasn't a good look for a studio making a game about causing chaos in a sort of fictionalised New York City.

**24:29** · So this certainly gave Rockstar pause.

**24:32** · And it's true that Rockstar did change some elements of GTA 3 very quickly to reflect what had happened in New York.

**24:40** · So they repainted the cop cars, so they no longer looked like NYPD vehicles.

**24:47** · They removed one mission that referenced terrorism, a few bits and bobs like that.

**24:52** · But they didn't touch the dodo because it was never designed to be able to fly.

**24:58** · As I say in the video, being able to fly over Liberty City would reveal some of the edge cases and some of the issues around the streaming technology that they wouldn't get to fix until Vice City.

**25:13** · And also, Liberty City just isn't designed to be played from the air.

**25:17** · A lot of the rooftops in the game don't have collision, and there are bits of the city, like in between a ring of houses, that's just a big blue void.

**25:27** · So it's clearly not made for flying.

**25:30** · So there we go.

**25:31** · I'd always believed that the dodo was cut because of 9/11.

**25:36** · It was just technical stuff.

**25:38** · Let me know if you've had a video game myth debunked in your lifetime.