---
title: "Add ABILITIES to your Card Game - Godot 4"
source: "https://www.youtube.com/watch?v=WU7MxC7SF5o"
author:
  - "[[Barry's Dev Hell]]"
published: 2025-01-03
created: 2026-08-21
description: "Tutorial for adding Card Abilities to your game in Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpgAccess"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=WU7MxC7SF5o)

Tutorial for adding Card Abilities to your game in Godot 4.3  
  
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
  
Card Game Playlist - https://www.youtube.com/watch?v=2jMcuKdRh2w&list=PLNWIwxsLZ-LMYzxHlVb7v5Xo5KaUV7Tq1  
  
This code can be used for commercial projects, but please don't resell or redistribute it.  
  
Knight asset by SanctumPixel - https://sanctumpixel.itch.io/loreon-knight-character  
Archer asset by OcO - https://oco.itch.io/medieval-fantasy-character-pack-4  
Demon asset by Sven - https://sventhole.itch.io/flame-demons-64-x64  
  
00:00 Intro  
00:18 Magic Card Setup  
03:33 Bug Fixes  
05:10 Finish\_Drag Changes  
06:37 Card Ability Script  
9:05 Tornado Ability  
13:12 Disable Inputs  
14:46 Outro

## Transcript

### Intro

**0:00** · in this video I'm going to be showing you how to add magic or spell cards to your card game I'm going to be working off my own card game tutorial series project but this method of adding the magic cards can be integrated into any project you may be working on the basics of this system is that each Magik card ability will have its own script with a trigger function and that trigger function will be called when the card is placed in the field so to get started we're going to open up our card database script and we're going to add a new type of card into our cards database I'm

### Magic Card Setup

**0:25** · going to call this new card tornado and then for the attack and health I'm going to put null and for the card type I'm going to put magic the next thing to do is import an asset for this card or an image and I have a PNG that I've prepared so I'm just going to drag this into my file system then we're going to right click on it rename and we're going to rename it to tornado card and the Tornado part we want to line it up exactly with what we have here in the card database because it's going to use that part of the name to look for the asset the way we have the code set up then I'm going to go into the player deck script and in the player deck array

**0:57** · I'm going to add tornado as one of the cards and and then if we give this a run you can see that it's importing the image correctly as a card but the attack and health are set to null and that's looking a bit weird it's an easy fix though because we just have to disable the health and attack Rich Text label nodes if it is a magic card so we'll come down here in this deck script to where we instantiate the cards and we'll check if the cards type is monster and

**1:21** · make sure that if condition comes after this line where we actually assign the cards type then we can check if new card. card type equals monster and if if it is we'll indent these four lines of code here that set the cards attack and health and update the attack and health nodes and then we'll add an else condition so if the card is a magic card then we want to update the card's ability text but the card doesn't have

**1:42** · uh anywhere to put ability text yet it doesn't have a node so we'll go to open the card scene and in here we'll right click on the root card node and we'll add a new child and we will add a rich text label and then we're going to rename this to Ability then in the inspector I'm going to change the size and position of this new text box and I'll also put in some default text in the text property and I'm also going to search for modulate and set the modulate to Black then back over in the deck script we can now get a reference to this node using new card.get node ability and if it's a monster card we'll set ability. visible equal to false and

**2:15** · then in the else so if it's a magic card we'll set the attack and the health nodes visible equal to false and then we'll get a reference the ability and we'll say ability. text equals and now we want to draw this text from the card database so we'll go over to the card database script and we're going to be adding a new attribute into this card's database called ability text and for the first three Monster cards we already have in here we'll put it to null but then for our tornado card I'm going to set it to a string that says deal one

**2:42** · damage to all opponent cards then we'll go back to the deck script and we're already accessing values from the database up here so I'm just going to copy this line and I'm going to set the text equal to this and I'll change the one to a three since we want to get the fourth element and it's so it's always minus one and if we give this a run you can see that the text is loading onto the C card perfectly and also we can't play the card in the top row of card slots because they're monster slots but we can play it in the bottom row which is really cool and that's happening because all of these nodes in the top row have the Monster card slot script attached and you can see in that script

**3:13** · that the card slot type is monster and then for the five card slots on the bottom row we have the magic card slot script attached and you can see if we open that script that the card slot type is Magic and in the card manager in the Finish drag function where we release a card you can see we're checking if the card slot type is the same as the card

**3:30** · type and only then are we placing the card in a card slot and you can see here if we give this another run and we place the magic card in a card slot you can see that we're getting a weird hover effect so let's fix that so we'll just scroll down in our card manager script to the Highlight card function and in here we want to check if a card is not

### Bug Fixes

**3:47** · in a card slot so we'll do an if statement and we'll check if a card's in a card slot and if it is we'll return so we won't run any of the rest of the code in this function we'll give this a run out just to verify that that worked and it looks good but if you can see if we click on the card it performs an attack and we don't want our magic cards to be able to attack so in the card manager script we're going to scroll up here to the card clicked function and we're

