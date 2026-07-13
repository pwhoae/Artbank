---
title: "Everything I Know as a Solo Indie Game Developer! *Sort of"
source: "https://www.youtube.com/watch?v=gqwGmXCT4O0"
author:
  - "[[zagawee]]"
published: 2026-03-24
created: 2026-07-13
description: "Follow SUPER DEBT on Kickstarter!💰 https://www.kickstarter.com/projects/superdebt/super-debtJoin the Patreon!💸 https://www.patreon.com/c/zachisagardnerWishlist SUPER DEBT on Steam! 💀 https:/"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=gqwGmXCT4O0)

Follow SUPER DEBT on Kickstarter!  
💰 https://www.kickstarter.com/projects/superdebt/super-debt  
  
Join the Patreon!  
💸 https://www.patreon.com/c/zachisagardner  
  
Wishlist SUPER DEBT on Steam!  
💀 https://store.steampowered.com/app/3398160/SUPER\_DEBT/  
  
Join the Discord!  
🎮 https://discord.gg/zht36yGqG3  
  
Follow development on Bluesky!  
🦋 https://bsky.app/profile/zachisagardner.bsky.social  
  
A big thank you to my Patrons for helping make this video possible 🤠💖  
Mom & Dad  
Rachel Feirman  
8aka  
John Paul Gardner  
DoujinShinji  
p4ka  
Kent Reese  
Tyler McBride  
Quinton McCollum  
Vanglant  
Vurj  
Burger Kurger  
Zach  
Jake Horsley  
Yosi  
Skyler Powers  
Patrick Holder  
Omelette Studios  
Griimm  
ThatOtherGalPerson  
Leafcloud  
Nacho  
Matt MML Lucas  
osto  
Paulo Leitão  
Ryan Neese  
Brandon West  
sweaters  
Alex Porcayo  
Bazgrowl  
ACarr  
berrylly  
Alex Howe  
Rottady 01  
Tony Youssef  
Hot Dog  
ElThé  
William Askevold  
Nosa  
Octo  
hey its me jos  
swaglazio  
Wyatt Lee  
bepo  
Sebaguardian  
Oropendola  
Alex Mitch  
Tuber  
d3adfin  
matt  
kitgore

## Transcript

**0:00** · Hi, I'm Zachary. And years ago I quit my job in web development to make indie games by myself. I've spent a long time learning how to do everything involved in making a game. In this video, I'll try to go over all the different skills and software I've used to do what I do.

**0:13** · I'll describe how I came to learn these things and why I settled on the software solutions that I did. I'll be covering things like visual art, game engines, programming, design, music, sound effects, and even how I make my YouTube videos. This won't be a super in-depth tutorial on those topics. That would take forever, but it should be interesting if you'd like to know more about how games are made. It could also provide a good starting point if you're interested in making your own stuff.

**0:36** · I've been working on my second commercial game Super Debt for about a year. For it, I've made my own engine and many assets that I will be using as examples for this video. For your reference, Super Debt is a bullet hell action roguelike where everything is money. If you've ever heard of the term subtractive design, this is a prime example of that. Games are largely driven by numbers. In an action game, you can expect to have health, stamina, ammo, currency, or even a timer. Those are all just numbers. Well, in Super Debt, all those things are combined into one big number, money. I'll talk more about this later in the design section of the video.

**1:09** · If you're interested in supporting Super Debt, please consider following its campaign on Kickstarter to be notified when it launches. If you can't support the game financially, there are other ways to help out if you're up for it.

**1:18** · Wishlisting the game on Steam or telling your friends about it are also super helpful.

**1:25** · Why don't I start with the visual art of the game? I've been drawing for as long as I can remember. I've enjoyed using pixel art for games because it feels quick to produce compared to other styles, and I just really like the look of it. I first started learning how to make pixel art by trying to copy characters from game guides on the family computer.

**1:41** · I can still remember struggling to get Squirtle from Pokémon Mystery Dungeon to look just right. That's really the main thing I've done to get better. I've just been studying what people before me did right and did lots and lots of practice.

