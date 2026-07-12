---
title: "Making the game I've always wanted to play with my friends"
source: "https://www.youtube.com/watch?v=C5SB7jHik4w"
author:
  - "[[Watt]]"
published: 2026-06-28
created: 2026-07-12
description: "Check out Isle Goblin on steam if you're interested! :) Steam: https://store.steampowered.com/app/1688640/Cleanup_on_Isle_Goblin/-OTHER SOCIALS: Patreon: https://www.patreon.com/WattDesigns?fan_la"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=C5SB7jHik4w)

Check out Isle Goblin on steam if you're interested! :)  
Steam: https://store.steampowered.com/app/1688640/Cleanup\_on\_Isle\_Goblin/  
  
\-OTHER SOCIALS:  
Patreon: https://www.patreon.com/WattDesigns?fan\_landing=true  
Discord: https://discord.gg/TM8n7ENJPa  
Instagram: https://www.instagram.com/watt.designs/  
Isle Goblin Website: https://islegoblin.com  
Company Website: https://www.kilowattgames.com  
  
Music Used :  
  
Powerup! by Jeremy Blake  
Connective Tissue by Alex Hamlin  
Funky Boxstep by Kevin Macleod  
Danse of Questionable Tuning by Kevin Macleod  
Goblin Tinker Soldier Spy by Kevin Macleod (Fitting name)  
Moonlight Beach by Kevin Macleod  
Non Piu Andrai by Ron Meixsell  
Enter the party by Kevin Macleod

## Transcript

### Introduction to updates

**0:00** · I used to be an electrical engineer making balls spin around, but for the last 6 months my side hustle has become my main hustle, and I want to show you some of the new updates to the game I've been working on. I added in a lot of hand-drawn cut scenes, a level up system, an invasion mechanic, dying Oh, no, not that kind of dying. There we go.

**0:14** · And much more. I've had a few people describe the scenery as a bit generic and uninspired in the game, and I think I agree and I want to make some big changes, but I'd love to get some input from you guys. Before we get into all that, I want to give you a quick overview of the game in case you're new here. My game is called Isle Goblin.

### Game overview

**0:28** · You're a little goblin on a little island trying to fight off the nasty invading humans. Humans bad. You can rescue your lost goblin friends, blow things up, build up your town, form relationships with the NPCs, farm stuff, go spear fishing, drink grog, fight bosses, explore dungeons, go mining, fuse items to your weapons, and yeah, a bunch of other stuff. Everything a goblin could want. Just think of it as a blend between Stardew Valley and Terraria with a goblin-y twinge. It also has online multiplayer, so you can play with your other goblin pals. At the end of the day, I'm really just trying to make something that I'd like to play with my own friends. Okay, on to the new stuff. Small things first. I made it so the game works with Steam's cloud saving.

### Steam integration and armor

**0:58** · You can now choose which islands and which characters get synchronized with the Steam cloud. So, if you play on another computer or your Steam Deck or something, it'll sync everything. This was actually surprisingly easy. I use Unity as my game engine, and I keep finding that the Steam API is really nice and easy to use. Good job, Steam.

**1:13** · Now, next up, I added dyes to the game.

**1:15** · If you find flowers around your island, you can turn them into dyes that you can drag into these dye slots and change the color of your armor. This required going to all the armor art in the game, making it black and white, and then making it so that the game itself can tweak the color. There was a slight problem, though. If the armor had two colors, then using this system would cause both of them to change, which sometimes I didn't want. So, I had to export two layers. A layer that will change color and a layer that won't. Then you can just stack the two on top of each other in game, and it looks like the things are colored separately. Easy peasy.

**1:40** · After dyes, I finally got around to finishing the volcano area. It was previously just an empty stretch of volcano land, but I added this big volcano in the middle. If you mine your way in there, it leads to a dungeon down below. Just be warned that you may find some unfriendly bosses lurking around down there like this giant clockwork spider thing. Before making any more progress, though, I got sucked away on a two-week trip to Italy. I live over in California and have actually never left the country before, and it was tons of fun. I especially liked all the big cathedrals. Italy was beautiful, and everyone there was super nice. I even started a travel sketchbook where I try to paint a little watercolor painting in every new city I visit. It's kind of crazy.

