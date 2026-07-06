---
title: "Can I fix Zelda's UI using Unity?"
source: "https://www.youtube.com/watch?v=e4vsgC41bYg"
author:
  - "[[Game Maker's Toolkit]]"
published: 2025-02-07
created: 2026-07-06
description: "🔴 Get my premium monthly newsletter - https://gamemakerstoolkit.com/digest/ 🔴The Legend of Zelda: Echoes of Wisdom has some baffling user interface design. So I decided to make some alternative ve"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=e4vsgC41bYg)

🔴 Get my premium monthly newsletter - https://gamemakerstoolkit.com/digest/ 🔴  
  
The Legend of Zelda: Echoes of Wisdom has some baffling user interface design. So I decided to make some alternative versions in Unity to see if we could improve things.  
  
\=== Try it out ===  
  
Try the demo - https://gmtk.itch.io/zelda-ui  
  
💰Get the Unity project file - https://www.patreon.com/posts/121699533/  
  
\=== Sources and Resources ===  
  
\- Sources  
  
\[1\] Zelda's makers reflect on the princess's first big adventure | BBC  
https://www.bbc.co.uk/news/articles/cr7nm2g9n9ro  
  
\[2\] Ask the Developer Vol. 13, The Legend of Zelda: Echoes of Wisdom | Nintendo  
https://www.nintendo.com/us/whatsnew/ask-the-developer-vol-13-the-legend-of-zelda-echoes-of-wisdom-part-1/  
  
\=== Chapters ===  
  
00:00 - Intro  
02:42 - Note  
03:07 - Recreation  
06:40 - Acceleration  
08:04 - Cross Media Bar  
10:37 - Grid with tabs  
14:04 - Radial menu  
18:06 - Spiral menu  
20:55 - Conclusion  
22:21 - Bonus Tidbit  
  
\=== Games Shown ===  
  
The Legend of Zelda: Echoes of Wisdom | 2024  
The Legend of Zelda: Tears of the Kingdom | 2023  
Mind Over Magnet | 2024  
Sonic Superstars | 2023  
Minecraft | 2011  
Dragon Age: The Veilguard | 2024  
Astro Bot | 2024  
Super Mario 64 | 1996  
Pokémon Brilliant Diamond | 2021  
Psychonauts 2 | 2021  
Palworld | 2024  
PowerWash Simulator | 2022  
Animal Crossing: New Horizons | 2020  
Baldur’s Gate 3 | 2023  
Super Mario Maker 2 | 2019  
Beyond Good & Evil: 20th Anniversary Edition | 2024  
Final Fantasy X | 2001  
Super Mario Odyssey | 2017  
The Legend of Zelda: Ocarina of Time | 1998  
  
\=== Credits ===  
  
Music provided by Epidemic Sound - https://www.epidemicsound.com/referral/vtdu5y (Referral Link)  
  
Music from OSTs for The Legend of Zelda: Echoes of Wisdom, Tri Force Heroes, Spirit Tracks, Tears of the Kingdom, Skyward Sword, Phantom Hourglass, and Link's Awakening.  
  
Avengers: Age of Ultron © Disney, Marvel Studios  
  
\=== Subtitles ===  
  
Contribute translated subtitles - https://gamemakerstoolkit.com/translation/

## Transcript

### Intro

**0:00** · Hey, it's Mark.

**0:01** · So the latest Zelda game is wonderfully inventive, loads of fun, and - I say this without a hint of hyperbole - a crime against user interface design.

**0:14** · Here's the deal.

**0:15** · Princess Zelda - she's the protagonist in this one - Zelda can essentially save a copy of any object or item she comes across.

**0:23** · Including bugs, bombfish, boarblins and bio deku babas.

**0:30** · And then she can spawn that thing into the world, perhaps using it to solve a puzzle, or traverse across a gap, or create a little team of monsters to fight on her behalf.

**0:41** · It's really creative and lots of fun.

**0:43** · But the problem comes... right here.

**0:46** · This menu.

