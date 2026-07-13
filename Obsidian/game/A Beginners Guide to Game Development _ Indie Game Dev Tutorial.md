---
title: "A Beginners Guide to Game Development | Indie Game Dev Tutorial"
source: "https://www.youtube.com/watch?v=wBfc80Uvi_Q"
author:
  - "[[RETRODEAD]]"
published: 2025-07-12
created: 2026-07-13
description: "Check out my other videos here: https://www.youtube.com/playlist?list=PLe5nJEbe4BCAljJhR1mwU6dIJr9HHUvGN you can play my games here : https://retrodead.itch.io/you can join the discord here : https:/"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=wBfc80Uvi_Q)

Check out my other videos here: https://www.youtube.com/playlist?list=PLe5nJEbe4BCAljJhR1mwU6dIJr9HHUvGN you can play my games here : https://retrodead.itch.io/  
you can join the discord here : https://discord.gg/A9eRz5VbGp  
If you like what I do, consider buying me a coffee!🤍 : https://ko-fi.com/retrodead  
\-=-=-=--=-=-=-  
  
\- I tried to focus finding software that is free to use, so if you're wondering why programs like Photoshop or FL Studio are missing, thats why.  
  
\== DAWS ( Sound and Music ) ==  
Waveform : https://www.tracktion.com/products/waveform-free  
Bosca Ceoil Blue : https://yurisizov.itch.io/boscaceoil-blue  
Reaper : https://www.reaper.fm/index.php  
Beepbox : www.beepbox.co  
  
\== ART ==  
Libresprite : https://libresprite.github.io/#!/  
\- From what I know Libresprite is kinda behind on modern Aseprite features, but it should be more than good enough to start with! Also the sourcecode for Aseprite is freely available, so you can built the program yourself for free if you know how to  
Paint.net : https://getpaint.net/  
Gimp : https://www.gimp.org/  
Krita : https://krita.org/en/  
Fire Alpaca : https://firealpaca.com/  
  
\== MISC ==  
Github Desktop : https://desktop.github.com/download/  
\- Any git client would be fine to use, I've just found that Github Desktop is the most user friendly / easiest for beginners to learn  
IDEs : https://github.com/zeelsheladiya/Awesome-IDEs  
Open Game Art : https://opengameart.org/  
Itchio Assets : https://itch.io/game-assets  
GDC : https://www.youtube.com/@GDCFestivalofGaming/videos  
\- The GCD channel has tons of videos on game design, and the game industry as a whole, so its worth checking out if thats something youre interested in  
  
\-=-=-=--=-=-=-  
music used ( in order)  
\- Replay ( Time Attack ) - Rage Racer  
\- Zeus Carnage Heart Second - BGM 08  
\- Beneath The Mask ( Instrumental ) - Persona 5  
\- Lightning Luge - Rage Racer  
\- Gwyn, Lord of Cynder - Dark Souls  
\- Elevatorstuck - Homestuck

## Transcript

### Intro

**0:00** · Making games can be extremely daunting, especially if you don't know where to start. Many of us have dream games, an idea we long to make that we're so passionate about. Some of us just want to make small games for fun, and that's really cool, too. Regardless of what you want to do, you have to learn how to make games in the first place. That's why I put this video together, the beginner's guide to game development.

**0:19** · This video is something of a guide and a road map, so it'll be a bit dense at times, but just because I'm going over a lot in this video doesn't mean you have to learn it all at once, or anything in particular really. And don't overwork yourself trying to master all of it either. Game development takes time and patience, so it's best you give yourself the time you need to actually learn and not burn yourself out. In the description, I've gotten some links to tools and resources I think could be helpful and a link to my Discord server for game developers. Like and subscribe if you enjoy the video. So, game engine or framework. To actually make a game, you'll need something to make it with.

### Game Engine or Framework

**0:49** · This is where you can decide to use an engine or framework. For the purposes of this video, I'll assume you'll be using an engine because most beginners wouldn't want to or need to use a framework. but I'll still go over both.

**0:59** · A game engine is a piece of software that acts like an all-in-one package for most of your game development needs.

