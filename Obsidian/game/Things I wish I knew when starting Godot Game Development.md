---
title: "Things I wish I knew when starting Godot Game Development"
source: "https://www.youtube.com/watch?v=5TPFW6RYy0E"
author:
  - "[[Queble]]"
published: 2025-01-09
created: 2026-08-18
description: "I started using Godot about 5 years ago, and there are a TON of things I wish I would have know back when I was first getting started.Game development is the kind of hobby that requires an incredible"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=5TPFW6RYy0E)

I started using Godot about 5 years ago, and there are a TON of things I wish I would have know back when I was first getting started.  
Game development is the kind of hobby that requires an incredible amount of time and effort spent learning, and it's especially difficult when you're just getting started.  
With that being said, I've put together a list of tips, tricks, and general advice that I wish I knew back when I was first getting started with the engine!  
  
If you enjoyed the video, leave a like and subscribe!  
Thanks for watching, and I hope you have a great week! :)  
  
https://discord.gg/kgWXhZjd69  
https://www.twitch.tv/queble\_game\_dev  
https://www.patreon.com/QuebleGames  
  
Plugins Mentioned in this video:  
\- Dialogic: https://github.com/dialogic-godot/dialogic  
\- Panku Console: https://github.com/Ark2000/PankuConsole  
\- Godot Steam: https://godotsteam.com/  
  
Download git here:  
https://git-scm.com/  
  
Book a 1 on 1 Godot tutoring session:  
https://www.fiverr.com/s/o8Wq7AG  
  
Download Godot here:  
https://godotengine.org/  
  
Timestamps:  
0:00 Intro  
0:10 F1 to Check Docs  
0:26 Don't write 'state-dependent' code!  
1:10 Try not to use Static Paths to nodes  
2:49 How to use breakpoints  
3:56 Start using Version Control  
4:43 Static Typing as much as possible  
7:45 Research existing addons / plugins for Godot!  
9:34 Make more scenes  
10:24 How to make Resources unique  
11:26 Research Signals early on!  
11:56 Write readable, commented code  
12:37 Outro, thanks for watching! :)  
  
Join this channel to get access to perks:  
https://www.youtube.com/channel/UCjjFS6h7Dc7gCaq6\_PX8jUg/join  
  
This video was recorded in Godot v.4.4.dev6, but most of these methods should work in all versions of Godot 4.

## Transcript

### Intro

**0:00** · I've been developing games for over 10 years and the past five or so years have been with the gdau game engine today I want to talk about some of the things I wish I knew when I was getting started with the engine so the first thing I want to mention is at if any point you want to check the documentation on a topic simply hit F1 on your keyboard and

### F1 to Check Docs

**0:17** · this will bring up the search so you can literally search for like anything in gdau and then of course if you click on the button right here you can open the online documentation if you would like the next tip I have is to not write code that's dependent on the layout of your scene tree or the state of your game so it's really important to create objects that are able to run on their own so for this example I have a player and they essentially just have a health value and what I'm doing is when their health changes I want to update this UI element

### Don't write 'state-dependent' code!

**0:47** · and I don't want the player to be dependent on that UI element existing so what I've done instead is I've created a signal that emits when the health is changed and then the UI can just directly connect to that signal and update whenever the player updates so as a base note just make sure that all of your scripts and nodes can run independently without needing to rely on anything else existing now this next tip is something I see a lot of people doing and it's extremely bad practice so I wanted to cover this in detail but

### Try not to use Static Paths to nodes

**1:18** · essentially it's to not use static paths or paths that are prone to Breaking so in my example I'm on the player node and inside of this script I want to get a reference to the world node which is obviously a parent now the way you would typically do this is you can use the dot

**1:36** · dot um inside of a string path and this will get the parent so essentially I'm doing dot dot SL do dot which gets the parent node and although this does work it's really not recommended because first of all I don't know what this node is with just the two dots I don't actually have a visual representation of

