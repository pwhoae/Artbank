---
title: "Stop Asking AI To Build The Whole Game At Once"
source: "https://www.youtube.com/watch?v=mjg_JUMar04&t=2s"
author:
  - "[[Can It Code?]]"
published: 2026-08-10
created: 2026-09-25
description: "Making winter survival game from scratch.Four AI models, each with one job. No single mega-prompt. Every job getsa fresh chat and ends with a test, so when something breaks, one job goesback — not"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=mjg_JUMar04)

Making winter survival game from scratch.  
Four AI models, each with one job. No single mega-prompt. Every job gets  
a fresh chat and ends with a test, so when something breaks, one job goes  
back — not the game.  
  
Built in Godot. Snow with real depth, footprints painted into one image,  
Blender models written as scripts, and a bear you cannot outrun.  
  
CHAPTERS  
0:00 This one is different  
0:16 Four models, four jobs  
0:43 The part nobody talks about  
0:53 One Pinterest photo  
1:07 The color bible  
1:18 Never ask for the whole game  
1:45 Ground that remembers  
2:27 Snow that slows you down  
2:42 Footprints  
3:04 Nobody modeled this house  
3:35 Tip: don't ask AI for realistic  
3:47 Making the character  
4:50 One panel changes everything  
5:36 Two enemies  
6:21 The house opens up  
6:45 What next  
  
TOOLS  
Godot · Blender · Meshy · Fable 5 · Opus 5 · GPT-5.6 Sol · Kimi K3  
  
CREDITS  
Visual reference: "The Snow Girl" (2017) by Mixtape Club  
Production design: R. Kikuo Johnson  
  
Bear model: "Realistic Animated Bear 3D Model" by WildMesh 3D  
https://sketchfab.com/3d-models/realistic-animated-bear-3d-model-bffc3c87d2d148ff8533e1cc8a11c9f1  
Licensed under Creative Commons Attribution (CC BY 4.0)  
https://creativecommons.org/licenses/by/4.0/  
  
#gamedev #godot #aitools #indiedev #blender

## Transcript

### This one is different

**0:00** · This video will be different, because in this one, I'm gonna show you how I built this.

**0:07** · It was made in Godot.

**0:09** · And yes, it's not one prompt.

**0:11** · And I want to show you the whole process how I usually work with AI models.

### Four models, four jobs

**0:16** · And I'm using 4.

**0:17** · Fable 5, Opus 5, GPT-5.6 Sol, and Kimi K3.

**0:22** · And each of those models has different responsibility.

**0:25** · Fable 5 takes the hard calls.

**0:27** · What we build and why.

**0:29** · Opus 5 writes the mechanics and build models too.

**0:34** · GPT-5.6 is my Blender guy, sometimes mechanics too.

**0:38** · And Kimi K3 is Blender only.

**0:40** · It has a really good feel of aesthetics, I noticed.

### The part nobody talks about

**0:43** · So how do you start?

**0:44** · And that's the hard part.

**0:46** · I had a few of these and I finished none.

**0:49** · They all looked right, but none of them had a gameplay loop.

### One Pinterest photo

**0:53** · This one started the same way.

**0:55** · I was looking at Pinterest and that one's scene stopped me.

**0:59** · And I just wanted to make it a game, so badly.

**1:02** · So I made it a reference, not to copy it, to catch the same feeling.

### The color bible

**1:07** · And we started with a color bible.

**1:09** · But the picture is daylight, and I wanted the same place after dark.

**1:13** · So every color gets translated first.

**1:15** · From now on, nothing goes in the game without it.

### Never ask for the whole game

**1:18** · Okay, let's make a game.

**1:20** · Do not ask for the whole game in one prompt.

**1:22** · Let the best model write the plan.

**1:25** · Every job then gets its own clean session.

**1:28** · And every job ends the same way.

**1:30** · A test.

**1:32** · If it fails, one job goes back, not the game.

**1:35** · So one job, one fresh chat.

**1:37** · The model is not carrying 9 other jobs, so it reads less, and to make fewer mistakes.

**1:43** · It also uses fewer tokens.

### Ground that remembers

**1:45** · So first job on the list.

**1:47** · The ground.

**1:48** · I told Fable what I wanted.

**1:49** · Snow deep in one place, and thin in another.

**1:53** · Fable made a plan, and Opus rolled it.

**1:55** · It starts flat.

**1:56** · Completely flat.

**1:57** · Every corner gets asked one question.

**2:00** · How high are you?

**2:01** · A hundred and ten thousand of them, 60 times a second.

**2:05** · You may ask why I do not save the answers once.

**2:08** · Because the height keeps changing.

**2:10** · A boot presses the snow down, the wind builds a drift up.

**2:13** · And I never asked about the whole map.

**2:15** · Only a hundred and twenty meters of it.

**2:18** · And it slides along with the character.

**2:20** · Next house.

**2:21** · Some trees and a car.

**2:23** · These are just placeholders.

**2:25** · The real Blender models come later.

### Snow that slows you down

**2:27** · Then we put snow on the ground.

**2:29** · And remember, the ground has height.

