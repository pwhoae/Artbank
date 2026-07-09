---
title: "Level Design Approaches for Solo Devs"
source: "https://www.youtube.com/watch?v=OLXn6YYAk7M"
author:
  - "[[Indie Game Clinic]]"
published: 2025-07-30
created: 2026-07-09
description: "🏥 support IGC on Patreon: https://www.patreon.com/indiegameclinic🎮 Original full stream: https://www.youtube.com/watch?v=HpLMFqztV_M&t=7015sSources:Steve Lee's Channel - https://www.youtube.com/"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=OLXn6YYAk7M)

🏥 support IGC on Patreon: https://www.patreon.com/indiegameclinic  
🎮 Original full stream: https://www.youtube.com/watch?v=HpLMFqztV\_M&t=7015s  
Sources:  
  
Steve Lee's Channel - https://www.youtube.com/channel/UCRT\_DdZnWiUryqrOhLL7gyw  
Lost Relic Games on Level Design Mistakes - https://www.youtube.com/watch?v=WkaBNmxhDFs&t=192s  
Ed Kay's GDC talk on Level Design as a Solo Dev: https://www.youtube.com/watch?v=XK-yTqYAD-c  
Ali Youssef's Blog on Level Design Basics  
pt. 1: https://gamedev.dou.ua/blogs/level-design-basics-part-1/?hl=en  
pt. 2: https://gamedev.dou.ua/blogs/level-design-basics-part-2/?hl=en  
John Romero's Level Design Tips/Rules: https://www.helldoradoteam.com/2018/12/19/john-romeros-level-design-tips/  
Tim Cain on Game Production Stages (inc. "Beautiful Corner") https://www.youtube.com/watch?v=IADSh\_P05As&feature=youtu.be  
  
Indie Game Clinic on Environmental Storytelling: https://www.youtube.com/watch?v=sSFs61IF2Rs  
  
  
Key Moments:  
00:00 what this talk is and isn't  
01:08 practice level design without making a whole game  
02:41 level design is not environmental art  
04:10 why we greybox  
05:38 why indies develop bad habits  
07:15 strategies for avoiding the pitfalls  
08:28 content planning your levels  
09:35 how to interpret other designers rules  
12:37 how do your level design rules relate to player experience?  
14:23 the only universal game design advice is psychological  
15:38 the 3 modes of level design thinking  
18:18 how to interpret component-oriented level design tips  
20:00 inspirational outro

## Transcript

### what this talk is and isn't

**0:00** · The main focus here is how to interpret the advice that you get on level design as a game designer or a solo developer because so much of the level design content out there is not presented in the context of you are making an indie game and you've made the game yourself and now you need to make the levels yourself. It is much more along the lines of preparing you to become a level designer at AAA studio or something like that. and that's not very helpful for this channel or the audience of this channel.

**0:29** · So yeah, I'll be talking about how to approach level design in your games. So as an indie developer, you're going to need to do these kind of things. You need to experiment with your game to establish what the level design requirements are in the first place before you do too much level design. Um, you need to work out a tople content plan for your game's levels. And I'll give you an example of that that is in another YouTube talk cuz I think it's one of the best examples I've seen of someone talking about level design in the context of like being a solo developer and making their own game.

**0:58** · And you need to sort of establish a strategy for sort of how what what you're making in in which order. These are all of the sorts of things that you need to think about as an indie developer. Side note before we start, although you know everything I've just said about how indie developers have to do everything, there are still plenty of places where you can practice level design without making a whole game. I don't know if you also follow Steve Lee, who is a level designer who has a fantastic YouTube channel.

### practice level design without making a whole game

**1:26** · And quite frankly, his channel is one of the reasons why I didn't make this talk just be a bunch of level design tips because why get them from me when you can get them from a proper level designer. He talks about this quite a lot on his channel. If you go back 20 years or so ago, a lot of us got into level design or even general game design through editors for games. I did a little bit of programming when I was a kid, but a lot of what I did while I was a teenager was using the Warcraft 3 editor, uh, using editors for games like HalfLife and Juke Nukem and stuff like that.

**1:57** · And I would say the majority of what I did that contributed to me becoming a game designer later on was level design. And within that, I would try and bend the rules of the game. You know, I would make uh Warcraft levels that were different genres of game and stuff like that. And that's how we got games like Dota was people being experimental and doing game design with that level editor. Fast forward to like 2 or 3 years ago, I was working at a studio that made Roblox experiences, that made Fortnite experiences.

