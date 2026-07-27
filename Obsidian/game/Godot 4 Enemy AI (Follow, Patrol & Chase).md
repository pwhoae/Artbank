---
title: "Godot 4 Enemy AI (Follow, Patrol & Chase)"
source: "https://www.youtube.com/watch?v=zGv0ZWkJKfg"
author:
  - "[[Generalist Programmer]]"
published: 2026-07-04
created: 2026-07-27
description: "Godot 4 enemy AI tutorial: make an enemy follow, patrol and chase the player in GDScript — detection areas, state switching and smooth movement.▶ Full written tutorial (free): https://generalistprog"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=zGv0ZWkJKfg)

Godot 4 enemy AI tutorial: make an enemy follow, patrol and chase the player in GDScript — detection areas, state switching and smooth movement.  
  
▶ Full written tutorial (free): https://generalistprogrammer.com/tutorials/godot-4-pathfinding-2d-tutorial?utm\_source=youtube&utm\_medium=video&utm\_campaign=organic&utm\_content=godot-enemy-ai-longform  
  
Godot enemy AI, built from scratch — patrol, detection, chase, and a state machine to tie  
them together. This Godot 4 tutorial makes an enemy follow the player in 2D with correct,  
current GDScript on a CharacterBody2D. No navmesh needed for the core — this is pure 2D, the  
way most top-down and platformer games actually handle enemy behavior.  
  
A good enemy is really three behaviors, and this video builds each one:  
  
\- Follow / chase — steer the enemy toward the player with global\_position.direction\_to, scaled  
by speed, stored in velocity, then move\_and\_slide with no arguments (Godot 4). Get the player  
from an exported Node2D, or with get\_tree().get\_first\_node\_in\_group("player").  
\- Detection — a distance check with global\_position.distance\_to against a detect\_range. Step  
inside the range and the enemy notices you and gives chase; stay outside and it keeps  
patrolling. Plus a note on an Area2D body\_entered signal or a raycast for true line-of-sight.  
\- Patrol — walk between waypoint Marker2D nodes held in a typed Array, advancing to the next  
point when close, wrapping with modulo so the enemy loops the route forever.  
\- The state machine — an enum State PATROL, CHASE and a match inside \_physics\_process. Detection  
is the switch that flips between states — the same clean pattern real games use for enemy AI.  
\- Polish — flip the sprite toward movement with flip\_h, and add a stop distance so the enemy  
holds just short of the player instead of shoving into it and jittering.  
  
Every line of GDScript is correct and copy-paste ready, taught through code walkthroughs and  
diagrams — a detection-radius diagram and a Patrol / Chase state diagram. This is the exact  
Godot 4 enemy AI skeleton real games build their enemies on, and it grows as you add attack,  
flee or search states.  
  
Full written Godot 4 pathfinding tutorial with copy-paste code (NavigationAgent2D + AStarGrid2D):  
https://generalistprogrammer.com/tutorials/godot-4-pathfinding-2d-tutorial?utm\_source=youtube&utm\_medium=description  
  
The 30-day plan for beginners — Game Dev Starter Kit ($19):  
https://generalistprogrammer.gumroad.com/l/game-dev-starter-kit  
  
More beginner Godot builds:  
https://generalistprogrammer.com/tutorials?utm\_source=youtube&utm\_medium=description  
  
— Chapters —  
0:00 The 3 behaviors of enemy AI  
0:15 Game Dev Starter Kit ($19)  
0:39 3 behaviors + the state machine  
1:59 Follow the player (direction\_to)  
3:37 Detection radius (distance\_to)  
4:57 Patrol waypoints (Marker2D)  
6:07 The state machine (enum + match)  
7:35 Polish: flip sprite + stop distance  
8:43 Recap  
9:26 Watch next + subscribe  
  
#gamedev #godotengine #godot

## Transcript

### The 3 behaviors of enemy AI

**0:00** · A good enemy is really three behaviors, patrol, detect, and chase.

**0:05** · It wanders until it spots you, then hunts you down.

**0:09** · Let's build 2D enemy AI in Godot 4, state machine and all.

### Game Dev Starter Kit ($19)

**0:15** · One honest heads-up before the code.

**0:18** · If you are learning Godot and you want a map instead of a maze, I put together a game dev starter kit.

**0:24** · $19 and it is a 30-day roadmap plus Godot and Unity cheat sheets, code snippets, and an engine guide.