**1:52** · I settled very quickly on Aseprite for making pixel art. It's source available and it's just very good. I've enjoyed using it for years. I've been working on my art style for a long time. I usually gravitate towards goofy and cute stuff.

**2:04** · Adventure Time was a huge influence on me when I watched it as a kid. For Super Debt, I wanted to try something a little spookier. If I'm going to make a game where you kill things for money, I feel like making it too cute is kind of inappropriate. My first game Garbanzo Quest had a cute and goofy art style, so Garbanzo couldn't actually kill things.

**2:22** · All they did was spit on bad guys until they kind of got grossed out. I still want Super Debt to have some humor and relief to it, so I've been trying to find the right middle ground.

**2:30** · Having good colors is always important, but I feel like it's extra important for pixel art. My color theory is a bit weak, so I mostly lean on existing color palettes. \[music\] I really like the AAP Splendor 128 color palette. Contrast or tension and relief can be found not just in complementary colors, but in so many other things. Like shapes, for example.

**2:50** · Look at my boy Garbanzo. Along his front, there are so many changes in angle and movement, but when we go around to his backside, it's literally just a straight line. Tension and relief. Look at the shot from Samurai Jack. It's doing the same thing. Wow.

**3:04** · We can find tension and relief in music as well with the relationship between the tonic and the dominant \[music\] chord.

**3:14** · Wow. We can find tension and relief in game design, too.

**3:18** · That's between the player's goals and the obstacles that block their path. All right, you get the idea.

**3:24** · When I animate my characters, there's two major principles that I'm always keeping in mind, line of action and overshoot. Line of action is the blueprint for giving any motion a strong feeling of movement. For really any convincing pose, you should be able to draw a line over it that illustrates the core movement. See Billy Bones, for example. All his punches have really strong lines of action. It really feels like he's punching something.

**3:47** · Overshoot is when a motion goes past its intended target. Let's see Garbanzo's walk cycle. There are only two key poses in this example so far, left and right.

**3:56** · With just the key poses, it reads, but it's lacking something. Add overshoots for each key pose and it makes all the difference. That's just four frames to make a convincing walk cycle. When I was a kid, I thought I had to draw every permutation of movement between two poses. I would have never thought just how much is left to the imagination when making a convincing movement. I actually went to college to get an associate's degree in animation, so it's the only thing I have any proper education in.

**4:20** · There was a time when I wanted to make my own Adventure Time. Animation can take up a lot of time, so I will often keep that in mind when designing characters. That's why a lot of characters tend to just be floating heads and stuff. One of the biggest animation problems was trying to figure out how to get characters with guns to look like they're shooting in any direction. A lot of 2D games with this problem will try to just vagify the action, so that's kind of what I did.

**4:43** · Zoe's shooting animation shows this flash effect and mostly focuses on the recoil. I cheated even more with her special moves like her baseball bat swing. It just kind of looks like she's using her psychic powers to swing it.

**4:54** · It's cheap, but I think it looks cool.

**4:56** · When you're a solo dev, you got to try anything to save time.

**5:00** · Anyways, why don't we talk about the music now? This is also another thing I've been doing for a long time. My first experience with writing music was actually in LittleBigPlanet 2.

**5:09** · Unfortunately, my PS3 broke and the servers have been shut down, so a lot of that stuff is likely lost. Since then, I've tried so many different music production solutions over the years. I used MilkyTracker for the longest time, which is a chiptune tracker where you program notes individually and make instruments using simple sound waves.

**5:35** · I was drawn to this software over 10 years ago because I love retro stuff and well, it was free.

**5:41** · The UI is a bit intimidating, but it's actually not that bad. With some scribbles and some basic music theory, we can get to work. To put it simply, music is comprised of just 12 notes.

**5:55** · There are multiple octaves, but they're just repeats of these basic notes. If we want to make a chord, we just pick a root note and move up four half steps and seven half steps, and we have something positive sounding.

**6:07** · Take that middle note and we move it down half step, and we got something that sounds negative.

