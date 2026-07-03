---
title: "How I Coded the Perks in my Roguelike"
source: "https://www.youtube.com/watch?v=n1cd1FhVAWY"
author:
  - "[[Game Maker's Toolkit]]"
published: 2026-06-26
created: 2026-07-03
description: "🔴 Get my premium monthly newsletter - https://gamemakerstoolkit.com/digest/ 🔴Word Play is my vocabulary roguelike, with over 100 passive perks. Implementing them into the game meant learning a who"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=n1cd1FhVAWY)

🔴 Get my premium monthly newsletter - https://gamemakerstoolkit.com/digest/ 🔴  
  
Word Play is my vocabulary roguelike, with over 100 passive perks. Implementing them into the game meant learning a whole new type of coding architecture: inheritance.  
  
\=== Get the Game ===  
  
Steam - https://store.steampowered.com/app/3586660/Word\_Play/  
iOS - https://apps.apple.com/gb/app/word-play-mobile/id6743733091  
  
\=== Credits ===  
  
Music provided by Epidemic Sound - https://www.epidemicsound.com/referral/vtdu5y (Referral Link)

## Transcript

**0:00** · Hey, it's Mark.

**0:01** · Now, I don't usually do a lot of programming related content on this channel, despite the fact that programming is of course An essential part of any game maker's toolkit.

**0:11** · But that's just because I am far from an expert on this subject.

**0:16** · I mean, the code bases for my two video games, Mind Over Magnet and Word Play, are basically held together with sticks and the glue.

**0:26** · But there is one aspect of Word Play's programming that I'm actually really proud of, and that's the way I implemented the game's modifiers.

**0:36** · So - for context.

**0:38** · Word Play is a vocabulary roguelike where you spell words to score points.

**0:43** · And then you can unlock perks that let you bend the rules and score even bigger.

**0:48** · These perks come in three flavours.

**0:51** · Gifts typically add more letters to your bag.

**0:54** · Upgrades let you change and improve your tiles.

**0:58** · And modifiers are the passive perks that give big benefits under the right conditions.

**1:03** · Like... this one that multiplies your score by 1.5 if the first letter is a vowel.

**1:10** · So they're basically the relics from Slay the Spire or the Jokers from Balatro.

**1:16** · Now when I first started making the game I had no idea how I would implement these modifiers.

**1:24** · There wasn't an obvious and easy way to do it.

**1:27** · But, ultimately, I came up with a system that I'm really happy with.

**1:32** · One that fits the requirements for the system, can be easily scaled to fit all 120 modifiers in the game, and makes it effortless to test, change, and debug the lot of them.

**1:46** · So I'm hoping this might prove interesting or helpful or inspirational to, let's say, a beginner or intermediate level programmer.

**1:57** · to see what it takes to implement a somewhat complex system into a real life video game that's currently available on Steam.

**2:08** · If that sounds good, then let's jump in.

**2:12** · A quick note that I'll be talking about it in the context of making the game in Unity, because that's what I used.

**2:19** · But the basic idea should apply to pretty much any engine.

**2:23** · So the modifiers in Word Play touch so many aspects of the game, with modifiers that fiddle with refreshes and bonus rounds and special tiles and the basic rules of spelling.

**2:38** · And I'll come to that - but for now, let's make things simple by looking at the ones that impact the way your word is scored.

**2:46** · Like - that modifier I showed earlier: "If the first letter is a Vowel, multiply the Final Score by 1.5".

**2:55** · How would we implement that?

**2:57** · Well, first I'll write some code to tally up the word's initial score by adding up the points on all of the submitted tiles.

**3:06** · And then... well, in Word Play all of the modifiers are separate GameObjects.

**3:12** · And I have a list of which ones the player currently owns.

**3:15** · So we could check if the players owns the modifier "VowelFirst".

**3:20** · And, also, if the first letter is a vowel.

**3:23** · If both are true... multiply the word's score by 1.5.

**3:29** · And that would work.

**3:31** · That would work fine.

**3:32** · In fact, that's exactly how I did it for the scrappy game jam prototype of Word Play.

**3:38** · And it did the job, But when it came time to turn this into a real video game, I knew I needed a better system.

**3:46** · Because... well, a couple reasons.

**3:50** · The big one: every time we add a modifier, this script gets longer and longer.

**3:57** · A massive spaghetti mess of if statements.

**4:00** · And that makes it harder to find things, change things, and fix bugs and problems.

**4:07** · Like, what if I actually want it to multiply the score if the LAST letter is a vowel? Now I've got to hunt through all this code to find it.

**4:16** · And what if I want to change something about how modifiers work in general - I might end up having to change the same code in 100 different if statements. Yikes.

**4:27** · And another problem is that the order these modifiers trigger is defined by the order they show up in the code, not the order they are in your modifier list.

**4:38** · Now this didn't actually end up being a big problem for Word Play - you almost never need to worry about the order of your modifiers.

**4:44** · But it's a huge deal in Balatro, and so - with that game serving as my initial inspiration - it was a requirement when I was first coding up this system.

**4:55** · Okay. So my plan was to give each modifier its own super short script, with a function for calculating word score.

**5:03** · I could pass in the word and its score. Then check if the condition is met.

**5:08** · If so, multiply the word score by the desired amount and pass it back to the main score script.

**5:15** · Now the main score script just needs a list of the player's modifiers, and loop through the associated scripts one by one - testing that onWordScore function.

