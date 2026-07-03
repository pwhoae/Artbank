---
title: "The Secrets Behind THAT Cyberpunk 2077 Montage"
source: "https://www.youtube.com/watch?v=NlAFWaa9UQo"
author:
  - "[[Game Maker's Toolkit]]"
published: 2026-05-15
created: 2026-07-03
description: "🔴 Get my premium monthly newsletter - https://gamemakerstoolkit.com/digest/ 🔴Here's a super quick bonus video, looking at the famous montage from Cyberpunk 2077. How did CD Projekt Red make a cine"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=NlAFWaa9UQo)

🔴 Get my premium monthly newsletter - https://gamemakerstoolkit.com/digest/ 🔴  
  
Here's a super quick bonus video, looking at the famous montage from Cyberpunk 2077. How did CD Projekt Red make a cinematic sequence with 15 location changes, 79 cuts, and three mirror shots? Let's find out.  
  
\=== Before you watch ===  
  
Content warning: Violence, Mature Themes  
  
\=== Sources ===  
  
\[1\] Half year montage | ArtStation  
https://simonbesombes.artstation.com/projects/B1eNvl  
  
\=== Chapters ===  
  
00:00 - Intro  
00:36 - The Montage  
02:54 - Fake Night City  
05:20 - Cut, Cut, Cut  
05:50 - Mirror  
07:05 - Bug City  
  
\=== Credits ===  
  
Music provided by Epidemic Sound - https://www.epidemicsound.com/referral/vtdu5y (Referral Link)  
  
The Cyberpunk 2077 1.0 experience (Xbox one this time) | J2gross  
https://www.youtube.com/watch?v=aPyMgRJfVEA  
  
Spider Man Miles Morales Textures Pop In PS5 | EVIL JEDI  
https://www.youtube.com/watch?v=nQBxm4DIfWQ  
  
10 Minutes Of Cyberpunk 2077 Bugs... | Kudos  
https://www.youtube.com/watch?v=RXLohSvTKpg

## Transcript

### Intro

**0:00** · Hey, it's Mark.

**0:01** · This is not like a real episode of GMTK.

**0:05** · It's just... I was working on the video about GTA3 and memory and streaming and I used this short clip from Cyberpunk 2077, and was like, "Oh yeah, that was from that super impressive montage sequence. Wait. How did they pull that off?"

**0:22** · And basically, the only way to not get distracted and go down another rabbit hole while I was already going down a rabbit hole was to promise myself I'd look into it as soon as the GTA video was done.

**0:34** · So. Here I am.

### The Montage

**0:36** · Okay, let's have some context.

**0:38** · After you finish the prologue, whether that's for the Nomad, Street Kid, or Corpo Life Path, we get a sequence that follows protagonist V and best buddy Jackie Welles across six months in Night City.

**0:52** · And it's this super cinematic montage that jumps from location to location and from scene to scene as it depicts their successes and setbacks.

**1:03** · This whole sequence is about one minute twenty seconds, and it has fifteen location changes, seventy-nine cuts, three mirror scenes with three different costumes, and about forty-five unique NPCs.

**1:16** · Now the sensible thing to do, from a technical perspective, would be to just do it as a pre-rendered video.

**1:24** · Like take Expedition 33.

**1:26** · Most of the cutscenes in this game are done in engine, but for this scene, which is a montage of the group collecting Chroma from all around The Continent, the developer just plays a pre-rendered video file.

**1:39** · But Cyberpunk's montage is entirely In engine, which means it's happening in real time in the game itself.

**1:47** · That's what makes it so impressive.

**1:49** · Now probably the most impressive part is the sheer number of locations.

**1:54** · This sequence takes us from a street in Japantown to Mama Wells' house to Lizzie's Bar, to a basketball court in Heywood, a car dealership, Misty's shop, Viktor's Clinic, a random alleyway, a nightclub, back to the Welles's, then to a garage, to a gun shop, another alleyway, back to the Welles's one last time to move out, and then finally to V's apartment.

**2:17** · Phew!

**2:17** · This is a whistle stop tour of Cyberpunk 2077's open world.

**2:22** · But as we know from the GTA three episode, it's not advisable to move so quickly between locations as the streaming tech needs time to load in the next place.

**2:33** · I mean, look how long it takes to swap between protagonists in GTA V.

**2:37** · It's quick, but there's still a big delay to load in the assets for the next area.

**2:43** · They're certainly not doing it in a single frame.

**2:46** · So how does Cyberpunk do it?

**2:49** · Well, I decompiled the source code... and no, just kidding, not this time.

**2:53** · I just installed a bunch of mods.

### Fake Night City

**2:56** · One of which let me pause the montage and fly around, revealing that we're not in Night City at all.

**3:02** · It's actually a special back lot hidden away in the far corner of the world, and it contains all of the places we'll visit in the montage.

**3:11** · Like, here's the street in Japantown.

**3:14** · But it's just a small part of that location.

**3:16** · There's nothing to the left and right of V's starting point, and if you travel to the end of the road, you'll quickly reach the bounds of the world.

**3:24** · And if you turn around, hey, that's Mama Welles's house.

**3:27** · There's also the basketball court, the alleyways, and the gun shop.

**3:32** · The nightclub is floating directly above the Wells's house, and the car dealership is sitting on top of the club.

