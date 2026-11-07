---
title: "You Finished a Godot Tutorial. Now What?"
source: "https://www.youtube.com/watch?v=NQLDryyC_L0"
author:
  - "[[Coding Quests]]"
published: 2026-10-19
created: 2026-11-07
description: "➡️Find your Godot learning path (3 questions, no account): https://codingquests.io/start-here?utm_source=youtube&utm_medium=description&utm_campaign=scqgame01&utm_content=topYou might have made a pl"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=NQLDryyC_L0)

➡️Find your Godot learning path (3 questions, no account): https://codingquests.io/start-here?utm\_source=youtube&utm\_medium=description&utm\_campaign=scqgame01&utm\_content=top  
  
You might have made a platformer by following a tutorial. But if holding jump made your character bounce every time it landed, would you know what to change? In this video we use that one jump to show how learning on CodingQuests works: run a small example, write the jump yourself, investigate a real mistake, then explain the bug from the beginning and use the same idea in a different game.  
  
In this video:  
\- Why following every step of a tutorial can still leave you stuck when you want to change something.  
\- The Jump Arc: one upward push, and gravity slowing the rise, as numbers you can read.  
\- Off the Ground: writing the grounded jump, a prepared mistake, and the site's feedback on it.  
\- The Bouncing Boots: why holding jump bounces forever, and the fix.  
\- Count the Climb, the next quests (jump grace, double jump), and the roguelike path.  
  
The link at the top asks three questions and points you to a path. Pick the 2D platformer to start the free Move and Jump quest, no account needed. If you've never written code before, it points you to Code From Zero, which starts from your very first print. Guild Hall membership (US$25 a month or US$200 a year) opens the full campaigns and project files; eligible new members get 7 days free, card required.  
  
Chapters  
0:00 Could you change a tutorial's jump?  
0:32 What copying leaves out  
1:06 Start with something small  
1:34 Writing the jump ourselves  
2:20 When the attempt doesn't work  
2:41 Testing it in Godot  
2:51 The bouncing bug, explained  
3:30 When does the jump stop rising?  
3:49 What to build after the lesson  
4:27 The same idea in a roguelike  
5:05 The bug from the beginning  
5:26 Try it yourself  
  
Footage: Brackeys, "How to make a Video Game - Godot Beginner Tutorial" (youtube.com/watch?v=LOhfqjmasi0), and his "First Game" project with a bug added for this video. Celeste gameplay (Maddy Makes Games). Bike clip from Pexels.  
  
#gamedev #godot #indiedev #platformer

## Transcript

### Could you change a tutorial's jump?

**0:00** · You might have already made a platformer by following a tutorial, but let's say if holding jump made your character bounce every time it landed, would you know what to change?

**0:09** · Or what if you wanted to add a double jump?

**0:11** · Or what if you wanted to make the jump feel more responsive like in Celeste?

**0:15** · If you can follow a tutorial but you need another one every time you want to change something small, you might be stuck in what's called tutorial hell.

**0:23** · So let me show you how learning on CodingQuests works in order to solve this problem. We'll be using this jump to explain how you go from following the code to changing it yourself.

### What copying leaves out

**0:32** · When you follow a tutorial, the instructor has already decided when the player can jump and which lines will make it happen.

**0:39** · You can follow every single step and get the same result without having made any of these decisions yourself.

**0:45** · Copying code can be very useful, but typing it by hand doesn't automatically mean that you understand it either.

**0:51** · The useful question here is what happens when the instructions stop?

**0:55** · Can you explain why the character jumps or would you need another tutorial to change it? Now I myself have a literal double jump tutorial on this channel, but let's start with the part that we'd need to understand first.

### Start with something small

**1:06** · A complete player script handles movement, collisions jumping, and animations.

**1:11** · If we're learning to jump, trying to understand all of that at once gives us a lot to keep track of.

**1:16** · So this CodingQuests lesson begins with a small example that we can run.

**1:20** · One upward push starts the jump, and gravity slows the rise and eventually brings the character back down.

**1:26** · Now, the explanation sits beside the code and its output.

**1:29** · Now we know what those lines do, or at least we should.

**1:32** · The next step is to use them yourself.

### Writing the jump ourselves

**1:34** · Now, seeing the example work doesn't tell us whether we can write it or not, so the next task gives us the player that we've been building and asks us to add the jump ourselves.

**1:43** · We need to decide when that upward push is going to be allowed.

**1:46** · For a single jump, the character must be on the ground.

**1:50** · Otherwise, another press could launch us upward again while we're still in the air. Which could create a double jump, but that's basically infinite jumps.

