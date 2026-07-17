---
title: "Is The Indie Game Industry Broken? (w/ Jonathan Blow) — Ep 70"
source: "https://www.youtube.com/watch?v=vkOiUSSb7EY"
author:
  - "[[Thomas Brush]]"
published: 2026-07-10
created: 2026-07-17
description: "I chat with Jonathan Blow about his 10 year project The Order Of The Sinking Star, and the state of the industry.► Play Order Of The Sinking Star: https://store.steampowered.com/app/499170/Order_of_t"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=vkOiUSSb7EY)

I chat with Jonathan Blow about his 10 year project The Order Of The Sinking Star, and the state of the industry.  
► Play Order Of The Sinking Star: https://store.steampowered.com/app/499170/Order\_of\_the\_Sinking\_Star/  
► Get 50% off my game dev course during the massive Summer Sale: https://fulltimegamedev.mykajabi.com/full-time-game-dev-sale  
► Wishlist Twisted Tower: https://store.steampowered.com/app/1575990/Twisted\_Tower/  
  
Chapters  
  
00:00:00 Intro: Jonathan Blow Returns & Order of the Sinking Star Demo Launch  
00:02:45 Course Promo: Full Time Game Dev Summer Sale  
00:03:05 Game Overview: 10-Year Development, Custom Engine & Language  
00:05:15 Demo Reception: 91% Positive Reviews & Early Reactions  
00:06:07 Uncertainty vs Insecurity Before Launch  
00:09:14 Why Review Scores Often Improve from Demo to 1.0  
00:11:55 Steam NextFest Dynamics & Audience Behavior  
00:13:09 The Rise of "Friend Slop" & Trend-Chasing Games  
00:15:14 Jonathan Blow's Perspective on Viral Simpler Games  
00:21:02 The Health of AAA vs Indie Industry in 2026  
00:25:44 Why AAA Games Have Become 18x More Expensive  
00:33:32 Feeling Irrelevant After Long Development Cycles  
00:38:06 Standing Out as a Creative Developer (The Paradox)  
00:44:13 Processing Demo Feedback: Optimization, Controls & Story  
00:54:26 Live-Recorded Soundtrack & Final Polish  
01:00:02 Closing Thoughts & Where to Play the Demo

## Transcript

### Intro: Jonathan Blow Returns & Order of the Sinking Star Demo Launch

**0:00** · Imagine making a few indie viral hits.

**0:03** · Games like, I don't know, Braid or The Witness. In fact, you become an indie legend. And maybe you're featured in one of the most successful game development documentaries of all time. But then, for some reason, at the peak of your career, you have this urge to spend 10 years making a custom scripting language, a \[music\] custom engine. And with those tools, you create a 10-year sprawling puzzle game called Order of the Sinking \[music\] Star.

**0:35** · Now, imagine launching that game's demo, 10 years after coming up with that idea. How do you feel?

**0:42** · Would you be nervous? Would you wonder if, well, you still got it? I ask this question directly to my guest, Jonathan Blow. I talk about his game's demo launch during NextFest in the last couple weeks, whether the 10-year gamble was worth it, and ultimately how he's feeling on his third commercial release.

**1:01** · We also discuss how the industry has changed while he's been quietly making his third release. And yeah, we of course discuss friend slop uh and the state of the AAA and indie industries.

**1:13** · We discuss chasing trends, feeling irrelevant, and how to stand out amongst the thousands of indie titles \[music\] released each year. This is the third time John has come on this podcast, but this is the first time that he's discussed an actual response to his third commercial release, Order of the Sinking Star. Listen up because an indie legend is about to start talking and you don't want to miss it.

**1:37** · And by the way, if you want to make 2D games or maybe even 3D games like I'm doing and potentially turn them into an actual full-time gig, I have a course called Full-Time GameDev and it's 50% off with a summer sale. I've gone full-time with just a demo on three separate occasions.

**1:53** · And by the way, look here. These are some students who went full-time with the help of what I teach. In this course, you're going to learn just that.

**2:00** · How to land publishing deals with just a demo. How to get funded on Kickstarter with just a demo. Make a 2D or a 3D game in Unity. GDAU or Unreal. You're going to learn how to market your game, get press coverage like I have, hit the Steamfront page, and so much more.

**2:15** · Everything that I teach in this course is stuff I've done, so you're learning from an actual indie game developer, not somebody who's just wanting to make games. I'll also throw in my 2D and 3D art courses, completely free. And as a bonus, I'll also throw in a private 1-hour mastermind meeting with me and a handful of other developers where I'm going to answer any questions you have in a private setting. This summer sale ends soon and I don't do many of these during the year. So, be sure to click below to enroll and join 4,500 other students.

### Course Promo: Full Time Game Dev Summer Sale

**2:45** · First thing I wanted to ask you was um can you give us a like a brief overview of just cuz I mean the the previous episodes you mentioned the whole the whole episode was basically about the production of Order of the Syncing Star.

**2:57** · Can you give me a brief overview really quick of like how long it took, how you made it, the engine, the code, all that stuff, and then we'll talk about the demo and how it did.

### Game Overview: 10-Year Development, Custom Engine & Language

**3:05** · Well, um, I started the game shortly after the Witness shipped, uh, which was a long time ago now in 2016.

**3:16** · Mhm.

**3:16** · uh you know, we we're still doing some witness stuff for a while, but sometime around the middle of 2016, like possibly around June or July, um I started this game and the idea was uh to take four games that already existed out there on the internet that you could play for free, but they had, you know, graphics that were not particularly not particularly appealing.

**3:40** · Uh, and and so people would sort of bounce off them playing like like they weren't the most popular games in the world, but when I played them, the design was really nice and I was like, "Oh, these games are underrecognized." And so, why don't I do a fun thing where I put them together into something that looks like a game anthology, but then explodes into something bigger as you play because we'll do a fun thing where we combine the worlds together and do this big game design experiment.

**4:09** · Um, and \[laughter\] so at the same time as all that, so for some reason I was convinced that that would be a tiny simple little game. I don't know why.

**4:19** · And then \[snorts\] at the same time as that, I also decided to do this big technical experiment where it was like, look, let's I don't like programming in C++. Let's make a new programming language and let's rebuild everything in that language and let's design a new engine for modern rendering and all that. And so it was a lot to do at once. And so it did take a long time to get all of it done.

**4:42** · Yeah.

**4:43** · Um and it's been a little bit of like at some point like as the years go on, it starts to become some kind of like internet mystery like what happened to this guy and what's he been doing and oh he's been working on stuff for a long time but it can't actually be good because nothing that you know anytime you hear about a project that goes forever it's like well it kind of failed somehow or whatever, right? And so it's been great to actually get to the point where the demo has come out and people can play it and it's like, "Oh, this is actually pretty cool." You know?