**6:14** · That can be sad, angry, or even wistful depending on context. Wow, music theory.

**6:20** · Aside from consulting the circle of fifths from time to time, that's about as much music theory as I know. Music is definitely my favorite medium to work with. It's still something I don't fully understand, so there's still a fair bit of magic to it for me.

**6:32** · Knowing what the rules are and how to break them is helpful, but you can get pretty far just using your intuition. I used MilkyTracker to write the entire soundtrack for Garbanzo Quest. There's around 80 songs in that game. It mostly stays in the cutesy area, but there's still some variety in the music. Give it a listen.

**7:22** · When it came time to make music for my next project, I knew I wanted to try something less retro. At first, I tried LMMS, which was serviceable. It's free and open source, which is important to me, but the project seems semi-abandoned as it hasn't had a new release in over five years.

**7:37** · \[music\] This combined with the clunky user interface wore me down over time. I'm sorry, but it drives me crazy that in the piano roll, right click is \[music\] delete, but in the pattern editor, middle click is delete. You'd think, "Oh, I'll just change that in the keyboard shortcuts editor." Doesn't exist. Whatever. Eventually, I gave up on LMMS and decided to try out FL Studio. I was a little sad to get back in bed with closed source software, but it really seemed like my only choice. As Windows gets worse and worse, it fills me with dread that FL Studio doesn't have a native Linux build.

**8:07** · I know there's ways around this, but I already have a million things to do. My life doesn't need any more complications. Overall, I have found FL Studio to be a huge improvement over everything else I've tried. I've enjoyed using it for the most part. I really like the sleek and professional presentation. My biggest complaint with FL Studio is that you also can't remap keyboard shortcuts.

**8:29** · That is astonishing to me. If you ship a video game without having a button remap menu, reviewers will destroy you. But if you ship expensive professional-grade software without key remapping, that's totally fine. Okay. Luckily, most of the hard-coded shortcuts are competent. Though, I do have to mention that redo is control alt Z, which is just wrong. It should be control shift Z. I have literally never seen another program that uses control alt Z for redo ever.

**8:58** · Also, the shortcut for draw being P, which is on the other side of the universe, drives me insane. It should be B, but that's assigned to brush, which is like draw, but stupid. Seriously, what kind of freak draws a bunch of notes in a row often enough to justify that action being assigned to the illustrious \[music\] B key? To do what?

**9:16** · To go do do do do do do do do do do. Yeah, that sounds great. Moving on. For Super Debt, I was motivated to try working with more realistic sounding instruments. At first, I tried using these random instruments I found online. They have a certain charm to them, but I found they sounded a little too canned.

**9:39** · \[music\] Eventually, I found this pretty affordable subscription for an entire professional-grade virtual instrument library. Virtual \[music\] instruments are usually ungodly expensive. I've seen them go for hundreds of dollars just for one instrument. Why is making music so much more expensive and closed off compared to everything else I do?

**9:57** · Anyways, here's what that same song in FL Studio sounds like with the new instruments.

**10:05** · \[music\] I've written a lot of music for Super Debt already. That song I just shared is a little older compared to the rest of the soundtrack. I'll tease some of the new songs I've been working on.

**10:28** · \[music\] \[music\] \[music\]

**11:19** · \[music\] \[music\] Super Debt soundtrack is at its core inspired by heavy metal, but I still want to have some variety of course. The sound effects I don't actually have a lot of advice for. I mostly just go on to freesound.org and search through all the creative common stuff. I do make a lot of sound effects with chiptune tracker still. Here's some examples.

**12:04** · At this point in my journey as a game developer, I find programming to be the easiest part actually, \[music\] which might seem counterintuitive because programming is something that I think a lot of people find intimidating, but it's just like anything else. Just takes \[music\] time. The reason I find it the easiest is because it's all about just making things work and staying organized. Those problems are much more measurable than making things fun and interesting. I've been programming for over 10 years, so I've come to find that game development is mostly just solving a lot of the same problems in slightly different contexts. I still run into new problems from time to time, but whatever it is, I can usually figure it out without much drama.