**1:56** · what the node is called inside of my script view so in that case it makes it more difficult to edit as a developer and on top of that it's going to break really easily so let's say I went into my scene and I was going to change the order of things maybe I wanted to drag the player outside of the entity folder so that they could be on their own section right all of a sudden I would need to update my code and I might not even notice that this is a problem until it starts throwing bugs at me which is really irritating so generally it's better to avoid using static paths like

**2:28** · this and instead what I like to do is maybe turn this into an export variable and then instead only set the type of the property and now if I click on the player I can just assign this property to the world node and then even if I change the name of world or move the player around I can be assured that this world reference is never going to break now more on the topic of debugging your code typically you'll use a lot of print statements when debugging and those can be really helpful but sometimes you want to pause code until a specific thing

### How to use breakpoints

**3:01** · happens and you can do this with breakpoints so if you're new to coding or game development in general a breakpoint is what you create by going to the left of a line right here and you can essentially just click on this Red Dot and it's going to stop your code at the specific line so what I'm going to do is add a break point right here and then when I run my project if I input an

**3:22** · event it's going to basically pause my game and give me a full breakdown on the current state of the project so let me hit that input put and you can see that I got an error well it's actually just a breakpoint but it gives me a full rundown on exactly where it happened and

**3:37** · some really helpful information on exactly what's going on with this node and the project in general now if everything looks good from here I'm able to go to this little icon right here and just continue the code so by clicking this everything is going to continue to run normally and you can obviously see how that would be really useful for debugging so next up is to use Version Control so if you don't know what version control is I would highly recommend looking into git that's git

### Start using Version Control

**4:06** · and there should be a link to that in the description and then I also have a card which will be in the top right right now but that'll link you to a video series which I've created that will get you started with using git and Version Control but essentially what that will be is saving the state of your game so you're able to make commits and

**4:23** · then save all your files at a specific version and that way if you break your code or if you lose files on your computer you're able to roll back to previously committed versions and save all of your work which is essential for game development like if you don't have this setup go do that right now because you really want this and it's extremely helpful so my next tip and something that you probably noticed about my script right here is going to be static typing so I'm going to make a new script to kind of show that off so static

### Static Typing as much as possible

**4:53** · typing essentially refers to telling gdau what the type of a variable or a return is going to be so typically if I was to let's say make a health variable I would want to set it equal to something like 100 when the game starts now let's say I'm inside of my ready function I for some reason forgot what health was supposed to be so maybe I didn't get a lot of sleep last night and I just set Health to like uh my name or

**5:22** · something like that by default gdau will not detect that this is an issue and if you're coming from other languages this is something that you typically don't want to do or can't even do but generally we don't want a variable that has a type of int to be able to get

**5:38** · assigned to a string so maybe we don't notice this issue we run the game and then we notice that we get an error or something and realistically you're going to find it and you're going to fix it but what if we want that to show up inside of the editor before we actually go through the trouble of running the game well that's when static typing comes in handy so by adding a colon at

**5:59** · the end of my variable name and then simply typing int which stands for integer and that is the type of this variable gdo is now going to throw an error right inside of my editor saying that hey this health is a type of integer so you can't assign a string to

**6:16** · it and this is super helpful because now I know like oh I'm I'm just being stupid and this should actually be like uh 50 I don't know why you would do that in a real scenario but for the example if you get the picture it's really useful to statically toue cuz it basically helps you read your code more easily helps you catch errors before they actually happen and then for things like functions it really helps with return types so that you know exactly what you're going to be getting back from a function call now if you want to statically type a function like

**6:46** · this is even function I've created right here you would simply go right before the colon at the end of the line and you type a dash and then a greater than symbol and then you would simply type the name of the return type so in this case we are returning a Boolean whether or not the number that we've provided is even so I would say Bull and this way

**7:06** · gdau knows that this function returns a Boolean now this is especially helpful for Standalone functions so in this case I've converted my method to print is even so it's not going to return anything but it will instead just print directly to the output so we've assigned the return type to void and gdo is going to catch on to this and throw an error right here because we're trying to set the return of this function into a