**4:08** · going to be reformatting this a little bit for our condition in here where we're checking if it's not the enemy's turn I'm going to change this to check if it is the enemy's turn and if it is we're going to return so we won't run any of the code in the rest of this function then below that we we're checking if the player is not attacking we're going to instead check if the player is attacking and if they are will

**4:26** · return and then below that we're checking if the card is not in the player cards that attacked this turn array we're going to change that to check if it is in the array and if it is we'll return then make sure these lines afterwards are indented back correctly and then in this if condition where we're checking if opponent cards on battlefield. size is equal to zero we'll remove the return from in there then before that if statement check in if those cards in the opponent's Battlefield we're going to add a new if statement and we're going to check if card type is not equal to monster and if

**4:52** · that's true then we're just going to return if we give this a test now you can see that we can no longer attack by clicking our Magic card which is good but if we end our turn you can see that the enemy attacks our card and that's because when we place the magic card in the card slot it's being added to the player cards on Battlefield array and

**5:07** · when the enemy attacks it chooses a card from that array to attack so we're going to go to our finished drag function in the card manager and we're going to make some changes after we check if the card type is the same as the card slot we're going to add a new if condition to check if the card type is monster and I'm also going to combine the below if statement onto the same line using a double Amper

### Finish\_Drag Changes

**5:25** · sand and if those conditions are met we're going to take these two lines down here from the bottom of the fun F and paste them up here and after that we'll return and then we're going to take all this code here and we're going to indent it back one since we don't want it to be in the if condition and here where we have card that's supposed to be card being dragged which is the card we've just put in the slot and then down here after all this code but before the return we're going to do another if statement to check if card being dragged

**5:48** · card type is equal to monster and if it is we're going to cut this line here where we're adding the card into the player cards on Battlefield array and we'll also cut this line and put it in here saying played monster this turn equal equals to true and then we'll add an else down here and this is if we played a magic card so we'll just print Magic card played and we'll take this card being dragged equals to null and we'll set that just before we return now

**6:09** · we can give this a run to see if this works and it looks like we're not able to put Monster cards in the Monster card slot and that is because we have an exclamation mark up here where we have play our Monster card this turn so if we get rid of that because we want to check if the card is monster and we have played a card already then we can't place a card so now you can see that we can place one card Monster card in the slot but not a second and we still can place magic cards so that's perfect and

**6:33** · you can see it printed Magic card played when we played that magic card and the next thing we want to do is actually trigger that card's ability but that card's ability hasn't been defined yet so we're going to go down into the file system we're going to right click on the scripts folder and I'll make a new folder called abilities and then I'll right click on the abilities folder and I'll create a new script and I'm going to call this tornado and we'll open this script up and in here we'll add a new function called trigger ability and in

### Card Ability Script

**6:58** · this function we'll just print ability triggered so we can test if it works now currently a card doesn't have a way of keeping track of what ability it has or anything so let's open the card script and we'll add a new variable called ability script and then we'll open the card database and we're going to add a new attribute in here called ability script and for the three Monster cards we have we'll set it to null but for our tornado card I'm going to come down into the file system and right click on our tornado script then I'm going to press copy path then I'm going to paste it up here for the tornado's ability script

**7:28** · and I'll surround it with quotes and now when we instantiate a card we have to set that ability script so we'll open up the deck script and we'll go down to where we instantiate cards and if it is a magic card we'll create a new variable called new card ability script path and we'll set it equal to and then we'll get this database reference up here and we'll swap out that one with a four since it's the fifth element that we're trying get from the card database and the attribute start at zero so it's 0 1 2 3 and then this one is the fourth

**7:56** · then we'll do an if check and we'll check new card ability script path just to make sure that a variable assigned correctly and if it did we'll set new card doability script which is that variable we just created in the card script and we'll set it equal to and then we'll use the load function and then we'll put the path in here and then new at the end with open close off brackets because we want to instantiate this script now over in the card manager where we're printing Magic card played we'll instead do card being dragged doability script and then we'll call the trigger ability function that we created

**8:28** · and now if we give this a run and drop a magicard in a slot you can see in our output we are getting printed ability triggered which is amazing one thing to note is that when we instantiated the ability script we didn't add of a child of anything so it's not part of the hierarchy or the scene tree which is all

**8:43** · these nodes here and that just means that these functions that came with the script such as ready or process or any other inbuilt ones like that won't work unless you add it as a child of something but functions we create and call ourselves like trigger ability are fine so I can get rid of the process and ready functions in here since they're not going to work anyway and now we can call this function and calling the ability and all that works the only thing left to do is to Define what this ability actually does within this function and for my example I just want to deal one damage to each opponent card

### Tornado Ability

**9:13** · and we already have an array in the battle manager that stores all the opponent cards on the field so I can just Loop through all these cards by doing four card in in the name of the array and in the battle manager I already have the code to deal damage to cards so I'm going to take those lines copy them and paste them into the tornado script and then in here of course defending card doesn't exist we're going to swap that out with card and for how much health the card loses we're going to create a new constant up at the top called Tornado damage and set it equal to one and then down here where we're minusing the card Health we'll minus that constant name and then change