**0:47** · So to pick an echo - that's what these things are called, echoes - you hold the left bumper to bring up a list of all your collected objects and monsters.

**0:56** · And you pick an echo from that list.

**0:59** · And at the beginning of the game it's absolutely fine.

**1:02** · Not a problem! But! As you go along and find more and more and more echoes, they are simply added to the end of this list.

**1:13** · This single, gigantic horizontal line.

**1:17** · \*Clicking UI sound\* Yeah.

**1:21** · So by the end of the game - when you have more than 120 echoes - if you want to spawn in something new you'll have to go through a ridiculously long line of icons to find the one you want.

**1:33** · It's mad! It was already pretty painful in Tears of the Kingdom, but it's even worse in Echoes of Wisdom.

**1:40** · And okay, you've got a couple things to help you.

**1:43** · For one, the list wraps around on itself so if you're at the far right end you can instantly zip to the far left side.

**1:50** · And you've got a few options to sort the list by type, last used, most used, last learned, and cost.

**1:58** · But believe me - these things only help a little.

**2:01** · And, look, I'm not the only person to complain.

**2:04** · Almost every review called out the game's crummy UI.

**2:08** · And a few other people have already suggested ways to fix or redesign this menu - including a video by Gamexplain that I didn't see until I was almost done making this video.

**2:19** · Oops, sorry!

**2:20** · But anyway - I got so annoyed with this menu that I thought, you know, fine, I'll do it myself.

**2:27** · Could I make my own echoes menu that is more efficient and enjoyable to use? Well, let's find out.

**2:35** · Together.

**2:36** · I'm Mark Brown, and this is Game Maker's Toolkit.

### Note

**2:42** · A quick note before we begin - the title of this video is, let's just say, YouTube friendly.

**2:48** · Nintendo does not need me - a person with very limited game dev experience - to fix their game.

**2:55** · So please take this video as more of a fun design challenge, than an epic takedown of lazy devs.

**3:02** · It's not that type of video.

**3:05** · Okay? Cool.

### Recreation

**3:08** · Right, so, the first thing I needed to do was to replicate the current user interface in Unity so that I've got something to work with.

**3:16** · For that, I would need images of all the echoes in the game.

**3:20** · And the Zelda Wiki has the lot, and best of all, they're all transparent PNG files where the file name is the echo's in-game name, which will come in handy later.

**3:31** · So I could just save the page in Firefox and get a handy folder with all of the images, and then drag those into Unity.

**3:39** · Next I made one of the little echo menu items, with some basic UI components.

**3:45** · And then I could duplicate that and change the image.

**3:48** · And now, if I give these two objects the same parent and give that object the "horizontal layout group" component, Unity will neatly organise them onto a single line, with whatever padding I want.

**4:02** · Neat!

**4:02** · I also made the cursor by using an image to mask out the four corners of this rectangle and it took me...

**4:10** · way longer than it should have.

**4:12** · Okay, so it's time to code the movement.

**4:15** · The idea here is to simply shunt the entire horizontal row left and right when the player presses the d-pad, which will push an echo into the cursor at the centre of the screen.

**4:26** · And so if we move the row by the size of the echo plus the space in between, it will line up perfectly every time.

**4:35** · Of course, I'll need to account for the left and right limits of the list.

**4:40** · So I can just keep track of which echo we're pointing at and if it's the first or last in the list, and you try to move beyond that, it will snap to the other end.

**4:51** · Now, I don't like how it just jumps from one item to another in the space of a single frame.

**4:56** · That's ugly.

**4:58** · So I used my all-time favourite Unity plug-in, Dotween, to add a little animation.

**5:04** · Now it slides from one echo to the next, like butter in a pan.

**5:08** · And that's basically the movement code finished...

**5:11** · but let's tidy this thing up.

**5:14** · I captured some footage of the game so I could pinch some of the heads up display, like the heart counter, the XP bar, the controller icons, and the bar that goes underneath the echo name.

