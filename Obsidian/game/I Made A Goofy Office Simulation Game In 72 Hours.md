---
title: "I Made A Goofy Office Simulation Game In 72 Hours"
source: "https://www.youtube.com/watch?v=aU5ACoL2Ke8"
author:
  - "[[Juniper Dev]]"
published: 2026-01-31
created: 2026-07-11
description: "Click this link https://boot.dev/?promo=JUNIPERDEV and use my code JUNIPERDEV to get 25% off your first payment for boot.dev!PLAY THE SIMPLER TIMES: https://juniperdev-yt.itch.io/Ari and I's design"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=aU5ACoL2Ke8)

Click this link https://boot.dev/?promo=JUNIPERDEV and use my code JUNIPERDEV to get 25% off your first payment for boot.dev!  
  
PLAY THE SIMPLER TIMES: https://juniperdev-yt.itch.io/  
Ari and I's design doc (+ art attributions): https://docs.google.com/document/d/1A0BjuTNqg7surptRxSM9E-kLcxR8YAjxQgeoBDFR1zk/edit?usp=sharing  
  
I make content on games and game development!  
Instagram: https://www.instagram.com/juniper\_dev?igsh=MWo3aWZiYWd4eDFrNQ%3D%3D&utm\_source=qr  
Join the Discord: https://discord.gg/49fZxfxe4V  
TikTok: https://www.tiktok.com/@juniperdev  
Bluesky: https://bsky.app/profile/juniperdev.bsky.social  
Contact → juniperdev@rightclick.gg  
  
0:00 Brainstorming  
3:00 Making the game  
5:02 Obstacles  
6:44 Finishing touches  
11:11 Results

## Transcript

### Brainstorming

**0:00** · Celeste was originally made for a game jam, which is a game development competition where you have a short amount of time to make a \[music\] game, usually following some prompt.

**0:08** · Inscription came from a game jam. Super Hot Baba is You, big fan of that little guy. And despite my endless enthusiasm for making games, I have never participated in a game jam. So, when I came across this one, the brainless mini game jam, I decided that it was finally time. Most, if not all, game jams follow a theme. And for this one, the theme was simpler times. Brainless, the host of the jam, said that maybe that means recreating a basic arcade game, or maybe you're restoring yourself to physically simpler times, like farming or something.

**0:40** · I wanted to do something that was truly outside the box. So, I thought about the simplest of all times in human history, the Neanderthal era. Back when we were all cave people who use grunts to communicate, and all we really had to worry about was just keeping warm, keeping the human race going, and not dying every day. Think about if that experience was somehow a game and probably a rogike. That was my first idea. My other idea had to do with those simple baby toys that you get where you have to push shapes into the right size hole. Maybe the game gets angry if you put like a circle into a square hole or something. I liked that idea.

**1:12** · And this was meant to be a really tiny scope game. We only had a week to do it. So I decided that Baby Shape Simulator 2026 was going to become a thing. I was so excited about this idea. I went to my friend Ari, who I knew from my game development class, and I told him all about it. Ari and I had previously worked together on this beaver rogike game that we had called Dam. You get it?

**1:34** · Cuz is there beavers building dams? Oh my gosh. I'll tell you guys all about that game at some point. But Ari did a lot of the coding for it. He's extremely technically minded and \[music\] talented.

**1:42** · Super cool to just sit there and watch him do his thing in GDAU. So I asked Ari just out of curiosity what his idea would be for the simpler times theme.

**1:51** · And he said, "What if it was a newspaper company?" I said, "What?" He said, "You know, like the New York Times, what if you had the Simpler Times?" Immediately, we started bouncing ideas about what this game could look like. And we landed on this idea. You are a writer for the Simpler Times, and you have to physically collect words from around your office to write your story. And then you will use the words that you gather to make a simple and goofy headline. The idea is kind of like job where you have to physically put together words to assemble really goofy sentences.

**2:19** · It's like that, but if you had to go around a map and pick up the words that you wanted to use. Needless to say, this game jam was now a twoperson project. Baby Shape Simulator 2026 \[music\] was was long gone. And it was me and Ari developing the simpler times. But as far as anyone else would know, it was just Ari. I was completely out of the picture publicly because I didn't want any unfair shenanigans happening. I didn't want anyone knowing that I was a part of this \[music\] project. Now, this game jam was a week long, so we had 7 days to make this game. Except I didn't even know this game jam was a thing until day four.

**2:51** · So, we had 72 hours to start and finish this game before the deadline. First thing that we did was get some basic top- down player movement working. \[music\] And then we made the physical grabable words that the player can pick up with a rope.

### Making the game

