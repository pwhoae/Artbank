---
title: "The hardest thing about finishing a game (Developing 15)"
source: "https://www.youtube.com/watch?v=rIUkuB4WLss"
author:
  - "[[Game Maker's Toolkit]]"
published: 2024-08-02
created: 2026-07-08
description: "🧲 Get Mind Over Magnet on Steam! - https://store.steampowered.com/app/2685900/Mind_Over_Magnet/ 🧲Developing is an on-going YouTube series, where I share the step-by-step process of making my first"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=rIUkuB4WLss)

🧲 Get Mind Over Magnet on Steam! - https://store.steampowered.com/app/2685900/Mind\_Over\_Magnet/ 🧲  
  
Developing is an on-going YouTube series, where I share the step-by-step process of making my first video game: Mind Over Magnet!  
  
In this episode I finally finish my game and reveal Mind Over Magnet's release date.  
  
\=== Sources and Resources ===  
  
Get bonus content by supporting Game Maker’s Toolkit - https://gamemakerstoolkit.com/support/  
  
\- Sources  
  
Shigeru Miyamoto Wind Waker Interview 2006 | Bordersdown  
https://bordersdown.net/articles/features/2741030-shigeru-miyamoto-wind-waker-interview-2006  
  
Interview with Kenji Kaido | De sombras y bestias: la travesia de Team ICO  
https://teamico.fandom.com/wiki/De\_sombras\_y\_bestias:\_la\_travesia\_de\_Team\_ICO\_(October\_1st\_2017)  
  
Dark Souls interview | Design Works  
https://darksouls.wiki.fextralife.com/Dark+Souls+1+-+Design+Works+Interview  
  
\=== Credits ===  
  
Music provided by Epidemic Sound - https://www.epidemicsound.com/referral/vtdu5y (Referral Link)  
  
YouTube Audio Library  
  
\=== Subtitles ===  
  
Contribute translated subtitles - TBA

## Transcript

**0:00** · Hi. My name's Mark, and I am making Mind Over Magnet, a cute and charming puzzle platformer about - and this is no word of a lie - magnets.

**0:10** · Okay, so in this episode of Developing, I am really pleased to announce that Mind Over Magnet is finished.

**0:18** · Wait, let me rephrase that slightly.

**0:20** · Mind Over Magnet is done.

**0:23** · And those two things are actually very different.

**0:27** · Let me explain.

**0:38** · Okay, so in a previous episode of Developing, I talked about how I had made a plan to finish Mind Over Magnet.

**0:45** · And it went something like this.

**0:46** · Design 50 unique puzzles.

**0:49** · Create 5 different worlds.

**0:52** · Build a whole bunch of different mechanics.

**0:55** · Introduce the player to 3 different magnet friends.

**0:58** · And write an involving storyline with twists and turns.

**1:01** · That all sounds pretty good, but I also had another slightly secret plan.

**1:07** · Which was to finish the game in 2024.

**1:11** · No later than December 31st.

**1:14** · I refused to work on the game for another calendar year.

**1:18** · But as the months started to march on, it became increasingly clear that these two plans were essentially incompatible.

**1:28** · Because when I looked at all the content I still had to create, and also factored in stuff like polishing, bug fixing, marketing, burnout, breaks, travel, making YouTube videos, and running the GMTK game jam - starts August 16th - it was looking like I wouldn't hit my deadline.

**1:46** · And trust me, I really want to hit that deadline.

**1:49** · I've been working on this game for over 3 years, which was never the plan.

**1:54** · But I do desperately want to release this game this year.

**1:58** · I want to move on. I want to stop thinking about magnets.

**2:02** · I want to make other games. I want to make other videos.

**2:05** · And I feel like I am really straining the patience of my very generous Patreon backers, including the 38 new supporters who have joined the campaign since the last episode of Developing.

**2:18** · Hang in there, I'm almost done.

**2:20** · So if I'm not willing to change the deadline, I guess I've gotta change the plan.

**2:27** · But that kind of feels like cheating?

**2:29** · Well, I took a few Zoom calls, and popped to the Develop Conference in Brighton, and started talking to other game developers about their experience of finishing games.

**2:39** · And basically everyone told me the exact same thing.

**2:42** · That very few games ship with all of the ideas, levels, mechanics, and story beats that the developer originally intended.

