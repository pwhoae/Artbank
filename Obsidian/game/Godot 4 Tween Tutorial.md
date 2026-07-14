---
title: "Godot 4 Tween Tutorial"
source: "https://www.youtube.com/watch?v=GN_HMhvYnYA"
author:
  - "[[Gwizz]]"
published: 2023-07-14
created: 2026-07-14
description: "Quick overview of how to use Tweens in Godot 4!"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=GN_HMhvYnYA)

Quick overview of how to use Tweens in Godot 4!

## Transcript

### Intro

**0:00** · hello everyone in this tutorial I'll be showing you how to use tweens in good L4 all right to get started I'm going to be adding a Sprite node you can add whatever you would like but this is what I will be applying the tweens to so load texture I'm going to create a new script on Main

### Tutorial

**0:17** · here we can delete these actually we have to just delete the function ready so we need to create a tween so variable tween we'll get create tween and now we can edit our scaling position rotation Etc so let's start off with scaling so let's say we want to scale up by twice the size so we could do tween dot tween property

**0:48** · and we need to reference our Sprite so dollar sign Sprite 2D we need to reference the scale we will do a new Vector two since this is 2D and let's do two two that will

**1:03** · make it twice the size and this is the speed variable so let's do it at one speed and if we press play you can see that it goes up by twice the size now one thing about tweens is that they run one after another so if I were to create a new tween and I were to scale it down it will play after the first one so you can see here that scales back down you can however play tweens at the same time by going before these tween

**1:34** · dot set parallel to true this will play them at the same time so in this case not much will happen because they're running at the same time all right to do position we need to change this scale to position

**1:51** · and it's also going to be a vector two so let's move it up so let's do zero let's do negative 100 this will move it up 100 units press play and as you can see moving up for rotation we need to switch out the position for rotation

**2:12** · and the input is actually in radians so we need to convert degrees to radians if we want to use the 360 system so if we want to rotate say 90 degrees we did to type degree to raid and we do 90. this will rotate it 90 degrees to control the speed we can increase this variable so let's increase it by 10.

**2:42** · this will slow down between and if we in if we decrease it so it's 0.1 this will speed it up anyways guys I hope you found this tutorial helpful if you have any questions or comments please leave them down below and don't forget to like And subscribe thank you