**1:04** · This means it'll give you most of the necessities you'll need for making a game, such as a place to write your code, a system for building user interfaces, a system for running and compiling your project, and usually your engine will give you some things that are really nice to have, such as a built-in physics implementation, collision detection, a way to manage your project, so on and so forth. But essentially, it'll give you most of the building blocks you'll need to make your games. On the other hand, a framework is like a set of tools. Most frameworks give you some way to render things to the screen, manipulate the window, doing CRUD operations.

**1:31** · These are creating, reading, updating, and deleting, and other essential functions for your game, such as providing audio and input libraries. Frameworks give you much, much more control over your project at the cost of not really giving you much direction in how to make your project, if that makes sense. If you're more technically inclined and you like programming, frameworks like Ray Lib, Lev 2D, Pygame, and Bevy may be worth looking into. One thing new developers get stuck on is choosing what engine to use. And honestly, it doesn't really matter.

### Choosing an Engine

**1:59** · No matter what engine you choose, you can still basically make any game you want. Of course, making certain types of games in specific engines can be easier. For example, if you want to make a visual novel or a narratively driven game, Renpie may be what you want to use because it's specifically made for those kind of games. But to reiterate my point, regardless of if you choose Unity, GDAU, Pygame, Unreal, or Railip, it doesn't really matter too much. All that matters is that you're comfortable with the tools you're using.

**2:25** · As you become more comfortable with your engine of choice, you'll start to develop a workflow that works for you.

**2:30** · Thankfully, there's a ton of great engines available, making game development really accessible. The only issue is that since there's so many, deciding can be kind of difficult if you don't know where to begin. So, I'll quickly give you an overview of some popular engines to help you narrow down your choice. But just remember, you can still make any game in nearly any engine. If you're looking to make both 2D and 3D games, GDAU, Unity, and Unreal are good picks. GameMaker is also good if you're only interested in making 2D games. There are also a few engines that don't require you to code either, such as Unreal, which has a pretty robust visual scripting system called Blueprints.

**3:00** · There's also Construct 3, which is a no code 2D engine with some 3D capabilities. As I mentioned earlier, there's also Renpie, which can be used for making visual novels. And of course, there's the ever beloved RPG Maker series of engines. At this point, if you've chosen an engine and are ready to get started making things, the best thing you can do now is to get familiar with your engine. Take some time to just fiddle around with your engine. Open random menus, see what everything does.

**3:22** · Maybe watch tutorials on your engine so you can see how it's used and become familiarized with its interfaces. At this point, you want to be able to navigate your engine without too much trouble, and know where most of the important things are, like the inspector, your console, where your assets go, project settings, and etc.

**3:36** · Around when you're becoming familiar with your engine is when you want to learn how to code inside of your engine, if it allows for that. This will be different for each engine out there. For example, GDO has its own language called GDScript that's similar to something like Python. And the engine includes a code editor inside of the engine. Unity uses C and requires you use an outside code editor, something like Visual Studio or Sublime. Thankfully, because of how popular most of these engines are, it's not too hard to find programming tutorials for any of them.

### Programming

**4:01** · But here's an overview of some programming basics anyways to give you somewhere to start. Variables are containers for our information. We can create them, put information inside of them, edit that information, and read it. Data types are the types of variables we can use. For example, an integer is a variable that represents a whole number. A string is a variable that represents text and an array generally represents a list of other variables. Then there are conditionals.

**4:24** · These allow us to control the flow of our code. For example, if we make a variable called money, we can check to see if money is greater than some value.

**4:31** · If so, we can give the player an item.

**4:33** · Then there are loops. Loops do tasks for us over and over again, such as looping over a list to see the contents of it and compare it to something. Finally, there are functions. Functions are just blocks of code that we can create and use at any time. We mainly use them so we don't have to repeat ourselves when we're coding. We can give functions values to use inside of their code.

**4:51** · These are called parameters. And functions can also give us back values when they're done running. These are called return values. And that's pretty much everything you need to know to start programming your games. That overview was pretty brief and bare bones, so make sure to go on your own and find tutorials that fit your engine and use cases. Art, sound, and music are really important to the feel and style of your game. Unfortunately, I can't really cover everything about them here since they're all pretty big topics and they're all pretty different from each other as well, but I can give some advice. Keep in mind, you don't have to make your own assets.

### Art Sound Music

