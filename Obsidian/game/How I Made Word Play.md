---
title: "How I Made Word Play"
source: "https://www.youtube.com/watch?v=uuXrwA9nzM8"
author:
  - "[[Game Maker's Toolkit]]"
published: 2025-07-15
created: 2026-07-05
description: "🅰️ Buy Word Play on Steam! - https://store.steampowered.com/app/3586660/Word_Play/ 🅱️=== Chapters ===00:00 - Intro01:04 - December02:28 - January05:16 - March08:40 - April09:38 - May11:44 -"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=uuXrwA9nzM8)

🅰️ Buy Word Play on Steam! - https://store.steampowered.com/app/3586660/Word\_Play/ 🅱️  
  
\=== Chapters ===  
00:00 - Intro  
01:04 - December  
02:28 - January  
05:16 - March  
08:40 - April  
09:38 - May  
11:44 - June  
14:12 - July  
  
\=== Credits ===  
Music from Word Play OST, by Zach Jones  
  
\=== Subtitles ===  
Contribute translated subtitles - https://gamemakerstoolkit.com/translation/

## Transcript

### Intro

**0:00** · Hi, I'm Mark Brown from Game Maker's Toolkit, and I am chuffed to bits to let you know that my new game, Word Play, is out now on Steam.

**0:10** · It's a game where you spell words to score points, so you can unlock powerful perks that let you score even more points.

**0:18** · It's a game about spelling, and strategy, and synergies, and special powers.

**0:23** · It's got a classy art style, a boppin' soundtrack, it's got accessibility settings, and difficulty modes, and loads more.

**0:32** · I hope you'll check it out.

**0:35** · Now for my first game, Mind Over Magnet, I shared the entire process of making it across 15 or so episodes of my YouTube series, Developing.

**0:46** · But for Word Play?

**0:47** · Well, there just hasn't been time.

**0:50** · The game has come together so quickly that I've barely had a chance to tell you how I made it! But better late than never, right? So here it is.

**0:59** · Here's how I made Word Play in just seven months.

### December

**1:06** · Okay, so the idea for Word Play - which was essentially to combine the poker roguelike Balatro with a spelling game like Scrabble or Bookworm Adventures - the idea has been rattling around my head ever since I played Balatro at the start of 2024.

**1:22** · But in December, I finally had a reason to try and make it for our secret, Patreon-only GMTK Game Jam.

**1:31** · So I bashed together a game about spelling words, scoring points, and unlocking rule-bending modifiers.

**1:39** · It was called Wordy, and it was actually pretty dang fun.

**1:43** · The response was great, I had a really good time working on it, it clearly had a lot of potential, and if I had any intention of turning this into a real game, well I had better get on with it before someone else has the same idea.

**1:57** · And so, shortly after the jam was completed, I opened up a fresh Unity project and started working on a more fleshed out version.

**2:06** · Now I decided that the best thing to do at this early stage was to not worry about things like perks, or rounds, or rogue-like elements - but to just build a really good spelling game.

**2:19** · Something where it was nice and juicy to spell words.

**2:22** · Something that would work seamlessly across mouse and controller, and keyboards, and touchscreens.

### January

**2:29** · At the beginning of January, I continued to build that basic word game - adding in features like a shuffle button to mix up your tiles, and a letter bag.

**2:40** · But then, with the spelling game mostly done, I started adding on the rogue-like features like the shop, and the perks.

**2:48** · I added the basic architecture for special tiles, and started making modifiers which are your passive perks - think jokers in Balatro, or boons in Hades.

**2:59** · By this point the game had 11 perks, though they were mostly just there to test different functions like having a modifier that can boost a tile's score, or the whole word's score.

**3:13** · In February, work started to slow down - mostly because I was just focusing a lot of time on making videos for GMTK.

**3:22** · I added a few features, like the ability to sell modifiers, but that was it.

**3:28** · Then midway into February, disaster struck.

**3:32** · I was scrolling through my YouTube subscriptions and saw a video on Second Wind with Yahtzee playing a game called Wordatro.

**3:41** · Which I didn't even need to click on it to know what that one was all about.

