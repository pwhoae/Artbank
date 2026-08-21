---
title: "Godot 4 CARD GAME Tutorial #1 Dragging Cards"
source: "https://www.youtube.com/watch?v=2jMcuKdRh2w"
author:
  - "[[Barry's Dev Hell]]"
published: 2024-10-16
created: 2026-08-21
description: "Beginner tutorial for making a Card Game in Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpgAccess all pro"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=2jMcuKdRh2w)

Beginner tutorial for making a Card Game in Godot 4.3  
  
Follow my Upcoming CARD GAME on Kickstarter! 👇  
https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpg  
  
Access all project files by supporting me ❤️  
https://www.patreon.com/c/barrysdevhell/posts  
  
Join my Discord server!  
https://discord.gg/NgRZBAYMBP  
  
Buy me a coffee ☕  
https://ko-fi.com/barrysdevhell  
  
Business Email ✉  
barry@devhellstudios.com  
  
Card Game Tutorial Playlist - https://www.youtube.com/watch?v=2jMcuKdRh2w&list=PLNWIwxsLZ-LMYzxHlVb7v5Xo5KaUV7Tq1  
  
This code can be used for commercial projects, but please don't resell or redistribute it.  
  
Knight asset by SanctumPixel - https://sanctumpixel.itch.io/loreon-knight-character  
Archer asset by OcO - https://oco.itch.io/medieval-fantasy-character-pack-4  
Demon asset by Sven - https://sventhole.itch.io/flame-demons-64-x64  
  
00:00 Intro  
00:16 Installing Godot  
00:30 Creating Card  
03:43 Input Logic  
05:15 Raycast Logic  
07:38 Card Dragging Logic  
09:25 Clamp Card Position  
11:11 Outro

## Transcript

### Intro

**0:00** · card games like slay the spire batro and stacks have been exploding in popularity recently and in this video series I'm going to show you how to create some fundamentals that can be molded to any type of card game you want to create my name is Barry and in this first video I'm going to show you how to create cards and implement the logic for dragging them around the screen so of course to get started you're going to need to install gdau the version I'm using is 4.3 and if you don't have that version you can go into the latest stable downloads and make sure that you're using 4.3 otherwise there might be some slight differences in the tutorial but you'll still be able to follow along and so now I have Gau

### Installing Godot

### Creating Card

**0:32** · downloaded I'm going to go ahead and press create new project then we'll just give it a project name here and just press create and so now we're loaded into the GTO editor we're going to go up here and press 2D scene because we're going to be making a 2d card game and then we're going to go up here to our node 2D it gave us and we're going to rename this and we're just going to call it Main and then if I hit contrl s on my keyboard we can just save this scene and I'm just going to call it main.

**0:58** · TSN and so we're first objective here is we want to get a card rendering to the screen so we want to right click up here on Main we're going to add child node and we're going to search for something called Sprite 2D and I'm going to double click it here and then the next thing we want to do is we need to import a texture so I have this one I prepared earlier on my desktop that's a KN that was a free asset I found online and I use a little bit of Photoshop to make it look like a card and I'll leave that for download in the description along with the original author of the night and so now what we can do is we can go ahead and click our Sprite 2D here and now we

**1:30** · can just click and drag our Knight into the texture properly in the inspector and we're just going to with our Sprite 2D selected make sure that this centered box is ticked under offset because it's going to be really handy for dragging cards around later and now we're just going to drag this card into the center of the screen and hit play up here and we can just pick select current to set this scene as our main scene and

**1:51** · now you can see we've successfully got a card rendering to the screen and the next thing we want to work on is adding some Collision to the card so we can interact with it but before we do that I'm going to up here to Main and I'm going to right click and I'm actually going to create a child node and I'm going to create a node 2D and I'm going to call this card and this is just to keep all the relevant card nodes in one place so we can take our Sprite 2D here

**2:12** · and we'll child it to card and when we do our Collision stuff later we can CH it to card as well just group everything together and I'm going to rename Sprite 2D to card image then to get our Collision set up we can right click card create new node and we're going to add an area 2D and this is actually going to give us a warning and if we look at this is because it wants some sort of collision so we're going to right click our area 2D at child node and we're going to add a collision shape 2D and then when we

**2:39** · select this Collision shape 2D it's also going to give us a warning just because we have to go over here into the inspector and set this shape properly and we're just going to set it to a rectangle 2D but now you can see our Collision nodes are kind of up here in the top left and our card is like away

**2:55** · from them so we're going to with our card image selected click and drag it up here and we can use this orange cross here which is the center of the card and just make sure it aligns with that X and Y Line right there so everything is centered including the area 2D and collision shape and now if you select the Collision shape 2D you can see it gives you these little things that we can stretch and just fit over the card it probably won't fit perfectly if you have that centered box tick box tick from earlier but it'll be close enough

**3:22** · so now that that's done we can actually go ahead and extract card and all the nodes into its own scene so if we right click and Save branch as scene on card and name it card. tscn you can now see that because we want many cards in our card game now we just have to take card.

**3:38** · TSN drag it into Main and we've just made a second card next we actually want to add the functionality for being able to drag our cards around so we need to add a script and we don't want to add this script on the card itself because then the logic will exist for every card instantiated so instead let's go to main

### Input Logic

**3:56** · ADD child node create a new node 2D and then we can go ahe and call this card manager and then for every card we have we can just child a two card manager then I can write click on card manager and I can attach script and we can just call this card