**5:14** · Yeah.

**5:14** · So, yeah.

### Demo Reception: 91% Positive Reviews & Early Reactions

**5:15** · So, it's sitting at 91% very positive.

**5:18** · And you left the the reviews open for the demo, which is a it's a courageous move. You don't have to do that. You know, you can you can hide them. Um, and I'm like, so I'm so excited for you because I know to a degree how it feels where you work so long on something, maybe you start to wonder if it was worth it.

**5:44** · I don't know if you think that way. for me, like I'm I'm I'm on year five with my project and I'm just like I even e I'll even let people on Twitter inform me of how to feel because I don't even know how to feel anymore.

**5:58** · Yeah.

**5:58** · You know, I'll have people say, "What were you thinking?" Or like, "Why you bit off way more than you could chew?"

**6:05** · And so my question for you is leading up to launching the demo, did you feel any sense of insecurity about this project?

### Uncertainty vs Insecurity Before Launch

**6:16** · I wouldn't say insecurity. Like I don't think I relate to these things in quite the way as some people do. Um I'll try to break it down. It's complicated though. Let me know if this becomes too much too much detail or it's too in the we is what I wanted. I figured your answer wouldn't be simple. So So you know when I'm working for something on something for this long. Um let's just take the design component, right?

**6:40** · There's a design component, there's a technical component, there's a art direction, there's all these different categories of a game, but let's take design, which is the one where I had the most direct hand in the whole time, right? Because there's a team working on everything. So, by the time the game's going to come out, like it's not an accident that it took a long time. It took a long time because we're not just trying to make like any old slop.

**7:00** · We're trying to make something that people haven't done before and that's good and that thoroughly digs into and explores the subject matter, the mission that I had for the game when I started. Right? So, by working on that very hard for a long time, like I know that it's good. I know that the design of this game is good. I know that it's really interesting. I know that it has succeeded in doing various things because if it hadn't succeeded, well, I don't know. I might have canceled the game or put it on the back burner until I had a different idea or something.

**7:33** · Right?

**7:33** · So, I know that. Now, there's a different question is will other people think it's good or even, you know, there's a difference between acknowledging that something is interesting and like a contribution and actually having enough fun playing it that you want to like pay for it or something, right? So those are questions and so I never know the answer to that question when I'm going to release a game and every time it's always turned out better than I thought. So with this demo, you know, I would have been like, "Oh, it's a Sooan game." So what does that mean?

**8:06** · It means not as many people are going to play it as if it were like a shooter or something.

**8:11** · And it means the reviews are probably going to be lower because people are going to be like, "What what the hell is this?" Right? And so that would have been my expectation. And you know the the demo has exceeded those expectations in in multiple directions which is great and and you know with with the review scores uh I think they'll go up a few% for the final game just because you know one usually

**8:35** · there's one or two things that are like consistent issues for people and for us it's because it's a new engine like and we were in a super hurry to get the demo out. we just didn't quite do everything that you would do to run better on lower-end systems just like cutting the shaders down and and all that because we have like you know three and a half programmers or something.

**8:55** · So \[snorts\] um that that's already you know progressed very well and stuff but but okay so so to that's a little bit of a side tangent but um I guess the point is so I wasn't insecure because I know it's good but I was uncertain.

### Why Review Scores Often Improve from Demo to 1.0

**9:14** · H how this is going to go, right? Like is it is nobody gonna buy this and then I just have to go be off by myself making games, right? Cuz having a team is even a small team like ours, it's really expensive. You know, you would be you would be shocked. I'm not going to say the numbers, but you would be shocked at how much it costs. Well, now you kind of I know I think you at the previous podcast and I did the math.

**9:41** · Yeah. \[snorts\] You know, I I um I was gonna say something related to to expectations of a demo launch versus a 1.0 launch.

**9:52** · Yeah.

**9:52** · And I think we we may have talked about this in the previous podcast, but I think the review scores will go up for 1.0. Not that they need to. I think 91% is amazing. That's great.

**10:01** · Yeah. Yeah.

**10:02** · But I think they're going to go up. And I think one of them is the optimization for sure. But also, I think you're only gonna you're going to get uh more qualified players.

**10:11** · Right. Right. Right.

**10:12** · Yeah.

**10:12** · So, that's a phenomenon. So, if people I'll explain it a little bit because I've had the same thought. You know, when you put something up for free or even like let's say you have an existing game and you do a Steam sale that's super cheap or you do like a Humble Bundle, your review scores are generally going to go down in that case, even if they they were high when you launched. And the reason is because the amount that somebody pays for your thing is correlated to how interested they are in it and how appreciative they are of that kind of thing, right?

**10:39** · And so if somebody gets your game for, let's say your game launched at $30 and they're getting it for like 99 in a super steep sale or a bundle, it's probably something that they're not that into or they would have been there earlier, right?

**10:54** · And so this just has an effect on scores. And so, you know, when you have a free demo like that, um, in theory, I mean, I don't know cuz Steam NextFest, which is the event where all this was happening, it's a little bit weird. The dynamics of it are a little bit weird, and I don't totally understand them. So, I'm hesitant to like draw super firm conclusions.

**11:14** · What do you mean? Why are they Why are they weird?

**11:16** · Well, let's say you wanted to play some things, right? like you're on Steam because you want to play games and you want to play interesting good games and these events happen multiple times per year when there's all this stuff that's free and it's not even out yet, right?

**11:32** · And so you would think that like more people would play that than who buy games on Steam because it's free.

**11:40** · Yeah.

**11:41** · And it costs you enough, you know, and and you get to see things that aren't even out yet, but it's it's actually like a subset of the audience, right? um and not even that big of a subset. And so like that's the dynamic I kind of don't understand.

### Steam NextFest Dynamics & Audience Behavior

**11:55** · Yeah.

**11:55** · And and maybe I can come up with some reasons for that because like oh um well if I really like a game I want to wait till it's done. I don't want to play a bad version of the game or I want to wait for other people to tell me what's good and I don't want to have to dig through all this stuff. You can come up with reasons for that but I I feel like they still don't quite explain. I feel like NextFest should be a lot better than it is.

**12:18** · Maybe part of it is there's just so many games and you try one or two and they're terrible and you're like \[laughter\] um and that's not really a dig on anyone else's legitimate game. It's just for people who don't know there's like 5,000 games that get released in one day.

**12:35** · Yeah.

**12:35** · And you definitely need some filtering mechanism to figure out what you know and usually that might be just the charts or something but most people you know most gamers don't go to like Steam DB to see what demo is has \[laughter\] a lot of plays or whatever.