**3:05** · Every word in the office would need to spawn randomly, no duplicates, and there would need to be enough variety in the words to be able to actually make a real sentence. You got to have a good distribution in the types of words. So, I made a system that'll categorize words as either nouns, verbs, adjectives, or adverbs. And the map will always have an equal spread of those. All kinds of fun words got to go in the word bank. Verbs like gyrating and skewering. So, you could end up with a story with those words. You just have to bring them back to your computer before the timer ran out.

**3:34** · We decided that you'd get 2 minutes to gather your words and then you'd have to get back to your computer to actually write the story. The UI for the the writing and the assembling words turned out so stinking cute. That was all Ari.

**3:45** · It looks just like a window on your PC.

**3:47** · In the word bank, there's some things like and or but that are always available to use just so the player doesn't end up without any words to make a sentence with. And if you're wondering what this word is, that's that's the name of today's sponsor, Bootdev.

**3:59** · Bootdev is a platform that somehow made coding even more nerdy than it already is, cuz it teaches you how to learn programming, but the whole thing is structured like an RPG. As you're learning to code, you get quests, you get XP, oh, you got a potion. It's very different than the traditional style of academic \[music\] learning. Coming from someone who does computer science course work all the time, it is a very nice change of pace.

**4:20** · They even have Boots. This is Boots Chat. Boots. Boots chat. He will always help you if you get stuck, no matter how broad or specific an issue is in your code. Boots is very nice and very helpful because he prevents you from getting stuck in tutorial \[music\] hell because he makes sure that you're actually applying the stuff that you're learning. Now, everything on Bootdev is completely free. All the content is there for you to watch and read. It is all available for you to just see if you like it, and then if you do, you can get access to paid features like AI assistance and progress tracking. And of course, if you use code juniper dev, you'll get 25% off your first year of their annual plan.

**4:50** · Maybe you're making a game like I am, or you're wanting to make bank as a software engineer. Either way, use that code juniperdev and see everything that Bootdev has to offer.

**4:59** · Thank you very much, Bootdev, for sponsoring. While Ari was making the computer UI, I got started on making the obstacles that would actually be present around the office. We needed things to actually make the game difficult. So, we added a bunch of objects that the player is going to have to push around to get to their desk. Maybe you have to push through a bunch of boxes and maneuver the word through them without the rope snapping. Or you have to push chairs out from their desks, roll whiteboards out of the way, maybe even dodge NPC co-workers as they walk around on different paths. So, we did all of that and I did a lot of the pixel art for it.

### Obstacles

**5:29** · Trash cans. Bam. Pushable. Chairs. Done.

**5:34** · Bookcases. File cabinets. Every object that the player can push has its own weight and friction, which means a trash can can feel a lot lighter to push than a table. And a whiteboard can feel like it's actually rolling. Most things were pushable by the player, but some things like desks needed to stay put in order to prevent the office from just becoming complete chaos. At first, it seemed fun to just make everything pushable, but that just led to everything clumping up or just becoming completely unmovable.

**6:01** · It's not as fun as having to push things around in the maze of cubicles and desks. I did a good bit of the pixel art here myself, like the desks, the water cooler, the boxes, a lot of random furniture officy things, but for a lot of it, I was able to use this free furniture pack on it.io, which was so useful. That gave me the time to actually build the game in the 3 days that we had. I also learned a lot more by focusing on coding instead of letting myself do the stuff that I like the most, which is usually the art.

**6:26** · So, by the end of day two, we had a playable game, but we didn't have any of the office laid out yet, and we needed to polish everything up. It's a classic saying in game development that the last 10% of your game takes 90% of the time, \[music\] and that was unfortunately very true with this project. We still had a lot to do before the game looked or felt finished at all. We needed an office. We needed a place to actually play the game. And so I took that on as my big task for day three.

### Finishing touches

**6:52** · You'd think that it's just laying out furniture, but it's a lot more than that because how big should the office be? How many words do we want the player to have access to?

**7:02** · And how can I organize the obstacles in fun ways to challenge the player in getting them? This was a task in level design just as much as it was the slow manual process of adding every object into the office. You got to make the object. You got to put the collision box on the object. You got to figure out what a reasonable amount of friction is to push the object. Thankfully, once I had one of each object type, I could just duplicate them, but it still took so much time. Is having individual nodes for every object in the game the best way to do this?

**7:35** · Probably not. Usually, you can use what's called a sprite sheet when you're drawing things into your world, and that lets you easily paint tiles. But because we needed everything to be pushable with different physics, we couldn't do that.

