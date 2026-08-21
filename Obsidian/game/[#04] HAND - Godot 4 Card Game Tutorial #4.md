---
title: "HAND - Godot 4 Card Game Tutorial #4"
source: "https://www.youtube.com/watch?v=lATAS8YpzFE"
author:
  - "[[Barry's Dev Hell]]"
published: 2024-10-24
created: 2026-08-21
description: "Tutorial for adding a Player Hand to your Card Game Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpgAccess"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=lATAS8YpzFE)

Tutorial for adding a Player Hand to your Card Game Godot 4.3  
  
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
00:48 Instantiating Cards  
03:10 Add Card To hand Function  
03:43 Update Hand Positions Function  
04:20 Calculate Card Position Function  
07:32 Animate Card To Position Function  
09:10 Snap Cards To Hand  
11:36 Remove Card From Hand Function  
12:17 Outro

## Transcript

### Intro

**0:00** · in this video I'll be showing you how to add a player hand to your card game we will be creating an array that stores references to all the instantiated cards and we'll also create an update hand positions function that when called Loops through each card in the array and updates their positions to Center along the bottom of the screen we will also make it so the card snap back into the hand position unless the card is dropped in a card slot in which case that card will be removed from the player hand array and we can call our function again to update all the hand positions to fill that Gap that the car left this tutorial

**0:29** · will work for any kind of card game setup you have but if this is the first video of mine you have found my card tutorial series playlist will be the top Link in the description in case you want to follow along and get the exact setup I'm working with here my name is Barry and if you are subscribed be sure to hit that notification button and set your notifications to all so that YouTube knows you want to see my videos which will really help my channel grow so starting off in the main scene here we're going to right click on Main add a new child node and we're going to add a node 2D and we're going to call this noty to the player hand then we can

### Instantiating Cards

**0:56** · right click on our player hand attach script and I'm going to add a script to it called player hand and the next thing I'm going to do is come here to the main scene and I'm just going to delete these two card instances I have here and this is because in the player hand we're going to be instantiating these cards through code now back in our player hand script up at the top I'm going to declare a new constant called hand count

**1:15** · and this is going to be how many cards that we want to instantiate and I'm going to set it equal to two now in the ready function I'm going to instantiate these cards and we're going to do it multiple times through a four Loop so we're going to go for Iron Range hand count which will loop as many times as hand count is set to and then in this this loop we're going to create a new card so we'll create a new variable called new card and we'll set it equal to card scene do instantiate now of course card scene is not defined yet so before our for Loop I'm going to create a new variable called card scene and I'm going to set it equal to I'm going to use the preload function and then I'm going to give it our card scene path and

**1:47** · I'm actually just going to make this tidier by putting the card scene path as a constant so we're just going to put a constant name here card scene path and then declare the constant up at the top of the script and we'll set it equal to and now we have to get the card scene half so we can do this by coming down here into the file system but first i'm just going to tidy this up a little bit cuz it's a complete mess so I'm just going to right click on res create a new folder called scenes I'm going to drag my card scene and my card slot scene in here and now if I go into this open the scenes folder right click on card.

**2:14** · TSN I can copy path and now I'll set the card scene path constant equal to this New Path and now you can see why we're using the preload function CU that's just the path to the scene we have to use preload to actually load the scene to be able to instantiate it and then we're going to get a reference to our card manager by coming up here just left clicking and dragging and dropping our card manager into the code and that'll get a reference to it and we're going to say Dot card manager. addchild and then

**2:39** · we're going to add our new card as child of card manager and we're doing this because if you actually go into the card script here you can see that all cards must be a child of card manager or our card signals are going to give an error and just keep in mind that instantiating something isn't enough to make it actually exist you also have to add it as a child of something and next we're going to set the name of the new card equal to card just because I think when

**3:02** · it comes in it'll be called something completely random like a bunch of random digits and if we just call it card it's going to be easier to debug especially if we're doing multiplayer down the line and then I'm going to call add card to hand which is a function that doesn't exist yet and we're going to pass in this new card that we've just created and then I'm going to come down here and I'm going to create a new function called add card to hand and it's going to take in the card and now at the top of the script we're going to declare a new array called player card and this is

