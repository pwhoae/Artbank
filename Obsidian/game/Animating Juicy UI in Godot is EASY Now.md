---
title: "Animating Juicy UI in Godot is EASY Now"
source: "https://www.youtube.com/watch?v=J5HlXFguaX0"
author:
  - "[[KobeDev]]"
published: 2026-07-15
created: 2026-08-13
description: "Code and assets used: https://github.com/kobeDevStuff/Offset-transform-tutorialPlay Monkey Business now! https://store.steampowered.com/app/2888940/Monkey_Business/Join the discord! https://discord."
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=J5HlXFguaX0)

Code and assets used: https://github.com/kobeDevStuff/Offset-transform-tutorial  
Play Monkey Business now! https://store.steampowered.com/app/2888940/Monkey\_Business/  
Join the discord! https://discord.gg/wCj8yT2Ztf  
Instagram: https://instagram.com/kobe.dev  
Play my games here: https://officialkobedev.itch.io/  
Twitch: https://www.twitch.tv/kobedevstuff  
  
In my project I got genuinely so sick of animating UI in Godot, I almost considered having no animations.... adding a control node for every button, image, or object I want to animate, storing the starting position in a variable, and only allowing one to happen at a time was honestly maddening, if I missed even one control node, the whole thing would not work. and if the user resized the window in the middle of the animation, the whole UI would also just break on me.  
Well now Godot 4.7 has introduced a great way to fix that, called offset transforms.  
these make animating UI and creating that sweet sweet game juice so much easier, instead of storing the position, offset transform just changes the visual position of the button, allowing you to do stuff like move a button 20 pixels down when you press it, and then back up 20 pixels, without needing any extra position data. and best of all, it allows you to do this while these nodes are in containers, which before you couldn't even touch these values in the inspector. This new addition for Godot 4.7 has genuinely made my life so much easier!  
  
0:00 Intro  
0:39 Old way of animating  
1:17 Animating the buttons  
2:49 How offset transform works  
3:24 Animating the buttons  
3:51 Tween ease/transition types demo  
4:03 Animating the buttons  
5:39 Animated button example  
5:50 Pause menu example  
6:27 Pause menu setup  
9:55 Animating the pause menu  
14:25 Outro  
  
#gamedev #godot #tutorial

## Transcript

### Intro

**0:00** · Every button and element you're watching move on screen is using the new offset transform feature in Godot 4.7. But in previous versions, animating stuff like this was pretty annoying. But Godot 4.7 has fixed all of it. Uh you don't need any extra nodes, no stored variables, and it works \[music\] inside containers, which is probably the biggest thing about it. I'll show you exactly how I use these in my game to make the UI feel really juicy. All the code, again, is going to be linked in the description.

**0:26** · And there are chapters also if you want to jump to a specific part of the video.

**0:30** · Also, just quick heads-up, uh this isn't a start-from-scratch tutorial. I'm going to assume you guys have some general stuff set up in your project like a main menu or pause menu. Yeah, let's get into it. This is just a basic example demo just to get you guys started. And what I want you guys to notice is in the inspector dock on the right, um if you have a button as a child of a container, all of this will be grayed out and you can't change any of it.

### Old way of animating

**0:51** · To actually animate the transforms, what you would have to do before is, I mean, there's a couple other ways to do it, but the most robust way was to have a control node and then have your button as a child of the control node and then animate the actual button here instead. So, like, if you wanted to change the scale, \[music\] you'd do it like that. If you wanted to change the uh the size, do it like that.

**1:13** · Now, this is fine, but there's easier ways to do it now. So, first things first, you actually want to create a script for the button itself. Uh I've called it something like an animated button, but you can name it whatever you really want. So, you have your extends button. I'm going to name it. So, I'll go to class name and I'll call it animated button. And first things first, with your script, you want to decide what animation is actually going to play with your button.

### Animating the buttons

**1:39** · With buttons, it's really common to have a small little scale increase when you hover over it, and then something happen when you press it. So, we're going to create three constants, \[music\] uh rest, hover, and squash. And I'm going to also create a tween node that we're going to reference later on. And coming on to your ready function, we're going to also, just in case, change offset transform enabled, and we're going to set that to true.

**2:06** · And then we want to connect the three main signals that we're going to listen to. So, again, you can listen to different signals, but for me, I'm going to listen to mouse entered, mouse exited, and also button down. So, the reason why it's yelling at us is cuz we need to actually create the functions, so we'll go over here and we'll create all three functions.

**2:25** · So, now for the actual UI animation. The way we're going to do this is we're going to first check if the tween exists.

**2:33** · Uh and if it does exist, it means something else is using the tween, so we're actually just going to kill that animation. And then right after we're going to create a new tween.