**12:53** · Right.

**12:53** · Yeah.

**12:54** · So do you feel like do you feel like uh releasing a demo is that becoming more and more uh watered down? It's it's definitely more competitive, right? So, is it there's a lot of things going on. So, so in that 5,000 game number, the vast majority of those aren't real games that we would recognize as as real games, right? They're like someone wants to get into games, they made something in Unity for like a couple weeks, I don't know how long, right? Right.

### The Rise of "Friend Slop" & Trend-Chasing Games

**13:25** · And and that's good. That's a positive thing, right? I I don't think it's bad for people to experiment and learn. But then if you put that up alongside a game that somebody worked on for like four years, it's just not the same thing, right? It's it's a very different situation. And so, well, okay, that's one category.

**13:43** · The other category which is maybe bigger now uh is just all the cynical slop games where it's like oh god there was this one this wasn't even next but I downloaded some funny game you know there's somebody who makes all these like shop simulator games so I bought like gun shop simulator or something and it was literally just a reskin that took like two days of like their 17 other really bad shop simulator games, you know.

**14:16** · Yeah.

**14:16** · Um, and that's probably a lot of the games in nextfest now as well. Um, so I don't know.

**14:23** · I mean, I I I that brings me to my next question, which is has you're you're older than me, but I feel like I'm getting old. So, I can I can maybe by osmosis say maybe you feel like you're getting older, too, cuz I'm 36 in a couple weeks. All right.

**14:43** · And I'm just like \[snorts\] I'm on I'm on Instagram watching reels of all these games that are blowing up on Steam and and I'm not against them, but they are slop at least in the internet slang terminology.

**15:01** · There's just a lot.

**15:02** · Yeah.

**15:02** · I mean, you wouldn't you wouldn't look at Mecca Chameleon and say that's a well art \[laughter\] directed game or whatever, right?

**15:09** · Um Yeah. Yeah. And does that make you feel confused?

### Jonathan Blow's Perspective on Viral Simpler Games

**15:14** · It doesn't make me feel confused actually. Um, I mean, good for that. So, dude, there's been this phenomenon my entire time in the industry, right, where I work super hard. I just like bleed for years to make something \[laughter\] and then, you know, something else gets played by way more people that's like much simpler, right?

**15:35** · Yeah.

**15:35** · That even going back to like when I before I was working on stuff that anyone knew. So, when I first started in games in the '9s in 1996, I was like, "Oh, we're going to make a 3D engine. We have to learn how to do that. We have to draw every pixel on the screen ourselves because there's no such thing as a GPU in 1996." And we were on this uh thing, this service called Total Entertainment Network.

**15:58** · We signed up with them and this was like a subscription service where you would play multiplayer games uh you know over your modem and and they were giving you like better modem connectivity with lower latency or whatever that was it it didn't that business didn't work out you know they shut down after a few years but okay so we were on there and I was working super hard to do this like 3D engine like hover tank war game with 32 simultaneous players and like good graphics and just

**16:31** · you know real time collision detection back before you could like just use a library to do that and that was hard to figure out and just all this stuff all this insanely hard stuff and you know we launch on this service and we've got you know some people playing but then there's this other multiplayer game on the service which I think was called Ark or something but it it was a very simple um team versus team like get to the other team's goal or something and it was 2D and everybody was like a little circular UFO sprite and you just had one

**17:04** · thing you could do which was like shoot the other guy.

**17:06** · Yeah.

**17:06** · Whereas ours had like you know a bunch of weapons and like you could call in like ships to like orbital strike and like drop supply packs and stuff and and they had like five times as many players as us.

**17:18** · Yeah.

**17:19** · Right.

**17:19** · Cuz their game was just simpler and easier for people to get. And ours was like because we were trying to do all this 3D stuff, it didn't run as well on everybody's system and and all these things, right? And so this has just been the story of my life in some way. It does seem much more that way in 2026 cuz you see all these games that are just like, you know, somebody worked on it for 6 months and it just blows up and it's like, all right, cool.

**17:46** · But that actually is also that's a good sign in some way. um it's a sign that okay usually if one of these games blows up it's you know not literally the same as a previous game with some changes right so like Mecha Chameleon to take that example you know nobody was really making uh this kind of like multiplayer you know hideandsek

**18:10** · game it just wasn't really a thing right um or you know Among Us which is sort of in the same general category is a very different game blew up very similarly some years ago because that thing just didn't exist otherwise, right?

**18:23** · And so that's good. It's good when things that weren't being done before succeed because that means we're increasing the breadth of like what games as a whole are doing. There's going to be like 20 Mecca Chameleon clones over the next six months, right?

**18:39** · There already are. I'm sure.

**18:41** · I mean, would you say it created a new genre? I mean, it's a party game, but like Yeah. I I mean I think I think you have to wait a little bit to see what the genre ends up being yet because I do think like Mecca Chameleon's a little too simple. Like if the Okay, if if it's a new genre, the next game in that genre that is big that people really play. It can't be like literally the same game with different maps. Mecha Chameleon already has different maps, right?

**19:09** · So it has to just be like, "Oh, it's the same concept, but the way you hide is a little different. The way you navigate is a little different. The way you paint yourself like that. The painting yourself seems like part of the genre, right? And so maybe that's different in some way. So we'll see. We'll see what that ends up being. Do I Do I think it made a new genre? Quite possibly. Genres can be small or big as well. It's just like do people recognize this as a separate thing.

**19:36** · Do you think you could make a Do you think you could make a small game?

**19:42** · Yeah, you could actually do it and and you wouldn't you wouldn't over scope it and turn turn it into what you did with uh Order of the Sinky Star.

**19:51** · Yeah, I think at this point I could.

**19:53** · It's just it took a lot of learning to get to that point. Um is that the strategy I'm going to do?

**19:59** · I don't know. Maybe maybe kind of like I \[laughter\] at some point things can't keep taking more years, right? If the next game takes 15 years that'll be really bad.

**20:10** · So, um, yeah, I don't know. The the trick though is both to keep it scoped down and find something really cool and amazing and fun that people really like, right? And that that's not so easy. You know, lots of people make small games all the time and nobody cares about them, right?

**20:30** · No, it's true.

**20:31** · What's the question? What's the what's the difference? My theory about um \[clears throat\] my theory about like friend slop is not that friend slop is popular but because there's so much of it and 5% of it succeeds and so you just see a lot of it you know and I don't think it necessarily means that you know the market share is being taken up necessarily by friends and higher quality quote unquote you know games like yours that that are just massive and the artwork is incredible.

### The Health of AAA vs Indie Industry in 2026