**3:45** · YAHTZEE CROSHAW: Ah ha ha ha ha! JESS HOOPS: Oh, beautiful!

**3:48** · It was another game that mixed Balatro with Scrabble.

**3:53** · Damn.

**3:54** · Now, I briefly considered cancelling the game, and I definitely regretted not showing this thing earlier, but ultimately I decided that I can't control what anyone else makes.

**4:07** · The only thing I can control is how good my game is.

**4:10** · So I decided to keep working on it, and just make the game as awesome as I could make it.

**4:17** · Oh, and then later that same month, I listened to a completely random podcast about screenwriting, and one of the hosts said...

**4:25** · JOHN AUGUST: We have a game for you to try out right now.

**4:28** · So it's called Birdigo.

**4:29** · Birdigo, like the thing that flies.

**4:31** · It is a roguelike deck builder where you're trying to make words.

**4:35** · Which you might think would give me a heart attack.

**4:38** · Another one!

**4:39** · But actually, this made me feel better.

**4:42** · Because between Birdigo and Wordatro, and over the next few months, many more word-based roguelikes all having the same basic idea of Balatro plus words but going in different directions....

**4:54** · well it feels less like I'm competing with and, in some people's eyes, copying a single game, and more like I'm part of a growing genre.

**5:03** · So crisis averted, and I even ended up chatting with the devs of both Wordatro and Birdigo and, well, I'll have more to share on that down the line.

**5:13** · Suffice to say, we're all good.

### March

**5:17** · In March, I finally gave the game a proper name.

**5:21** · Here's how that happened.

**5:22** · You see, the game has, essentially, lives.

**5:26** · But you use a life every time you spell a word.

**5:30** · So it's a bit weird to lose a life when you do something correctly.

**5:34** · That just feels weird.

**5:36** · So I asked my Discord users for alternative words to "lives", and user Fly suggested "plays".

**5:45** · Which sparked the idea for Word Play.

**5:49** · Now, when you're making a word game, as it turns out, every single possible name has already been taken by some other game or toy.

**5:57** · But Word Play? Well, Word Play doesn't exist on Steam.

**6:01** · So you know what? I'll take it.

**6:03** · I'll snap up Word Play.

**6:05** · Anyway, I started March by continuing to add more roguelike elements.

**6:10** · So I added upgrades.

**6:11** · They're your active perks which can change, improve, duplicate, or discard tiles.

**6:17** · I added in all the special tiles - golden, diamond, emerald, potion, and dot tiles - which all have unique gameplay.

**6:24** · I added in the special rounds, which are, well, special rounds with unique requirements like "your word must have six tiles".

**6:33** · I added modifiers that can multiply the score.

**6:36** · And I added reroll to the shop.

**6:38** · So now that I had made the spelling game, and coded in all the roguelike stuff, I could tie all of those elements together into a full gameplay loop - so that it could be played as an actual game.

**6:51** · Which was especially important with the Game Developers Conference coming up at the end of the month.

**6:57** · So now I could start getting proper playtesting feedback on this new version of the game.

**7:04** · I distributed it on the GMTK Discord, and took it on an iPad when I did talks at schools and colleges.

**7:11** · That led to lots of changes based on user feedback and requests.

**7:16** · I made it so you could rearrange the tiles on the board.

**7:19** · And I made it so you get extra bonus points if you spell especially long words - because otherwise you barely get any points for dropping a single mega word.

**7:29** · And then I took it to GDC, where I spent the entire week playing it with other developers and got fantastic feedback from the devs behind games like Patrick's Parabox, Spell Tower, and Alto's Adventure.

**7:41** · Which led to even more changes.

**7:44** · Also I rode in a driverless taxi, and had my breakfast delivered by a robot.

**7:50** · San Francisco!

**7:52** · Also in March, I started reaching out to my collaborators on the project.

**7:56** · I emailed Zach, who did the music for Mind Over Magnet, and offered him first dibs for the music on this game.

**8:03** · And I DMed Jay on Discord.

**8:06** · He made a spec video of the game with different sound effects, and they were so good I hired him to do the whole game's sound design.