**12:35** · Every video game needs a game engine to help bring it to life. The game engine is what creates the game window on your screen, draws sprites, plays sounds, facilitates user input, and really anything else you can think of. The part that still impresses me is how game engines can create programs that can run on a variety of platforms all from the same code base.

**12:53** · There's nothing stopping you from making your own game engine from scratch, but in this day and age, there are so many existing game engines to choose from. Unity, GameMaker, Unreal Engine, and Godot are all popular choices. They all have their own strengths and weaknesses, but there's one difference that I'd really like to point out. All of the game engines I mentioned are closed source and for profit, except for one.

**13:12** · The Godot game engine is free and open source. Considering we live in a world based on infinite growth, \[music\] I believe open source to be a much safer long-term investment of your time. Open source isn't perfect, but the huge silver lining is that once a community forms around an open source solution, it's hard for it to just randomly \[music\] die. Like if say Adobe just came out of nowhere and said they were deleting Adobe Animate for no reason.

**13:34** · Even if support for the open source product peters out, you'll always have access to the source code. Whatever problems you have, you might just be able to fix them yourself. Anyways, when I first started getting into game development over 10 years ago, I decided on the Unity game engine. It's where I first learned the C# programming language and got my feet wet on solving so many of game development's basic problems. As time has gone on though, I've seen them chain together one bad decision after the other. The problems range from a horrible attempt at a per install tax or their obsession with acquiring other companies \[music\] and laying off their workers.

**14:06** · Needless to say, I've lost faith in them and have \[music\] grown a healthy skepticism for all things closed source.

**14:12** · I could have moved to GameMaker or Unreal Engine, but they're victim to the same perverse profit motives that Unity is, and I'm afraid that one day they too would atrophy in the same way. So, it seemed to me that my only options were to use Godot or to make something myself. When I first made the jump to full-time 5 years ago, Godot was pretty cool, but I thought it was still a bit underdeveloped, so I decided to make my own engine using C# and the MonoGame framework. MonoGame was used for other popular indie games like Stardew Valley and Hades, so I thought I might give it a shot.

**14:41** · If you're wondering what a game engine framework is, it still does a lot of the heavy lifting like handling application windows and user input, but you have to supply your own tools for designing levels and organizing everything.

**14:53** · It's like a normal game engine, but without any user interface. I used my MonoGame engine to make my first \[music\] commercial game, Garbanzo Quest. It was a lot of fun, but I really didn't know what I was doing, so the engine became quite a mess at the end. So, for Super Debt, I decided to start from scratch. I was tempted to give Godot a chance, but I was more comfortable with my custom engine style, so I just decided to spin up another custom engine. This time was a lot faster because I sort of knew what I was doing, and I just copy-pasted all the good stuff from the Garbanzo Quest engine into the new one.

**15:20** · I actually decided to go with raylib for the framework this time, mostly just because I like learning new things. It's pretty similar to MonoGame. I'd say it's a little easier to use though. I found MonoGame's content pipeline thing pretty weird, and getting songs to have partial loops was a huge pain in MonoGame. I had to write my own audio buffer reader thing or something. I don't even remember how it works. I love programming, but I must admit that when it comes to super technical stuff like reading audio buffers and things of that nature, my eyes just start to glaze over a bit.

**15:49** · Those kinds of things just get too far away from my main interests, which are in game design and tooling. Anyways, this is a little look at my game engine made with raylib. It has a little terminal that I can use to load different rooms in the game so that I can work on them with my level editing tools.

**16:04** · A not so minor detail that I haven't mentioned yet is that the engine and the game are essentially the same thing. I just disable the dev tools for players when I publish the game. I've tried making general purpose engines before, and making something that works for everything you ever might want to do introduces a lot of complexity. Not having to worry about how decisions will impact future games is pretty liberating.