**21:02** · It doesn't mean that those games have less of a market share because of friend slop. I mean, what do you think?

**21:09** · Do you think No, I I don't think I don't think the market share is smaller. Um, I do think that it's changing over time. So really I think what happened if you go back in the day to when I was getting in the game industry right it was mostly AAA games and every month there were like five or six this is not an exaggeration every month there were five or six AAA games that you would see in the news and they were coming out soon and there was always stuff to watch for, right?

**21:39** · Um, and then over time because those games got so expensive and so hard to make and take longer, just that decreased and decreased and decreased and like now I don't even know. I mean, I guess if you're like mainly a PlayStation gamer or something, it's a little bit like that still where you have some number of games that you know are coming up.

**22:03** · Yeah.

**22:03** · But like if you're on PC, you don't even really have that because there's nobody there's nobody like curating the set of big games for you anymore. And so what do people know about? They know like GTA is a big game that's going to come out and like that's kind of it.

**22:22** · \[laughter\] And so and so there's all this mind space for other things to happen because AAA kind of gave up that territory is what I would say, right?

**22:31** · and and they they're just not making the games anymore. Like they just don't come out that often. And then when they do, they're not that much better than an indie game anyway anymore, right? I mean, they're still better in terms of like how much money they spent building the graphics, but like people don't really we we've had so many good graphics that like once you're above a certain bar, I think it matters le there. Okay, there's some minimum bar where it's like, oh, your game's ugly and stupid if it's below that. And then there's a big range of like, oh, it's a little better. It's a little worse, but how fun is the game?

**23:03** · Yeah.

**23:03** · And there's some like very very very top bar where you could imagine somebody making a game that looks like nothing you've ever seen before, right?

**23:12** · That almost never happens because it's incredibly difficult, right? And so very few games are even trying for that anymore, right? And so that's that's the playbook that they knew how to run though was let's just spend a ton of money, we'll make a really impressive looking game and everybody will buy it for that reason. And that playbook stopped working. And so I think that created a big vacuum and all these other independent games have moved in to sort of fill that space.

**23:41** · And so, you know, this year, so you mentioned the friend games, but there's there's been a bunch of just regular single player games that had really big hits this year or with mild multiplayer, right? So, like, you know, Slate Aspire 2, uh, Mugenics, um, Subnotica 2 was really big for like a couple weeks. I'm forgetting because there's been a lot, but but you could probably keep going and name like seven or eight games like that that had like unreasonably huge launches this year.

**24:13** · Yeah.

**24:13** · And it's just because that, you know, people want to play games and if Electronic Arts can't make games anymore, right? Or if Microsoft can't make games anymore, we we'll play games from people who are making the games. Like that's all that's happening.

**24:28** · What's your uh I want to talk about word of the siki star in just a sec, but I want to sort of wrap end this loop with a question about that the the health of the industry and you know you and I probably talk once a year um at least for the last three years and I I think I ask you this every year about the state of the industry. What what what happens to AAA?

**24:50** · You know, we've got AI which I know you're not optimistic about.

**24:54** · Yeah. Um, we've got, um, I think it was more than 20,000 games are going to be released this year on Steam.

**25:02** · Yeah, we've \[laughter\] got price dropping and price increasing. So, polarization of pricing, meaning like I guess AAA games what, 70 bucks now or something? And then we've got prices dropping. I'm going to have to release my game for $5 less than what we planned on because we're just looking at the data and it's like indie games are getting cheaper.

**25:27** · I know exactly what data you're looking at. Yeah. \[laughter\] Yeah.

**25:31** · So, all in all, what's what are Jonathan Blow's crystal ball thoughts about the state of the industry uh for AAA and and indie? Do you have any thoughts?

**25:43** · \[snorts\] I mean, AAA is having real problems obviously. I mean, even so, at the day on which we're recording this, there's supposed to be, according to rumor, a bunch of big layoffs announced like today. So, we'll see if that happens.

### Why AAA Games Have Become 18x More Expensive

**26:01** · Um, but it's just, you know, I had to deal with some of this. Like, it just got really expensive to make games. It got really expensive to hire people to work on games, especially programmers, because we had, you know, I don't remember if I talked about this last time, but over in the general like web technology sector or whatever, you had salaries going up and up and up for years because they had so much free money over there. And you kind of have to compete with that.

**26:26** · Like if you're a AA AAA game company, if somebody can go to Google and make like $500,000, right, for doing nothing, like programming one button a month on a web page and like going to some meetings, you got to pay that person at least, I don't know, like 300, 250 to to work on games. Whereas traditionally, that would have been a really high salary. I don't know. There's also been inflation and stuff, right?

**26:52** · But like so so and and then you know there was this whole thing where the industry was thought of as uh or there was a lot of press let's say that that AAA game companies were exploitative and not paying people enough and making them work longer and and some of them were some of them were doing that but I think the industry as a whole reacted to that and and said oh we

**27:17** · have to be way too nice and we can't make sure that anyone's actually working actually because that's mean and then COVID happened and everybody's working from home like at least three days a week and everyone's less efficient and so all these things compounded and so here's here's just some numbers I was spitballing on a forum with someone right so like since pick sometime that's

**27:40** · not even that long ago like well not that let's say 20 years it could be less it could even be 10 years but let's say 20 years from like 2005 2006 when Um, the video game industry was still the AAA we're still talking about cuz indie was very small at that time. Um, it was still comprised of like good programmers, good artists for the most part who were a relatively like AAA teams even at that time were small compared to now.

**28:07** · Sure. Sure.

**28:08** · And they could really make some stuff that was really impressive, right? And you were like, "Wow." Right. Since then, due to some of these dynamics, um, AAA salaries have gone up by like a factor of three, let's say, right? So whatever the dollar value was that somebody made in 2005, they make three times that now.

**28:25** · Also though, team sizes have gone up because games have gotten more complicated, but also AAA is less good at making games and just there's this general bureaucracy that set in everywhere where people can't do stuff and team sizes have to get bigger. So team sizes have gone up by a factor of three, let's say, just an estimate, right? And then even though you have more people and you're paying them more, it still takes longer to make a game.

**28:53** · Let's say it takes like twice as long, right? And so since 2005, you've got three \* 3\* 2 factor of cost increase to make a game, right?

**29:05** · That's an 18 times games have become 18 times more expensive to make than they used to be in AAA.

**29:12** · In AAA, right? So indie India's had actually some of the same like once you're indie and you're like there's a big difference between I'm indie and I just make the game by myself and I'm indie but I hire a few people to help like once you start hiring people to help you're subject to some of these factors that I just mentioned but some of them like the bureaucracy and stuff you can sort of try to keep down on but even like how much you pay people like it's it's hard to you know you can't find a good programmer for like1

