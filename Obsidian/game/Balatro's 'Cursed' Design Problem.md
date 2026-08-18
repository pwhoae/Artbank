---
title: "Balatro's 'Cursed' Design Problem"
source: "https://www.youtube.com/watch?v=zk3S3o1qOHo"
author:
  - "[[Game Maker's Toolkit]]"
published: 2024-04-03
created: 2026-08-18
description: "🔴 Get my premium monthly newsletter - https://gamemakerstoolkit.com/digest/ 🔴Balatro is the current game design darling. But even the designer is aware of a ‘fundamental design flaw’. What is it,"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=zk3S3o1qOHo)

🔴 Get my premium monthly newsletter - https://gamemakerstoolkit.com/digest/ 🔴  
  
Balatro is the current game design darling. But even the designer is aware of a ‘fundamental design flaw’. What is it, can it be fixed, and what does it teach us about making games for people?  
  
\=== Sources and Resources ===  
  
\- Sources  
  
\[1\] \[AMA\] I am localthunk, developer and artist for Balatro. Ask me anything! | Reddit  
https://www.reddit.com/r/Games/comments/1bdtmlg/ama\_i\_am\_localthunk\_developer\_and\_artist\_for/  
  
\[2\] GD Column 17: Water Finds a Crack | Designer Notes  
http://www.designer-notes.com/game-developer-column-17-water-finds-a-crack/  
  
\[3\] 136: Going in Blind with Balatro | Eggplant  
https://eggplant.show/136-going-in-blind-with-balatro  
  
\[4\] Postmortem: McMillen and Himsl's The Binding of Isaac | Game Developer  
https://www.gamedeveloper.com/business/postmortem-mcmillen-and-himsl-s-i-the-binding-of-isaac-i-  
  
\[5\] Isaac vs Mewgenics | Steam  
https://store.steampowered.com/news/app/686060/view/3677805209186094200  
  
\[6\] External Item Descriptions | Steam Workshop  
https://steamcommunity.com/sharedfiles/filedetails/?id=836319872  
  
\=== Credits ===  
  
Music provided by Epidemic Sound - https://www.epidemicsound.com/referral/vtdu5y (Referral Link)  
  
\=== Subtitles ===  
  
Contribute translated subtitles - https://amara.org/videos/qZaMrU6iDy4J/

## Transcript

**0:00** · Balatro!

**0:01** · It’s the hot new indie darling.

**0:03** · It shifted a million copies in a month, it’s been streamed by pretty much everyone on Twitch, and it’s one of the top-rated games of 2024 so far.

**0:13** · I’ve also played it...

**0:15** · quite a bit.

**0:16** · But, this game has, according to its own designer, a “fundamental design flaw”.

**0:23** · A “cursed problem” that the designer has been unable to solve.

**0:28** · Let me explain.

**0:30** · First, if you somehow haven’t played Balatro, it’s a card game about trying to find poker hands in order to score points.

**0:38** · Better hands score bigger points.

**0:40** · But on top of that, you can do all sorts of wily tricks to boost your score.

**0:45** · Special cards rack up more points.

**0:47** · Crazy joker cards change the rules of the game.

**0:51** · And you can stack your deck, or toss away cards, to make certain hands more happenable.

**0:57** · It’s a really fun game.

**0:59** · A sublime, synergistic slot machine that feels fun to play, and is even more fun to break.

**1:06** · It’s also really elegantly designed with its clean UI, straightforward concept, and, well, just how much depth has been squeezed out of a few key systems.

**1:17** · But there’s one… interesting design choice in there.

**1:20** · And it’s this: the game doesn’t tell you how many points you’re going to score before you play your hand.

**1:27** · You simply pick your cards, cross your fingers, and hit go.

**1:32** · Now, this would be really quite helpful information.

**1:35** · It could tell you to play one hand over another.

**1:39** · It could tell you if you’re about to scrape past the ante or miss it by a few points.

**1:45** · It could tell you if you’re about to win the entire game or lose the whole thing and have to start from scratch.

**1:51** · And yet… Balatro doesn’t give you a, let’s call it a "score preview".

**1:58** · Of course, this was an entirely intentional design choice.

**2:02** · LocalThunk, the game’s anonymous Canadian designer, has explained that, for him, the joy of Balatro lives in that precise moment I just described.

**2:13** · When you cross your fingers and hit play.

**2:15** · When you’ve set up your point-scoring engine and hope that it will bring home the bacon.

**2:21** · LocalThunk says: “My personal belief is that the game is more fun when you set up your Rube Goldberg machine and watch it go before knowing whether or not the hand will win the round.”

**2:33** · And Balatro totally plays into this!