### Volcano and dungeon design

### Personal reflection and art

**2:11** · I've gotten into watercolor and gouache painting lately after spending about 10 years doing only digital and pixel art. It's incredible how many of the skills transfer over. These paintings won't win any awards, but it's so satisfying to have all the composition, color theory, and value skills I've learned over the years transfer over to another medium. I bring my watercolor kit with me almost everywhere I go now, and I try to knock out quick paintings whenever I'm at a beach or a nice cafe or something like that. Anyways, that was a crazy side tangent, but I wanted to share how working hard learning one form of art can make you better at other ones that you've never even touched before. Now, speaking of art, it's time for your thoughts on a change I made. Here's the problem.

### Improving biome visuals

**2:42** · I think biomes in my game are a bit uninspired. We've got some quirky gobbly characters, but other than that, sometimes the island doesn't feel all that gobbly, if that makes sense. At times it feels very generic fantasy with like a standard forest, desert, and tundra biome that you've seen in a hundred other games. I've had some playtesters describe it as uninspired, and I think that's really fair. One small tweak I made was to take all the forest art and swampify it a bit. I think having the starting area be swampy and less enchanted foresty is a nice step in the gobbly direction. I don't think it's quite enough, though.

**3:09** · I think if the plants and animals all give off a more grungy swampy vibe, that could help, too. Like some little frog enemies or bug enemies or things like that. It's definitely more of a flavor or a vibe issue than a mechanics issue, so I haven't worked on this too much yet, but I'm curious to hear your thoughts in the comments. I definitely think I have a lot to do here. Now, next up, I wrote a bunch of cutscenes for each NPC. As a reminder, the NPCs get increased friendship scores when you talk to them, give them gifts, complete their quests, decorate their houses how they want, or when you invite them to come hang out with you.

### NPC story and cutscenes

**3:36** · I made three to five cutscenes for each NPC and tried to make it so they go through some sort of arc over the course of the cutscenes. The problem is I'm not the best writer in the world.

**3:44** · But luckily, my publisher knows a narrative guy who has done lots of consulting and writing for other games, so we had him take a look at my storyboards and give some feedback. He sent me a nice little report, and with that I put in a bunch of placeholder art so that I can see how they feel. I think I like how they're turning out. I also added a few text effects to the game since I've seen a lot of other games do this and I really like it. And once that was done, I added a new invasion system that completely changed how enemies spawn in the game. But before I get into that, I want to quickly shill for interaction. If you like what you see, make sure to absolutely demolish all the buttons and leave a comment for the algorithm to give me a little boost.

### New invasion mechanic

**4:12** · You can also of course wish list the game on Steam by searching Isle Goblin if you're interested in getting an email when it comes out. Enough shilling, back to invasions. I originally just had edge spawning from the sides of the screen constantly. The spawning would reduce or stop if you were close to home or if you placed these little scare skulls that scare away the humans. But once you're out in the wild, there would always be just this constant trickle of humans and native enemies coming to get you. This isn't abnormal for the survival craft genre, but in a top-down game it felt a little strange. It also didn't make a ton of thematic sense for the game. It felt like they just kind of popped out of the ground constantly.

**4:42** · Now, the solution I came up with is to still have some edge spawning, but to drastically reduce it, especially for the humans.

**4:48** · Then I calculated a bunch of places for the humans to spawn. As you walk, you'll uncover them. So, it's like the world has a bunch of humans scattered around.

**4:54** · If you kill them, they'll go away, making it feel like you've cleared out the area if you come back. Then, once every month or so, a fresh wave of humans will invade the island and repopulate all the places they once were. This way, the player still has a constant slew of enemies so they can get all the resources they need, but it makes more sense in the game. This is definitely, of course, something that's never been done in any game ever before.