**29:42** · $120,000, which for many people in the USA would be an amazing salary, right?

**29:47** · Yep.

**29:48** · Like that just doesn't really exist. I mean, maybe that'll start to exist since there's been all all these crashes. I don't know. But it's it's just expensive. But yeah, so like if you had a factor of 18 increase in the cost to produce your product, imagine you made like toothpaste \[laughter\] and then somehow somehow the paste became 18 times more expensive for you to put in the tube.

**30:12** · Like that's insane. Your business would never survive, right? And so that's kind of what happened to AAA. Um this was offset by the fact that um you know the audience did grow over that time and games were making more money for a while but that kind of stopped. Um and so I think there's just this crunch now where all of this is finally like things that are unsustainable have to end eventually.

**30:43** · Sure.

**30:44** · This is that right? So, they're more expensive to make on the AAA side.

**30:48** · Yeah.

**30:48** · Uh the expectations for the quality of the game, are they higher or lower today?

**30:55** · I feel like they're much lower.

**30:57** · You think they're lower?

**30:58** · Well, okay. They're they're higher than in at the beginning of the period that I was talking about, right? Yes. But if you look back at, you know, there's this meme on Twitter and stuff where people say like this is a game from 10 years ago and it's it's like footage from whatever Battlefield game was current back then.

**31:16** · Yeah. Yeah.

**31:17** · And like it looks better than anything today. \[laughter\] It does, right?

**31:20** · Well, it looks more artful at bare minimum. It it looks the artistry is better. So, I saw some of these sidebysides where it's like they do the remakes and the remakes just look like they they really do look like generative AI. And I'm not saying that they are, but like there was one I can't remember what game it was from, but it was one of it was like a character swimming underwater. And the modern version was bright and clear and crisp.

**31:45** · And the older version was moodier. It was darker. It was tinted green.

**31:50** · Now, this one technically looks better, at least in terms of fidelity, but this one feels better. You know what I mean?

**31:56** · It was artful.

**31:57** · Yeah.

**31:58** · Yeah.

**31:59** · So, I mean, I don't know. I I think I think there was a peak of average game quality that was probably around 10, maybe eight years ago, maybe 10 years ago. \[clears throat\] Um, now now if you're talking again about indie and like how good is something that one person could make or whatever, I don't know if that's peaked, but I just mean, you know, big games by big teams. I think we're past the peak.

**32:29** · And that's also okay. So add to that factor of 18. If the quality of the game is like seven of what it used to be, right?

**32:40** · multiply that into the equa or divide divide that in for like how good is the game people are are able to play per unit cost right so you know I've been in the games industry a while though and I've seen a lot of cycles happen and this is just another one and so I'm not like panicking about it for me we're sort of we're sort of always off doing our own thing in a corner um and it because it takes so long.

**33:10** · That's the funny thing about working on games that take forever is you sort of like go into a wormhole at the start of development and then you come out of the wormhole at the end and you're like, you know, especially for business reasons, you're like not really trying to sell people anything new in the middle and so you don't have to figure any of that stuff out in the middle.

### Feeling Irrelevant After Long Development Cycles

**33:32** · Yeah. Well, in a way, in a way, um, come I'm about to release my game and, uh, coming out of the wormhole.

**33:41** · Yeah.

**33:41** · I feel irrelevant.

**33:43** · I feel like I've missed a lot of trends cuz I just been, you know, I've just been so focused on my own thing.

**33:51** · Yeah.

**33:52** · That I feel irrelevant. Maybe that's not the right word, but maybe maybe Edmund McMillan feels this way. I mean, I need to talk to him again, but like he's making games in Flash and he's making basically flash games, you know, and but but he he's not irrelevant obviously.

**34:09** · Obviously, because \[laughter\] it but he didn't he didn't listen to the noise of the industry, you know. He just made what he wanted to make and you did the same thing, you know.

**34:18** · Yeah.

**34:18** · Well, it's different strategies, right? I think it is a viable \[clears throat\] a viable strategy if you want to run a business to look at what other people are making. Oh, I can make that in 2 years, 18 months. I'll catch the tail end of the trend.

**34:35** · Yeah.

**34:35** · And then and then you do that and you get some players. But um I mean as a creative person, I've never wanted to do that, right? That's not what drives me.

**34:44** · And I think I think a lot of the games by a lot of the games that people really appreciate are driven by creative people in that way. And so it's like where do you want to be once once the grand history of video games has been written with all the characters in all the positions, right? Where do you want to be in that thing? Do you want to be I mean, you know, Farmville was a really successful game that made a ton of money. Do you want to be the guy that made Farmville or do you want to be the guy that made Eugenics, right? Like Yeah.

**35:15** · I don't know. Or do you want to be I mean, Eugenics is also successful. You could pick something I don't know. You could pick some game that's like respected but doesn't make a ton of money, but like you lived off that, right?

**35:26** · Where do you want to be?

**35:27** · I I would much rather be on the on the creative side. I've I've never been a money driven person. That said, because I have to pay for this team \[laughter\] now, it's I I need to think about it.

**35:40** · But again, you know, I try to I try to separate these things, right? So, dude, if I was trying to make money, I would never have made like a Soabond game, right?

**35:49** · With your own custom engine and custom language.

**35:51** · Yeah. None of that makes any business planning sense, right? Yeah.

**35:55** · It's just like what do I want to do? How do I get it done? And then once once I've got it basically together, you know, like now it's like, okay, let's figure out how to show people that this is actually really cool.

**36:09** · Yeah.

**36:10** · And they might be interested in in buying the game and playing it. And that has worked out every time. It's starting to look like it's going to work out this time. It's a little too early to tell, but like we said, the responses to the demo were very positive. And so that's a good indicator, right? The wish list number is going up still. By the way, the demo so we had put this demo up in NextFest. We thought we were going to take it down.

**36:33** · I thought you were too.

**36:34** · Yeah.

**36:34** · But uh so so Valve put out an email that said, "Here's the top games in NextFest." And they sent emails to everybody saying, or not an email, they they put a blog on Steam or whatever.

**36:45** · They sent us all emails and saying, "Don't take your game down because we're gonna we're going to link it." And I was like, "All right, we'll take that." And then we just decided to keep it up for a little bit uh for at least a few more weeks. So, probably when this comes out, it'll still be up. You could play the Order of the Sinking Star demo.

**37:02** · So, you're going to keep the demo out in perpetuity?

**37:05** · I don't think in perpetuity. Um, we we currently have plans on what date we're going to take it down, but I don't want to say that because it's already changed before and like who who knows? But like at least a few weeks from today, three or four weeks maybe.