**2:26** · You don't need to actually use a conventional game engine or make a whole game to practice level design. There are loads of people who have jobs in design that aren't even level designers anymore that are like general game developers or something like that that started off in these engines. These are common problems with level design content. And Dark Dax, sorry to pick on you. You have a very well produced channel. You're very entertaining. Your videos are very well edited edited and by and large you know what you're talking about. But this video, for example, is not about level design.

### level design is not environmental art

**2:59** · It is a video that is about environmental art. and the technical aspects of environmental art. It's about things like occlusion culling and uh not loading in things when they're behind doors. These 12 level design tips to optimize your indie game. They're very good tips, but they are not level design because a lot of us when we first come to game development, we need to learn the technicals. We have this misinformation about what design is.

**3:25** · Generally, people think that game design is technically building something in a game engine. And this video is an example of that applied to level design.

**3:34** · They think level design is putting the things in the in the level editor or in the game engine. And it's not really, especially when it comes to the kind of art side of stuff. Level design is about the functionality in the gameplay. Art is about making it coherent, attractive.

**3:49** · We've got an example of what some environmental art is over here. We've got an example of level design over here. And the point of this distinction that we make between doing an art stage and a grayboxing stage, the point of the process is to be methodical so that you don't create problems for yourself later on. If you make this environment and you beautify it before you've play tested it thoroughly, any kind of changes you need to make to that environment to move things around later on are going to become much more difficult because you're dealing with way more objects.

### why we greybox

**4:18** · You're just making your work harder for yourself in order to iterate on this later on if you need to change it. One of the most important rules in game development is that you want to keep your iteration cycles as short as possible. So, anything that you do in your project that slows you down changing things and and improving them in some way because you know either you've got an emotional attachment to the thing and you don't want to change it or there's you've just added more objects and you need to physically move them.

**4:44** · Whatever it is, anything that slows down your iteration process before you've got to the point where you know that the game is good and you are going to continue working on it is a problem.

**4:54** · And that's a general game development principle. And the the kind of gray boxing process is just that principle applied to level design. This is the kind of response that some of you are likely to be feeling to all of this is that you know I have to do everything myself. I'm a solo developer or I'm in a small team. So there's no separation between these things. There's no separation between level design and environmental art because when you're working on your own, you have to do everything. There's a really good talk by Lost Relic Games.

**5:22** · Here he basically just talks about exactly what I've been describing what happened to him when he put too much effort into the specifics of levels too early on and then had to go back and do everything again. There are also reasons why we do this. You need to work out the art style for your game and the pipelines anyway. You need to work out what a tree looks like. You need to work out what a rock looks like.

### why indies develop bad habits

**5:48** · So, why not put it in a level? This is the kind of attitude that lots of us will have. And also, the other thing is that it's rewarding and keeps you motivated. This is not talked about so much, but it is very, very important for developers that are working alone, developers that don't have a manager or a producer breathing down their neck.

**6:07** · You have to do things that keep you motivated. Be wary of what the balance is of things you're doing because they're enjoyable and things you're doing for the benefit of the project. So the way I try to work when I'm building one of my own games is maybe on like a 2:1 or a 3:1 ratio of two or three things that the game needs and one thing that you're doing just for fun. But if that thing you're doing just for fun is causing these other problems, like you know, you're prematurely polishing the thing and you're making a mess for yourself later on, then maybe maybe do something else for fun.

**6:39** · Any game is a combination of these two forces. It requires messy creative experimentation and it requires strategic structured approaches. A game that is all massive creative experimentation will probably never get finished. And if it does get finished, it might end up being a total mess.

**7:00** · And a game that is all strategic, structured approaches with none of the none of this messy creative stuff is likely to be dull, boring, have nothing unique about it, and just be a copy clone of something else. The good news is that we already have strategies for these sorts of things. There is a concept in sort of level and environment design called beautiful corners. You've been making everything in gray box. Yeah. You've been making the functional prototype of the game. You've been making things in gray box. Maybe you've got some concept art.

### strategies for avoiding the pitfalls

**7:30** · And then the beautiful corner is like one tiny bit of the game. It's like a microvertical slice. If I just go into this one room in this one level, there's like a an art prototype of what the final game should look like, right? That is a thing that already exists in the games industry. That is a a widely practiced thing that we can incorporate into our own games. We can make a certain area that is for testing the thing. a very structured approach to game development has this and and it's about controlled mess, right?

**7:58** · We get this quote from John Romero where he says, "Finish your first level last." We also know that this was how Mario was designed. So, world one in Mario was the last thing they built. It's kind of presented as like a wise quote, but it is also just generally how sensible people design their games a lot of the time. make the middle of the game and then make the things earlier on later on once you know what you need to on board people into. This is just a kind of very established practice, very established approach.

### content planning your levels