**16:24** · If I ever want to make another game with a custom engine, I'll just start over and copy-paste all the good parts of this one like I did between Garbanzo Quest and Super Debt. The nice thing about the game and the engine being the same thing is that going between editing and testing things is instant. That's pretty important for a game that will require up to thousands of rooms being made.

**16:42** · I went through all the trouble of making all this nice UI and having a toolbar on the side, but I mostly just use this quick menu to pick tiles and shortcuts to select tools. When I place something in a room, perhaps something like a fly, it gets added to the room's map file, which is essentially just a list of objects. This map has a few cells already, but down here you can see the fly we added. If I wanted, I could copy-paste this entry here, change the position, and now we have two flies.

**17:07** · They're in love. This isn't the best way to edit levels of course, but it should kind of show you how it works. The reason the fly shows up as a cell we can place in the engine is because I've set up an import file which describes a few things needed for that. Most importantly, it describes the thing it is. This hooks up to the C# file which contains \[music\] all the enemy logic and behavior. You see, everything in my game engine is a thing. If you've ever used Godot, you'll know that it uses a node-based architecture. I implemented something very similar in my engine, except I changed the name from node to thing. I thought it would be funny.

**17:38** · Back when Super Debt had a separate game engine, the engine's name was Thingus, and it had a mascot and everything. Not the best use of my time, but it was fun. For Garbanzo Quest, I used an entity component framework approach to organizing all the objects in the game.

**17:54** · This approach was very much inspired by how Unity does things. It was fine, but I did find it was a little too bulky for my liking. In the entity component style, you would have an entity which really didn't do much on its own, \[music\] and you would attach components to it that did all the actual work. In a node-based architecture, the entity and the component are just the same thing.

**18:12** · In a larger project, you might want that distinction, but for indie scale, I don't think it's always necessary. Something else you might find interesting is that I've written my own text-based dialogue system. For Super Debt, I wanted it to have \[music\] interesting dialogue that helps give the game relief from its crazy and hectic combat, so it was important to implement something like this. Let me show you a segment from the game.

**18:59** · Here, we can see how the dialogue is actually scripted. I can execute pre-written commands with this @ camelCase syntax highlighted in purple. Aside from that, the game just displays text boxes one after the other, top to bottom.

**19:10** · I can even branch into different dialogue entries based on conditions or responses to questions. The way translations work is that you would just copy the folder containing all the dialogue files and translate them in place. I like this way of doing things as opposed to just having a big spreadsheet cuz there's less of a disconnect from how it actually reads in the game. I even wrote a small program that will detect differences between translations in case I add new dialogue entries or if something is still in English and needs to be translated.

**19:37** · The idea for the money is everything gimmick first came to me when I was playing Gauntlet for the NES. In this game, your health also acts as a timer because it's always counting down, so it encourages you to play fast and aggressive. I really loved this idea and wondered just how how other features could be driven by just one number.

**19:52** · Other games have done similar clever things. Like in Dark Souls, your money and experience points are the same thing. And in Monopoly, yeah, the board game, your money is effectively your health and the resource you use to compete with other players. I found it a fun exercise in trying to find a way to balance everything around this one number gimmick. I'll try to go over all the features that run on money. Health, every time you get hit, you lose half of everything that's in your wallet. It's important that it's always half because that way you can't just bring a bunch of money and become invincible. You can still bring extra money to buy more stuff from shops, but you're taking a big risk.

**20:22** · If you get hit while you're in the red, you die instantly. Timer, this is contextualized as the cost of air. This encourages players to act faster and more aggressive, which lends itself to the vibe I'm going for.

**20:35** · I can even change the cost of air in deeper areas to up the stakes. Ammo and stamina, in the game, you can unlock different weapons and abilities that all have different costs. Wonderful thing about everything being one number is if any weapon feels overpowered, I can just make it really expensive to use. Level ups, you can bank your cash into what are essentially level ups. They do what you might expect, increase your strength, defense, stamina, and so on.

**20:58** · The fun part is that you can sell your level ups, too. You might want to do this if you're in a desperate situation. There's other single-use items you can spend your money on, too. Like an item that removes all bullets on the screen or makes you invincible for a few seconds. Stuff like that.