**2:50** · And in fact, it's super common for a game's scope to change at the very last minute in order to hit the game's release date, or to come in under budget.

**2:59** · And in fact, some of the greatest games of all time are missing significant amounts of content due to last minute changes in scope.

**3:09** · Nintendo scrapped two whole dungeons from The Wind Waker to make the release window.

**3:14** · Shadow of the Colossus was supposed to have 48 colossi.

**3:17** · It ended up shipping with just 16.

**3:20** · And in Dark Souls, Lost Izalith and the Bed of Chaos were cobbled together quickly to meet the game's deadline.

**3:27** · And in that case, it might have been better if they were just cut from the game.

**3:32** · And I think this is just a universal truth for making art.

**3:35** · I mean, back in 1933, French poet Paul Valéry said a work is truly never completed...

**3:43** · French poet Paul Valéry said a work is never truly completed, but merely abandoned.

**3:49** · A quote that is more usually attributed to poetry expert George Lucas.

**3:54** · But I think there's a fundamental fight between wanting to put absolutely everything into the game, and wanting to release the game while you're still alive.

**4:05** · And it sucks, but I'm not getting any younger.

**4:08** · So I did it. I changed the plan.

**4:12** · Instead of 50 puzzles, I could happily ship with about 40.

**4:17** · And instead of five worlds, I could squeeze things down to end in just four.

**4:22** · And how about the three magnets? Like, originally you would meet Magnus.

**4:26** · Then Max, a magnet that you can throw.

**4:29** · And then Maggie and Meg, a single magnet that can switch between two sisters and two polarities.

**4:35** · But I realised I could make do with just two magnets.

**4:39** · I could get rid of Max.

**4:41** · Then have you meet the switcher magnet earlier, but she's missing the power to switch polarity.

**4:46** · Then you could unlock that ability later on in the game.

**4:49** · That saves assets and streamlines the story.

**4:53** · In terms of mechanics, I could stand to drop a few of them.

**4:57** · This scissor gate leads to some really annoying bugs I'd rather not deal with.

**5:02** · And I haven't made any levels for the mighty magnet, so let's ditch that idea also.

**5:07** · And does my game really need an involving storyline?

**5:11** · I'm not much of a writer, and the cutscenes only really need to exist to give you motivation to escape the factory and to break up the endless puzzle solving.

**5:20** · So that can be simplified down dramatically.

**5:23** · So I started to work to this new plan.

**5:26** · I made a few more levels, I wrote a short story, and within a couple months the game was done.

**5:34** · You could play the game from the introductory cutscene to the final credits roll.

**5:39** · There were four worlds with lots of puzzles, mechanics, and magnets.

**5:42** · And it had a storyline that... existed.

**5:45** · And now I just needed to fix up all of the problems.

**5:48** · So I went through the game with a fine-tooth comb and ran a bunch of playtests, and made a monster list of problems that needed to be fixed.

**5:56** · This looks pretty ugly, so let me fix that.

**5:59** · The game goes weird if a magnet dies while talking, so let me change that.

**6:05** · Magnets can get stuck on corners in weird ways, so that needs to be remedied.

**6:10** · And whenever a playtester found a way to skip a puzzle in a weird, unexpected way...

**6:16** · "Uhh, I have no idea if that was the intended solution."

**6:22** · I would change the level to impede that.

**6:24** · But this process wasn't just about fixing bugs.

**6:27** · It also just changed the way I worked.

**6:31** · Because now that I have the game in front of me as a complete package, I can see the game in its entirety from beginning to end, I could see where the game still needed work, where the game was lacking.

**6:43** · And because the game is basically done at this point, I could make much smarter decisions about how to spend those last few weeks and months of development.

**6:54** · So for starters, this new story is really not very interesting.

**6:58** · So I threw in a few extra cutscenes and made a slightly more involving narrative that pokes a little fun at artificial intelligence, and has a tiny twist to keep you guessing.

**7:09** · It's still not going to win any awards for storytelling, but it's something.

**7:14** · I also really missed the scissor gate mechanic, so I fixed the bugs and put in a couple levels featuring that device.

**7:21** · It also felt kinda anticlimactic to finally have access to all of the magnets, and only have a few levels to play.

**7:29** · So I made more puzzles for that section of the game, including a more exciting finale.

