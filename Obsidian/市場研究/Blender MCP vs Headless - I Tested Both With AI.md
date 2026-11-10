---
title: "Blender MCP vs Headless - I Tested Both With AI"
source: "https://www.youtube.com/watch?v=TiYFme-3RCI"
author:
  - "[[AI Dev Challenge]]"
published: 2026-10-26
created: 2026-11-09
description: "\"Why don't you use MCPs?\" One of you asked me that, so I stopped guessing and ran a proper test.Same AI agent, same brief, same reference pictures. Three ways to drive Blender:🔹 Headless: the agen"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=TiYFme-3RCI)

"Why don't you use MCPs?" One of you asked me that, so I stopped guessing and ran a proper test.  
  
Same AI agent, same brief, same reference pictures. Three ways to drive Blender:  
🔹 Headless: the agent writes a Python script, Blender runs it in the background, no window at all  
🔹 Official Blender MCP (Blender Lab): Python sent straight into the open Blender, with a live viewport  
🔹 Computer use: no code, the agent looks at screenshots and clicks like a person  
  
Four rounds: a wooden crate, a cast-iron street lamp, a hand cart, and an edit of that cart (one broken wheel, three crates under the canvas). Every result was scored by a blind judge: a fresh agent that had no idea which method made what.  
  
A few things I didn't see coming:  
⏱️ MCP built the first crate in 3.3 minutes, headless needed 9.4. Not because headless is slow, but because it checked its work with full CPU renders, while MCP just grabbed viewport screenshots.  
🖱️ Computer use did get there. It took 19 minutes and $6.75, for a plain box.  
🤖 Bonus: five agents, five props, all at the same time. Then the same five agents inside ONE Blender over MCP.  
📺 The next day I ran it again live on my screen: separate files, and five Blenders on five ports. I felt like a security guard.  
  
So which one do I use now, and why? It's not about speed.  
  
⏩ CHAPTERS  
0:00 Why don't I use MCP?  
0:39 What's coming  
1:18 Round 1: the crate (and how the three methods work)  
2:42 The race: 9 minutes vs 3  
3:18 Computer use: 19 minutes for a plain box  
3:42 The blind judge  
4:15 Round 2: the street lamp  
5:02 Round 3: the hand cart  
5:32 Round 4: editing the cart  
6:16 Bonus: five agents at once, headless  
6:51 Five agents in ONE Blender (MCP)  
7:37 How MCP handled it: one queue  
7:56 One file, one pile  
8:21 Live test 1: five separate files  
8:43 Live test 2: five Blenders, five cameras  
9:11 Does my thesis hold?  
9:26 The full board  
9:39 Why I still use headless  
10:15 My answer, and what's next  
  
🛠️ THE SETUP  
• Agent: Claude Opus 5.5 on high effort in Claude Code, a fresh session for every run  
• Blender 5.2  
• Official Blender MCP by Blender Lab (server 1.0.2, add-on 1.0.0)  
• Computer use in the Claude app  
• PC: 16 threads, 32 GB RAM, RTX 4060 8 GB  
• Costs are API-equivalent at list prices, not my bill  
• Reference pictures were generated with GPT for this test  
  
Next up: the same comparison, but for animation. If you want to see that, subscribe 🔔  
  
🎵 MUSIC (YouTube Audio Library)  
• "Science Montage" by Jeremy Blake  
• "Marimba Chill" by Jimena Contreras  
• "Stealth" by Aakash Gandhi  
• "Dusty Road Magic" by Chris Haugen  
• "The Road To Mordor" by Ezra Lipp  
• "Moon Vision" by Chris Haugen  
Sound effects: our own library and Pixabay.  
  
#Blender #BlenderMCP #ClaudeCode #AIagents #3Dmodeling

## Transcript

### Why don't I use MCP?

**0:00** · A few weeks ago, one of you asked me why I don't use MCPs.

**0:04** · I build all my Blender assets with headless scripts, so it's a fair question, and I'm about to answer it with an in-depth test.

**0:12** · I gave the same AI agent the same tasks: a wooden crate, a street lamp, a hand cart, an edit of that cart, and five props at once.

**0:23** · Three different ways: scripts in the background, the official Blender MCP, and computer use, where the agent just clicks like a person.

**0:32** · One of them didn't make it past the first round, and the rest of the test surprised me more than once.

### What's coming

**0:39** · One method needs nothing but Blender.