**2:42** · So, we can go tween. tween property. I'm going to pick the scale in this instance.

### How offset transform works

**2:49** · Um now, let me just quickly demonstrate what it looks like. So, if I do this rotation, you can see the square stays the same. We're just changing what it visually looks like. If you want to change that, you want to actually make it spin, then you can uncheck visual only, and then now this is the actual the orange rectangle is going to be what the click mask looks for. So, if you have your mouse hovered over this area, it will count as your mouse being over the button as compared to normal, where this is not in the orange rectangle, it won't count.

**3:20** · So, I would recommend in most cases keeping this on. So, we're going to pass in self as the object, and then we're going to put in the scale.

### Animating the buttons

**3:30** · So, we want to go with offset transform scale, not regular scale. And the final value for the mouse entered is going to be the hover scale. Now, the actual time of it is going to be another constant that we'll just put up. I'll just choose 0.2. It's fairly short. Now, with tweens, you can choose the ease type, and I would recommend actually changing this. I'm going to choose in this case ease out. And then you can actually also choose the transition type. There are 12 different transition types. So, just take a look and see which one looks best to you. In this case, I'm going to go with the back transition.

### Tween ease/transition types demo

**4:00** · Now, I'm actually going to do something really similar for the mouse exited as well.

### Animating the buttons

**4:06** · So, we can copy and paste that. We're just going to change the hover scale to be the rest scale. And we're not going to touch the other transitions, either.

**4:14** · On the animation button button down, that's when we press it. So, we're going to again copy and paste. And we're going to change the final value to the squash scale. And maybe with the time I've got to change this before.

**4:30** · It doesn't have to be the same for each one of them. Maybe you want your squash to be really fast. So, I'm actually going to go down and say squash time.

**4:37** · I'm going to put that at 0.1, maybe. I'm actually going to change the transition and I'm going to change it to a quadratic.

**4:46** · And then we're going to do right underneath tween.tween property. Now, you'll notice there's a fairly common pattern of where killing the tween and then we're creating a new one. So, what we can actually do is we can make another function just for that. I'm going to just call it like restart tween. And we're actually going to return the tween itself.

**5:07** · So, I just messed up with this one.

**5:08** · We're going to cuz we're pressing the button, we're going to end on the hover.

**5:13** · So, then after creating the restart tween, we're going to call restart tween. And we'll just go restart tween.tween property.

**5:21** · And we'll do that for the other two as well. Now, for this one, we'll just go uh the tween.

**5:28** · And since we're using it more than once, we can just do that. Now, all you need to do is just make sure you drag the actual script onto each button that you want it to work with. Now, if we go and we can see our animations are very nice.

### Animated button example

**5:42** · They're working like normal. Our button press is doing a little squash. Now, this is a very basic use for it. Um you can go in very deep. So, I'm actually going to show you one more example, and that example is going to be a pause menu. A pause menu is also another scene that you probably will have in your project, but if you want to just recreate it, you can pause at any time and just recreate the current scene structure that I have set up right now. Uh we've got our buttons. Each button has the script attached to it like before, and then the only difference is we have a pause menu script.

### Pause menu example

**6:13** · That's going to handle a little bit more of the animation. So, for this animation, I want to have a little bit of a show up like this when we open it, and then a slide out when we uh close the pause menu. So, each time I'm actually clicking the escape key. Now, with your pause menu, we're going to start off by defining some of our constants. Uh the offset is going to be the X position uh that our buttons go to, so like off the screen. The slide time, obviously, you know, time we're going to animate, and the stagger is going to be a slight delay per button to create kind of like Mexican wave effect.

### Pause menu setup

**6:44** · Um we're going to have also some node references. So, we're going to have a reference to the panel container, and also to the uh VBox container. Um we're also going to have some member variables, so we're going to create an array to store all of the buttons in.

**7:01** · This will help with uh animating the actual buttons. So, array of uh animated button cuz we used the class name, and that's just going to be empty at the start. And then \[music\] the tween, like before, and the score tween, and then a quick little bool just to check whether our pause menu's open or closed. So, uh if you haven't already got your logic for the pause menu, that's what I'm going to add really quickly now.

**7:28** · And so, this uh event.is\_action\_pressed, and in the brackets escape, um I've actually just gone to project settings, gone to my input map over here, and then added a new action named verbatim esc, so \[music\] spelled like that if it's uh you know capitalized doesn't really matter as long as you name it like this and it will auto complete for you as well so you can just press tab and then we're just going to toggle not open so we're switching open

**7:57** · and then we're going to just set open to be not open so we're we're toggling it each time and then we're also setting the visibility to show open so let's go ahead and run this scene and we can see we are adding it and removing it so in ready we want to actually store the buttons in this array so we'll go over here funk ready