### Add Card To hand Function

**3:28** · going to be an array of all the cards in the player's hand and down here in the add card to hand function we're going to say player hand. insert as the first element we're going to add the card that we're passing in and then we're going to call another function that doesn't exist yet called update hand positions and then of course we're going to come down and create that function update hand positions and in here we want to Loop through every card in the player's hand and we want to change that card's position so we're going to create another loop for I in range and this one is going to be hand. size for how many

### Update Hand Positions Function

**3:57** · times we're going to Loop and within the for loop we're going to create a new variable called new position and this is going to equal a new function we haven't created yet called calculate card position and into that function we're going to pass I which is the current index of the loop and you might be thinking why are we creating so many new functions here but you're going to see later that it comes in really handy because sometimes we just want to update

**4:17** · the hand positions and then sometimes we want to add a card to the hand and update the positions and having them separated out like this gives us a lot of flexibility so of course we're going to come down and create this calculate card position function and we're going to take in that index and we're just going to put a comment up here in update hand position to explain exactly what this function is doing and what we're doing is we're setting the position of whatever card we're add in the loop based on the index and however

### Calculate Card Position Function

**4:41** · many cards are in the hand and to be able to set these card positions we're going to need something else and we're actually going to know the width of the screen and before we even get these new card positions we need to know something first we need to know where the middle of the screen is cuz we want to be centering these cards on the screen so I'm going to create a new variable up top called Center screen X and then in the ready function I'm going to say Center screen x equals the width of the screen / 2 and now down in the calculate

**5:08** · card function the first thing we want to do is we want to get the total width that we can use to offset cards later so I'm going to create a new variable called total width which is going to equal hand size minus one \* card width which is a new constant we haven't defined yet and make sure to surround the hand do size minus one with brackets so it does that part first and then we're going to go down and create a new variable called X offset and kind of

**5:31** · looking at this retrospectively I've bungled the names a little bit you could if you want to change total width to be X offset and then X offset to be X position which would make a bit more sense but anyway we're going to set X offset equal to the center screen X Plus index by card width which that index by card width it'll do that calculation first because this calculation is following the same thing that bimas does in math with the brackets first then the indices and the multiplication Etc and

**5:57** · then after that we're going to minus that toal total width offset that we created divided by two to keep it centered and now we haven't actually created this card width constant yet that we've used so let's go ahead and copy it and we'll create a new Conant up here called card width and we'll set it equal to and now you can set kind of whatever you want here for my card size

**6:15** · I find that 200 works really well and it leaves a nice Gap in between the cards but if you want a bigger or smaller Gap you can adjust this and down in the card calculation function we're getting a couple of errors and that's because I declared player hand up here but down here I'm saying hand some going to replace hand with player hand that's a mistake don't forget to change that in update hand positions function as well I also forgot to put Funk before calculate card position don't forget to put that in and then I'll add another line here just to return X offset and now up where

**6:41** · we're actually calling that function we're going to set for new position equal to a new Vector 2 which we need to give an X and a y coordinate and we're going to give calculate car position I as the X and then we're going to give a new constant as the Y called hand y position and then of course we're going to come to the top of the script and we're going going to declare and set hand y position equal to I'm going to set it to 890 and this depends how far

**7:05** · down you want your hand to be on the screen so you can set this to whatever you want and then down in the update hand position function we have the position that we want to set the card we just have to set the card to that position so firstly I'm going to create a new variable called card and this is the card that we want to move and we're getting the element in the player hand that we're currently at in the four Loop and then we're going to call a new function called animate card to position

**7:27** · and we're going to pass in the card that we want want to move and we also want to pass in the position to put that card and now you know the drill we need to actually create that function so I'm going to copy that function name and I'm going to comeer the process function here because we don't need that function and don't forget to take in the card and the position now in this function we could just be setting the position of the card to the new position but we're actually going to animate it through code because it's going to be really easy and it's going to look a thousand times better so I'm going to create a new tween so we're going to do a new variable tween equals get tree. create tween then on the next line here I'm going to do tween do tween property