**5:11** · Now, to make the reinforcement invasions more interesting, I also made it so that you temporarily get flooded with enemies when the invasion is occurring, just to kind of dial up the scariness and surprise you a bit. Kind of similar to Terraria's goblin and pirate invasions, which is anti-goblin propaganda, by the way. That's it for the invasions. Let me know what you think. This hopefully fixes the problem with the players feeling like humans endlessly spawn for no reason without being too weird. Now, the next thing I added was a leveling system. As you use your pickaxe, axe, or weapons, you slowly gain experience with them. When you level up in one of those categories, you'll get a skill point.

### Leveling and combat system

**5:40** · You can spend the skill points on passive skills that give you stat boosts, or you can use them to unlock what I call techniques. These These just different ways to use the tools or weapons. For example, making it so you can right click to throw the spear and have it return to you. Or making it so you can right click with the sword to deflect a projectile. This is all fully integrated and I think it's a nice little addition. It's fun to be able to unlock new ways to use the weapons that you've been using for a while. It also gives you something nice to look forward to as you're trudging through the game.

**6:02** · After that, I went ahead and added the final area, dungeon, and boss to the game. But I don't want to spoil too much, so I'll just leave it at that.

**6:08** · Now, I want to update you guys on the playtesting situation. I get lots of questions about when people will be able to playtest the game. Right now, it is available for people who pay for one of the Patreon tiers since I'm trying to avoid a massive flood of feedback. I want to keep it small until I feel like the kinks are ironed out. In the coming months though, I'll start opening it up to more and more people. You can sign up if you go to the Steam page and I'll make an announcement when it starts.

### Playtesting and future plans

**6:27** · I've gotten tons of good feedback though from the current testers. Like for a recent example, someone felt it was weird that you have to click to pick something up and then click again to drop it. They wanted to click and drag.

**6:36** · It felt unintuitive to them even though it feels fine to me. So, I added the ability to click and hold to pick something up and then you release to drop things. That's one of those small things that I wouldn't have really thought of, but it's nice for other people who play differently. I've probably done hundreds of tiny things like this and there are definitely still hundreds more to go. I mean, I have this whole list here of ones that I'm going to knock out next week. But yeah, that's all the updates for the past couple months. In the next video, I'll hopefully have finished polishing all the holidays in the game, adding new weathers, and fleshing out the desert goblins a bit more. So, make sure to subscribe and ring the bell to stay in the loop. Now, as is tradition with these videos, it's time to show the wish list count for the game.

### Conclusion and metrics

**7:05** · It's a good metric of a game's potential success and as an aspiring developer, I remember always wondering what the count was for other games. So, throughout my devlogs, I've shown it to be transparent. We're currently sitting at about 60.8 thousand as I record this audio. We had a nice boost recently from the Summer Games Fest. My publisher helped do all the work to get us in there and it was a nice spurt of wish lists. I've been pretty blind to events like this, so it's nice to have the publisher here to help out with that sort of thing. But anyways, that's all I've got for today.

**7:30** · Thank you all for coming and I will see you all next time. Hello everyone. The time has come to shout out our eternally gracious patrons. I love to give a super special shout out to our Goblin Deity patrons for June of 2026, namely Alzern, Atomic Diamond, Aidan and Tzinga, Bingo Bango, Car Dog, Charfill, Clementine, Colton Reagan, Connor Papania, Class Chicken, Isaiah Honor, Joseph Scobby, Just Me, Krakenfall, Mason Underwood, Maxwell Oaks, Noni, Osha, Player Unnamed, Qwipy, Samari Radu Valentine,

### Patron shoutouts

**7:59** · Sierra Kovach, Slime Shisha, Smay, Sunkist Rose, Taylor Weston of the 41st, Tyler Roo, Violet UwU, Zack Fox, and Zachary Nice. You're all amazing and I appreciate all of the support.