**2:36** · There’s so much hype and pageantry after playing your hand.

**2:40** · The numbers tick up, with escalating sound effects.

**2:43** · Each card and joker steps forward in turn to add their points to the total.

**2:48** · If you’re lucky, the score multiplier will set on fire and start to burn hotter and hotter with each multiplication.

**2:56** · And so, if you already knew how many points you were going to get.

**2:59** · If a bit of UI had pre-calculated the score and told you that you were going to win the ante with this hand… well none of that would matter.

**3:08** · In fact, it would just get in the way.

**3:10** · This is not the only reason to forgo a score preview, mind.

**3:14** · It would also add cruft to the UI, especially when you need to account for cards that have random properties.

**3:20** · How do you elegantly show a range of possible scores?

**3:25** · It would slow the game down, incentivising players to check every possible hand to find the highest-scoring combination.

**3:32** · And it would change the entire feel, from a chill game about vibing with cards to a stern spreadsheet-style strategy game.

**3:41** · And so this is a totally legit game design decision, right?

**3:46** · Every game designer has to choose how much information to give to the player.

**3:50** · Like, should you show a boss’s health bar, or keep it hidden?

**3:55** · Should enemies come up with their strategies in secret, or should their intent be explained to the player?

**4:01** · As I’ve explored in various other videos, how much information a player has will change their behaviour, and change the way the game feels.

**4:10** · And so, Balatro hides its score preview to make players act more quickly and to create a feeling of suspense and drama whenever you play a hand.

**4:20** · LocalThunk had an experience in mind and picked mechanics that would nudge players towards that feeling.

**4:26** · A smart design choice.

**4:28** · However!

**4:30** · Balatro is not like those other games I just showed.

**4:33** · Because while the score preview is hidden from the player… the information is still technically available!

**4:41** · Because you can just… you can just calculate it yourself.

**4:44** · So, like…. a straight is worth 30 chips and 4 mult.

**4:49** · These cards are going to add an extra 10, 20, 30, 39, 47 chips, and then the two face cards will add another 30 each thanks to this joker.

**4:59** · So that’s 137 chips times 4… 548.

**5:05** · Not quite enough to beat the ante, but close.

**5:08** · And so, if information in a game can be hidden, or visible… Balatro’s score preview falls into a weird half category: hidden, but attainable if you really want it.

**5:21** · And that’s the fundamental design flaw at the heart of Balatro.

**5:25** · The designer wants the excitement of a slot machine, but also the numerical predicability of an Excel spreadsheet.

**5:33** · And so the only way to square that circle is to hope that players won’t bother to calculate the final score.

**5:40** · But, if we go back to that timeless Soren Johnson quote: “Given the opportunity, players will optimize the fun out of a game.”

**5:49** · It shouldn’t be surprising that a number of Balatro players are playing the game with the calculator app open on their phone, or with a spreadsheet set up on a second monitor, or with Steam’s in-game overlay showing a bespoke website that calculates Balatro hands.

**6:05** · And, actually this is exactly why Balatro has a deck view.

**6:10** · During playtesting, the game did not show you which cards were left in your deck.

**6:15** · But, playtesters could technically get that information by tracking which cards had already been played.

**6:22** · And after polling users, LocalThunk found that many were doing just that even though it really wasn’t much fun.

**6:30** · So he added a powerful deck peek feature.

**6:33** · But a score preview felt different.

**6:36** · It felt like it encroached upon the DNA of the game.

**6:39** · It stepped on the stuff that made Balatro… Balatro.

**6:43** · And so, while the designer is empathetic to people who wish to play more strategically.

**6:48** · And is bummed out that the optimum way to play involves busywork, and doing calculations outside of the game, he worries that adding a score preview would spoil the fun for those who wish to play more casually.

**7:02** · And that’s totally true!

**7:04** · Making a game better for one group can make it worse for another.

**7:08** · As a designer, you need to be certain who the game is for and then protect that player base from certain design decisions.

**7:16** · Even if that design decision is provided merely as an option.

**7:20** · Speaking on the Eggplant podcast, LocalThunk says: “If I add an option to have this score preview, people are just going to click on it, and they're not going to experience the game that I wanted to create.”

**7:32** · And besides, should a designer even have to endorse an option that directly goes against their intentions for the game?

**7:39** · LocalThunk has been clear that he made the game for himself and isn’t interested in changing the game for other people.

**7:46** · Even if there are a million of them.

**7:50** · But, here’s the rub.

**7:52** · It’s one thing to make a bold design choice and then stand by it, for the betterment of the game.

**7:58** · To shun the haters and stick by your design.

**8:01** · But that doesn’t really work if there’s a way for players to find a way around your choice, no matter how tedious that loophole might be.

