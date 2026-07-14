---
title: "Everything You need to Know about Tweens in Godot 4.5 | Step by Step Guide"
source: "https://www.youtube.com/watch?v=3vLENcJWafU"
author:
  - "[[KiriSoft Games]]"
published: 2025-12-02
created: 2026-07-14
description: "Have you ever wanted to add animations in your game but the traditional method is so time taking and lengthy , Lets add simple animations with the help of tweens!We can use tweens to create small an"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=3vLENcJWafU)

Have you ever wanted to add animations in your game but the traditional method is so time taking and lengthy , Lets add simple animations with the help of tweens!  
  
We can use tweens to create small and simple animations with simple line of code! Lets Learn everything about Tweens in one video!  
  
Interactive Tutorial Guide Link:- https://qaqelol.itch.io/tweens  
  
Chapters:-  
0:00 - Introduction to Tweens  
1:15 - Coding Basic Tween Structure  
3:00 - Adding Multiple Tweens  
4:49 - Sequences in Tweens  
5:25 - Transitions and Eases  
6:41 - Spawning with Tweens  
8:00 - Set ease and transitions

## Transcript

### Introduction to Tweens

**0:00** · Let's get started. So for example, let's go to tween introduction. As you can see, we first need to create a tween and then what we need to do, we need to set a property and we need to get the object. What kind of uh object uh we are setting the property on and what property we are going to change and what is the final value of the property and how much duration it should take to change the property. So for example, for example, I want to change this uh position.x of this star.

**0:29** · So if I want to uh run this okay, for example, let's uh run this. You can see this position.x is changed from so this is the sprite 2D. We change up the position.x and it went from the current position to 100 in 1 second. For example, if I want to do this in 0.6 second, you can see I can increase the duration. And that's how we can change position.y.

**0:59** · We can change the scale. We can also change the alpha. And we can also rotate the object. So this is just the basic tween introduction. So let's get uh code.

**1:13** · Okay. So for example, we have a very basic character here. So let's go and add a script here. So I'm going to add a script. So in this script, so let's get uh the sprite 2D here first. I'm going to use the ready function and let's use this for now. And now we need to create a tween here. So let's create a tween is equals to create tween. And you can see there is a inbuilt function for the tween as well.

### Coding Basic Tween Structure

**1:46** · And now what we need to do is we need to get the twin and we need to apply the tween property. So you can see there are multiple methods that we can use in tune but we need to use the twin property.

**1:59** · And now we need to pass which object we want to apply the twin. So we I'm going to pass sprite 2D and what kind of property I want to change. So let's start with changing the property of uh tween. So I'm going to change scale.

**2:15** · Okay. So let's do the scale and instead of setting up the scale X and Y, I'm going to use the vector method. So which is basically I'm going to change this from uh let's say uh this is initially this position this scale will be you can see here one and one. So we can change this. So we can change this 1.2 comma 0.2. So what this will do, it will basically elongate the um sprite and how much duration we want.

**2:48** · So let me do this for 5 seconds. So we will be able to see the animation. So let's run the scene.

**2:56** · So now you can see the the sprite is going to be elongate or scaled in 5 seconds. Now what will happen if I change this duration to 0.5 which is less than 1 second. So you can see it just happens so fast. And now what we can do is we can also apply multiple property like this. So for example I can also do the scaling in y direction.

### Adding Multiple Tweens

**3:28** · So we can just put this as 1.2.

**3:32** · And now we can also reset the scale. So for that let's go and do this. We can also do this. Something like this.

**3:42** · And now if I run this, you should be able to see. You can see it will elongates and it gets reset.

**3:51** · That's it guys. So let me just add a button. So we will be able to play animation. Okay. And we will just use this play. Let's set this here.

**4:11** · And um now what we need to do is we basically need to add a signal here. So let's add a signal. So we are going to add the signal on button pressed. And I'm going to use this twin here.

**4:34** · And we can just remove this. So now if I run this.

**4:40** · Okay, not this. Can just run this.

**4:45** · So you can see we got this. So now the next thing is sequences. So we can basically add each of these sequences.

### Sequences in Tweens

**4:53** · So we can add one instruction, one twin animation, one twin animation. So we can add multiple twin animation and we can also so for example we have changing the position first then rotation and then scale. So if I do this if I sorry not this if I run this you can see it basically go from the position rotation and scale. Now if I change the rotation first you can see it will rotate then change the position and then it will change the scale.

**5:24** · Now if we go here you can see there are multiple graphs that we can use. So for example you can see we can actually set what kind of animation you want. So for the linear so you can see the translinear graph. So this is the linear basically each second the uh the position will change from each uh value.

### Transitions and Eases

**5:46** · So this is a pretty simple linear graph.

**5:48** · So if I run this you can see it's a very simple linear graph. Now what will happen if I do sign you can see it will change the value from slow to fast. So it will go from slow and then fast.

**6:03** · This is squint. So very slow then very fast. So you can see the quad here which is very slow and a little bit of ease here. Quad exponents cubic graph circular back. So you can actually see this is the elastic. You can see the elasticity graph here. Bounce and then spray. So that's a pretty easy way you can do. For example, we can also change the scale here. You can see.

**6:37** · And yeah, that's it. Now let's go to next. As you can see here that uh we can also use the twins to create a very simple spawning animation. So for example with twin we can create something like this and for the without twin it will look like this. So we can use with twin something like this. So how we can do that? So first we will basically create a spawn function and we will basically change the alpha of the sprite.

### Spawning with Tweens

**7:06** · And if you go here you can see there is a property called selfm modulate. So if you can take this property you can see we can basically reduce the alpha to zero and then spawn changing the modulation uh to one from 0 to one and in 0.3 seconds and it will also running the parall twin which is basically changing the scale of y to one you can see. So this is the basic thing.

**7:35** · So in this function ready we will set the modulation. So what we will do we will basically get the sprite 2D dot modulate or selfm modulate dot a and we will set this to 0.0 zero. And now by using twins, so we can just do twin dot twin property and we will choose this sprite 2D object.

### Set ease and transitions

**8:05** · And what what property we need to modulate? We need to modulate the selfm modulate property. And then we can just directly set the alpha. Okay. So make sure you need to selfm modulate and the alpha. So if you click on modulate you can see you can make uh everything change here you can do selfmodulate r selfmodulate gb b i a. So we are going to change the alpha. So we need to add colons and a. So this will basically modulate the alpha of the sprite.

**8:37** · And we will set the this to 0.3.

**8:44** · So we I'm just copying this. And if you want to run the twins in parallel, what you need to do is you need to add a parallel function. So you can see what it does. It basically run parallelly with this uh twin. And now what we need to is we need to basically change the scale and y and we need to set this to y to zero as well.

**9:09** · So we can just do this like scale and we can just set this the scale doy to zero. Now let's run the scene and let's see what will happen.

**9:28** · We can set the ease and trans. So we can just directly do that as well. So we can go here twin dot set ease and what type of ease you want. So so we are going to use ease out dot set trans means transform basically or basically the transition. Okay.