**4:13** · manager and now inside the script we want to be able to detect a left click so I'm going to create a new function called input and this is actually a function from gdau itself so make sure that the uh spelling and everything of this is the same as I have it and this function is going to take in an event which is going to be when you left click and then we're just going to have an if statement here to check if the event is input event Mouse button and if it's a left click then we're just going to print click so now if we actually go ahead and run this and we go ahead and

**4:43** · open the output down here make sure it's open and if we click in our game view you're going to see it prints click but actually it's going to print it twice for one click because it prints when you click and when you release click so to split those into two separate actions I'm going to replace that print click with an if statement saying if event. press we'll print left click and then I'll add an else and we'll print uh left click

**5:07** · released so let's just run that and make sure it works so now if we left click in here we'll print left click down the output and if we release it we'll get left click released and now what we want to do is we want to detect if there's a card when we left click so down here where we have print left click I'm just going to add this comment to rast check for card and then down here we're going to create a new function or call this function

### Raycast Logic

**5:30** · raycast check for card but you can call it whatever you want and this is just going to be some code that I'm basically taking from the gdau documentation so you can copy this kind of exactly this is just to set up a raycast just to return whatever is under our cursor when we click so we're going to uh basically

**5:47** · here the important thing is these parameters that we're creating we're going to set the parameter of the position to our Mouse position so get Global Mouse position and we're going to make sure that collide with areas equals true because our card Collision is an area 2D and we're going to set our Collision mask to one and then we can just save this uh as a variable called

**6:08** · result and we can print that variable and now we actually have to call this function to get all this code to run so if we call it up where we have if event. pressed then when you get a left click it'll run all this code so if we run it here and we can test it you see if I click nowhere it returns an empty array and if I click on a card it looks like it returns a garbage but actually we can get the collider in there you can see it right here so if we actually go into our card

**6:36** · scene up here you can see this area 2D this is what it's returning but we want to be able to get the card so if we go back into our raycast function where we're printing the result let's just print the first return result uh which is just this right here and then if we go dot collider now we've narrowed it down to get just that area 2D uh We've extracted that and now if we go dot get parent now it should be getting the pair

**7:02** · of the area 2D which you can see is the card so let's just test that real quick and if we press play and click on a card you can see we're now getting a printed reference to that card which is good but if we click on nothing it's going to hard error out here because we're trying to access the first result returned and if we click on nothing obviously nothing's going to be returned so let's fix that real quick by making sure that something is returned so we're going to add an if condition here and we're going to say if result. size is greater than zero so if there is a result then we

**7:31** · will return and instead of printing all this we're going to return that card that refers to that card and otherwise if not we'll return null so now we need some kind of way for a card manager to know if a card is being dragged so we're going to create a new variable up here at the top called card being dragged and now since our raycast check for card is actually returning something we can go down here and uh we can just check if something was returned so we'll add VAR card equals uh the result of cast check

### Card Dragging Logic

**8:00** · for card since it's being returned and now we'll add an if statement if card so if something was returned if a card was clicked then we will set card being dragged equal to the card and that's the card that was found in the raycast and then instead of printing left click released we can just replace that with card being dragged equals null

**8:20** · and now we can take this process function that already came with the script and we're just going to cut it and paste it up here near the top and the code that runs inside this function this is another one of G inbuilt functions kind of similar to input but this code is going to run every single frame and in here we're going to check

**8:38** · if card being dragged so if it's not null then we are going to create a new variable called Mouse position and we're just going to set it to get Global Mouse position just because we're going to need to use that later and we're going to set card being dragged Doos equal to

**8:54** · the mouse position so now we can go ahead and test all this and you can see if we left click and just drag our Mouse around that the card is following the mouse which is perfect but there is kind of one weird thing that the card feels like it's kind of follow following the mouse a bit sluggish and this fixes for me if I go into project and then project settings I'll search for vsync here I

**9:15** · think it's in yeah it's in here in display Window vsync mode disabled it might just be my computer but when I do this the card snaps to my mouse really nicely and so now we're only really left with one glaring issue and that's if we just take a card and drag it off the screen like this we can basically never get it back so to fix that we can kind of constrain the position of the card to not go below a certain position on the X and Y so you can see I don't want this card's position to be able to be less than zero or more than the screen size

### Clamp Card Position

**9:45** · so to implement this fix we're going to go down and we're going to take this ready function that was also provided same as the process function when we made the script and we're just going to paste it at the top here of the script and I'm going to create a new variable called screen size as well and this code within this ready function is only going to run once basically when the game starts so I'm going to set this screen size equal to get viewport wrecked do size then we can replace Mouse PA down here we can set card being dragged position equal to a new Vector 2 which is just an XY coordinate and now this is

**10:17** · where the gd's clamp function is going to come into use so for the x coordinate we're going to say clamp and then we're going to provide our original value which is mouse position X and then we're going to use clamp to provide a minimum and maximum constraint so we're going to provide zero and then screen size. X for the maximum then we can just copy and paste this do the same for the Y replace those X's to y's and now put this on a new line as well now we can run this one

**10:44** · last time to make sure it works and you can see that the position of the card is clamped and cannot leave the bounds of the screen amazing and one last change I'm going to make just for the sake of tidiness is there's this kind of magic floating number down here this Collision mask is set to one I'm going to create a new constant called Collision mask card and

**11:02** · I'm going to set it to one and then I'm going to copy that name and instead of having just one down there in the parameters for the raycast I'm going to paste that constant in the next video I'm going to be showing you how to add this card hover effect here and I have plenty more videos coming such as adding a deck a hand multiplayer card slots and more so if you like this kind of video subscribe for more and if you found it helpful please consider dropping a like because I'm going to try and grow this channel thank you very much