**5:18** · And honestly, if you're looking to just make fun games first, there's nothing wrong with just using programmer art and placeholder assets. The fun in your game is about the gameplay, not the assets. When it comes to sourcing assets, there are tons of freely available assets online. Sites like H.IO IO and Open Game Art have tons of great stuff available. Just always remember to check the licenses of everything you use. As for learning how to create your own assets, I will generalize here, but you just have to be consistent. Creating assets, your art, sound, and music are all skills you can learn with enough time and practice.

**5:48** · So, as long as you're patient with yourself and consistent, you can improve your skills over time. So, you've chosen an engine, you mess with it here and there, but you actually want to start making stuff. At this point, I would recommend to make extremely simple projects. When I was starting out, I would make really basic platformers or make projects with singular mechanics, like figuring out how to make bullets, how to make enemies, inventory systems, etc. Some developers would also recommend recreating classic games such as Ponger Space Invaders. And I do think this is a good idea.

**6:17** · I encourage you to look at plenty of tutorials at this point, too, but it is critical to avoid something called tutorial hell.

### Tutorial Hell

**6:24** · Tutorial hell is when you get caught up watching tutorials, believing you're learning instead of actually making projects. Game development is a very hands-on medium, and you'll learn best by actually making things. Tutorials definitely have their place in your learning process, but you should learn to use them effectively to learn and refine your skills and not use them as a replacement for actually gaining experience. Simply put, you can watch someone do something a 100 times over.

**6:47** · But unless you do it yourself and put it into practice, you've only learned how to watch someone else do it. At this time, you may have already made a small game or be making progress towards or planning your first small game. Again, really, really small. If so, that's great. However, you may have had some doubts about your abilities to learn game development, or you could be unhappy with what you made so far. And that's okay. Game development is extremely difficult. And you'll have moments where you feel like giving up, but that's okay.

**7:13** · There's no rush or pressure to improve, and it's completely healthy and encouraged to take breaks from game development to avoid burnout and to refresh yourself. Getting feedback on your work is extremely important, but it can be hard to get it when you work alone. I encourage you to join communities where you can share your work with others or maybe even work together with like-minded developers.

**7:32** · Game jams are great for this as they allow you to quickly make games and get them out into the world for others to see. It can be scary to join your first game jam, but I promise you'll meet many, many friendly developers who are just as passionate about their games as you are about yours. When I first started out, I enjoyed doing mini jam, even though I didn't finish many of my submissions. Along with the previous advice, learning how to finish games is a skill all of its own. Again, jams are great for this, but honestly, I recommend keeping things really small and releasing whatever you can on sites like H.io, Game Jolt, or even just sharing them directly with friends and family.

**8:03** · It's important not to get stuck trying to perfect every detail of your project, and just accept that you'll have to let it go at some point. There's a quote that goes something like, "Art is never finished, only abandoned." And I feel like it's something to really keep in mind, especially when you're first starting out with game development. And that's basically it.

**8:18** · This guide is meant as a way to help you get your foot in the door. So, as I mentioned at the start of the video, make sure to check out the links and resources in the description. Thank you so much for watching, and I hope this video helped.

### Outro

**8:40** · Thanks for watching the video. Um, this is completely unscripted, so I don't know what to say really, but the response in the last video was pretty pretty great.

**8:50** · Um, still pretty in awe about that. I believe it has 36.6,000 views at the moment and I just hit 1,000 subscribers this morning. Um, so thank all of you. Thanks to all of you. I really appreciate it. Um, I wanted to thank all my supporters again. Of course, currently just I of hell. I appreciate your monthly uh supporters membership. Yeah, monthly membership a lot. It really does mean a lot to me.

**9:16** · I'd like to find a way to make my videos a little bit more sustainable for me to edit. Um, even though I do like the style of videos I'm making right now.

**9:25** · Um, I definitely need to find a way to make them easier to edit, especially the longer ones like this one because I don't think I want to make more videos that are this intensive for me cuz I'm not really a very good editor at the moment. Maybe in the future when I get more skills I can do something like this again. But yeah. Um, I also don't know what my next video should be about. I haven't really planned this far ahead.

**9:46** · So, suggestions are very much appreciated, but thanks again for this super positive response to the previous video. That was amazing. Um, I appreciate it so much. And yeah, no, that's it, I think. Thank you so much for watching and I'll see you in the next video.

**10:08** · Strawberry lemonade, tea, lemonade, green tea.

**10:11** · Oh my god. What are we doing here? I I didn't know it bounced. I didn't know it bounced.