**5:25** · That allowed me to make a fake UI to slap on my scene, to make it look like this is actually part of the original game.

**5:32** · I could also put in the name of the echo.

**5:35** · So when there's a new selection, I just take the name of the currently selected game object and put it on that label.

**5:42** · That works! I just need to put in the rest of the echoes.

**5:46** · But you know what? I don't want to have to manually create every echo, add all the images, and type out their names.

**5:53** · So I turned that first echo into a prefab and then wrote a script that would take all of the echo images and, for each one, create a copy of the prefab and automatically give it the correct image and name - using the image's file name.

**6:09** · Now I can just click one button and, viola, I've got 100 or so echo game objects in my scene!

**6:16** · There were just a few other bits and bobs to fix.

**6:18** · Like finding a better font for the label, and recording some sound effects from the game and putting those into the code.

**6:25** · But with that, we're done.

**6:27** · We've got the Echoes of Wisdom UI working in Unity, and it's almost identical to the Switch version.

**6:33** · But that's only step one - the next step is to ask, what can we do to improve it?

### Acceleration

**6:40** · Okay, so first things first, let's not do anything too radical.

**6:44** · Let's just try a quick quality of life hack - and that's to add some acceleration.

**6:51** · You see, right now, when you scroll through the list it shifts along at the same speed no matter how long you've been holding down that direction.

**6:59** · So how about we speed things up over time?

**7:02** · This was actually super easy to implement, thanks to Dotween.

**7:06** · You see, when I shift the grid over I set how long it takes to move from one position to another.

**7:12** · Which I set at about 0.1 seconds for the recreation.

**7:16** · So what I can do is have an acceleration number that builds up the longer you hold down a direction.

**7:22** · And then if I take the animation's length and divide it by this acceleration number, you suddenly have a bar that moves faster the longer you hold the analogue stick down.

**7:33** · Whee!

**7:34** · In fact, it's a little too fast and so it's hard to know where you are in the list.

**7:39** · Especially when it automatically wraps around from one end to the other.

**7:43** · So I added an indicator at the top that shows where you are in relation to the full list of echoes.

**7:51** · And you know what? That's not too bad.

**7:54** · And it only took a tiny bit of extra code.

**7:57** · So let's call that option one... acceleration.

**8:01** · But okay, what else could we do?

### Cross Media Bar

**8:04** · Well, the first thing I thought of was the PlayStation 3.

**8:08** · You see, the console used something that Sony called the Cross Media Bar, or XMB, and it was actually pretty elegant.

**8:16** · Basically there's a horizontal bar for the top level categories like music, movies, games, and settings.

**8:23** · And then each one of those items has a vertical bar for the content within, like your individual songs, films, and so on.

**8:32** · Perhaps we could do something similar for Echoes of Wisdom?

**8:36** · Because many of the echoes can be grouped together.

**8:40** · Like the four animal statues from the Gerudo Sanctum dungeon.

**8:44** · Or the various monsters with level 2 or level 3 versions.

**8:49** · Or the monsters with elemental variants like the fire, ice, and electric keese.

**8:55** · So we could keep the horizontal bar, but have it splinter into vertical sections for certain echoes.

**9:02** · Setting this up was relatively easy because alongside the horizontal layout group, there's also the vertical layout group.

**9:10** · And after a little jiggery pokery, I was able to nest a vertical group inside of my original horizontal group.

**9:19** · Just like before, I'm going to shift the entire vertical object up and down when the player inputs a vertical direction.

**9:27** · And for this to work, I created holder objects for the vertical columns, and gave them a distinct tag called "vertical".

**9:35** · Now, when the player hits up or down, it will only try to shift the object if it has that "vertical" tag.

**9:42** · And there we go! That works surprisingly well.

**9:46** · I then had to spend ages putting all of the echoes into sensible categories, but in the end I managed to compress the horizontal line down from over 100 echoes to just 55.

**9:59** · That means you can scroll through the list in about half the time!

**10:03** · It's also nice because the list remembers the vertical positions of the columns, so your favourite, say, Lizalfos, will stay in the central spot and can be gotten to very quickly.