**37:20** · And then we'll uh I took mine down yesterday. So, yeah. I'm It's concerning hearing you say that because I just took it down. Um I mean you're watching your own situation, right? So Right. Right.

**37:32** · You know, I mean our our situation is different from yours cuz yours went up a long time ago, right?

**37:36** · Yeah, it went up a year ago and it it it sort of it sort of um capped out at like 1300 or,00 reviews. So, it did it did well, but it's it's one of those things, especially with a linear game where it's like you you don't want to give too much away in the demo, you know? You want to it's like a movie. It's like if somebody got to watch 15 minutes of a movie, is that a good thing?

**37:58** · You or 30 minutes of a movie, I don't know. Another advantage I wanted to bring up to you on top of like your you you said that being a time capsule is a bit of an advantage because there's the is and maybe it's nostalgia, maybe it's maybe it's bringing uh a genre that people loved that they thought died, bringing it back to the forefront and resurrecting it in a new and special way. There's an advantage to that.

### Standing Out as a Creative Developer (The Paradox)

**38:23** · But I also wanted to tell you because you were talking about it's not a good business decision to be as uh to to like you did make your own engine and code your own write your own language.

**38:35** · It's not a good business decision. I don't know if I agree in the sense that the reason why people know your name is cuz you do that, you know? So your name carries a lot of weight. Now, obviously you make good games, but like I think half of the reason people know about you is because you you say a lot of things and you also do a lot of things that most people don't want to do, you know?

**39:00** · Yeah.

**39:00** · Well, that's the paradox of at least the modern day and maybe maybe this has been true through all of history. I don't know, right? But if you're just like crassly commercially driven and you're like, I just want to make some money or whatever and or it doesn't even have to be crassly commercially driven. If you just go into it with the attitude like look, I just want to make some money off this thing cuz I want to support my family or whatever, which is fine. Nothing wrong with that.

**39:24** · Yeah.

**39:25** · Then if you're not imaginative about how to do that, you're just going to look at like, oh, what do what do people buy?

**39:33** · That determines what I should make. What should it look like? what should it sound like? Right? And you're going to look at what's out there. And the thing is there's all these other people pursuing the same strategy and they're just all going to look at what's out there. And then all of a sudden you're competing with who knows how many people following exactly the same strategy as you are. And so you would expect those people to produce very similar things, right?

**39:56** · And so the the paradox is that you can actually be much more successful um by deviating from that strategy, right? Because it's it's a very crowded strategy.

**40:10** · Um and now and and so I get I get the benefit of that. I do think the optimal like if I wanted to make money, the optimal thing would be to be less creative and wacky than I am, but still somewhat creative and wacky, right?

**40:24** · Yeah.

**40:25** · um that at least that statement that I said about about that being a very crowded strategy and being creative is helpful. Um that has been consistently true through my entire time in the games industry and so I wouldn't expect that to change anytime soon. Um if anything it's more like that as time goes on just because there's more and more and more people making games, right? And so just standing out to people. Wh why I mean this is always the question is like why are people going to play your thing if you spend all this time making it?

**40:57** · What what about it? Because there's all these other things that they could play. So what about this thing that you're making is going to get people's attention or inspire them like oh I can have fun with this thing in a way that I'm not having with other things or or this is going to give me some kind of experience that I'm not getting from other things. Right. Sure. And I think it's um Go ahead. Sorry.

**41:21** · Well, I that's the end of the point.

**41:23** · Well, I think it's a lot like so people certain people I know certain people who have like a certain scent. Uh you get near them or or their house. You go in their house and their house has a certain smell and it's natural. It's just that it's just the the musk of a person, right?

**41:39** · You and dogs in particular would would this would be amplified.

**41:43** · Yes. When I think about a John Blow game, it's got a scent to it.

**41:47** · Okay.

**41:48** · It's it you see it and you're like, "Yeah, this is a John Blow game." And I think it's because you're just doing it naturally. It's like it's in your DNA to make a cozy puzzle game that has beautiful music and a really interesting story. It doesn't seem like you really It almost seems like you were just born with that scent for a game. like that that smell of your games is just it just naturally comes out.

**42:15** · Well, I wouldn't say I was born with it.

**42:17** · I mean, I definitely had to develop it over time. But yeah, I mean, I think I think it's noticeable what somebody's aesthetic is, even if it comes out differently from game to game. I mean, Edmund again is a super obvious example of this, right? And it's it's more obvious in his case because he draws all the characters and stuff, right? But but even so, you could imagine if he wasn't drawing the art himself, but he was directing the game, it would still have this kind of sensibility.

**42:46** · Yeah.

**42:47** · About like what is his kind of It's very recognizable, right? Yeah.

**42:51** · Um and I think I think that's the case for, you know, a number of people in games. And if you have that, then that's one thing that that an audience could look for for Oh, I like the way he did that thing last time. Let's see. Let's see if this one is at least kind of like that.

**43:09** · Yeah.

**43:11** · Yeah.

**43:11** · Any product that is some of the most incredible products and entertainment products that that like have a legacy still have hundreds if not thousands of flaws. So like last night I was watching Gladiator. I haven't watched Gladiator in a long time. It's a great movie.

**43:30** · It's so flawed. Like I I saw so many issues especially with like color grading and and the frame rates and and the editing choices were a little strange and I was shocked because like last time I watched it when I was like 14. It was amazing. But I saw all these flaws and I immediately thought to myself I think it was Ridley Scott who did it right.

**43:49** · Yeah.

**43:49** · Yeah. Um, if Ridley Scott had sent this out to thousands of beta testers to play to watch this thing and they had a critical eye, they they would list out hundreds if not thousands of issues and he would have been bogged down fixing all of these things.

**44:05** · When in reality, it's like the the movie is great regardless of the flaws. And so I'm sure, and this is where this sort of a segue into my next question to you.

### Processing Demo Feedback: Optimization, Controls & Story

**44:13** · I'm sure there's hundreds if not thousands of things that people have pointed out to you in the demo that you feel like you need to resolve. So my question is, what are you going to resolve and how are you parsing that feedback?

**44:28** · Yeah.

**44:28** · Well, there's actually not that many things surprisingly. Um, that's one of the things that I would have thought is like, oh, there's going to be all sorts of, you know, different problems and the demo actually stood up very well considering the the game's not done. Um, we we did get a few. So, so like I said earlier, okay, let's make it run faster on lower-end systems. Okay, not not that hard. We've already done that.

**44:56** · Can I ask who the solution is that really quick? What is you know when when we start the game we auto detect your hardware that was already in for the demo and we just pick the rendering level like low, medium or high, right? And our our real problem is that the low and medium were still pretty close to high in terms of just like what the features were and we just needed to well there's two. So, one is you can always just go optimize your system more overall and make everything faster and we continue to do that.