**8:28** · Ed Key uh made a mobile game called Hangline and has this really good talk on GDC. This graph you can see on the left here is what I would expect to see in the planning of any game with lots of levels. the environment down here on the left. So, this is kind of your art variations. We've got a sand, warm, cool, warm, sand, cool. This is the stuff that stops your game looking visually boring as you cuz so because you can move through different environments.

**8:57** · We've got a general level theme of like what is the dominant thing happening in this level. We've got the rising of difficulty here and then we've got different features or gameplay mechanics that exist in the different levels. He's planned the entire thing out in terms of what is going to be in all of these things and that gives you a sense of like the entire flow of the game in terms of going from one level to the next and making sure it's varied and stuff like this. This is a very system systematic approach to how you decide what levels to make.

**9:28** · I'm going to take you through John Romero's rules for making Doom levels. And what I want you to take away from this is not John Romero's rules for creating Doom levels are levels you should use in all level design. Most of the time if you see John Romero's rules for level design presented to you on the internet. John Romero made Doom and Doom's really good so follow his rules. That is not what I'm doing here.

### how to interpret other designers rules

**9:54** · Instead, I'm trying to show you that being a game designer and making levels, there is a process there of determining what your own internal rules are for how your levels are made.

**10:05** · And a couple of these are about art and technical art, and we'll go into why that is in a minute. So, number one, change floor height when changing floor textures. You remember old FPS's, very abstract, uh quite hard to see things if you don't pay attention to this kind of visual stuff. Number two, use special border textures between wall segments and doorways so that basically so we can see the changes and we can see the geometry of the level properly. Uh be strict about texture alignment.

**10:34** · This is more of a housekeeping thing but here in like in Doom he's talking about uh basically it looks a bit crap if the textures aren't aligned. The the kind of uh exception to this rule would be if you want to highlight slightly highlight a secret door. So a secret door you would unalign the textures slightly so that players can there's a tell there.

**10:58** · There's a there's a way of knowing that there's a there's a thing there that you can you can unhide. Use contrast everywhere. Light rooms versus dark rooms. Open versus cramped rooms. This is level design advice that still gets repeated today uh and is still very very common and we'll think about why it is in a minute. Uh number five, if a player can see outside, they should be able to get there. This feels more like a almost like a professional pride thing of like we don't want to create anything fake in our level. If you can see it, you can you can go there.

**11:28** · Have several secret areas on every level. Make the level flow so the player will revisit areas to give a better understanding of it as a 3D space. Create easily recognizable landmarks in several places for easier navigation. Like I say, I'm not presenting these to you as universal rules of level design. Every time you go out there and you seek advice or you seek some sort of guidelines on how to make levels, how to approach that information in future because I'm not a level designer. I have done level design.

**11:59** · Um, but I it's not my specialism and you are going to go out there and you're going to pick up lots of different information from lots of different talks and you need to have approach to how you process that information because ultimately if you're working on your own game and you're on your own, you're the leader there and you need to behave like a leader and not a follower. And that's ultimately what being a design lead is about.

**12:22** · It's about doing what John Romero is doing here and sort of defining the rules of the project so that the project can be consistent and the project can make sense. These rules that we get from John, if we think about like what design goals do they achieve? Well, some of them relate to making the player feel a sense of achievement and feel skillful.

### how do your level design rules relate to player experience?

**12:44** · Some of them are to do with legibility and readability, right? which is why a lot of the art things that he talks about are still game design things rather than art things p per se because they're to do with making sure you can navigate. Uh there's interest versus boredom giving moments of surprise, delight, and that kind of stuff. And then the story and world building, which is very thin in Doom, but we can still think about some of his rules in terms of this. The rules of your game design, of which your level design is part of, should have player experience goals.

**13:14** · You're doing a thing to make people feel a certain way, right? You're not just doing it because John Romero says so or because I say so or because Steve Lee says so. You're doing it because it achieves a particular player experience goal. Right? People sometimes want me to kind of give them universal rules of thumb for game design and say always do this or never do this and and sometimes that's down to educational background.

**13:41** · Uh, some people never get to go into an educational environment where they're told to have their own opinions about stuff. Some people's entire experience of being educated is being told things, being told what to think, being told the rules of something and expected to follow them. But that is not how art and design work. And it it's not even how like something like computer science or engineering works. You have to have an approach. You have to have your own opinion about things.

**14:10** · Be the person who makes the rules for your project rather than following other rules. It can be very helpful to constrain yourself with rules, but you sort of still need to understand why you're putting them in place. So, there are no universal rules to game design. There are universally understood truths of human psychology, how humans think and how they perceive things. And when we talk about game design or level design and we talk about good practice, we're usually talking about those things. The only universal truths of game design are to do with human psychology and behavior.