**10:15** · Now, it's a little overwhelming to see so many icons on screen at once so I added a dark shadow over the top to obscure the ones that are above and below the main horizontal line.

**10:27** · But with that done, we're finished.

**10:30** · And that's option 2 - the cross media bar variation!

### Grid with tabs

**10:37** · Okay, so before we move on, I should come clean.

**10:41** · Zelda does actually have a second way to pick echoes.

**10:45** · You can open the notebook and pick them from this grid.

**10:50** · Now this isn't so convenient - you have to pause the game, and the game might be on a different tab like equipment or potions so you've got to switch to the notebook.

**10:59** · But it is at least faster to navigate by virtue of being a grid with five columns, rather than one single row.

**11:07** · But, you know what, I still want to improve it.

**11:09** · Because, for one thing, this is a vertically oriented list on a game you play exclusively in landscape mode.

**11:17** · So that's wasting some screen space.

**11:20** · Let's start by turning it on its side.

**11:23** · Luckily, this was very easy to implement - because alongside the horizontal and vertical layout groups, Unity also has a handy grid layout group which works on the same concept.

**11:35** · Any child objects will be neatly aligned to a grid, and you can even decide how many rows and columns there should be.

**11:42** · But we can do more than this, I reckon.

**11:44** · So I took some inspiration from another game with a big inventory of items to pick from...

**11:50** · Minecraft.

**11:51** · I mean, this game has a lot of stuff.

**11:54** · As of the latest updates there are more than 1000 objects and when you're in creative mode...

**12:00** · you've got access to all of them.

**12:02** · So Minecraft offers lots of ways to sort through this stuff including nested lists and a search bar.

**12:09** · But the thing I'm interested in is the tabs...

**12:13** · it's a nice idea to sort the stuff into categories so there's only a limited pool of items to pick through at any one time.

**12:20** · So, back in Unity, I put the echoes into five different lists.

**12:26** · One for objects, one for birds and ghosts, one for water and ice monsters, one for creatures, and one for soldiers and the like.

**12:36** · Don't worry too much about the specifics - it just meant that a list can have 36 echoes on screen at one time, without the need for scrolling at all.

**12:45** · Then I wrote a script to keep track of which tab you are on, and to cycle through them when you press the right bumper.

**12:52** · Now, ideally you'd have two buttons, so you can choose whether to go to the tab to the left or right of your current option.

**12:59** · But remember that in Zelda you have to hold the left bumper down to keep this echo list open.

**13:05** · And so I thought it would be more comfortable to have just one button, to go the tab on the right.

**13:11** · And because there are only five pages, it's pretty easy to get to the tab you want, even if it's literally one tab to the left of where you currently are.

**13:20** · So that works.

**13:22** · But right now it doesn't look too nice to simply hide the current tab and then instantly show the next one.

**13:29** · So I used Dotween again in order to fade out, and slightly move the current tab before fading in the new one.

**13:38** · It's super subtle, but it's enough to suggest flipping through pages and I think it looks pretty polished.

**13:44** · Finally, we need a little bit of UI to show which page we're on, which I basically stole the game's sorting filter thingy.

**13:52** · But with that done, we've got option 3.

**13:56** · The grid with tabs, or pages.

**13:58** · I think it works nicely.

**14:00** · But there's one small problem with it.

### Radial menu

**14:04** · So, the problem is... well, unless we shift our thumb down to the d-pad, then we're going to be navigating this thing with an analogue stick.

**14:13** · We're taking a grid - something that is very digital, you know, all right angles and straight lines.

**14:18** · And we're controlling it with something designed for, well, moving a chubby plumber in 3D space.

**14:25** · If you've ever tried to type on a virtual keyboard using an analogue stick, you'll know it's not a great fit.

**14:30** · So that's why many games on console opt to use a radial menu, with the idea that the menu is essentially on a ring around the outside of the analogue stick, and we can select different options by merely pointing at them.