**45:26** · \[snorts\] But secondly is just like look if it's a low-end system no shadows find a way well you don't want to be that ser that much visual degradation but like so you know our our shaders are PBR like phys physically based rendering shaders and that involves doing a lot of math for relatively subtle lighting gradients on surfaces or whatever let's say right and so often you can just cut out large

**45:54** · chunks of that kind of shader and you get something pretty close, you know, and so so we did some stuff like that basically. So, so that was one category of feedback. There's definitely Okay, so example of conflicting things.

**46:09** · Some people are like, oh, I really like the characters. Some people are like, I just want to play a puzzle game. I don't want any storytelling. Right after like every game that I make, everyone's like, can you have a \[laughter\] more traditional story? And then now everyone's like, not everyone, but okay. And a a small portion of the audience, yeah, is like just let me play without the story. And that's actually something that's easy to put in the menu if you want that. And so we're going to let people turn that off.

**46:37** · Um, actually, you know, there's just some small percentage of people want to tweak the graphics by hand. I think most people just want the game to run and just want to play it, but some people are like, why can't I select the anti-aliasing level and put it on 2x in the menu? And it's like, okay, we we can give you that kind of stuff. Um, and just like we didn't have separate volume controls for like sound effects and characters and whatever. So those kind of things are that's the vast majority of the feedback.

**47:06** · Um, there's a little actually the other the other piece of feedback is about controls and this one's really confusing because sometimes I just have no idea what people want, right?

**47:21** · Um, is it the grid based controls that they're they're so they want that with this kind of game.

**47:27** · You have to have that, right? you. So, so just as a background, right, this is a grid- based game where you walk around and your character is always in a square because the genre of game is like objects in positions relative to each other do very specific things. And so when you're solving a puzzle, you want to be able to think about I'm here.

**47:50** · Here's the the beam projector with the beam of red light and the monster is here two squares away. And the fact that it's exactly two squares is important, right? That's a whole genre of game, puzzle, puzzle game. So, you can't like stand 20% off center of the light projector and then push it like you might in a first person game where you're walking around continuously. That's just not how this kind of game works.

**48:16** · So, I think some percentage of people are complaining about that. They're complaining that they can't walk around freely on a 2D grid. And it's like, well, but that's that's just not what this game is. And so I start to wonder, should I at least make that very clear? Like, so as a developer and as someone who's played games my whole life, I'm like, okay, obviously you start playing the game and you move from square to square.

**48:45** · Yeah.

**48:46** · People are going to understand very quickly that that's this game. But now I'm like, maybe some people don't. Like especially if you're playing with the analog stick, is it possible to not notice that your character always stops on a square in the middle of a square?

**49:00** · No.

**49:00** · And just think that it's like, you know, but but then you have to remember like, oh, it's the internet and like what it it sounds like a significant response, but like what percentage of players is this and and all that, right? So So now that's one category of thing. There is okay because the game wasn't done yet.

**49:19** · There is some stuff with controls that I legitimately was not satisfied with. So, so a couple weeks before this, we went and we did demo to um at Summer GameFest, which people might have have seen. Um people probably saw the Jeff Keley doing the show with all the trailers, but accompanying that there was like a live event where press and influencers would go play games. And so Nintendo had a booth showing off a bunch of third party Switch 2 games and we were in there and it was the first time that anyone could play the game hands-on outside the company, right?

**49:52** · And so that was really cool. But I realized like, oh, most people are using the analog stick to move because that's just the convenient thing when you pick up a switch, too, right? So for for a game like this, I tend to like the D-pad because it's crisp, right?

**50:09** · Sure.

**50:10** · down here. But it's also a little bit more odd because it's like below your thumb's got to sort of be like in and I think people just want to use the stick, right?

**50:21** · Yeah.

**50:22** · And it's just so so there were some ways in which the analog stick movement was less responsive than I would want. It's still, you know, totally playable, but it's like, oh, this could be could be better.

**50:34** · Would it help to have the the value tweakable? Like the sensitivity? I don't think that's the really core the core problem has to do more with this thing about it being a grid-based puzzle game.

**50:45** · Okay. So, so to go back to the grid based puzzle game thing. It's not just that when you're solving the puzzle, you think very clearly about the positions, but also like the gameplay engine, which I'm putting air quotes around, but there really is one in this game, has to make sure that the puzzles don't break no matter what you do.

**51:03** · Like puzzles are designed so that like oh this thing levitates this object and that hap and when you push it out from under the thing will fall and you're not allowed according to the puzzle rules to like sneak some move in there between those two things happening or else puzzles break and you can exploit them and stuff. And because the puzzles in this game get very complex with very disperate sets of uh gameplay functionality all coming together like that has to be really solid.

**51:33** · And so um so there's this whole system that makes sure that puzzles don't break basically. And that system is kind of why the analog stick was a little bit less responsive than we would want. I actually explained it in a video. I I don't know that it's worth going into here, but um we've since tweaked that and it's like much more responsive actually.

**51:57** · And that's that I think what what is worth going into is how you decided that that was worth solving because yeah, I I saw I saw maybe a few negative comments about the player movement.

**52:12** · Yeah.

**52:12** · But I don't think it was worth the time a day, you know, like especially when you sell this game for whatever you're going to sell it for. You're going to get people who actually know this genre as opposed to a free a free demo where, you know, 30% of the players don't even know that a grid based a grid-based system like this is absolutely necessary. You know what I mean?

**52:36** · Yeah.

**52:36** · I mean, I don't know. You got to make these judgment calls as a developer, right? I what it comes down to is like I just personally when I was playing on the Switch 2 well okay so things compound right so when the frame rate is high um things are more risk

**52:54** · games are naturally more responsive right because they see the input sooner and all that but like if you're on a system where the frame rate is low and that's making it a little less responsive and the analog stick is a little less responsive and people are using that those things compound and it starts to be like Yeah, I really don't like how this feels. Right. And just as a developer, you decide what's important and how how important is that relative to other things you could be working on.

**53:20** · Right. So, well, I'll I'll wrap up here, Jonathan. The this game is I love this game. And I was telling um I was telling uh Rad Rad who's with your publisher before we started the call.

**53:35** · He was like, "Have have you played the game?" And I was like, "No, but I've watched hours and hours of it." And I said, "It's because I I can't I I can't play these kind of games because I can't I can't solve the puzzles. I'm just not smart enough."

**53:48** · Well, this game isn't that hard most of the time is what I would say.

