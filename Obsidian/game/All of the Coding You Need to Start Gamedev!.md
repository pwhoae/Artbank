---
title: "All of the Coding You Need to Start Gamedev!"
source: "https://www.youtube.com/watch?v=yjiFwz6mS6k"
author:
  - "[[Brainless.]]"
published: 2026-05-06
created: 2026-07-11
description: "Sign up to Milanote for free with no time-limit: https://milanote.com/brainlessgame0526---------------------------------------------------------------------------Coding is one of the most over-fear"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=yjiFwz6mS6k)

Sign up to Milanote for free with no time-limit: https://milanote.com/brainlessgame0526  
\---------------------------------------------------------------------------  
  
Coding is one of the most over-feared pieces of game development that newcomers always avoid. From the overwhelming amount of tutorials (with very long runtimes) to the seemingly complex code you see when watching gamedev videos, it is certainly one of the scariest things to start up. In this video, I try to clear the confusion and overall intimidation of gamedev programming, going over basic programming principles, some problem solving, and other Godot Basics. Though most of the video uses Godot, many of these skills can translate to other coding languages, and even game engines! That being said, I hope you enjoy! ❤️  
  
Please subscribe if you liked the video!  
  
\---------------------------------------------------------------------------  
  
Become a Patreon Member!  
https://www.patreon.com/cw/BrainlessGame  
  
\---------------------------------------------------------------------------  
  
Play "Be One With the Fish" on my Itch page!  
https://brainlessdev.itch.io/be-one-with-the-fish  
  
\---------------------------------------------------------------------------  
  
Discord Server!  
https://discord.gg/U2vMZ485aW  
  
\---------------------------------------------------------------------------  
  
Second Channel!  
@BrainlessToo  
  
Music Channel!  
@BrainlessMusic  
  
\---------------------------------------------------------------------------  
  
Chapters:  
0:00 Intro  
1:12 Game Idea + Setup  
1:43 Scripting  
4:27 Game Design  
7:00 Gravity + Jumping  
8:02 Direction and Input  
9:43 Movement  
11:48 Lightning Round!  
14:12 Outro  
  
\---------------------------------------------------------------------------  
  
Songs used (in order of appearance)  
  
Beach Bum by Yagi Sakaguchi  
https://youtu.be/8WMSSJ3SHAw?si=cmjYPTl-pyYJeabN  
  
Brainless' Theme by MrNachh  
https://youtu.be/LBqH3e2ov7E?si=4uPb4otM5bEYn3dC  
  
Antience (?) - Part 2 by YoguTheYogurt  
https://youtu.be/xSnkJkGnVh8?si=GCQRrZdyWQ1pPzun  
  
Shopping Chart by Qux  
https://youtu.be/L\_y4tYLTXos?si=RzKZlnN-IBJva9HZ  
  
Your Buddy, Homie, Pal by Liteblu and Sparkygan  
https://youtu.be/Gdo7kTnpeSQ?si=EeJ5V9jDd9PjG5MF  
  
Brainy Grains of Sand by YellowInAHat ft. Lemoan  
https://youtu.be/Y1CT\_zInsRE?si=um-EgrGI2biLMB2Z  
  
The Only Slightly Shady Shopkeep by Noah Wesley  
https://youtu.be/gA8Y-ZQ\_eb4?si=zfEFxYryYxUvipa2  
  
Pizzicato Plod by James Dean  
https://youtu.be/mhIt1dnvH4s?si=dnkZmFHdJNDluAih  
  
Green Cat Song by aylamo  
https://youtu.be/2G174BKNsI8?si=lip3vG7v64tSeeYT  
  
Meow by Poke  
https://youtu.be/RW-t2UPyGgE?si=hJ2mibs6Gj2\_w8eP  
  
Fireworks! by LiteBlu and Sparkygan  
https://youtu.be/xjM78MODnW8?si=lQBi\_Ymo8kQH2JAx

## Transcript

### Intro

**0:00** · If you don't have any background in programming, then the most daunting thing when first starting a game \[music\] is coding. I feel like the other pieces of game dev can be seemingly pretty easy until you actually start doing them and get a crazy reality check, but coding's always been the one thing that most new game devs dread the most. And honestly, I kind of get it. There's so many moving parts to it, and when you take a look at someone else's work, you see so many foreign concepts, and it's kind of intimidating. But to be honest, I feel like coding is pretty easy to learn.