**7:47** · By the end, I had divided the office into five main zones. There's the main desk area where the player's computer is that has all the workstations everywhere. The break room featuring the one and only water cooler as well as a state-of-the-art kitchen set. The uh somewhat open concept doorless bathroom, the file storage room filled with boxes that you have to get around, and then more desks in the west hall of the office, as well as a little booknook. As cute as this was, and I was so proud of this, it still felt a little bit empty.

**8:15** · So, I added a bunch of little guys and I arranged them all around the office.

**8:19** · Some of them are having little conversations. You know, very important business goes down at simpler times.

**8:24** · They're using the bathroom. They're in line for the water cooler or they're they're hanging out alone in the storage room for some reason. I even coded it to where they'll spawn as random colors, which is cute. The The Simpler Times is a diverse office after all. All these little guys bulling about doing their thing just made the game feel so much more full of life and polished. The term for that kind of thing is what you'd call adding juice. And there's a really good GDC talk about it.

**8:46** · In that talk, the speakers make a game of brick break, and they slowly add things to it like screen shake, particles, and sounds, and it completely changes the way that the game feels by the end of it. Even though it's still just a game of brick break, it feels so much more finished and refined. That's what we tapped into when we made the submission animation for finishing your story. It looks so cute.

**9:08** · The Simpler Times article slides in and it shows the headline that you put.

**9:11** · There's a nice little wiggle to the text that shows your score. It's a lot more juicy than just a screen that's like, you know, here's your headline. That's also what adding sound effects and music did, which was honestly my favorite part to see the outcome of. We were going to add highintensity music, but we thought it'd be so much funnier to just have ambient office sounds to really tap into that corporate atmosphere. The goal is for you to just feel like some guy clocking into his 9 to5 to to go right.

**9:37** · So, as you explore the office, you'll just hear some white noise with the the occasional cough, a printer sound, a phone ringing.

**9:55** · I'm a team player.

**10:00** · My favorite part is if you go up to a group of people, you'll hear them faintly murmuring. got somewhere in the middle, you know, like the Goldilocks.

**10:09** · She had to try everybody before she Oh, excuse me, guys. Just going to slide in here. Yeah. Thank you. Now, the whole time that we were working on this project, we kept everything really organized in this nice little to-do list. To-do lists are my passion. I love project management, so I always made sure that Ari and I had a steady, logical sequence of tasks that we could always be working on. We checked everything off as we went, and then by the end, we had a really nice way to look back on everything we had accomplished. 10 out of 10 would recommend doing something like that. It feels very rewarding.

**10:37** · I'll put the link to our document in the description if you want to see how we lined it out and broke everything up. But by the end of the third day, we were rapidly approaching our 10 p.m. submission time. And we made the itch.io page that describes our game. We gave it a little description. I made this newspaper pixel art cover image. And we submitted the game with about 10 minutes to spare.

**10:56** · Now, this game was completely unattached to me as Juniper Dev. We published it on Ari's Itch account. We just said that he was the sole creator. I didn't want anyone clicking on this just because they maybe recognized my name. And I wanted to have a real fair, honest shot at wherever the game jam judging might go. So, the question we're all dying to know, did the Simpler Times, the small upcoming news company based in Simpler USA, have what it takes to take home the crown in this game jam?

### Results

**11:26** · No, it did not. But you know what? This was so much fun. And for having less than half the time that we would have if we started on time, I think we made something cool and we hopefully had the most creative interpretation of the prompt. Ari and I were both really proud of how things turned out. After 3 days of migrating between cafes every 3 hours, programming well into the hours of the night, we made a little game and it was very fun. Participating in this game jam just taught me a lot of things.

**11:52** · I am continuously always realizing that two minds are 90% of the time better than one. No matter how good I think my own ideas are, there are things that I will just never think of if I don't bounce with someone else. If it weren't for Ahri, you guys would be watching Baby Shape Simulator 2026 right now. Some of my favorites from the jam included this shaking ring landing game.

**12:13** · It's a recreation of one of those toys where you have to get the rings to land on the spikes. And I saw that someone else also had the caveman idea, which was was really cool to see. One of the top rated ones was a yo-yo roglike combat game. You have a yo-yo and then you have to kill things with it and you get little upgrades. That was also really cute. But my favorite part of playing Game Jam games is downloading random zip files to my computer. But hey, if you want to play The Simpler Times, there's no download needed. It's just a web game, completely free, of course. I'll put the link in the description. I went ahead and re-uploaded it to my itch account just for simplicity visibility purposes.

**12:44** · I would love for you to play it and make sure that you use audio. All of that being said, thank you so much for watching. Subscribe if you want to and I will see you in the next one. Bye-bye.