**21:11** · Banks, this is where the debt and super debt comes in. You're not just trying to survive, you're also trying to save money so you can make payments on your debts. Randomly throughout runs, you'll find ATMs and you'll have to decide whether or not to deposit cash for your debts or to withdraw cash to reduce risk on your current run. Banks money is also used to buy new weapons and other things you can find on the internet. This acts like the meta progression of the game.

**21:33** · When you're developing a game to sell to people, it's important that the game has good selling points. That might seem obvious, but it can be a lot harder to execute than you might think. Garbanzo Quest, I believe, is a great example of maybe what not to do. Garbanzo Quest is a cutesy pixel art platformer, which is at this point a pretty tired concept. I do think that Garbanzo Quest is a good game and it does new things in the genre, but from a marketing standpoint, it was difficult to make it stand out. I just love platformers, though, so I always knew I had to make one.

**22:03** · For Super Debt, I tried really hard to keep the marketability in mind. I think the money is everything hook is a really strong concept, not just from a game design perspective, but also from a marketing one. So, I really try to focus on that when pitching the game. I don't think it's quite as bad as the platformer genre, but the top-down bullet hell roguelike is also also a little played out. So, that's something I'm also keeping in mind. I'm really hoping that pushing the economic aspects of the game will make it different enough. I'm an artist first and I'm mostly motivated by things that interest me personally.

**22:31** · So, it's hard to come up with a product that checks everything off the list. Because on top of the game needing a marketable concept, it also has to, you know, be good. If I came up with something super trendy and I'm just not personally into it as a concept, it's just not going to be a good game.

**22:48** · Planning is something I'm still struggling with in finding solutions for. I feel like I'm always bouncing between too much planning and too little, between analysis paralysis and being impulsive. In the beginning, just doing whatever sounds like fun at the moment seems to work, but as the project grows, I find there's usually a reckoning where the experience of just working and working without knowing when it's going to end becomes a bit overwhelming. It's good to take a step back to assess things, but I always end up trying to plan everything and then that, too, just \[music\] becomes overwhelming.

**23:16** · It's difficult to strike a balance, but I think the main lesson to be learned is that this is just simply the creative process. I need to make peace with the fact that there isn't a perfect plan that you can make from start to end. If there was a perfect plan, everyone would follow it.

**23:30** · I've heard developers describe game development like climbing a mountain, but I think it's more like being lost in a forest. Sometimes you just got to pick a direction and go. If you stay the path, you'll probably end up finding your way out, probably. Something I do always find helpful is trying to get things out of my head as fast as possible. Trying to keep an entire to-do list in my head quickly drives me crazy, so I just try to write everything down in Trello. I have lots of different categories for things, but the two important ones are things I'm doing now and a small selection of things I want to do soonish.

**24:00** · Anything more complicated than this, I think, goes into analysis paralysis territory. I've tried writing big planned-out design documents, but I find that they quickly become stale. My creative process involves a lot of experimentation, so it just never works out. We're going to get a little meta here.

**24:18** · Marketing is very important to making sure a game is a success. I've tried pretty much every social media platform when it comes to building an audience. I tried Twitter, Instagram, TikTok, and so on. They all share one big problem, though. They really don't want people leaving their apps. And why wouldn't they? The whole point of them is to keep you there for as long as possible, often through addictive design and agitated media. This way, they can sell you more ads. They also heavily discourage linking to other sites by pushing posts with links down in the algorithm.

**24:46** · So, even if you do make a hit post or whatever, the conversion rate is just terrible because there's just so much friction in the way. I put off trying YouTube for a while because it requires more of a time investment, but I found YouTube by far to be the best platform for me when trying to build an audience and just getting the word out. The YouTube algorithm really doesn't seem to mind when you share off-site stuff and I find that long-form content is fundamentally better at telling your story and getting people invested. It's taken me a lot longer to make my actual game, but I think investing more time into this has helped a lot.