**0:24** · It's just that the skill ceiling is so high. That's why in this video, I want to try and give a crash course on the basics of game dev programming. From writing your very first line of code to understanding how scripts work in games.

**0:34** · Also drop some tips along the way, so any existing coders can maybe learn a few things, too. Or just go into the comments and start absolutely tearing me to pieces for my terrible coding practices. I'm going to use the Godot game engine to make the entire game, so some skills might not translate to other engines, but coding and problem-solving is relatively similar, no matter what language you're in. Unless you're using JavaScript or something. That being said, I'll try to have rough chapters for each section in case you want to skip around, but if you don't already know, game development has such an insane mix of different concepts, so I'm going to try to explain the game mechanics piece by piece and break it up like that. But anyways, to not waste any more time, let's just dive right into it.

**1:07** · Mhm.

**1:08** · Now I just need an idea for a game. I also probably shouldn't have jumped off of that boat. Okay, so the concept is simple. You're going to be underwater and you're running out of air. All you got to do is just grab these bubbles to increase the timer to survive, and if you run out of air, you are eliminated.

### Game Idea + Setup

**1:22** · Okay, so let's start up our Godot project, go over to the 2D section, turn on a speedrun timer, what a grave mistake, and get some folders set up for the project. By the way, I literally haven't coded in Godot in multiple months. We get our character body 2D with a sprite and collision shape for our player. Place that collision shape nice and snug on our character, and oh, so it makes him also trap our character in this realm for eternity, and now we're talking. Uh, ignore the speedrun timer. Okay, so now we come on over to our first script, and don't be scared, you won't bite. You wouldn't bite, would you? Oh my goodness, I'm sorry.

### Scripting

**1:47** · So we're going to be looking at the 2D movement template that Godot has, and I'm going to completely deconstruct it, because it's actually a little confusing. So the first thing you'll see here is these two things labeled const. Now, these are basically values that never change throughout the code. These being the player's movement speed and jump height.

**2:02** · But, let's just get rid of those and replace them with good old variables.

**2:05** · Now, what is a variable, you say? I'm glad you asked. Variables are how you store data in the game or any program or code is running. You can also change these during the code, hence the name variable. Variables have a bunch of different types, but we'll just go over three for now. Integers, which are numbers, strings, which are words, and booleans, which are true or false values. So, for example, if your life was a program running, your age would be an integer, your name would be a string, and a boolean would be if you were bald or not, I don't know. But, all of these store values that may or may not change while your code is running. This is super important.

**2:33** · Anyways, we make a variable for the time left before you run out of air and call it time left.

**2:38** · Later, we would make this variable decrease every second and act like a timer. But, before that, let's see the next thing in the script, physics process. Now, this is a pre-made function, which is why it says func right there. Functions are basically a little package of code that runs when you call the function. Think of it as a little machine, and you have a button to start the machine. Calling a function in code is like pressing the start button for the machine. It just does the thing it's supposed to do when you call it.

**2:58** · Now, physics process is a special Godot function that gets called just about 60 times per second. This is super important for physics stuff like gravity and movement, hence why physics process exists. Now, there are a bunch of other important functions, but to not make this video five centuries long, I'm just going to do the movement script. Next, we have this thing that looks like an English sentence, and it kind of is. So, let's talk about if statements. These are extremely important to understand \[music\] and are actually pretty easy to do. for it is, if this is true, then do this. In this code, if you're not on the floor, apply gravity.

**3:27** · And that's really it, but I want to put it in the scope of variables since we just learned them.

**3:31** · So, let's go ahead and do an example.

**3:32** · So, for this, I'm going to be using this command called print. All it does is just write something in the output here.

**3:37** · This is super useful if you want to check the value of a variable in your code, see if your code is even running, or just see what functions are outputting. Okay, so let's say we have our three variables from earlier. So, according to research and statistics today, being older than 35 makes you an unc. Now, I know people say otherwise cuz they call me an unk, but let's just say if you're over 30, you're an unk. Oh gosh diddly darn, isn't that neat? If age is greater than 30, print you are an unk. It's as simple as that. Now, what would you do if your age was under 30?

