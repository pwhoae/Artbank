---
title: "Quick + Easy way to Polish Buttons in Godot!"
source: "https://www.youtube.com/watch?v=cIetsUMtyQc"
author:
  - "[[Queble]]"
published: 2026-02-08
created: 2026-11-27
description: "Here's a quick tutorial on creating JUICY buttons in Godot!This system uses a modular approach, making it easy to re-use this script accross multiple projects/games!Thanks for watching, leave a com"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=cIetsUMtyQc)

Here's a quick tutorial on creating JUICY buttons in Godot!  
This system uses a modular approach, making it easy to re-use this script accross multiple projects/games!  
  
Thanks for watching, leave a comment/subscribe if you found this video useful, and I hope you have a great week! :)  
  
Credit:  
• Godot emoji (used in thumbnail): https://toongoat.itch.io/godot-pixel-art-emoji-pack  
  
Links:  
• Become a Patreon to support the channel and get perks! https://patreon.com/QuebleGames?utm\_medium=unknown&utm\_source=join\_link&utm\_campaign=creatorshare\_creator&utm\_content=copyLink  
• Checkout my website: https://www.queblegames.com/ (1 on 1 Godot tutoring, blog posts, etc.)  
• I also offer 1-on-1 Godot tutoring through Fiverr: https://www.fiverr.com/s/qDBPLbd  
• Twitch: https://www.twitch.tv/queble\_game\_dev (game dev streams)  
• Godot Download: https://godotengine.org/  
  
This video was recorded in Godot v.4.6.stable

## Transcript

**0:00** · So, I've been working on this game for a game jam that I'm hosting, and people seem to really like how the animated buttons are looking so far and also the transitions. But, I want to make this video showing how to animate buttons in a modular way. Okay, so I'm in a brand new project here. I just have a regular button. The first thing I want to do is make a new class. Basically, we're going to make a component that you can attach to any button and it will give it animation capabilities. And I'm just going to call it a button effects module. It can inherit from node 2D, but I do want to give it a class name, so it will just be called the same as the file name, button effects module.

**0:27** · Now, the animations will be handled with tweens, so I want to be able to specify the transition and easing types of those animations. I'll make two export variables here, so the first one will just be called ease type. And we can use the tween class's built-in enum, so tween.ease\_type. Same thing for transition type, but I just want to use tween.transition\_type.

**0:48** · Now, really quick, let's also specify the duration with an anim duration export variable. This will just be a float and I find that 0.07 looks pretty good. We'll also have an export variable for the scale amount, which will just be a vector 2 and by default I'm going to set this to vector 2 and we're going to say 1.1 on each axis. I also want the button to rotate a bit when you hover over it, so you'll see how it looks in a second, but I want to have rotation amount as another property. This could also be a float and I find that three looks pretty good. Last variable we need at the top is just an onready reference to the button.

**1:18** · Now, one of my last videos kind of goes against this, but I'm going to assume that this component will always be a direct child of a button, which I think is pretty safe to say you're never going to need to run this on its own. So, we'll make an onready variable for this. It'll be a button type and I'll just set it equal to uh get\_parent. Now, we can finally define the ready function. In here, it's just super basic setup. We obviously want to animate the button whenever the mouse enters or exits, which we can use the built-in button signals for that.

**1:43** · So, I'll say button.mouse\_entered.connect. And we're going to connect these both to the same function just to make things a bit cleaner. So, we'll be connecting it to \_on\_mouse\_hovered.

**1:54** · And let's copy be name and define the function down here. So, I'll say funk on mouse hovered. And the only argument we need is just the hovered boolean. This function can also return void and let's just pass in here for now. But when we connect the mouse entered to this function, I want to say that hovered is true. So I can do that by binding true to the specific method call. So on this connection, I'll just say dot bind and we're going to pass in true to this. Now if I have my cursor on this line, I can hold control alt and hit down arrow to duplicate it. And we want to do the same thing here for mouse exited.

**2:22** · And instead of binding true here, we're just going to switch this one to false. Now in this function, we can start set up the animations and I want to use a tween for this like I said earlier. So I'm going to make a new variable at the top called tween and we just have to set the type right now because we'll be using a function to actually initialize it. And I'm going to make that function down here. I like to do this one called reset tween and there are a few ways to do this, but it can just return void and all it will do is just check if tween exists, then we want to kill that tween.