**7:31** · variable and since it doesn't return anything G do will catch on to that and we'll get that nice error so the main takeway just use static typing makes your life easier makes gdau run super slightly faster and also makes your code more readable the next topic is going to have to do with add-ons so typically when you're making a game you want to develop different tools that will assist in the development process so whether that's generating normal maps for textures or creating entire NPC dialog

### Research existing addons / plugins for Godot!

**7:59** · trees you're going to want to have these systems in place so that they speed up your development time and what I really want to focus on here is that you do not have to make these tools on your own now obviously it's fun to make tools on your own and you know have that experience under your belt but the reality is if you want to make a plugin for gdau chances are somebody's already done it so it's really useful to go to the asset Library tab right here and from here you

**8:25** · can search on all the existing plugins for gdau and there's a lot of really useful stuff there so I would definitely recommend checking that out now some of the best plugins that I personally use are obviously dialogic which is the most popular dialogue management system that'll help with creating like timelines dialog trees characters and

**8:46** · all that fancy stuff and then panku console is another really great one that will essentially run inside of your project while you are playing the game and this will allow you to track different variables the state of your game and also run commands directly from a built-in command line so it's really useful for the debugging process and also play testing and then another really helpful one is going to be gdau steam which is basically an application that seamlessly connects gdo to steam so

**9:17** · if you plan on releasing your game on Steam or doing any sort of multiplayer through Steam or even just creating achievements or whatever then this plug-in is going to be essential to your development so again it's really good to look into all the existing gdau plugins in case there are any that could speed up your development process so the next tip is that you want to make everything into a scene now when I got started using gdau I was really like careful about how many scenes I have but realistically it's better to have more scenes because in game development you

### Make more scenes

**9:47** · want to recycle as much as possible so you might be looking at my scene tree right here and this player is into its own scene so by right clicking it and clicking on Save branch as scene I'm just going to Chuck it in this folder here this will make it its own file so I can now open this up and any changes I

**10:06** · make to the player scene are going to be reflected in every instance of the player scene so if I go back to my world I can hit control D to duplicate the player and now since these two players are inheriting from the same scene any changes I make inside of this scene will be reflected for every instance now something that you're going to run into a lot in gdau and is really irritating when it happens and and you don't notice it is when you duplicate a node it's going to share the same resources as the

### How to make Resources unique

**10:35** · node that you duplicated it from so in this case I have an interact area and as a child of this I just have a collision shape and on the Collision shape I've added a resource into its shape property and this is going to define the entire area that the shape influences so if I click on the area and hit contrl D it's going to duplicate the area but it will keep the reference to that same resource shape that I created earlier so

**11:02** · by changing the size of one of these shapes it's going to change the size of both of them and again that's because both of these Collision shaped nodes are referencing the same circle shaped resource now obviously we don't want that in this case so to fix it all I do is right click on the resource and select make unique and that will basically copy the resource so that I have a unique one for each of my nodes the next tip is going to be to learn about signal now signals are like one of the main ways that gdau functions between all of

### Research Signals early on!

**11:34** · its nodes and it's really good to understand exactly how they work so I'm not going to go too much in depth here but I do have a video that should be in a card right in the top right somewhere and that will basically go over all the essentials everything you need to know about signals but I would highly recommend looking into that sort of

**11:54** · workflow especially if you're getting started with gdau and then the last tip is going to be to write code like somebody is going to be reading it now this is going to be important for everybody out there whether you're getting started with coding or you've been doing game development for a while you always want to comment your code and you always want stuff to be organized because you're going to come back to your code in like a couple months or a year and you might not know what the heck is going on like it might make sense to you today but like Fast Forward

### Write readable, commented code

**12:23** · even a week and stuff can look like ancient hieroglyphics so it's really good to add comment to all of your functions all of your your variables and even put them in line like this just to explain exactly what you're doing but anyway that's going to do it for this video so if you did enjoy or you learned something new be sure to like And subscribe and if you guys want to see more videos like this or you want to share any additional information that could help new gdau users out be sure to

### Outro, thanks for watching! :)

**12:50** · place that in the comments below and then if you want to get connected you can join the Discord which is in the description and there's some other links there but thanks again for watching I hope you have a great week and I will see you in the next video bye