**0:41** · The other needs Blender, an add-on and a server on top.

**0:46** · The one I expected to be slower turned out almost three times faster.

**0:51** · Computer use spent almost twenty minutes clicking, and gave me a plain box.

**0:56** · One round ended in a tie, down to the millimetre.

**1:01** · And one round MCP should have won easily.

**1:05** · And at the end, I put five agents inside one Blender, at the same time.

**1:11** · If you're new here, I build games with AI, push it to its limits, and learn along the way by playing.

### Round 1: the crate (and how the three methods work)

**1:18** · Round one was a wooden crate, sixty by forty centimetres, with three planks on every wall, steel corners and two handles.

**1:27** · Every run got the same brief and the same reference pictures.

**1:31** · I've been using the same model every time: Claude Opus 5.5 on high effort, with a fresh session for each run.

**1:40** · First up, headless.

**1:42** · The agent writes a Python script, and Blender runs it in the background, without even opening a window.

**1:49** · Second, MCP, and here's the first twist.

**1:53** · The official server from Blender Lab has a main tool that simply runs Python inside the open Blender.

**1:59** · So both of them write Python.

**2:02** · This isn't code versus no code.

**2:04** · It's a background process versus a live scene.

**2:09** · And third, computer use.

**2:11** · No code at all: the agent looks at screenshots and clicks, just like you would.

**2:18** · Setup is different too.

**2:20** · Headless needs Blender installed and an agent that writes the script.

**2:24** · That's all. MCP needs a running Blender, plus the add-on, online access switched on, and the server in Claude's config.

**2:33** · And computer use needs Blender open on screen, with computer use switched on in the Claude app, so the agent can see and click.

### The race: 9 minutes vs 3

**2:42** · Then the actual race began.

**2:45** · Headless finished in just over nine minutes, and MCP in three.

**2:50** · Wait, what? Three minutes?

**2:53** · I was convinced that headless would be faster, since there's no window and no screenshots to deal with. I was wrong.

**3:01** · The reason is how they check their work.

**3:04** · Headless renders a full image every single time, while MCP just grabs a quick picture of the viewport.

**3:12** · And the cost was almost identical: a dollar thirty-seven against a dollar thirty-two.

### Computer use: 19 minutes for a plain box

**3:18** · And computer use?

**3:20** · It spent most of the time just learning how Blender reacts.

**3:24** · But once it found the rhythm, the crate went up surprisingly fast.

**3:30** · In the end: nineteen minutes and six dollars seventy-five, about five times the cost of the others. For a plain box.

**3:38** · No bevels, no rivets, one colour.

### The blind judge

**3:42** · Then came the blind judge, a fresh agent with shuffled labels, so it had no idea which crate came from which method.

**3:51** · Headless got thirty-one, MCP thirty, and computer use just twenty.

**3:57** · So headless won by a single point, which is basically almost a tie.

**4:02** · Computer use does work, but it spent the whole time fighting with the interface, so I took it out.

**4:09** · Two methods left and three rounds to go, and if you like this format, hit subscribe.

### Round 2: the street lamp

**4:15** · Round two was a cast-iron street lamp.

**4:22** · And this time, headless needed six minutes, and MCP five and a half.

**4:28** · The judge gave them thirty and thirty-one, and called it a tie.

**4:33** · And look at this.

**4:34** · When you put them on top of each other, it's the same silhouette and the same size, down to the millimetre.

**4:41** · Headless nailed the stepped base and the flutes. MCP got the paint colour right, and its mesh was much cleaner.

**4:49** · Eight bad edges, against four hundred and thirty-six.

**4:54** · Honestly, you could pick either one from just looking at the picture, but I prefer a clean mesh.

### Round 3: the hand cart

**5:02** · Round three was a hand cart, with two big spoked wheels, long shafts at the front, and a canvas cover over three hoops.

**5:12** · And the canvas was the real test, because it had to look like cloth, not like a plastic shell.

**5:19** · MCP was faster again, and the raw score was thirty to thirty.

**5:24** · But the judge still picked headless, because its canvas reads like cloth, while the MCP one looks like a smooth shell.

### Round 4: editing the cart

**5:32** · Round four wasn't a new asset.

**5:34** · It was an edit of the cart from round three.

**5:39** · Break one wheel on the cart, and load three crates under the canvas.

**5:44** · This was the round I expected MCP to win, because it can see the scene it's changing.

