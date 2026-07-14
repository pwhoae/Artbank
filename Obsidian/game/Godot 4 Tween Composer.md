---
title: "Godot 4 Tween Composer"
source: "https://www.youtube.com/watch?v=pln4UZnIt9k"
author:
  - "[[Gwizz]]"
published: 2026-06-06
created: 2026-07-14
description: "Quick showcase on the Tween Composer addon in Godot 4!Ways to download the addon:https://store.godotengine.org/asset/gurbsgurbs/tween-composer/https://gurbsgurbs.itch.io/tween-composerhttps://git"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=pln4UZnIt9k)

Quick showcase on the Tween Composer addon in Godot 4!  
  
Ways to download the addon:  
https://store.godotengine.org/asset/gurbsgurbs/tween-composer/  
https://gurbsgurbs.itch.io/tween-composer  
https://github.com/gurbsgurbs/tween-composer-godot

## Transcript

**0:00** · Hello everyone. Welcome to GDScript showcases a cool Godot tool. In this episode, we have a really neat add-on called Tween Composer. It allows you to create and modify tweens inside the inspector. It's also got a few neat extra features that we'll get to in this video. Huge shout out to Gerbs, the creator of this add-on, who sent it over to me to try it out. If you would like your cool Godot tool or add-on showcased in the next GDScript showcases cool Godot tool episode, shoot me a message on Discord. To get started, head over to the asset library, type in Tween Composer by Gerbs Gerbs. Click on it. Download.

**0:29** · Install.

**0:31** · Let's say for example that we have this sprite here that we want to make rotate and hop up and down with a tween. We can do this by adding in a Tween Composer node as a child.

**0:40** · Then drag this out. Inside tween sequence drop down, click new tween sequence. Here we can give it a name.

**0:46** · I'll just do tutorial sequence.

**0:49** · And I'll name it one because I'll be doing multiple. There are a few things here we can edit. If we drop down duration settings, we can change the overall tween duration, if we want to loop or not, if we want to loop a certain amount of times. If it's set to zero, it will loop infinitely. We can also choose if we want to auto start it or not. And if you want to see it inside the editor, you can press preview. Next to add our tween steps in, click tween step collection.

**1:11** · Drop this down.

**1:12** · Click the new array.

**1:14** · Add a new element and click tween step item. I've also gone ahead and named it tutorial tween one. Let's drop down this tween step. Inside the tween parameters, we can change things like the transition style and the easing style, but I'll be mainly focusing on the tween property.

**1:26** · Here we can select which property we would like to edit, the position, rotation, scale, modulate, or other.

**1:31** · I'll stick with the position for now.

**1:33** · Let's have it go up at first. So, let's go up by 50. So, that'll be -50 on the Y. Then I'm going to go ahead and collapse this, create a new element.

**1:40** · Tween step item. I'm going to do the same thing, except for we're going to be going back down 50, so positive 50 on the Y.

**1:47** · Then press preview. You can see our tween is working. Now, let's say that while the sprite is going up and down, I want to also be spinning at the same time. So, I can add a new element tween step item.

**1:58** · Inside property, click rotation.

**2:01** · Let's spin it 360 on the X.

**2:04** · If I go and click preview, you'll see that it has to go through both these steps first to get to the rotation step.

**2:09** · To make it spin at the same time, go to tween parameters and click parallel.

**2:13** · Now, it'll be parallel with whatever step is right above it. So, if I want to be spinning while we're going up, I'll have to drag it underneath zero. Now, if I press preview, you'll see that we're spinning while we're going up. Now, let's say that I really like this sequence that I just created. Well, I can go into my sequence, right-click, click save as, and I can title it whatever I would like. I'll just do tutorial sequence one. Now, with another sprite and a blank tween composer, I can just drag over this entire sequence. And now, we have it on both this sprite and this sprite, and they work independently.

**2:43** · I can also create a new sequence called tutorial sequence two.

**2:52** · Create a tween step collection. Now, let's say that I just want to the spinning step that I created in the other sequence. So, hover over there, right-click the tween step, click save as, I'll do spinning, save that.

**3:06** · Set up our other tween composer, click add element, and then drag this over.

**3:10** · Sorry, drag the spinning over. Now, if I hit preview, you'll see that we just have the spinning step. Well, let's say I only want this sprite to spin when this sequence has finished. Well, we can achieve that easily by using a trigger.

**3:20** · So, I'm going to drop down this step, drop down tween parameters, then drop down triggers.

**3:24** · Add in a new trigger.

**3:26** · I'm going to call it spin. Then, I'm going to add a script to our second sprite.

**3:30** · Then, head back over to our main sequence, click on signals, trigger fired, connected to our new script.

**3:37** · Here, we're going to first check if our trigger name is spin. So, if trigger name equals spin. If it is, we have to reference our tween composer.

**3:49** · Copy this.

**3:51** · composer.play tween. Then, make sure auto start is turned off.

**3:55** · Turn off loop and turn on persist tween information. Now, if we press play, you see that every time our sequence finishes, our other sprite will spin.

**4:03** · Anyways, guys, if you have any questions or comments, please leave them down below and don't forget to like and subscribe. Thank you. Now that I have our tween steps, we can create a new tween step Oh my god, this is so hard to say.