**2:32** · So the snow can be deep here and thin there.

**2:35** · And now the snow slows you down.

**2:37** · Deep snow, you walk.

**2:39** · Thin snow, you can run.

**2:40** · And finally, footprints.

### Footprints

**2:43** · You can see where you walked.

**2:44** · It is a small thing, but it makes the world feel alive.

**2:48** · Behind the scenes, it works like this.

**2:50** · Every step paints into one picture, not a list of footprints.

**2:54** · One image, fixed size.

**2:56** · The snow reads it.

**2:57** · The winds erase it.

**2:59** · The enemy rides into the same one.

**3:01** · A thousand tracks goes to the same as one.

### Nobody modeled this house

**3:04** · Okay, now let's replace those placeholders with real Blender models.

**3:08** · Nobody modeled this house by hand.

**3:10** · An AI model wrote a script.

**3:12** · Blender run it.

**3:14** · Every line adds one piece.

**3:16** · So when the roof is wrong, I do not touch the mesh.

**3:19** · I fix one line and run it again.

**3:22** · Now let's add it to the scene.

**3:23** · And yes, it is much better.

**3:26** · Let's do the same with trees and a car.

**3:28** · Okay, it is starting to look like a game.

**3:31** · If you like this video, click subscribe button.

### Tip: don't ask AI for realistic

**3:35** · Quick tip.

**3:36** · Don't ask AI for realistic meshes.

**3:38** · It will not deliver.

**3:39** · Simple shapes, it does well.

**3:41** · This house is just boxes and a roof.

**3:44** · The light does the rest and we will work on it in a second.

### Making the character

**3:47** · But first, let's replace a character placeholder with the real character.

**3:52** · And first, I wanted to create a concept with GPT.

**3:55** · So that's the prompt for GPT.

**3:58** · And those are the results.

**3:59** · And those images goes to Meshy AI.

**4:02** · I like to use the tool for generating a character meshes.

**4:05** · We have 8000 polygons, which is perfectly fine for a main character.

**4:09** · Okay, let's texture it.

**4:10** · And that's fine.

**4:12** · We will map the colors to our Color Bible later.

**4:15** · And this time I also decided to use the animations from Meshy directly.

**4:19** · And the rigged character looks much more simple and has like less details and a bit different colors.

**4:25** · But as I said, we will fix it and it will look perfectly fine in our game.

**4:30** · And there it is.

**4:31** · Our new character is in the game.

**4:33** · And it looks really, really cool now.

**4:35** · Let's just look around.

**4:36** · I love those footprints.

**4:38** · And the fact that each footprint can have like a different depth.

**4:42** · And also the snow that you feel where it's deep.

**4:45** · Okay, so we have the character and we have all of the meshes on the map.

**4:48** · We will play with the light a bit.

### One panel changes everything

**4:50** · About the lighting.

**4:51** · It is really helpful to ask your AI model to expose you this kind of lighting control panel with those sliders so we can play around.

**4:58** · Of course, if you can't do that directly in the game engine, for example, Godot.

**5:02** · So here I have a few presets.

**5:04** · Each of them reflects a different daytime.

**5:06** · So let's play along.

**5:08** · This one is like a flat, a nightfall.

**5:10** · And you can see how much this scene changes.

**5:13** · Deep night, which is a bit lighter and a white out.

**5:17** · Blizzard, a lot more density of the fog and the sunrise.

**5:21** · I love this one.

**5:22** · It is really warm here.

**5:25** · And then pale day, midday.

**5:28** · So you can see how much the same scene differs based on the lighting settings.

**5:33** · And I love this that you can affect the game a lot this way.

### Two enemies

**5:36** · And now the enemies.

**5:38** · I want very few of them, but every meeting should be able to kill you.

**5:42** · Right now there are two.

**5:43** · A starving man and bears.

**5:45** · I found the bear on Sketchfab with CC attribution and a lot of animations.

**5:50** · So I downloaded it.

**5:51** · But the bear is realistic here and we need more low poly models.

**5:54** · So I asked AI to decimate it in Blender.

**5:57** · And here you can see a three stages of decimation.

**6:00** · And decimation simply reducing a polygon counts.

**6:03** · The man sees you.

**6:04** · The bear smells you on the wind.

**6:06** · This part is still a prototype.

**6:08** · You press F and the gun finds the target.

**6:11** · The bear, you cannot outrun ever.

**6:14** · So it warns you first and then it charges.

**6:18** · It knocks you down and for now you just lie there.

### The house opens up

**6:21** · Last thing I want to show you.

**6:22** · The house interior.

**6:23** · It's not a different location, it's the same one.

**6:26** · So player sees the danger outside the house.

**6:28** · How does it work?

**6:29** · Simple.

**6:30** · The moment I step inside, the roof and the front wall come off.

**6:33** · That's it.

**6:34** · But there is also another system.

**6:36** · When our character goes behind some object, for example a tree, then the whole shape fades out.

**6:41** · How?

**6:42** · The camera shoots a ray at me all the time.

### What next

**6:45** · And that's it guys.

**6:46** · If you want more deep dive videos, let me know in the comments.