**8:13** · I also added in Unity Analytics to help with future balancing.

**8:17** · I created the Steam store page, though kept it private.

**8:21** · And I brought the total number of perks up to 52.

**8:25** · Basically, I went into hyperdrive.

**8:28** · Looking back on my notes, I can't believe how much I accomplished in one month.

**8:33** · I was racing through this game.

**8:35** · Development was coming along so well.

**8:38** · And then I broke my arm.

### April

**8:41** · Yeah.

**8:42** · April was a bit slow.

**8:44** · I had to stop development for several weeks as I waited for my elbow to heal.

**8:49** · Jay finished the sound effects, but it would be a while before I could put them into the game.

**8:54** · But I was able to slowly get back to work.

**8:59** · I added in a new special round where you have to play a mandatory tile, or else lose two plays.

**9:05** · I added compound tiles, letting you play the letters I N G with a single tile.

**9:10** · And I added in the first modifier that was based around the specifics of the word you spelled.

**9:16** · It's this one, which gives you a boost if the first and last letters are the same.

**9:22** · These would prove to be very important in the game's overall sense of strategy and balance.

**9:28** · But I think I'll talk more in depth about that in a future video.

**9:32** · Oh, and this also brought the total number of perks up to 74.

### May

**9:39** · May started out with disappointment.

**9:42** · I managed to get in touch with the chap in charge of Apple Arcade, which is the iPhone maker's Game Pass-like subscription service.

**9:50** · And so at his request, I sent over a build of Word Play on TestFlight.

**9:57** · Ten agonising days later, Apple Arcade wrote back to pass on the game.

**10:03** · Which was a huge shame, but hey, it was cool for them to play it at the very least.

**10:09** · But okay, with that out of the way, my goal throughout the rest of May was to get a demo ready for Steam Next Fest in June.

**10:17** · Which meant fixing lots of bugs, adding lots of polish, and chucking in a lot more cool features - like the glass tile, which can be used to have a one-time copy of any other letter.

**10:30** · And so towards the end of May, I was finally ready to reveal the game to GMTK viewers like you - with a demo, an announcement video, and a let's play of the game.

**10:42** · Which was amazing.

**10:44** · The response was overwhelming.

**10:46** · 20,000 players in a week! The game got picked up by various YouTubers and streamers, including Yahtzee on Second Wind, him again, and the world's biggest Balatro streamer, Northernlion.

**10:57** · NORTHERNLION: I bet there's like some sick Italian wines you can spell with these letters, man.

**11:02** · I also got an email from… uh, Apple.

**11:06** · Yeah, not their Apple Arcade team this time, but a different group at the company, who reached out to offer some help, listing it on the main App Store.

**11:15** · More on that in the future, because right now I'm focused entirely on today's Steam release.

**11:22** · Plus, all of those demo players sent me so much great feedback and ideas, which led to all sorts of cool stuff - like being able to submit words over 10 letters, and being able to petition for more words to be added to the dictionary.

**11:36** · And so at the end of May, the game was in a very good state.

**11:40** · And the game now has 90 perks.

### June

**11:45** · By June, the basic underlying game was essentially done.

**11:50** · It was absolutely a minimum viable product, or MVP.

**11:55** · It had a fully functioning game loop, it had saving and loading, options, and difficulty modes.

**12:01** · Still, I added a few more quality of life adjustments, like the ability to peek into your bag or at the board during the perk screen.

**12:08** · Some accessibility features, like alternative controls, dyslexia-friendly fonts, and spelling suggestions.

**12:15** · And I even added the groundwork for people to mod in custom dictionaries and letter bags if they want to play with non-English words.

**12:24** · But, with all of that done, and with Steam Next Fest taken care of, my job now was to simply make stuff.

**12:32** · So I added new tiles.

**12:34** · The mirror tile.

**12:35** · The exclamation mark tile.

**12:37** · The locked tile.

**12:38** · I added new special rounds, like one where the maximum word length starts at four, and increases with each word you submit.

**12:46** · And I added perks.

**12:49** · So many perks.

**12:50** · I started by bringing the game up to 100, but then I thought of some more and took it to 120.