**3:40** · Then as the scene plays out, V will teleport from area to area in order to swap location.

**3:46** · All while the game snaps between day and night, depending on the current scene.

**3:51** · So the benefit of doing it like this, instead of literally moving around the real Night City is that we only need to worry about streaming the assets we need for this montage sequence and nothing else.

**4:04** · Like this scene's environment designer says "it was quite a challenge to make the streaming load in such a fast pace, but each scene was optimised and close to each other, to facilitate streaming".

**4:14** · And you can see how CD Projekt Red aggressively optimised these scenes to keep everything as lean as possible.

**4:21** · They used low-poly models and textures for stuff in the distance, and they didn't include things you can't see, like side rooms or the backs of certain buildings.

**4:30** · The montage also implies more life and detail than it actually shows.

**4:35** · For instance, this scene at the very beginning makes it look like you and Jackie are walking through a bustling city street, but it's actually just a bunch of low-poly cars covered up by a smoke particle effect.

**4:47** · And literally four NPCs.

**4:50** · The rest of the street is completely empty, but it feels alive in the moment.

**4:56** · Speaking of NPCs, the game also loads all of them at the start of the sequence.

**5:01** · You can find them just hanging out, ready to pop into action.

**5:05** · They're also often on top of each other, which looks pretty funny, or just floating in space below their spawn spot.

**5:11** · But by loading them in early, we can avoid that nasty thing when a character's model loads a few frames before their texture.

**5:19** · The montage also uses cuts, which makes it look like time has been compressed.

### Cut, Cut, Cut

**5:24** · For instance, in this scene with the arms dealer, it looks like V and Jackie are trying all sorts of different weapons, with chunks of time cut out between movements.

**5:34** · But in reality, all that's happening is that the characters are teleporting to new locations and starting new animations, which looks like a jump cut.

**5:43** · It's the same thing that powers this funny animation in Super Mario 3D World.

**5:49** · Then there are the mirrors.

### Mirror

**5:52** · Ah, so this is why the scene couldn't be pre-rendered.

**5:55** · It features the player character who is completely customisable.

**5:59** · So every version of this montage is unique.

**6:02** · But yeah, mirrors are as much of a technical challenge as streaming in the world.

**6:07** · But by going out of bounds, we can see the trick in action.

**6:10** · So Jackie's room features a mirror but it's actually not a mirror at all.

**6:14** · It's a window to an identical copy of Jackie's room on the other side of the wall.

**6:20** · And so when you're looking in the mirror...

**6:22** · Jackie and a clone of V exist in the mirror room, while the player character is in the real room.

**6:29** · And then when Jackie grabs you by the shoulders, he instantly teleports from the mirror room to the real room to make this shot work.

**6:38** · Clever stuff.

**6:39** · Though, admittedly, not that new.

**6:41** · It's the same technique that gave us the mirrored room in Super Mario 64, after all.

**6:47** · And so, with these tricks, right, the fake Night City set, the spawned in NPCs, the staccato animations, and the mirrored rooms CD Projekt Red pulled off a real time cinematic montage that plays out perfectly every single time.

**7:04** · Okay, yeah, okay.

### Bug City

**7:06** · We can't talk about Cyberpunk 2077 without talking about its disastrous launch.

**7:12** · It's no secret that this game was full of bugs and issues and unoptimised code, and it ran like an absolute dog on platforms like the non-Pro PS4 and the Xbox One.

**7:23** · And this sequence was certainly not immune.

**7:26** · You'd see pop in, weird lighting changes, low poly models and textures, Jackie just being straight up invisible, and other issues.

**7:35** · But after a lot of updates and patches, this cutscene does now work pretty much flawlessly in 2026.

**7:42** · On PC, at least.

**7:44** · Well, almost.

**7:45** · This character's coat still renders in front of the smoke, which is hilarious.

**7:48** · And if we're being really nit-picky, then why are the posters in the mirror not flipped horizontally, eh?

**7:54** · Is that some super clever 2077 technology or just a mistake?

**7:59** · Anyway, there we go.

**8:00** · That's out of my system.

**8:02** · I can stop thinking about it.

**8:03** · I know how it's done now.

**8:05** · And now, just because this took a ridiculous amount of time and hackery to produce, I'll end with the full cutscene, but this time from a fixed camera perspective.

**8:16** · Thanks for watching.

**8:17** · See you soon.

**8:18** · DJ: Stanley here with ya, and we got another day ahead of us in this city of dreams.

**8:27** · Oh, I love this town. Love it like you might love a mother who popped you out on the steps of an orphanage once and now stops you to ask if you got a smoke for her.

**8:38** · Every new day here means a hundred new arrivals.

**8:41** · But only half these gonks will survive a year. And that's if it's a good one.

**8:47** · And why do these peeps come to NC?

**8:50** · Well, to be street samurai like Morgan Blackhand, and Weyland Boa Boa.

**8:55** · The greater the risk, the bigger the bounty, kids. Or so they say.

**9:00** · But you can only be a major league player for so long.

**9:04** · The faster you live, the faster you burn out.

**9:06** · If you don't get a bullet to the brain first!

**9:19** · NC's legends: know where you'll find most of them? The graveyard.

**9:28** · Matters not where you're from.

**9:30** · Matters not where you start.

**9:33** · What matters here is the walk you walk.

**9:38** · In Night City. The city of dreams.