### Animate Card To Position Function

**8:00** · and I'm going to firstly give it uh the object we want to move which is the card and then the second thing we need is the property that we want to change which is the position which if I go to the card there you can see under transform that position property that's what we want to be changing here and then we want to

**8:17** · give it the new position so that's the final position it'll end up and the last thing we'll give it is a speed and we'll give it 0.1 and that's literally the animation code done it's really easy so we're going to hit play here and we have an error and it looks like I put a minus there instead of an equals uh setting the card's name so if we fix that and we run it again you're going to see that the cards do instantiate and they do animate to a position but they go off screen here so I'm going to go up to project project settings go into window

**8:43** · and then I'm going to set my viewport width to 1920 and my viewport height to 1080 and now if I run this again you're going to see that the cards instantiate in and they Center themselves at the bottom of the screen which is fantastic just to test it further I'm going to set hand count to eight and try it again and you can see that it's centered eight cards at the bottom now the next thing that we want to implement is you can see I can just drag these cards around but unless the card is placed in a card slot

**9:06** · I want the card to snap back to its position in the hand and to achieve this we can go into the card script and declare a new variable to store that position now you can see I kind of made a classic Barry bungle here I called the variable starting position and that's really not what it is it's more a position in hand or hand position and I'd recommend you call the variable that instead and in the player hand script come down to the update hand position function and we have a reference to the card already so we can set that new variable that we just created equal to new position then if we go back to our

### Snap Cards To Hand

**9:38** · card manager script and we go down to the Finish drag function you can see we have an if condition the if we find an empty card slot we do this code but we also we want to add an else condition here because if the card is let go and there's nothing there's no card slot we want the card to snap back into the player's hand and now we need a reference to our player hand so we can come to the top of the screen we create a new variable called player hand reference and then in our ready function

**10:03** · we'll say player hand reference equals and then we'll drag and drop from our main scene we can drag and drop our player hand here then back down in the finished drag function in the else condition we can do player hand reference. add card to hand which is that function in our player hand and we'll add the card being dragged now if we go back to the player hand script this add card to hand function is being called in two different places it's being called in this ready function when

**10:26** · the card hasn't yet been added to the hand and it's being called in the card manager when the card is already in the hand so we're going to do an if condition just to check which one it is so we'll add if card not in hand if that condition is met we'll just run the code we already have in there because that code is assuming card's not in the hand and then we'll add an else condition here and this is where we want to otherwise we want to snap the card back to the hand so we'll get the animate card to position function name and we'll

**10:54** · just copy that and we'll call it here and we will pass in card which is what we want to move and the place we want to move it to is that unique variable we made in the card script so I called mine starting position card. starting position because that variable's value is set to the card's position in the hand and we want to move the card back there and I just realized I put hand here instead of player hand once again so I'm just going to fix that really quick and now if I run this you should

**11:18** · see that if I move a card it will snap back into its hand position which is amazing that's fantastic and we are almost done here there is just one more thing I want to add and that's if you drop a card and a card that I want to update all the cards positions in the hand which is actually going to be really easy because we already have a function that does that so I'm going to create a new function down here in our player hand script called remove card from hand and it's going to take in that card that we want to remove then in our card manager back in our finished drag function in the if statement if we have

### Remove Card From Hand Function

**11:47** · found an empty card slot we will call that function and we'll pass in card being dragged and now back in the player hand script in the remove card from hand function we'll do a check to make sure that card being passed in is in the player's hand and if it is we remove that card from the player's hand and then we update the position of all the cards in the player hand and that is US finished if I go up here and set the hand count to four just so you can see a good example of it if I place a card in

**12:11** · a card slot all the cards in the hand update their positions so the hand is always centered amazing and that's it for this video if you found it helpful please do me a favor and give the video a like to help my channel grow and for more videos such as adding a deck multiplayer card abilities and even upcoming Dev Vlogs subscribe