**8:11** · And we know this!

**8:12** · Because this is not the first time this has happened to a game.

**8:16** · In fact, it’s not even the first time it’s happened to an extremely popular roguelike.

**8:21** · Enter The Binding of Isaac.

**8:23** · So this basement-dwelling dungeon crawler is packed with powerful items and upgrades… but the game doesn’t tell you what they do.

**8:32** · They just have a name, or a cryptic tagline, or maybe just three question marks.

**8:38** · The game’s designer, Edmund McMillen, did this on purpose to create a feeling of mystery, similar to the sensation he got when playing games as a kid like the original Legend of Zelda.

**8:49** · He described that game by saying: “You weren't sure what things did until you experimented with them, and you had to brainstorm with your friends and put all your findings together in order to progress.”

**9:00** · And so to mimic that mysterious sensation in Isaac, the items are deliberately left unexplained.

**9:06** · You’ll need to pick things up, try them, and puzzle out their properties.

**9:10** · Finding a new item should lead to curiosity, experimentation, and surprise.

**9:17** · And that worked… for about five seconds.

**9:20** · And then people figured out what all the items did and put that information up on wikis and other websites.

**9:26** · Want to know what this weird little thing will do?

**9:29** · Just find it on Platinum God and mouse over it for a full description.

**9:34** · So, like Balatro, McMillen chose to hide information to create a certain feeling.

**9:39** · But because that information is technically attainable this time with a Google search rather than a spreadsheet, a number of players ended up playing the game in a completely different way than the designer intended.

**9:50** · Arguably, a worse way.

**9:52** · And so after multiple DLC packs which added hundreds of new pick-ups, this has become, basically, the defacto way to play The Binding of Isaac.

**10:02** · McMillen says: “People would always say, 'You can't play Isaac without a browser open on your phone.'

**10:07** · I hated that that's how everyone played for so long...

**10:10** · and still play."

**10:12** · In fact, he’s described the lack of item descriptions as the biggest flaw with Binding of Isaac.

**10:18** · This design choice has basically haunted him in the years since Isaac’s release.

**10:22** · And in a post in 2023, McMillen has said that he’s considering finally adding item descriptions into the game as an optional feature.

**10:30** · Perhaps deciding that it’s better to support them officially than players having a worse time with your game because of the way you designed it.

**10:38** · And I wonder if something similar might happen with Balatro.

**10:42** · Now, I don’t think the two examples are exactly the same.

**10:45** · I agree that Balatro is more fun to play without score previews and I’ve never once thought to pre-calculate a score in the 30-odd hours I’ve played the game.

**10:55** · This issue only really affects a small portion of the game’s most hardcore, strategy-minded audience.

**11:02** · But over time, as the game’s long tail stretches out, I think this decision might come to haunt the developer, just like Isaac’s item descriptions.

**11:11** · But, if you’re watching LocalThunk, I think there are ways to provide this as an option to these players… without spoiling the game for everyone else.

**11:20** · For one, a score preview is only needed by players who are incredibly invested in the game, so the option could be granted as a late-game unlock, and not as something you can switch on from the word go.

**11:33** · Kinda like how Chrono Cross has a fast-forward button, but it only unlocks after you’ve beaten the game.

**11:40** · The option could also be clearly communicated to the player, like how Celeste prefaces its powerful assist mode with a message that explains who this option is for.

**11:50** · Or how Heat Signature politely asks you to not turn off Permadeath, please, it’s there for a reason.

**11:56** · Or Balatro could open itself up to mods, so users can hack their own score preview into the game, without the developer needing to officially support it.

**12:06** · This is actually what happened to Isaac.

**12:09** · The ‘External Item Descriptions’ mod is the most popular Isaac add-on in the game’s Steam workshop, with almost 2 million subscribers.

**12:17** · That’s not great for console players, though.

**12:19** · So it could instead be provided as a cheat code, so players have to actively seek this thing out, rather than stumble onto it as an innocuous option in the menu.

**12:29** · As I’ve discussed in my videos about accessibility, there are plenty of ways to open a game up to a wider audience, without necessarily spoiling it for the target group of players.

**12:40** · Whatever LocalThunk decides to do, this has proven to be a fascinating game design case study.

**12:46** · About how you can change how a game feels, by changing how much information you give to the player.

**12:52** · About how players won’t always act in the way you want them to, especially if you leave open a loophole.

**12:58** · And about how the best intentions in game design sometimes have to change, when you see how players actually interact with your game.

**13:06** · I’ll be curious to see what happens with Balatro.

**13:10** · For now, check out this video on heads-up displays, where I talk more about how information can change the way a player acts and feels.

**13:18** · Thanks for watching.