**14:44** · It's very elegant, very functional.

**14:47** · And so... could we implement something like for Echoes of Wisdom? Let's give it a go.

**14:53** · Okay, so Unity sadly does not have a radial layout group.

**14:57** · So we'll have to make that one ourself with a bit of tricky maths that puts each echo on the correct spot around a circle.

**15:04** · And then we can translate the angle of the analogue stick to the angle of the circle to select and highlight the echo that is at that position.

**15:14** · Which all works remarkably well.

**15:17** · We'll just need to fiddle with the UI to put the name of the echo in the middle of the radial menu.

**15:22** · And change the cursor script to follow the currently selected object, rather than stay put in the centre of the screen.

**15:29** · But, with just a small amount of code that works really nicely.

**15:34** · It's just that there is, as I'm sure you've noticed, a slight problem.

**15:39** · And that is the fact that we've only got 16 echoes on screen right now.

**15:44** · And... it doesn't work quite so nicely with 116 echoes.

**15:49** · Yeah. Oops.

**15:51** · But, okay, you could potentially have this work as a sort of "favourites" bar.

**15:57** · Kind of like Animal Crossing where you have a whole grid for your current inventory...

**16:01** · but you can also set some tools as favourites and they'll show up in one of the 8 spots on the easy-access tool ring.

**16:08** · And I think that would totally work.

**16:11** · Let's call that option 4 - the favourites ring.

**16:14** · Except... it totally goes against the intended experience of the game.

**16:21** · You see, while I was working on this video, I tried to find out why Nintendo would implement a system that is, in my opinion, obviously bad.

**16:30** · And, you know what? They actually do have a pretty interesting reason.

**16:34** · In an interview with the BBC, co-director Satoshi Terada says "One of the essences of this game is being able to figure out different ways of using each of these echoes.

**16:46** · And so in that sense we wanted players to fall upon and see the echoes that they may not have noticed or have been using while they're sorting through all the echoes that they have."

**16:57** · In other words, while you're slowly bumbling through this crappy UI, you might spot an interesting echo you hadn't thought of using for your current situation.

**17:09** · The UI is designed to make you less efficient, but more creative.

**17:15** · Now... that's kinda galaxy brain.

**17:18** · Though I'm not sure how well it worked - for me, the prospect of navigating that list was so off-putting that I actually did just stick to the same few creatures.

**17:28** · But fair enough.

**17:30** · If Nintendo doesn't want you to just use a few favourite echoes...

**17:34** · then having a literal "favourites" ring would fly in the face of that ideal.

**17:40** · So let's keep thinking.

**17:42** · But you know what? I think we can still have a radial menu, without reducing the number of echoes on it.

**17:49** · One solution could be Super Mario Maker 2's menu system, which operates on a series of different radial menus that you can jump between using the left and right bumpers.

**18:00** · And that could totally work.

**18:02** · But forget that.

**18:04** · I want something even better than that.

### Spiral menu

**18:06** · Something way more ambitious.

**18:09** · And way more goofy.

**18:10** · I want... the Beyond Good and Evil spiral staircase keyboard system!

**18:16** · Yes, this is a hilariously over-engineered solution but it is genuinely cool and legitimately quite fast to use with an analogue stick.

**18:27** · It basically has all the benefits of the radial menu, but can hold many more items than can be comfortably shown on screen at once.

**18:36** · So... how can we make this thing for ourselves?

**18:40** · Well, after a few false starts.

**18:43** · Okay, many false starts.

**18:45** · Plus some help from the GMTK Discord.

**18:48** · And at little maths help from my friend Cha...

**18:51** · Chad.

**18:52** · Chad G. Petey. Yeah, sure.

**18:55** · Yes, after all of that and plenty of trial and error, here's what I came up with.

**19:00** · So, we basically take that same code that puts the items onto a circle, but now we let the circle loop around on top of itself a bunch of times.

**19:09** · Like a coiled snake.

**19:11** · You know what? We can see this more clearly if we also increment each echo's Z position...