**2:49** · So you can say tween.kill. And then after we make sure there's no tween present, we can set tween equal to create tween, which is going to make a new tween object and bind it to this module. And because we might use this in multiple places, let's also set the ease and transition types down here. So after create tween, I can say set ease and we can just pass in ease type and I can also chain on the set trans function and pass in trans type. And then really quick, just so that we can do multiple animations, I'll also call set parallel and set parallel to true on this tween.

**3:19** · So now that we have that set up inside of the mouse hovered function, I'm going to first reset the tween and then I'll be tweening the scale and the rotation of the button. So I'm going to say tween.tween property on object button.

**3:31** · The property I want to tween is the scale for now. Now I'll be using a ternary operator here, but if you want, you can type this whole thing out in an if else statement. So I'll be tweening to scale amount if hovered, else I'll be tweening to a vector two of one. And usually I would keep this in one line, but I'm going to hit enter here just so that you guys can read it. For the final argument, we're obviously just going to pass in the anim duration. And using that same trick before, if I select these two lines, hold control alt, hit down arrow, we can duplicate this. We just want to change the property that we're tweening to rotation degrees.

**4:00** · And if it's not hovered, we're going to tween to 0.0, but if it is hovered, we're going to tween to the rotation times either 1 or -1, which is just a random number. So, I will say rotation amount multiplied by And there's a few ways to do this, but I'm just going to make a new array with -1 and 1 as the contents and call the random function on this. So, now whenever the button is hovered, we're calling two tweens, and you can add more stuff to this if you want to do sound effects through here, this would also be a great place to do so.

**4:28** · But with this now saved, I'm going to add a new child node to my button, and I'm going to search for button effects module. Because it's a class, I can add it here, and you can see in the inspector, we get all these nice options to assign the easing types, the transition types, the time, all that fun stuff. So, with the default selected, let me run this. And you can see that we get this pretty nice hover effect. Now, you might notice it is rotating based on the top left, which is the default pivot offset. And that's where the most fun part of this tutorial comes in.

**4:53** · If you didn't see my video on 4.6, we just got a new feature where you can set the pivot offset ratio, which is a lot easier than manually figuring out the size and setting the pivot offset based on pixels. So, we can do that in the ready function here. I'm just going to go underneath and say button.pivot\_offset\_ratio.

**5:11** · This will be set to a new vector 2 with 0.5 on each axis. This will set the pivot to the center because 50% on each axis, right? And now it's going to look a lot better. So, you have this nice transition type. Another really quick thing I'll mention is when the button's pressed, maybe you also want to play a little animation. So, originally, I just connected the mouse down and mouse up signals to the same function, and that technically works, it looks okay, but if you like hold down the mouse and then drag off the button, it does create a bug. So, I think the best way to do it is just make a new function, we'll call this on button pressed.

**5:41** · It doesn't need any arguments, and we can just return void here. Let me reformat this cuz I just pasted the code in. Quick tip, if you hold down left alt and click, you can make multiple cursors, so I can just enter here and tab and make this a bit more readable. But, the key difference with this on button pressed function is I'm tweening the scale and the rotation still, but I'm using the from function at the end of the tweener to specify where I want the animation to start from, obviously. Now, I do still need to connect this, obviously, so I'll do that in the ready function as well.

**6:07** · I could just say button.pressed.connect, and we will pass in the on button pressed. And now, if I save this, go back to my game, you can see whenever I click the button, it plays another really subtle animation. Now, obviously, this is great for games I've made, but you probably want to tweak a few things and make it your own. But, I feel like this is a pretty good component that you can just copy between different projects and throw on buttons to make them a bit more polished. Taking this a step further, try to add sound effects or something similar if you want to continue with this idea.

**6:36** · But, if you enjoyed this video or learned something new, be sure to leave a comment and hit that subscribe button to get more Godot news and tutorials. I want to give a quick shout-out to all the channel supporters, and exclusive thanks go to Delvarax, who is now a Patreon and YouTube member supporter, Pixie's Game Dev, who also makes Godot tutorials, Randall Lassiter, and also Jar Lark.

**6:57** · Thank you guys so much for your support.

**6:58** · And if you want to become a channel supporter yourself, there's a couple links in the description you can check out. You get exclusive early access to videos and also some other perks. And then, if you want to join the Discord and just get involved in the community or check out the other links in the description, be sure to do so. But, thank you so much for watching. I hope you have a great rest of your week, and I will see you guys in the next one.

**7:16** · Bye.