**0:32** · It is completely optional and the link is in the description.

**0:36** · Now, let's build the enemy.

### 3 behaviors + the state machine

**0:39** · Before we touch code, here is the whole plan on one screen.

**0:44** · Almost every 2D enemy you have ever fought is built from the same three behaviors.

**0:49** · Behavior one is patrol.

**0:51** · When the enemy has not seen you, it just wanders back and forth between a couple of points, minding its own business.

**0:59** · Behavior two is detection.

**1:02** · Every frame, the enemy checks how far away you are.

**1:06** · Step inside its range and an alarm goes off.

**1:10** · Behavior three is chase.

**1:12** · Once it has spotted you, it stops patrolling and comes straight for you.

**1:17** · Now, here is the part that ties it together and it is the single most important idea in game AI, a state machine.

**1:24** · The enemy is always in exactly one state, patrolling or chasing, nothing in between.

**1:32** · Detection is the switch.

**1:35** · Player in range, flip from patrol to chase.

**1:38** · Player gets away, flip back to patrol.

**1:42** · That is the entire brain.

**1:44** · We built a full state machine in a Godot video on this channel and the idea is identical here.

**1:50** · One enemy, a couple of states, clean code.

**1:54** · Let's write it, one behavior at a time, starting with the chase.

### Follow the player (direction\_to)

**2:00** · Let's start with the most satisfying one, making the enemy follow the player.

**2:05** · In Godot 4, this is basically one line, and it is beautiful.

**2:09** · Here is the enemy script, and it extends CharacterBody2D, Godot's node for anything that moves and collides.

**2:17** · Up top, an exported player reference, that is who we chase.

**2:21** · And an exported speed, so you can tune it in the inspector.

**2:25** · Now the magic, inside physics process.

**2:29** · We call global\_position.direction\_to, hand it the player's global position, and get back a vector pointing straight at them.

**2:36** · Multiply that by speed, store it in velocity, then call move and slide.

**2:42** · direction\_to always returns a length one vector, so the enemy moves at exactly your speed in the right direction.

**2:49** · And in Godot 4, move and slide takes no arguments.

**2:53** · It simply reads the velocity you just set.

**2:57** · Every frame, the enemy glides toward the player.

**3:00** · One question, where does player come from?

**3:04** · You can drag it into the exported slot in the inspector.

**3:07** · Or grab it in code with get\_tree, get\_first\_node\_in\_group, passing player.

**3:13** · Either works.

**3:14** · A common trap, though.

**3:17** · Forget to assign that reference, and you get a null the instant the game starts.

**3:22** · Fill the slot, or put the player in a group and fetch it.

**3:26** · Now the enemy follows, but from anywhere on the map.

**3:30** · Let's give it eyes.

**3:32** · An enemy that chases you from across the entire level is not smart, it is annoying.

### Detection radius (distance\_to)

**3:38** · Real enemies only react when you get close.

**3:41** · That is detection.

**3:43** · The tool is dead simple, global\_position.distance\_to.

**3:48** · You hand it the player's position, and it gives back how far apart you are as a single number.

**3:54** · Here is the check.

**3:56** · We compare that distance to a detect range, say 200 pixels.

**4:01** · If the distance is less than the range, the player is close enough to notice.

**4:05** · If not, the enemy has no idea you are there.

**4:09** · Picture a circle drawn around the enemy.

**4:12** · While you are outside the circle, it keeps patrolling, totally unaware.

**4:17** · The moment you step inside, detection fires and it switches to chasing.

**4:22** · That circle is your detect range and you can make an enemy jumpy or oblivious just by changing that one number.

**4:29** · Want to be fancier?

**4:31** · Instead of a raw distance, you can drop an area 2D on the enemy and react to its body entered signal or cast a ray so the enemy cannot see you through a wall.

**4:41** · But for most 2D games, a distance check is all you need.

**4:45** · Start simple.

**4:48** · Right now, when the enemy is not chasing, it just stands there like a statue.

**4:53** · Let's give it somewhere to go, a patrol route.

### Patrol waypoints (Marker2D)

**4:57** · The setup is an exported array of marker 2D nodes, the waypoints.

**5:02** · Drop a few markers around your level where you want the enemy to walk and drag them into the array.

**5:07** · We keep one integer, the index of the point we are currently walking toward.

**5:12** · It starts at zero, the first waypoint.

**5:16** · Inside the patrol function, we do the same direction to trick, but the target is the current waypoint instead of the player.