### the only universal game design advice is psychological

**14:41** · So when it comes to flow, this idea that players flow like water, it means they will try and go into every area of the level, but they don't turn 90° angles as they do that. They move like a car. They sort of twist and turn like that, right? It's it's almost like a version of loss aversion, right? We want to check out every nook and cranny. We don't want to miss out on an opportunity to find a particular treasure or a secret or something like that.

**15:09** · And that creates this behavior of how we move around the space, right? So, it's a thing of how we move around space that is driven by other behaviors in the game. If we had a game that had no collectibles, nothing to find, we might not move in this waterlike flow-like way, but we try and find every vantage point in the level and every corner of the game because we think there might be something there. If the game teaches people that there's never something there, they will stop behaving like this. Right?

**15:37** · This is where it starts to get really uh complex as well is that as a solo developer, you are going to be dealing with the fact that level design is all of these things or that a level is all of these things.

### the 3 modes of level design thinking

**15:50** · A level in your game is a place, right?

**15:54** · People perceive it as a place like a simulation of a place in a world. It's also an experience. So what I mean by this is it is meant to give you emotions in a sequence, right? Which stem from things like there is a piece of combat, then there is a big silent area between uh encounters and then there is another encounter and then there is a puzzle.

**16:18** · Like all of this kind of structuring of activities for the player to do. A level should have a goal, right? Players should know what they're trying to do when they go into a level. They're trying to get to that landmark or they're trying to flee the enemies.

**16:30** · That's a classic Half-Life one. They're trying to flee the enemies and the goal should be obvious, but you sometimes hide the goal, right? So, there's a landmark and as I'm working my way towards the landmark, we hide it and you lose the landmark for a little bit and then you find it again and you feel relief and then you lose the landmark again and then you find it again and you feel relief. Um that's the kind of thing that you have to think about when you're thinking about your level as an experience uh rather than just like a place with some art in it, you know.

**17:00** · And then the last point is that you know like all game design is that what you are creating is a language. So if the thing is inconsistent with itself or if it doesn't follow enough conventions of what people are used to from game design or from level design, then it will confuse people. Right? The intention of this slide is really to empathize with you if you're working on your own or in a very small team is that this is the challenges that is in front of you when you sit down to do any sort of level design.

**17:29** · And one of the reasons why we tend to are on the side of making sort of relatively abstract sci-fi and dungeon based fantasy and stuff. We don't have to think about how this place functions as a representation of a real world. We don't have to think about where the toilet is in the dungeon. we don't have to think about where the HR department works in the spaceship and stuff like that. That's one of the reasons why certain genres are just more practical for a game developer because we can kind of rule this out.

**17:57** · But even then, you have to think of your level as a kind of series of experiences that are structured in a particular way and as a language that players need to understand because you're usually going to be expecting players to do the same thing over and over again. And if you break the pattern in ways that is kind of frustrating or confusing, then you're upsetting people. Here we've got some examples of how a level designer approaches stairs. I'm not showing you this to show you how to do stairs.

### how to interpret component-oriented level design tips

**18:22** · I'm showing it to you to show you how much thought goes into stairs when you're designing levels. So in this example, you go up there and you go up there and you're always sort of going into the new section blind. So as you run down the stairs, you enter the new room and you see everything. Whereas what's happening here in this last room when I come into it, I don't go down the stairs until I've used this vantage point. Right?

**18:46** · So if we look at the difference between here and here, this is you just run blind into the room as you come down the stairs. This is you come into the room and then you have the option to go down the stairs or to use the vantage point to look around. This is just an example of like how many points of consideration there are in something as simple as how do I use stairs in my game? How do we make it so that you can see stairs when you're approaching them? Well, it can be hard to see them from a distance. So, we want to telegraph them up front.

**19:15** · We want to have them sticking out a little bit like these ladders or these stairs here.

**19:20** · Again, you're kind of creating your own set of internal rules of how you use an element. Coming back to the general point of this talk, whenever you see this kind of stuff, like a tip or a set of rules for something in in level design, it's really helpful. absorb it, use it, but remember that on your game, you're probably the lead programmer and the lead level designer and all this thing. And that means that your job is to think like the person who made this guide. Your job is to think like John Romero when he was making his list of eight rules for level design.

**19:52** · Your job is to come up with the rules of your game so that your game can be consistent and easy for people to understand. And I appreciate you all and thank you for for joining and uh listening to me ramble about these things. And remember, one day you'll make something good.

### inspirational outro

**20:12** · Maybe \[Music\] Heat. Hey, Heat.

**20:35** · \[Music\]