**1:57** · Now the task gives us that requirement and space to write the missing code.

**2:01** · Hints are there if we get stuck, so we can get help with this part before looking at the complete solution.

**2:07** · Because when you are following a tutorial, you're basically just getting the solution at every point.

**2:12** · And that is specifically what gets you stuck in tutorial hell, because it's not really tutorial hell you're stuck in, it's more solution hell.

### When the attempt doesn't work

**2:20** · Now, if the attempt doesn't work, we need to know where to look.

**2:23** · In this prepared example, the code jump is inside a section that only runs while we're airborne, but the jump requires us to be on the ground.

**2:31** · Now this lesson checks for that placement.

**2:33** · We can read the feedback, move the lines, and submit again.

**2:36** · Now we've got a specific mistake to investigate instead of just replacing the whole script. Then we test it in Godot.

### Testing it in Godot

**2:42** · Jump from the floor, press again in the air, and land.

**2:45** · The checks help with the code.

**2:46** · Playing it lets us see whether the character actually behaves as intended.

### The bouncing bug, explained

**2:51** · Now, we've got a working jump, but the lesson helped us write it.

**2:54** · But again, the question is, can we use that explanation when the code behaves differently? Well, that's where bouncing the character from the beginning comes back. The lesson gives us this debugging question.

**3:04** · Tapping jump works, but holding it makes the character jump again on landing.

**3:08** · So why? The code asks whether the button is being held.

**3:12** · When we land, it's still down.

**3:14** · So another jump should start.

**3:16** · For one jump per press, we need to check whether the button was just pressed.

**3:20** · Holding it down won't count as a new press.

**3:23** · Now this gives us a reason to choose one input check over the other.

**3:27** · We can explain the fix instead of just remembering which line to paste.

### When does the jump stop rising?

**3:30** · Then there's a new question.

**3:32** · When does the character stop rising?

**3:34** · The lesson asks us to work that out from the jump strength and gravity, and check our code with different values.

**3:39** · Now, the lesson is gradually asking us to make more of the decisions ourselves, essentially holding your hand from the beginning and slowly letting go, basically as if I were learning to ride a bicycle.

### What to build after the lesson

**3:50** · Once that jump works, you might want the double jump or better movement from the opening. Searching for each feature separately can leave you combining scripts written from different people.

**3:58** · Now on CodingQuests, related lessons will form what I like to call a quest, and those quests follow a campaign for one full game.

**4:06** · So a campaign is basically gonna give you a game at the end.

**4:09** · Now after the basic jump, the next quest adds forgiveness, including a short window to jump after leaving an edge.

**4:16** · A later quest adds double jump.

**4:18** · Those changes build on the player that we've already worked on, so we can see how each new rule fits inside of the game we're building.

**4:25** · But obviously platformers are one of the basics.

### The same idea in a roguelike

**4:27** · This roguelike path connects its lessons the same way.

**4:30** · We build movement and aiming, using those controls to fight enemies, then add rewards for clearing a room.

**4:35** · A lot of game design decisions are made in the website, but it leaves it flexible enough so that you can make your own as well.

**4:42** · Now our jump lesson that we just learned taught us something really useful for the roguelike as well.

**4:48** · Should holding attack keep swinging or should each swing need a fresh press?

**4:52** · We can use the same input distinction to decide how a different game should behave. Now, in something like this, it is probably up to you.

**5:00** · You probably could keep it that if I'm holding press, then it keeps attacking, but again, game design decision.

### The bug from the beginning

**5:05** · Now, at the beginning of this video, the bouncing character gave us a problem that we might have just searched up online to find a solution to.

**5:12** · Now we can explain what starts the extra jump and what to change.

**5:16** · Now, that is what CodingQuests gives the opportunity to practice, understanding an example, attempting the code, investigating a mistake, and using what you learn on the next part of your game.

### Try it yourself

**5:26** · The link below will open up the platformer path.

**5:29** · The Move and Jump quest is free to start with without an account.

**5:32** · So if you've never written code before though, you can start with the code from zero. It's also linked on that page.

**5:37** · It'll teach you GDScript completely from scratch from literally printing a function to all the variables, etc.

**5:43** · Now the Guild Hall membership will open the full campaign and project files.

**5:46** · So you can start with the free lesson, test the jump yourself.

**5:50** · Try to tap and hold press and explain what starts a new jump before moving on.

**5:54** · Now there's also a seven-day free trial.

**5:56** · If you guys like it from the free quests and everything, try the seven-day free trial and eventually maybe you can just join our Guild Hall.

**6:03** · I hope to see you guys there.