**19:16** · See? It creates a crazy spiral staircase.

**19:20** · But this is only a 2D game, so we need to crush it all down to only happen on a single flat plane.

**19:26** · Then, just like before, we use the analogue stick's angle to pick out an option on the circle.

**19:31** · But now... with so many echoes stacked on top of each other...

**19:35** · well, Unity has no idea which one to pick, resulting in this nonsense.

**19:41** · So, to fix this, we should only enable the echo we are currently selecting, and then a few echoes to the left and right of that one.

**19:50** · This way, only a few echoes exist at a time, and so Unity has no problem knowing which one to pick from.

**19:56** · We can even see this happening in the hierarchy, as only a small chunk of objects are enabled as we move up and down the stack.

**20:04** · To sell the spiral effect, we can also apply some transformation to the echoes near our current selection.

**20:10** · We can shift their position, and change their size, and transparency.

**20:15** · This creates that stepping effect, and makes it look like the echoes are rising out of the screen.

**20:21** · And with all that done we get this...

**20:25** · which is, wow, it's kinda fun! What I like is that it basically has the acceleration concept from option one, but we're controlling that ourselves, simply by how fast we spin the stick around.

**20:38** · Wheee! It's a little hard to know where you are in the spiral, but you could always add the scroll bar from the acceleration demo if you wanted.

**20:47** · But either way, this is option 5, the spiral menu.

### Conclusion

**20:55** · And so those are the five options I wanted to explore.

**20:59** · We've got the menu as it exists in Echoes of Wisdom.

**21:02** · And a version where the list gets faster the longer you hold down the button.

**21:07** · We've got a menu with both horizontal and vertical bars, inspired by the PlayStation 3's cross media bar.

**21:14** · We've got a bunch of grids, split into separate tabs, akin to Minecraft.

**21:18** · We've got a radial menu to hold our favourite Echoes, like in Animal Crossing.

**21:23** · And we've got a crazy spiral staircase that spins in and out of the screen.

**21:29** · Each one has its pros and cons.

**21:31** · But which one should Nintendo have used, if any? Well...

**21:36** · you tell me! I've put them all together into a little interactive showcase on itch.io, which you can play, for free, in your browser.

**21:44** · You'll need a controller for the radial and spiral menus, but the others will work with a keyboard.

**21:50** · There's a link in the description - so let me know which one you like best in the comments down below.

**21:56** · And suggest any other ideas you might have for how to improve the menu.

**22:01** · Oh, and if you're a GMTK Patron, you can get the whole Unity project file with all the code I wrote.

**22:08** · A special shoutout to the 49 new Patrons who have already shown their support in 2025 - thank you!

**22:16** · And thanks to you for watching.

**22:18** · I'll see you in the next one.

### Bonus Tidbit

**22:21** · Hey! Here's one more tidbit while we thank the amazing Patreon backers.

**22:26** · Thank you Patons!

**22:27** · So, how come Princess Zelda finally got to be the protagonist of the franchise that, well, has had her name on the box for 30 years? Well, like most things at Nintendo this was a case of form following function.

**22:44** · You see, for a long time during development it was assumed that Link would be the hero of the game, just like every other Zelda entry.

**22:52** · But as this was shaping up to be a game about spawning in monsters to fight on your behalf...

**22:58** · well, that wouldn't really work if you had a sword and shield.

**23:02** · Why not just kill the monsters yourself?

**23:04** · So Nintendo had to either come up with a reason why Link could no longer hold a sword, or just pick a different protagonist, someone who isn't known for wielding a blade.

**23:15** · Hence: Princess Zelda.

**23:16** · It was still tricky to figure out why Zelda would go on the adventure herself rather than just send some Hylian guards, but that was easier than justifying a sword-less Link.

**23:27** · And then... how come 2024 also gave us a game where you play as Princess Peach instead of Mario?

**23:34** · Well that's just because the games industry has been infected by the woke mind virus...

**23:39** · sorry, I couldn't read that with a straight face.