**5:23** · The enemy steers toward it at a calm patrol speed and we call move and slide.

**5:28** · Then the key step.

**5:30** · Each frame we check the distance to that waypoint.

**5:34** · Once we are close enough, within about four pixels, we advance to the next point.

**5:39** · There is a clean little trick for looping.

**5:42** · We take the current index, add one, and wrap it with modulo the array size.

**5:48** · When the enemy reaches the last waypoint, that wrap sends it right back to the first, and it patrols forever.

**5:54** · No if statements, no manual reset.

**5:58** · Now we tie the two behaviors together, and this is where it becomes real enemy AI.

**6:04** · The state machine.

**6:06** · At the top of the script, we declare an enum state with two values, patrol and chase.

### The state machine (enum + match)

**6:14** · Then one variable to remember which state we are in right now, starting on patrol.

**6:19** · Physics process becomes a match on that state.

**6:22** · In the patrol branch, we call patrol, and then we check, is the player in range?

**6:28** · If yes, we flip the state to chase.

**6:31** · In the chase branch, we call chase, and we check the opposite.

**6:36** · If the player is no longer in range, we flip back to patrol.

**6:40** · Read that out loud, and it sounds like a living thing.

**6:44** · Wander around.

**6:46** · See the player.

**6:48** · Give chase.

**6:49** · Lose them.

**6:51** · Go back to wandering.

**6:53** · That is the whole loop.

**6:55** · This is the pattern professional games use, just scaled up.

**6:59** · Two states today.

**7:01** · Tomorrow you add attack, or flee, or search. Each one is another branch in the match.

**7:07** · The structure never changes. It only grows.

**7:11** · That is why a state machine keeps enemy code clean instead of a tangle of booleans.

**7:16** · And because each state is isolated, a bug in your chase logic can never break patrol.

**7:22** · That separation is the whole reason this pattern scales.

**7:27** · Two small touches take this from functional to feeling good.

**7:31** · Polish.

**7:32** · First, the enemy should face the way it is moving.

### Polish: flip sprite + stop distance

**7:36** · Right now it might chase you while facing backwards, which looks broken.

**7:41** · The fix is to flip the sprite.

**7:44** · Check whether the target is to the left and set the sprite's flip H to match.

**7:49** · Now it always looks where it is going.

**7:51** · Second, stopping distance.

**7:54** · If the enemy chases all the way to your exact position, it shoves into you and jitters.

**8:00** · Instead, only move while the distance is greater than a small stop distance.

**8:05** · Once it gets that close, it holds right next to you, ready to attack, not vibrating on top of you.

**8:13** · Add those two and the enemy reads as deliberate instead of robotic.

**8:17** · And that attack, swinging when it is in range and dealing damage, is the natural next state to build.

**8:24** · It slots right into the match as one more branch.

**8:27** · The written guide below walks through smarter pathfinding, too.

**8:32** · Let's lock in what you built, because this is the real pattern.

**8:36** · An enemy is three behaviors.

**8:39** · Patrol, walk between markers with direction to and move and slide.

### Recap

**8:44** · Detect, compare global position distance to against a range.

**8:48** · Chase, steer toward the player every frame.

**8:52** · A state machine holds it together.

**8:55** · One enum, patrol or chase.

**8:58** · Detection is the switch that flips between them in a simple match inside physics process.

**9:04** · And two bits of polish.

**9:06** · Flip the sprite toward movement and stop just short so it does not shove into the player.

**9:12** · That is a complete, clean, extendable 2D enemy in Godot 4.

**9:17** · That is 2D enemy AI in Godot 4, patrol, detect, chase, and a state machine to run the show.

**9:25** · You now have the exact skeleton real games build their enemies on.

### Watch next + subscribe

**9:30** · Here is your next move.

**9:32** · The full written guide is on screen and linked below with proper Godot 4 pathfinding, a navigation agent 2D that routes the enemy around walls on a real map.

**9:42** · And do not stop while it is fresh.

**9:45** · Your next watch is lined up, the Godot state machine build, where you turn this pattern into a clean, reusable system.

**9:52** · Or see the exact same enemy built in Unity if you work across both engines.

**9:58** · If you want the full 30-day plan, the Game Dev Starter Kit is in the description.

**10:03** · Subscribe for more beginner Godot tutorials.

**10:07** · Now go make something chase the player.

**10:10** · See you in the next one.