**5:49** · That was my thesis.

**5:51** · To keep it fair, both agents edited the same cart, the headless one, since it won round three.

**5:57** · And MCP was faster again.

**6:00** · But the judge gave thirty-two to headless and twenty-eight to MCP, the clearest gap in the whole test.

**6:08** · It was all about the damage details, and I can only agree with the judge.

**6:13** · My thesis didn't survive.

### Bonus: five agents at once, headless

**6:17** · Then I wanted to try something more interesting: what happens when many agents work at once?

**6:23** · I took five simple props, and gave each one to its own agent.

**6:28** · Headless went first.

**6:29** · Every agent got its own Blender, running in the background, and all five were done together.

**6:36** · One after another, that's about six minutes.

**6:40** · In parallel, just ninety-seven seconds.

**6:44** · There is a limit, though.

**6:45** · In a quick test, ten Blenders at once slowed my PC to a crawl, but five were no problem.

### Five agents in ONE Blender (MCP)

**6:52** · So here's my new thesis: for an autonomous pipeline, MCP should be worse.

**6:57** · After all, there's only one Blender, and one window.

**7:01** · But can five agents share one Blender?

**7:04** · Let's find out.

**7:06** · I put all five into that one Blender and let them go, and every single one finished, without a single failed call.

**7:14** · Same story with MCP: one after another, about six minutes.

**7:20** · In parallel, a hundred and three seconds.

**7:24** · So side by side: headless, ninety-seven seconds.

**7:28** · MCP, a hundred and three.

**7:30** · Almost a tie.

**7:33** · Okay, wow. I honestly didn't expect that MCP can keep it up.

### How MCP handled it: one queue

**7:38** · So how did it handle the multitasking?

**7:40** · The add-on takes requests one at a time, on Blender's main thread, like a shop with one checkout and a queue.

**7:48** · And without being told, every agent sent its whole job as a single call.

**7:53** · So no one could cut in halfway.

### One file, one pile

**7:56** · And the result is kind of funny.

**7:59** · One file, one scene, and all five props stacked on top of each other, right inside the cart.

**8:07** · In that pile, none of them could see its own prop. Four checked it by numbers, and one rendered itself a private preview, like headless does.

**8:17** · So MCP lost its one real advantage.

### Live test 1: five separate files

**8:21** · But what if I want five separate files?

**8:24** · What if I really care about a multi-agent workflow? Only one way to know.

**8:29** · The next day, I tested it live, on my screen.

**8:33** · Each agent got its own spot, and saved only its own prop.

**8:37** · And that worked.

**8:39** · But they all still shared one Blender, and one queue.

### Live test 2: five Blenders, five cameras

**8:43** · So I gave every agent its own Blender.

**8:46** · Five windows, five ports, and suddenly I felt like a security guard, watching five cameras.

**8:53** · It works, and nobody waits for anybody.

**8:56** · But that's five windows on my screen, all set up by hand.

**9:01** · And now each agent could see its own prop, so they checked a lot more: twenty-six calls instead of eleven.

**9:09** · So it actually took longer.

### Does my thesis hold?

**9:12** · So my thesis holds, with one honest note.

**9:16** · MCP is great and really fast when you deal with a single object at once.

**9:21** · But for an autonomous pipeline, I would choose headless.

### The full board

**9:27** · And there we are.

**9:28** · Here's the full board.

**9:30** · Both look really close.

**9:32** · MCP was faster, but only with one prop at a time. For multitasking, it's a different story.

### Why I still use headless

**9:39** · Would I still choose headless?

**9:41** · Yes, I would, for most of my work.

**9:45** · Because it wins at multitasking.

**9:47** · It needs nothing but Blender, every agent gets its own Blender, and it runs in the background, so I can work on other things without sharing my screen. And it leaves a script behind, so if I run it again, the asset rebuilds without any agents at all.

**10:04** · MCP is great for one model at a time, with a live preview.

**10:08** · But with many agents, it's either one shared scene, or my screen full of windows.

### My answer, and what's next

**10:15** · So here's my answer.

**10:17** · Headless for an autonomous pipeline, MCP when I want to watch, and computer use?

**10:23** · Not for Blender.

**10:24** · Not yet.

**10:26** · Modelling turned out to be close, so next I want to try something harder: animation, with the same agent and the same comparison.

**10:34** · If you want to see that, subscribe, and I'll see you in the next one.