**53:51** · Well, then I'm real dumb because Okay, \[laughter\] but point being, I I see this game as a like a really enjoyable game to just watch. I I put it on with my wife while we were going to bed and we just put it on the TV and watched it. and to to sort of, you know, give you a few compliments about it. I the the music and the sound and I'm sure you you did you replied to my tweet about the sound, but the sound in the music is a masterclass. I mean, just \[sighs\] incredible.

**54:19** · And I wanted to ask you before we wrap up here with sort of one final thought.

### Live-Recorded Soundtrack & Final Polish

**54:26** · Was that soundtrack written live?

**54:29** · Composed live?

**54:31** · What do you mean by comp? Oh, you mean like or or recorded live?

**54:35** · Okay.

**54:35** · So, as uh I'm actually not sure what percentage of what's in the demo is live because we're uh we're still doing that process. There's actually um more recording is going to happen in two weeks and we're going to put more stuff in, right? You know, the composers work. So, first we talk about highle stuff. Uh the composers work on the music. We get it in the game. We see how it feels.

**55:03** · We're like, how is this, how is that?

**55:05** · And it's like it's all MIDI the whole time, right? So like just like generated instruments like you probably hear in the vast majority of of video games now, right?

**55:14** · Yeah. Software instruments. You're not AI, just so everybody's clear, it's not.

**55:18** · Not AI, but but like classic, you know, like you've had for 30 years or whatever, right?

**55:24** · Sure.

**55:24** · Um and then but but they were like, "Hey, we think this would sound a lot better if we can live record it." And I was like, I agree, but man, that's expensive. \[laughter\] Um, but we decided to do it uh because it is better. And dude, I there's a choice of studios and there's quite a price range. Um, it could have gotten super super super expensive, but I was like, no, let's just we don't have that much money. Let's just try to go with like good musicians who can play.

**55:55** · And well, you got to you got to pay I I would assume you're paying each musician or are you paying a studio?

**56:05** · So, how does it work? I'm I'm sort of letting the composers deal with this, but there's kind of a hierarchical structure as far as I can tell where you sort of tell the studio, we need this many musicians and whatever. And they So, you know, the studio is located somewhere that you don't live, but they know all the musicians that they work with frequently and they get the right people in and you know, well, get them the score ahead of time and and they practice and all that. And so, yeah. And all this is happening in Europe, by the way.

**56:35** · So, I'm just observing the recording from afar. I uh I was not uh I was not live at that. I was I was at the voice acting recording. Um but it came out really well. Uh is what I would say. And it all I'm saying is just um I'm not sure I'm not sure in the demo what percentage is live and what percentage is MIDI, but in the final game it'll all be live.

**56:59** · Okay. Last last shotgun question for you. Are you surprised that these four games smashed together actually worked?

**57:09** · No, cuz I picked them for that reason. \[laughter\] Um I knew that you didn't pick random games you liked. You picked four games that you knew would work together.

**57:17** · Yes.

**57:18** · Okay. Sweet.

**57:20** · Well, it it does work, man. And huge huge congratulations for the demo being as successful as it has been.

**57:28** · Yeah.

**57:28** · Um great game. I see it I see it having a a long life. It's one of those evergreen games that just you sit down and you just play for years. \[laughter\] Um yeah, I mean I hope I hope people really enjoy it. We we're still we're working really hard to get it done this year.

**57:46** · Um it's a big game with so much stuff in it that I think people will really appreciate that.

**57:54** · Yeah.

**57:54** · And yeah, as you know, if you haven't seen the demo, you can check it out on Steam. You know, you can watch a video like you're saying, or it's just simple to download it. And I I think what comes across so so for developers out there, I think it's underappreciated the, you know, there's a more than the sum of its parts feeling that you get when different ingredients of a game all come together, right? So, like you start the game, the music is good.

**58:25** · The sound effects are good. And by good, I just mean they're not grading or annoying. They have a rich sonic texture, but they also invite a little bit of mystery. Like, this is this is obviously part of something bigger that I haven't seen yet. And the voice acting is good, and the visuals are good. And when you get all those things, um, the game really comes together and feels magical.

**58:52** · And that all for us that all happened like this year, like we've been working on this game forever, right? But it's all super rough drafty and all that. And it's crazy how that happens. You just get this exponential uh growth in polish.

**59:08** · Yeah.

**59:08** · And and and that's part of the, you know, we said before there's uncertainty about how people are going to receive it. And that's part of the uncertainty because you're not getting you you I mean meaning the developer are not getting to see the good version of it until like \[laughter\] a week before the demo goes live or whatever cuz we're racing to get all this stuff in there.

**59:29** · Yeah.

**59:29** · And but no, you you start it up and it's like, okay, no, I see what this thing is and it it makes sense.

**59:36** · It's funny because in the last podcast we did, you were you were showcasing it and a lot of stuff broke. A lot of stuff was breaking uh on your computer. Like I think things weren't loading and sounds weren't playing and Oh yeah. Yeah. Yeah.

**59:49** · And some of the se the scenes weren't dressed and that's game development for you.

**59:54** · I know. I know. And it's crazy how you just turned it into this frankly masterpiece. Just beautiful, beautiful looking game.

### Closing Thoughts & Where to Play the Demo

**1:00:02** · Okay, links in the description.

**1:00:03** · Everybody please play Order of the Sinky Star demo as long as it's out for I don't know how long it's going to be. sometime, some amount of time.

**1:00:12** · Yep, that's right. Jonathan, thanks for your time, dude. This was fun.

**1:00:15** · Thanks. Good talking to you again.

**1:00:16** · Yep.

**1:00:16** · Appreciate you, bud. Cheers. And by the way, if you want to make 2D games or maybe even 3D games like I'm doing and potentially turn them into an actual full-time gig, I have a course called Full-Time GameDev, and it's 50% off with the summer sale. I've gone full-time with just a demo on three separate occasions. And by the way, look here. These are some students who went full-time with the help of what I teach.

**1:00:37** · In this course, you're going to learn just that. How to land publishing deals with just a demo. How to get funded on Kickstarter with just a demo. Make a 2D or a 3D game in Unity, GDAU, or Unreal.

**1:00:49** · You're going to learn how to market your game, get press coverage like I have, hit the Steamfront page, and so much more. Everything that I teach in this course is stuff I've done, so you're learning from an actual indie game developer, not somebody who's just wanting to make games. I'll also throw in my 2D and 3D art courses, completely free. And as a bonus, I'll also throw in a private 1-hour mastermind meeting with me and a handful of other developers where I'm going to answer any questions you have in a private setting. This summer sale ends soon \[music\] and I don't do many of these during the year.

**1:01:19** · So, be sure to click below to enroll and join 4,500 other students.