**8:25** · we're actually going to loop through the children of the V box container and for each child we'll just do a quick check to see if it is an animated button so if child is animated button and then if so then we can just go buttons dot append child and then finally at the end we're going to create a new function but what the functions essentially going to do is just hide the panel container by default so we'll just go over here and say panel container dot visible

**8:53** · equals false remember everything that you want an animation with you do have to check this offset transform for now I'm just going to change the modularity of it so I'm just going to make it invisible so we'll create a function called reset this reset is going to hide

**9:11** · the panel container so panel container dot visible equals false it's also going to go panel container dot modulate equals color dot transparent it's going to be a visible color we're going to go open is going to be set to false as well cuz we're closing it and finally for each button in the buttons array we're going to go through that and set that transform to the closed offset that we have here.

**9:39** · button. dot offset transform position equals closed offset. Oops, sorry. Missed an in there. So, yeah, then we can go over here and we're just going to call reset. Now, one more thing to do is actually animate it. So, it will work, it's just not going to look like anything. And so, I want to look at this toggle function here.

### Animating the pause menu

**10:04** · Um toggle is going to happen each time escape is pressed, so that's what we want our animations to reside in. So, similarly to before, we're going to do our common pattern of checking if the tween is valid and is in the scene and if so, we'll just kill it and then create a new tween. So, first we'll check if we're in the opening phase, so if should open, uh then we'll set the panel visibility to true. So, really simple panel container.

**10:33** · Now, we're going to figure out how we can animate the buttons in a chain essentially. So, we're going to go var count is going to be the amount of buttons and we'll just set that to be buttons.size.

**10:48** · And we'll just loop through each index in count. So, step is going to be going up if we should open and if it's not, then we are going in reverse order. So, that's what this count minus one minus I means. And also, the target is going to be dependent on whether or not we should open. Obviously, if we're opening, then we want the target to be zero like this.

**11:10** · So, if we go over here to offset transform again, we're going to just say, "Okay, it's back to zero." If not, then we're going to do that -500 and we can just check Oh, sorry, I did -5000.

**11:21** · And we can just check that it's completely off the screen. That's what we want to see. Then, we're going to use our tween and tween the property. So, tween .tween property. The object is obviously going to be uh the index of buttons.

**11:34** · We're taking the transform position and the target is going to be the target that we just defined here. The time is going to be the slide time that we already initialized at the top. Now, we're going to set a couple of methods for the tween. This is almost like a tween tutorial as well.

**11:51** · Um but, we can do a little delay. So, we go set delay and then the delay is going to be the step and I'm going to multiply that step times by stagger.

**12:03** · So, what that does is cuz our stagger is like 0.06, small amount. Um the stagger will be more and more for each iteration of this cuz the step is going to be going up. Um if we're going out, then we're going to reverse it. So, it's the same thing. It just looks reversed. Again, you guys remember from before about the transitions. I'm going to go with back again. And then, I'm going to set the ease to ease in. And then finally, we're going to actually make the panel fade in and out. So, we can go over here and we're going to go tween. tween property.

**12:39** · And the object is going to be that panel container modulate.

**12:46** · Final value will be color white.

**12:53** · And if not, we're going to go color .transparent. \[music\] And then the time for that, let's just set that as maybe the same time as the slide time. So, this is going to run the same time as all of the buttons going in. Remove this visibility toggle here.

**13:10** · So, we go at the very end, we're going to wait until all of the other tweens have completed. \[music\] The way we can do this is we can call tween.chain.

**13:21** · So, tween.chain works because we've got a parallel tweener here. This parallel tweener, all of these buttons tween at once. This is tweening at once. So, this big chunk of code is running all at once.

**13:32** · A change just waits for the last tween to finish before this one starts. So, chaining it together. And then we're going to tween a callback.

**13:40** · Because the visibility, we could technically tween but it's not like a It's not value that you can interpolate between. So, the callback, we're just going to have a function here. And the function will return void. And the function is just going to be a panel container {dot} visible equals false. So, this will happen if the panel needs to close. So, then we should go and check first if should open.

**14:09** · And if that's false, then we will run this.

**14:12** · I just should say as well, with this ease out, it's going to look a little bit weird. You can just go here and you can just say, you know, if should open then we'll ease out. If not, we'll ease in. Again, just as a reminder, the code is available in the description along with links to this game that I'm making actually right now that you see on screen.

### Outro

**14:30** · Playtest is out on Steam. If it looks interesting to you, it's an incremental typing game. And we'd love to hear your feedback on the game itself. If you like this video and you want to see more of it, please consider subscribing. Helps me out a ton. But yeah, that's all for today. I'll see you in the next one.

**14:50** · \[music\] \[music\]