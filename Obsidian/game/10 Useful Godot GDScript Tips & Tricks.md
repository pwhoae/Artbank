---
title: "10 Useful Godot GDScript Tips & Tricks"
source: "https://www.youtube.com/watch?v=LrtHeM9YOFg"
author:
  - "[[Gwizz]]"
published: 2026-09-01
created: 2026-09-02
description: "Quick video on 10 random useful Godot 4 GDScript tips and tricks!"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=LrtHeM9YOFg)

Quick video on 10 random useful Godot 4 GDScript tips and tricks!

## Transcript

**0:00** · Number one. You can enable and disable the process and physics process functions inside of scripts by typing set process to false.

**0:10** · This will turn off the process function.

**0:11** · Number two. Now, what is the difference between the process function and the physics process function? Well, the process function runs every single frame. So, if your computer is running at 144 frames per second, the process function is running 144 times a second.

**0:24** · However, the physics process runs off of the engine's fixed physics tick amount, which you can find and modify by heading over to project, project settings.

**0:32** · Scroll down to physics, click on common.

**0:35** · And here you have physics ticks per second. And currently it's set to 60.

**0:39** · So, that means that our physics process function is running 60 times a second.

**0:42** · Number three. Now, you can write your timers like this, but a simpler option is to type await get tree dot create timer and then enter in the time that you want to wait for. So, I'll do 1 second and then dot time out.

**1:00** · Number four. Let's say we want to get a value from a node in our scene. For example, this enemy node with a health value. Well, currently I have a function called get enemy health that simply returns the enemy node's health. This works fine as long as the enemy is active within the scene. However, what happens when our enemy gets killed and gets removed from the scene? Well, then our reference is no longer valid and we'll get an error. Well, before trying to gather a value, we can first check if is instance valid, pass in the enemy instance. And since we'll be using this to deny entry, we'll be checking if it's not valid.

**1:31** · And then if it's not valid, we'll return zero for the health.

**1:35** · Now, if we run this, we'll get zero since our enemy is not valid. Number five.

**1:41** · Currently, my enemy variable is an exported node variable, meaning that I can go ahead and assign it within the inspector. An alternative to this can be enemy gets get node type in enemy in quotation marks. This is assigning the node by the literal node name, and this will run just fine now.

**1:59** · However, if I start this and the enemy's not in the scene, I'll get an error. To avoid this, simply append or null to your get node function. Now, if you run this, you won't get an error because it'll just assign the enemy node to null.

**2:13** · Number six. Now, you probably already knew that you could expose variables into the inspector by using the @export prefix. As you can see here, we can now edit these variables within the inspector. But, did you know that you could also organize values into categories and groups by typing @export category, and then the category name.

**2:31** · So, let's do player stats.

**2:34** · And now, we have a player stats category that holds in our two variables. Now, what if we want the player stats to be openable and collapsible just like the transform group here? Well, then simply change this to be export category to export group. Now, we can open and collapse our player stats. Number seven.

**2:50** · Now, I want my health variable to have a minimum value of zero and a maximum value of 100. I can achieve this in the inspector by changing my export type to export\_range, typing in my minimum value, then my maximum value, and then my step value.

**3:04** · So, I'll do by one. Now, I can drag around my health value inside my inspector, but it will never go below zero or go above 100. Number eight. For this next example, I've gone ahead and made the script a tool script, meaning that it can run inside the editor. I've also gone ahead and changed the health value to be a float and the slider to increment by 0.01. At many times, it's useful to run code immediately once a value of a variable has changed. We can detect the value change of a variable and run code accordingly by using a setter function. At the end of your variable declaration, type colon, then enter set, pass in the new variable value.

**3:37** · Here, we can mess around with this value. For example, let's check if the value is less than 15.

**3:45** · If it is, we'll print health dangerously low.

**3:53** · And also, make sure to set the actual health value to be the new value. Now, if we drag our health below the value of 15, you'll see that our health is dangerously low. Number nine. Now, your health being dangerously low can be a big deal. So, in this case, a print statement won't do it justice. Instead, we can do push error. And now, when our health goes below 15, we'll get a custom error.

**4:15** · Number 10.

**4:17** · Now, let's do the opposite. If our health is below 15, then it's dangerously low. However, if it's above 15, then player's in good health.

**4:24** · However, this can be a kind of a clunky way of handling things. Instead, let's create a new variable called good health.

**4:32** · Set this to be true.

**4:34** · If value is greater than 15.0.

**4:41** · And then else, false.

**4:45** · Now, I can replace this conditional statement with the variable here, or we can replace the binary values here with strings. We'll do good health.

**4:56** · And instead of false, we'll do bad health. Then, instead of having these two if statements, we'll print good health. Now, as I drag my health down, I'll go from good health to bad health.

**5:11** · Anyways, guys, if you have any questions or comments, please leave them down below. And don't forget to like and subscribe. Thank you.