**9:44** · those last two defending card references to just card and now because this script isn't actually a child of anything it doesn't exist in this scene when we're getting our battle manager reference so we can get access to that opponent cards on Battlefield array we won't just be able to drag it in like we usually do you can see if I try and press play and we try place a Magik card it just errors out and that's because it doesn't exist in the main scene so it's not going to be able to find its way to any of these

**10:09** · nodes so the way we're going to get access to it is we're going to pass Battle Man a battle manager reference in to the trigger ability script so where we're calling trigger ability in the card manager we're going to pass in battle manager and we can just drag that reference into here because card manager is in the scene tree and then the tornado script will take that reference in and as battle manager reference and then four card in battle manager reference do opponent cards on Battlefield and if we run that now and end our turns so the opponent plays a card then if we play our Magic card you

**10:40** · can see that the opponent card goes from three Health to two Health which is perfect and now we have to handle if that enemy card's Health reaches zero you can see if I give myself three tornadoes and play all three of them that the enemy's card will go to zero Health but it won't be defeated it won't go to the discard pile so let's Implement that in our for loop after we've dealt damage to the card let's check if the card's Health equals zero

**11:02** · and then before our for Loop I'm going to create a new variable called cards to destroy and this is going to be an array so I'm going to assign it equal to open and close square brackets and then if a card's Health reaches zero we're going to append that card into the cards to destroy array then after that for Loop we can check if our cards to destroy array has anything in it and if it does we'll Loop through the cards in that array and we'll call destroy card which is a function from our battle manager and we'll pass in card and we'll pass in

**11:29** · opponent in quotes which is who the card belongs to then we'll use our battle manager reference there we're passing in to get access to the destroy card function and now that that's done the next thing we want to do is destroy this card or the tornado card that we just played since its ability is finished so we can copy this line already that we've made and paste it out of this if condition and now here we want to replace card with the card to destroy

**11:52** · and since we don't have any way to actually access that card from inside this script we're going to pass it in like we did the battle manager reference so we'll go to the card manager and when we're calling trigger ability we're going to also pass in card being dragged which is the card that we've just put in the slot and then in the trigger ability function we'll take it in up here as card with ability and now for destroy card we'll put card with ability and since it's our card we'll say player keep in mind you might have to adjust that a little bit if you're adding magic cards for the opponent and now if we test this you can see every time I throw down the magic card the enemy card loses

**12:24** · health and when the third one is played the enemy card goes to the graveyard and also anytime a magic card is finished with its ability you can see it's also getting destroyed so everything is working perfectly and there's only a couple of small things left to do I want to add a couple pauses just to wait one sec when the card's ability is activating before it goes to the graveyard or the discard pile and I also

**12:43** · want to make it so you can't just end your turn while a card ability is activating and that you can't just Place cards or attack or anything during that time so we already have this weight function set up in the battle manager so I'm going to do a wait battl manager reference. wait and we're going to wait 1.0 or 1 second and that await keyword

**13:00** · is important to uh suspend the code on that line so it doesn't run the stuff below before the timer finishes then we'll copy and paste this weight line and we'll paste it after our for Loop and we'll also Place one here at the very end and lastly we want to disable inputs so I'm going to go into the battle manager script and at the bottom I'll create a new function called enable end turn button and it's going to take in a Boolean called is enabled and in

### Disable Inputs

**13:23** · this function I'm going to check if is enabled so if we're passing in true then I'll copy these lines above to enable the button then I'll add an else statement so if you pass in false to disabled the buttons and I'll copy these two lines up here and paste them in and I'll set visible equals false and disabled equals true then back in our tornado script up at the top of the trigger ability function we're going to call that new function we just made so make sure to use your battle manager reference to access it and we'll pass in false because we're disabling the button and at the very end of the script we'll copy and paste that line but we'll pass in true to enable it again and then to

**13:54** · disable being able to click the mouse orve cards or place cards we're going to go to our input manager script and up the top we'll create a new variable called inputs disabled and we'll set it equal to false by default and then in the rcast at cursor function if inputs are disabled we'll just return so the following code won't run and then back in the tornado script up at the top of the function we'll get our reference to the input manager and set inputs disabled equal to true and then copy

**14:19** · that line put it at the bottom of the function and set inputs disabled equal to false and then of course we can't actually do our input manager reference like this we have to pass it in the same way we did the battle manager reference so we'll go into the card manager and where we're calling the trigger function we'll also pass in a reference to our input manager and then in the tornado script we'll make sure to take that in in the function and now we can use this input manager reference to access our inputs disabled variable make sure to replace it at the bottom there too and that's it we've added card abilities and each ability has its own script and all

### Outro

**14:51** · the logic for that ability is contained to that script so when you add more abilities in the future you can make a new script just make sure it has the same function call trigger ability or trigger whatever it's called and then change the functionality within that to do whatever you want you may also in the future want to add a kind of ability stack like Yu-Gi-Oh so if multiple abilities or cards happen at the same time you can sort through them and give different abilities priority if you found this video helpful please consider leaving a like to help me with the YouTube algorithm and for upcoming tutorials and devlogs subscribe