**25:18** · If you're wondering what video editing software I use, it's Blender. That's right, the program mostly known for 3D animation also has competent solutions for composing videos. I love Blender, even if it is a bit unwieldy at times. I already was a little acquainted with Blender as I've dabbled with digital animation before. The video editing tools are still a bit underdeveloped and it can be hard to find resources for problems I have, but the Blender team is constantly pushing out new updates that improve the tools I use to make my videos.

**25:44** · The only big problem I ever experienced was when I edited an entire video in 30 FPS instead of 60 and I pretty much had to readjust every single clip manually \[music\] and it took up at least a whole day's work. It's doing better now, but my first game, Garbanzo Quest, kind of flopped at first. So, that was kind of the kick in the pants I needed to finally give YouTube a shot. I made a few videos before, but this was the first time I really did any sort of research into how to make a successful video because I knew I had a good story and I didn't want to mess it up.

**26:11** · I've come to understand just how important the title and thumbnail are for getting a video to work. So, for my first real video, I tried something more punchy, maybe even a bit controversial. I tried to keep it tongue-in-cheek. I think it's a pretty funny title, so I believe that allowed most people to grant me some grace and it did. There was a small number of people that were really upset about it, but if you look at the like/dislike ratio, it really wasn't that bad. There are still some lines I won't cross. Like, I think the whole "You're dumb unless you're doing this" technique is a bit tacky.

**26:41** · You're giving someone a negative emotion and the only way they can cure it is if they click your video. I want to compete, but I want people to click my video because it seems interesting or they might learn something new. That's exactly what motivates my videos, too. I made a few so far and the ones I enjoy the most are the ones where I'm sharing my experience or something that might be helpful to others. If I'm just talking about how awesome my game is the whole time, it just starts to feel a bit vapid. That's when I start to get all existential. I start to get a bit, oh, what's the point? This is a waste of time. Nobody needs to watch this, and so on.

**27:12** · I still need to, you know, market my game. So, I try to marry those two things and that's exactly what this video is. Gotcha.

**27:22** · \[laughter\] Got you. You clicked on this video thinking you would learn about how video games are made and hopefully you did, but it's also a secret ad for my upcoming game, Super Debt. Super Debt is a bullet hell action roguelike where everything costs money. Bullets cost money. Time \[music\] costs money. Money costs money. And don't even get me started on the cost of health care.

**27:42** · Players take control of Zoe Zuberdan, an ordinary citizen crushed under a lifelong debt enforced by Apricot to ever, a company so committed to the profit it will resurrect \[music\] the dead to collect.

**27:55** · \[clears throat\] Thanks for watching. \[music\] I hope you learned something new about video games or something. If there's something else you all would like for me to cover in the future, please let me know. Also, if you like what you've seen today, please consider following the game on Kickstarter in order to be notified when it launches.

**28:09** · Well, it's now that I'd like to thank my patrons. It's your support that helps make these videos possible. Thank you, too.

**28:16** · Mom and Dad, Rachel Furman, Aid Arca, John Paul Gardner, Dojan Shinji, Paco Can Reese, Tyler McBride, Quinn McCollum, Van Gland, Verge, Burger Crew, Zack, Jake Horsley, Yossi, Scarlet Powers, \[music\] Patrick Holder, Amasuyos, Grim, That Other Gal Person, Leaf Cloud, Nacho, Matt, Emma Mel, Lucas, Austopalo, Litel, Ronnie's, Brandon West, Sweaters, Alex Perkeo, Bass Girl, A Car, Barrel Elite, Alex \[music\] How, Roteti01, Tony USA, Hot Dog, Alta, William Ascobol, Nosay, Octo Hates Me, Joe Swag, Lazio, Wyatt Lee, Beppo, Sub Guardian, Oro, Pendola, \[music\] Alex Mitch, Tooper, Deadfin, Mat and Kit Gore.

**28:46** · Good luck out there and see you next time. You may have noticed that I haven't mentioned generative AI yet. That's because I don't use it. I don't use it for anything. Why? Because I hate it.