**4:01** · Well, nothing would happen, because the if statement is false. Now, you could technically do another if statement and say if age is less than 30, then print that you aren't an unk, but coding has a cool thing to handle this, and it's called else. An else statement runs whenever the if statement above it fails. So, we can do something like this. If age is greater than 30, then print you are an unk. Else, print you are not an unk. So, now we basically have a fail-safe for the scenario where the if statement isn't true. This is super useful in games with a bunch of different uses. All right, so we've done a bunch of learning already, so let's take a little detour to the creative side to give you all a break from this information overload.

### Game Design

**4:32** · So, the base version of this game doesn't have too much content, but I'm planning to make two versions. A simple version that's fully commented that I'll release the project files for, and then a game of the year edition with more features and a short story that I'll post as a game on itch. Now, in order to not scope creep, let's do some game design. Now, as you all know, my partner at Prime for this is Milanote, which is actually the sponsor of this video. Thank you so much, my beloved Milanote. Since I find it super easy to use and honestly just really appealing to look at. Also, it has dark mode. For this game specifically, I use Milanote a bit differently than last time, splitting the prototype and full version into their own columns.

**5:03** · I gave them each their own boards, which are basically interactive folders that you could organize all your things in. I used these to separate the realistic prototype from the absolutely 3:00 a.m.

**5:13** · scope creep gold version. I was able to get my ideas out super easily with Milanote's huge list of 100 plus templates just there for you to use.

**5:20** · This makes it super simple to just hop in and add stuff to your board. On mine, my whole references page used the mood board template, where I could just drop in images and write the general idea of what I was going for in the game. I also used their web clipper tool to quickly add any other images while I was searching for references. Talking about the game itself, here's the board I made for the main mechanics of the prototype.

**5:37** · I wanted to make the scope of this game super small, so you wouldn't be completely overwhelmed by hundreds of lines of comments when downloading the game's project files. So, all we have is basic movement, pausing, and two ways to get score. Now, I know it's super simple, but this is supposed to be a beginner project, not Expedition 33.

**5:52** · Anyways, I sorted everything into more columns and laid out some more comments on the right here. I even mapped out the swimming animation with these arrows to show the flow of how I wanted it to look. On the main page, I also have a column for the video, where I've got the working title, my beautiful thumbnail sketch, and even the script. Milanote lets you put entire documents in here and edit them with a nice and simple text editor. This lets me actually lock in on writing scripts and not get distracted by the hundreds of buttons in other text editors. I also love having to-do lists on my board. Whenever I'm coming back to a project, I completely forget what I was working on. So, having to-do list can get me back on track super quickly.

**6:23** · And to make it even better, Milanote is on mobile, so you could even add ideas when you're not at your computer, or you're laying in bed 5 ft away from your computer. As someone who loves organizing stuff and making it nice and colorful, Milanote is perfect for making project plans that I actually want to come back to and look at, even if it's just to see how cool my board looks. And best of all, Milanote is free with no time limit, so you can go ahead and sign up in the description and start making some lovely boards whenever you want.

**6:46** · Big thanks again to Milanote for sponsoring, and back to the project. So, I made a bunch of assets for the background, me, and some bubbles to have a couple of sprites to work with, and they look great. Now, for the music side of things, Anyways, \[clears throat\] let's get back to coding, right? Now, back to the script, I'm going to make a couple changes again, so it's a little easier to follow from a beginner perspective.

### Gravity + Jumping

**7:04** · Now, most of these are foreign words, so let me clear them up real quick. Is on floor is a built-in Godot function that tells you if the player is touching the floor or not. Velocity is the speed that the player is moving either vertically or horizontally. Here, we change velocity.y, which means vertical. We can also do .x if we wanted horizontal movement, but right now we're jumping, so let's stick to y. And lastly, is delta, the amount of time that passed since the last time this function ran.

**7:25** · Now, you see I put 9.8 here, since that's real gravity, but this is actually a pretty bad coding practice called hard coding. So, imagine we have gravity as 9.8 here, and low gravity somewhere else in our code, and super strong gravity somewhere else. We would need to write all of it manually, and that's fine until mhm, I feel like gravity should be a little stronger.

