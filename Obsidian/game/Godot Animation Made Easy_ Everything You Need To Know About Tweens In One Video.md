---
title: "Godot Animation Made Easy: Everything You Need To Know About Tweens In One Video"
source: "https://www.youtube.com/watch?v=OR8R4wBgfUc&t=14s"
author:
  - "[[WisconsiKnight]]"
published: 2025-07-02
created: 2026-07-14
description: "🎮 Demystifying Tweens in Godot! Learn how to create smooth, polished movements and transitions for your game objects and UI elements. We'll walk through everything from creating a basic tween to adva"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=OR8R4wBgfUc)

🎮 Demystifying Tweens in Godot! Learn how to create smooth, polished movements and transitions for your game objects and UI elements. We'll walk through everything from creating a basic tween to advanced usage and a real in-game example.  
  
  
⏱️ Timestamps:  
  
0:00 - Introduction  
0:10 - Simple Tween Creation  
0:55 - Multiple Tween Actions  
1:20 - Parallel Tween Actions  
1:49 - Easing & Transitions  
2:33 - Callbacks  
3:10 - Signals & Loops  
4:41 - Game Object Animation  
  
  
🔗 Resources mentioned in this video:  
  
Create Secret Areas video: https://youtu.be/SM\_Cf5zCDUA  
  
Assets  
Pixel Platform asset pack: https://kenney.nl/assets/pixel-platformer  
  
  
🤖 Godot:  
  
Tweens:  
https://docs.godotengine.org/en/stable/classes/class\_tween.html  
  
Tween transition options:  
https://docs.godotengine.org/en/stable/classes/class\_tween.html#enum-tween-transitiontype  
  
Tween easing options:  
https://docs.godotengine.org/en/stable/classes/class\_tween.html#enum-tween-easetype  
  
Version - 4.4

## Transcript

### Introduction

**0:00** · In this video, I want to show you how powerful and easy tween can be for adding polish to your game. You can use them to animate both your UI elements and objects in your game.

### Simple Tween Creation

**0:10** · I have a simple area 2D scene with a block for a sprite. Upon clicking on the area 2D, we trigger the event. Let's start with a very basic example. We're creating a simple tween animation that moves an object when clicked. First, we declare a tween variable at the class level so we can reference it throughout our script. When the Air2D is clicked, we create a new tween with create tween method. We calculate a new position that's 25 pixels to the right and 25 pixels up from our current global position. And then we use the tween property method to smoothly animate our position to this new location over the course of 1 second.

**0:41** · The beauty of tween is how they handle all the interpolation for us. We just specify the item, the end point, and the duration, and all the in between frames to create smooth motions are handled automatically. This creates that satisfying smooth movement effect.

### Multiple Tween Actions

**0:57** · Now, let's chain multiple tween actions together. This will first move the sprite 25 pixels to the right and 25 pixels up. It'll then scale it up, and finally, it'll rotate it 180°. Each action happening one after another.

### Parallel Tween Actions

**1:20** · What if we want some actions to happen simultaneously? For this, we can use parallel twins. Let's run the same twins as before, but this time we're going to run them in parallel. To do this, we simply call the set parallel method on our tween. Then we can call the same tween property methods as before. For this parallel example, I've also changed the duration to be the same for all three property calls.

**1:42** · As you can see, the ability to run tween in sequence or in parallel offers tremendous flexibility.

### Easing & Transitions

**1:49** · Let's make our animations feel more natural with easing and transition methods. We can set these for the entire tween or set them individually on each property. Let's set an easing and transition type for the entire tween and run them in parallel. I went with an ease out and a transition type of trans bounce. When we run this, you can see the property move, scale, and rotate smoothly with a nice bounce effect.

**2:12** · Now, let's try running them in sequence with a different transition type on the scale and rotate. While still smooth, you can see how we can drastically change the feel of the block. I recommend experimenting with different combinations to find what works best for your game's feel. I will leave a link in the description to the docs that shows you all the options for easing and transitions.

### Callbacks

**2:34** · We can respond to tween events using callbacks. In this example, we are moving the position of the block. Then we are creating a call back that will be called after a 1second delay. In our call back function, we are changing the block to red. We are then repeating this to change the block blue. And lastly, we create an anonymous function as a call back. This allows us to execute any custom code we want, not just calling existing functions.

**2:57** · Callbacks are extremely useful for playing sound effects at specific points in an animation, bonding particles or other effects, or chaining complex sequences of events together.

### Signals & Loops

**3:11** · Now, let's explore how to make our twins even more powerful by using signals and loops. This combination allows us to create repeating animations and respond to specific events during the animation process. In this example, we'll create a simple back and forth animation that repeats three times and will track each step of the process using signals. When we run this, our block will move right and then back to its starting position and it will repeat this entire sequence three times. But what if we want to know when specific events happen during our animation? That's where signals come in.

**3:42** · Tween emit several useful signals that we can connect to. The step finish signal is emitted after each individual tween property completes. The parameter gives us the index of the step that just finished. The loop finish signal tells us when a full loop cycle has completed.

**3:58** · The parameter tells us which loop number just finished. And finally, the finish signal fires when the entire tween animation, including all loops, has completed. These signals are incredibly useful for triggering events at specific points in your animation. For example, you might want to play a sound effect every time the object reaches its rightmost position or spawn particle effects when an entire animation finishes. One thing to note is you can create infinite loops by not passing anything to the set loops method. And you can stop the tween manually just by calling tween.kill.

### Game Object Animation

**4:42** · The last thing I want to show you is a practical example of using twins in your game. In a previous video, I demonstrated a simple way to create hidden areas. Let's add some polish to that concept by using twins to gradually reveal the hidden area.

**4:55** · One thing to note here is I also use an infinite loop to make the key move up and down. You could also use the animation player to achieve this effect, but for the sake of this video, I thought I would show you this method.

**5:17** · Well, I suppose