**12:57** · Then I had a few more ideas, and it was like, why stop at 143? I might as well take it to 150, that's a nice round number.

**13:06** · And over the rest of the month, I slowly added a few more until I really, really had to stop at a whopping 160 perks.

**13:15** · And look, I've got even more ideas, but let's save those for future updates.

**13:20** · But at this point it was time to start doing the final quality assurance, or QA.

**13:25** · I brought in a group of helpers - a mix of GMTK patrons and people who gave particularly insightful feedback about the demo, and had them run through the game over and over and over again, looking for problems.

**13:38** · They found bugs.

**13:39** · They found typos.

**13:41** · They found perks that were overpowered, and perks that were pointlessly weak.

**13:45** · They helped me balance the difficulty curve, suggested Steam achievements, and pushed me to add in features that I had been way too lazy to make previously.

**13:54** · To be honest, this lot were the real MVPs - the most valuable players.

**13:59** · Without their help and guidance, the game that just launched would be buggy, unbalanced, and just significantly less fun.

**14:07** · So a huge, heartfelt thanks to all of them.

**14:10** · Cheers.

### July

**14:13** · And then finally, it was July.

**14:16** · It is July! And the game is out now.

**14:20** · And so that is the story of how I made Word Play in seven months.

**14:25** · And if you compare that to the development of my first game, Mind Over Magnet, which took me well over three years to produce, well obviously things went a lot more quickly.

**14:36** · Now, of course, they're very different games.

**14:39** · And I was also a very different developer back then.

**14:41** · I literally had to learn how to use Unity while I made the game.

**14:46** · But it's not just that.

**14:48** · I also thought carefully about how to develop Word Play while I was making it.

**14:53** · To make sure the process was streamlined, and to ensure that this game didn't devour years of my life in the way that Mind Over Magnet did.

**15:02** · Now I'll talk more about this in future episodes of Game Dev 101, which I'm looking forward to getting back to soon.

**15:10** · But as the Cliffs Notes version, it really came down to two things.

**15:14** · Number one.

**15:15** · I was ruthless about the game's scope.

**15:18** · I would routinely make decisions through the lens of which choice is going to take the least amount of time.

**15:25** · For instance, I could have made unique art for all 160 perks, like the jokers in Balatro.

**15:32** · And I would totally accept the criticism that the game is worse off for not having that.

**15:37** · But ultimately, using a more simple set of icons saved weeks of time.

**15:42** · And it was the difference between the game coming out while I still had some fuel in the tank, versus causing the development to drag on for many more months.

**15:52** · And number two.

**15:53** · I would develop the game in a kind of layered approach, where I would focus on one part at a time.

**15:59** · For instance, in December, I focused exclusively on just making a good spelling game.

**16:04** · Then when that was done, I focused on getting the roguelike game loop complete.

**16:09** · Then I just made perks all day, every day.

**16:14** · And then I just did bug fixing and balancing.

**16:17** · Now of course, none of that is really true - I was still adding in features from previous layers as development went along.

**16:24** · But for the most part, I did just focus on making the bones of the game before turning my attention to the content.

**16:32** · Which made development faster and more agile, as I was always building on the really strong foundation of the previous layer.

**16:40** · And so ultimately, while I'm really proud of this game - and I think it is genuinely a lot of fun and I hope you dig it - I think I'm even more proud of the fact that I made a video game without losing my mind.

**16:53** · By taking everything I learned from Mind Over Magnet, and really planning out the development instead of just making stuff willy nilly, I was able to take this game from idea, to prototype, to playtesting, to QA, and to release in just seven months.

**17:09** · So I'm going to leave it there, so you can actually go and play the dang game.

**17:14** · It's out now on Steam for PC, Mac, and Steam Deck.

**17:18** · There's a 10% discount for the first week, and there's still a free demo if you haven't tried it yet.

**17:23** · And now, well, give me a sec to fix all of the inevitable bugs, and then I'll see you later this month for GMTK Game Jam 2025.

**17:34** · I will not be taking part.

**17:36** · Do not let me.

**17:38** · I cannot be trusted.

**17:40** · Bye bye!