**7:43** · You're going to be scrolling through your code changing gravity for each and every single scenario that you wrote the number in code. To fix this, just make gravity a variable. And when you want to change it, just change the variable. If you're writing raw numbers in your code, it's very likely that you can make it into a variable. Trust me, avoid hard coding numbers as much as possible. It's super hard to keep track of and changing it later is a nightmare. Anyways, that's our gravity for the game. Next up is direction and input. So in the old pre-made script, they actually tell you that this is a bad coding practice. So real quick, let's talk about input maps.

### Direction and Input

**8:11** · These are actually not done in code and are super easy in Godot. You go over to project, project settings, and then click the input map tab. Here's where you basically make all the buttons and key binds for your game. You write the name of the button, press add, and you can now press this plus button where you could link whatever input you press on your keyboard to the specific action. So let's get this working for jumping, moving, and anything else we need.

**8:30** · Remember what you name the inputs cuz that's how we're going to refer to them in the code. So back in here, we take this code and Okay, so now we have a new character here called input, which is something called a class. Remember how functions were like a machine that you could use?

**8:43** · Classes are like a factory that you could use. They have a bunch of built-in functions and properties inside of them that you could use by just putting a dot after the class name. So here we're using a function from the input class called is action just pressed. This checks if an action was just pressed. We check if this specific action was the jump input we made earlier. And if we pressed it, we apply a big amount of velocity to the player since this is only happening one time right as we press the jump button. Now, there's a little issue here.

**9:07** · Mhm, that is not how humans jump. Now, a big component of coding is problem solving, something you learn with a lot of practice. Now, this is a pretty simple problem. When we press the jump button, we jump. Of course, we could jump infinitely, we can press it whenever we want. So to not jump while we're in the air, we need to only be able to jump when we're on the floor.

**9:26** · Mhm.

**9:29** · So inside of if statements, you could add the word and or the word or to check multiple things. So here we check if you press the jump button and you're on the floor. So both of these need to be true in order for this code to run. So, this fixes our issue since we can't jump when we're off of the floor now. Yippee!

### Movement

**9:43** · Okay, time for some movement, guys. Come on, I'm not seeing enough movement. So, this one line gets whether you're pressing left or right and makes direction equal to -1 if you're moving left or 1 if you're moving right. This is through another custom function called get access. By the way, there's an overwhelming amount of functions in Godot, but one amazing thing is that for almost all of them, you could just hover over them and they tell you exactly what they do. Also, the Godot document is an amazing resource. So, I'd recommend checking that out if you have any questions about a specific function or how something works.

**10:10** · Anyways, after we store whether we're moving left or right, let's actually make the player move in that direction with an if statement. So, let's map it out first.

**10:17** · If direction is -1, we move left. If direction is 1, we move right. If direction is 0, we stop moving. Pretty simple, but let's put this into code.

**10:24** · So, what do we do inside of the if statements? Well, remember our good pal velocity from earlier? It's time to use the X property since we're now moving horizontally. So, if direction is -1, let's just make velocity.x equal to -300 and then fill in for the other statements. Now, you might notice some things. Unlike gravity, we're making velocity.x equal to -300, not adding like gravity does. Why? Well, movement isn't really gradual unless you want it to be, but we usually keep velocity constant for 2D games for consistency.

**10:51** · Next, you might say, "Well, Mr.

**10:52** · Brainless, these numbers seem rather hardcoded." And earlier, we had a perfectly ripe speed variable for the player's movement speed. Lastly, you might say, "Well, Mr. Brainless, we could cleverly use an else statement to make the code more cohesive." Boom! Now, we still have one little issue here, though. Else statements only connect to the previous if statement, not both. So, to connect all three of these together, what we can do is this. Now, I know, what is that? Else if is basically just another if statement, but it makes it all into one chain.

**11:17** · In this chain, the first thing that's true ends the entire chain as opposed to a bunch of if statements where each and every single one is checked. This is good for making your code a little more efficient and also just keeping things consistent. So, now that we have our movement, we could finally end this off with move and slide, which basically just allows the player to move. I'd always just keep this at the end of physics process for now. Okay, how are we looking on time?

**11:39** · Oh, um so I did some off-camera grinding. All right, guys, look. I really didn't expect it to take that long to explain like 25 lines of code, but you know, you live and you learn, right? So, what I'm going to do is quickly go over a couple more important concepts and then show off the actual game that I made for this video. So, let's start with for loops. These are amazing. They look like this and basically run code the amount of times you tell it to. This letter I can be called anything and actually keeps track of which iteration you're on in the for loop if you want to use it. While loops are similar but have a bit of a difference. You don't decide when they end. They keep looping over and over and end if something happens.