**5:25** · The only problem is... well, you can't just have an arbitrary list of scripts, and try and run a function on all of them.

**5:33** · I guess think of it like this.

**5:36** · I ask you to bring me a list of ten items, and then I say, "eat them".

**5:43** · You'd be like, "wait, what? One of these is a motorbike".

**5:46** · And I'd be like, "eat them".

**5:49** · It wouldn't work, right? The list needs to be more specific.

**5:52** · They all need to be edible for starters.

**5:55** · They all need to be of the same type or of the same Class. Ah!

**6:01** · You see, every script you write in Unity is based on the same class - MonoBehavior.

**6:07** · This lets you inherit and use all sorts of handy functions like OnCollisionExit, OnMouseOver, and OnDestroy.

**6:15** · But you can actually write your OWN class - and then make scripts that inherit all of THAT class's functions.

**6:22** · Ehhh... it's probably easier if I just show you.

**6:25** · So it's pretty easy to do.

**6:27** · We can just make a new class called say ModifierClass and all we need to do is set it to be an abstract class and now we can build other classes on top of this.

**6:42** · And then in this base class, we can make, say, a public float called onWordScored, which brings in the word and the current word score.

**6:55** · And by default, we'll just return minus one.

**6:58** · Because in Word Play, you can never have minus numbers in your score.

**7:03** · So I can use minus one as a shorthand to say "Nothing happened, move on, do nothing".

**7:09** · We just need to turn it into a virtual float so it can be overridden.

**7:14** · Then we can make a new class called say mVowelFirst and set it to inherit from the ModifierClass and now we can use the onWordScored, and it sets it into a public override.

**7:31** · So by default, it's just returning what is in the base version of this class, which would be minus one.

**7:37** · But for this one we want to say if the word substring zero is equal to A or E or I or O or U, aka a vowel, then return the word score multiplied by 1.5.

**7:56** · Otherwise, return minus one.

**7:58** · And so it basically takes in the word, checks if the first letter is a vowel.

**8:04** · If so, multiply the word score by 1.5 and pass it back to the score check script.

**8:10** · Otherwise, return minus 1, which says there was no vowel. Nothing to see here. Move on.

**8:16** · And now I actually CAN make a list of scripts - specifically, a list of ModifierClass scripts, because now Unity knows that every script will definitely have an OnWordScored function.

**8:29** · Either the base function that just returns -1, or an override that may return a higher number.

**8:36** · And so back to our wordScore script, we now can loop through that list of owned modifiers, run the OnWordScored function on all of them...

**8:46** · and if they don't return -1, we can update the word score.

**8:50** · And maybe, like, I dunno, make the modifier do a little ping animation and sound effect.

**8:58** · And now I can just make a whole bunch of these tiny scripts, with OnWordScored overrides...

**9:06** · And the score calculator will loop through them, in the correct order, until the calculation is finished.

**9:13** · And ultimately that's that! We've gone from the script having 100 if statements in a big unwieldy chunk, to having the script just do one elegant loop.

**9:23** · And all of the score functionality lives in separate scripts - which makes it easy to find them, change them, and, of course, add new ones.

**9:32** · This system also let me make the modifiers work in other areas of the game.

**9:37** · For instance, there are modifiers that do things when you use an upgrade.

**9:42** · So I add a bool to the base class, called OnUpgradeUsed, that returns false by default.

**9:48** · Then I can make a new script with an override that, say, increases its bonus points when you use an upgrade.

**9:55** · And then finally, in the "use upgrade" code, I just loop through the owned modifiers - and trigger the function OnUpgradeUsed on each of them.

**10:05** · And the nice thing is - this is completely compatible with the other modifiers.

**10:10** · Like, the "is the first letter a vowel" modifier doesn't have an override for OnUpgradeUsed, so it will simply use the code on the base class - which is to do nothing and return false.

**10:22** · And so with that, I can have these triggers all throughout Word Play.

**10:26** · Like, when you sell a modifier. Score each letter. When you lose a life. Get a game over. Open the perk screen. Re-roll the perks. Reach a new round. Refresh the tiles. Add a tile to the letter bag. And so on and so on and so on.

**10:44** · Each one is a tiny script, simply containing a few lines of code needed for the modifier's functionality - plus details like the modifier's icon, description, rarity, and special numbers... so it's easy to change them from the Unity inspector.

**10:59** · I also used this same system for the upgrades, which are the yellow perks that change a tile when you drag it on.

**11:06** · Each upgrade inherits from a base class with an OnTileDropped function - and then each upgrade's script has a unique override for that function, depending on whether it destroys the tile, turns it into an emerald tile, increases the tiles's score, and so on.

**11:24** · So, this is the power of inheritance, a really useful way of working with classes.

**11:31** · And you can imagine all kinds of ways to use this in your game.

**11:35** · Perhaps a base class for enemies that all share the same basic movement, health system, and death functions - but with unique code for each of their attack patterns.

**11:46** · Or a base class for guns with the same code for aiming and reloading, but unique functions for their special abilities.

**11:54** · The possibilities are endless.

**11:56** · But this system ended up providing the perfect architecture for my game - letting me add, remove, debug, balance, and change the more than 150 perks in Word Play.

**12:08** · Thank you so much for watching.

**12:09** · I hope you found it interesting.

**12:11** · If you like the look of the game, Word Play is currently available on Steam and it's coming very soon to iPhone and iPad.

**12:20** · So look out for an announcement on that.

**12:23** · Thanks very much and see you around.

**12:27** · Bye!