**7:34** · And at this point, World 4 had become kinda bloated with about 20 levels compared to the 15 or so stages in the other three worlds.

**7:44** · So I went back to the original plan, and split the game into five worlds again.

**7:48** · Only the last world is much shorter than the others.

**7:52** · Which I'm fine with.

**7:54** · By the time the player has gotten all of the magnets and reached the rooftop of the factory, I don't think they want to do another whole world of hard puzzles.

**8:03** · That kinda brings the pacing to a halt.

**8:05** · So having world 5 be surprisingly short can make the game finish on an exciting high.

**8:11** · And finally, I didn't like how anticlimactic it felt to move between worlds.

**8:16** · So I added a little transitional stage at these key points in the game.

**8:21** · But that is it.

**8:22** · No more levels, no more mechanics, no more magnets.

**8:25** · At some point I had to just decide to lock down the content and decide that this was everything that was going to be in the game.

**8:32** · And from that point on, to focus my attention exclusively on polishing and playtesting.

**8:38** · And that lets me worry about really small things, like when a playtester is disappointed that there's no dialogue for a specific interaction.

**8:46** · "Actually, I kinda wanna see if there's dialogue for that.

**8:51** · Okay, there isn't."

**8:53** · Well I can just add that in.

**8:54** · Also, some playtesters didn't realise that the game had a hint system, so I added a pop-up that appears if you're stuck on a level for a certain amount of time.

**9:03** · And so at this point I'm now playtesting the game almost every single day.

**9:07** · Just subtly changing things to make it better.

**9:11** · And you know what? The playtests are now getting really quite good.

**9:16** · People are having fun.

**9:17** · People are liking the game.

**9:20** · "Wow, okay, wow, that was...

**9:22** · Now I need to go sleep.

**9:25** · That was crazy.

**9:27** · Okay, okay."

**9:28** · And I guess you could look at it like this.

**9:30** · When I was producing new content, the game was getting longer, but it wasn't really getting much better.

**9:36** · But now I'm focusing exclusively on polish, the game is just getting better and better with every update.

**9:43** · And the morale boost of a good playtest cannot be understated.

**9:47** · So I'm getting really excited to show this game to more people.

**9:51** · And so I am excited to announce that Mind Over Magnet now has a release date.

**9:57** · The game will launch on Windows, on Steam, on November 6th, 2024.

**10:04** · That is still a long time in the future, that's still three more months to go.

**10:08** · I could make a lot of levels in that time, but instead I am focusing exclusively on polishing, playtesting, marketing.

**10:16** · It'd be nice to go into the launch with a few more wishlists.

**10:19** · And maybe I'll get the Mac and Linux builds ready for launch as well, but no guarantees.

**10:25** · Plus there's also a sentimental reason behind that release date, because on November 6th, 2014, I uploaded the first episode of Game Maker's Toolkit to this YouTube channel.

**10:35** · And so it feels kind of apt for me to release my first game on Steam exactly ten years after that.

**10:42** · I hope you'll check it out.

**10:44** · So that is what I've learnt about finishing games.

**10:47** · That there is no finish line.

**10:49** · There is no goalpost.

**10:51** · There is no giant pipe that sucks up you and all of your magnet friends.

**10:56** · There is no external sign that the game is finished.

**11:00** · You just have to stand up, say "this is it. I'm done. I've called it."

**11:06** · You just have to be okay with content going unfinished, and ideas being unexplored.

**11:13** · But hey, there's always the sequel, right?

**11:15** · This is not an announcement of Mind Over Magnet 2.

**11:18** · Do not take that seriously.

**11:20** · But while it is incredibly hard and scary to just decide that the game is done, it does come with some advantages.

**11:28** · It allows you to see the game in its entirety, so now you can make more informed decisions about where to spend those last few months of development.

**11:36** · And because you've changed your focus from endless content generation to just pure playtesting, and polishing, and perfection, the game just seems to get exponentially better in these last few weeks and months.

**11:49** · With every playtest, and every day, and every week, the game just seems to get better and better until it just feels like it could be a pretty good video game.

**12:00** · But in terms of Mind Over Magnet, I guess that is on you to decide on November 6th, 2024.

**12:08** · So, I hope that you will check it out when it releases, and I hope in the meantime you will wishlist the game on Steam.

**12:14** · It truly does help me out.

**12:16** · Thank you so much for watching, and I'll see you soon.