### Lightning Round!

**12:10** · So, it's really important to make sure that you make it possible for the while loop to end or else we will have big problems.

**12:16** · \[music\] So, for example, while I'm breathing, I'm alive and healthy. If I stop, functions. Remember the machines that we used earlier? Well, you can actually make them yourself. One thing I want to talk about though is parameters.

**12:27** · So, functions have these parentheses after their name and sometimes there are words in there. These are parameters, which are basically inputs that you put into the machine whenever you start it up. Depending on what the function does, it could have a bunch of parameters or it could have none. Moving to Godot stuff, onready variables. So, these bad boys are created as soon as the script starts up. But one amazing thing I want to show you is how you can just drag nodes into scripts by just holding control and dragging it in. Now, before you do that, wait wait wait.

**12:51** · If you right click the node and press access as unique name, the code breaks way less cuz you're accessing it by name instead of the path. So, if you ever change the location of the node, it won't destroy everything. But why would you even want to drag it in, you say?

**13:03** · All right, buddy. Show me how to play an animation in the game.

**13:05** · Well, we don't know. You didn't actually teach us.

**13:06** · Exactly.

**13:06** · So, we drag our animation player into the code and whenever we move left or right, we use the animation player's play function to play its respective animation. I know, right?

**13:15** · Talking about the animation player, when I started out, I had no idea how this thing worked. So, let me do a quick rundown. So, when we add an animation player and have it selected, there's a new menu on the bottom where you can make animations. You click the animation button and make a new animation. Let's just do walking for now. So, this is the menu you're going to see and now you could basically go into any node in the player and keyframe it. Keyframes are the basis of animation and are basically points where a value changes. This can be size, rotation, or in this case, the current frame of the sprite sheet. So, my walk here is paired with my idle and it's in a 2x2 grid.

**13:42** · So, in the animation section of the sprite, I change the horizontal frames to two and the vertical frames to two. You can change this to fit your own sprite sheet. Now, we can change the frame and it shows each frame of the character's animations. So, we go to frame zero and click this key. Click create and we now have our first \[music\] frame in the timeline here. Move forward a bit, go to the next frame, and then place your second key. Now, when you hit the play button, it just plays like a video. In the animation player, you can basically key anything to make it like a video.

**14:06** · So, you can let your creativity run free here. But, in this case, we're just walking. Also, if you want to loop the animation, just click this loop button over here. Anyways, that's just about all I'm going to cover for now. I spent around a total of 15 hours making the assets, sounds, and code of this entire game just for the video to end up covering like 5% of it. I then spent like an extra 50 hours making the full version with a bunch of voice lines and a little story. So, to keep you all at bay, I released the full Game of the Year Edition on itch.io and also uploaded a simplified project with comments everywhere. I tried to explain each and every line of code so beginners can come in and see each and every piece that went into creating it.

### Outro

**14:37** · So, hopefully it could clear up some more questions about coding that you might have. Also, if you want the project file for the full Game of the Year Edition that I made on itch, I'll be giving that one out to supporters on my Patreon.

**14:47** · Link in the description. You'll get your name shown at the end of my videos, an exclusive Discord role and channel where I actually talk, some epic brainless news and updates, and much more. Yes, the rent is due, bro. But, that's all for now. I hope you enjoyed and I hope you learned a little something. If you're a seasoned coder and want to leave some sage wisdom in the comments for beginners or anything important I missed, please feel free to. I know this video was extremely fast-paced. I wanted to try to find a balance between entertainment, teaching, and keeping it concise, but I really found out the hard way that this is extremely difficult to do. So, I'm sorry if I skipped over something or was a bit vague about how something worked.

**15:18** · In other news, all All amazing music you heard throughout this video was made by the incredible Brainless community. I held a music jam recently and everyone came together to create a bunch of songs that are free to use as long as you give credit. I actually compiled them into two albums that are up on the music channel. So, if you want to check them out, head over there right after you head over to my Patreon and subscribe. Anyways, I really hope you enjoyed this video. Thanks for making it this far and um goodbye.