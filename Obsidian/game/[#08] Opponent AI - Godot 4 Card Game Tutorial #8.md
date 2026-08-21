---
title: "Opponent AI - Godot 4 Card Game Tutorial #8"
source: "https://www.youtube.com/watch?v=92r0J8G-RE4"
author:
  - "[[Barry's Dev Hell]]"
published: 2024-11-26
created: 2026-08-21
description: "Tutorial for adding simple Opponent AI to your Card Game Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpgA"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=92r0J8G-RE4)

Tutorial for adding simple Opponent AI to your Card Game Godot 4.3  
  
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
00:36 Creating BattleManager  
02:12 Adding Wait Functionality  
03:31 More BattleManager Setup  
06:47 Creating Enemy Hand and Deck  
14:13 Play Card With Highest Attack  
21:22 Outro

## Transcript

### Intro

**0:00** · in the last video we reorganized the field to be able to fit in an opponent and we also added card types to the cards so we added Monster cards that'll only go in the top card slots and in the future we can add magic cards that can only be played in the bottom card slots in this video we're going to be implementing turn functionality so that we can end our turn and give the opponent to turn and then we're going to be giving a simple AI to the opponent so

**0:19** · that they can decide what card to play on their turn if this is the first video you're watching in the series I'll leave the playlist Linked In the description so you can catch up on the seven other videos we have before and as always I'm going to ask huge favor and say if you are subscribed please consider turning on those notifications just to let the YouTube algorithm know that you like me and want to see more of my videos to get started I'm going to come here to my main scene and we need somewhere to put our battle and turn logic and since

### Creating BattleManager

**0:42** · there's no existing nodes here that it would make sense to attach a battle manager script to I'm going to right click on Main and add a new child node and I'm just going to add a node it doesn't have to be a node 2D because a node 2D has transform properties so you can move it around uh we don't need that since this is just to hold logic so we just need a node and I'm going to click on this node and I'm going to rename it to battle manager then we're going to right click our battle manager attach script and we'll just create a battle manager script then let's select our button that we created in the last video and we'll go up here to the inspector and switch over to the node Tab and we can double click on this pressed signal

**1:13** · and if we look if we scroll down here and connected to our battle manager you can see it creates this function for us in the script now this function will be called if we press the ENT turn button so the first thing we want to do is we want to disable the button if the button's Pressed so let's just left click and drag end turn button into here to get the the reference now if you click this end turn button and switch over to the inspector tab here on the right you can see that there's a couple properties that we want to change and the first one is this disabled property and the second one is this visible property so in the code let's say enter button. disabled equals true and also

**1:45** · we'll have a new line that says ENT turn button. visible equals false so once this function is called the button will not be able to be clicked anymore and it'll be invisible then since it's the opponent's turn now we want them to draw a card so we need a reference to our opponent's deck so we'll just go over to the scene tab over here on the left and we'll drag and drop our opponent's deck into the code and then we're going to call the draw card function from there

**2:06** · and that won't exist yet cuz we have have to create a new script for the opponent deck since it's not going to be the same as the player deck but for now it's fine and the next thing we want to do is we actually want to wait 1 second so it kind of looks like the opponent's thinking about what card they're going to play so it just doesn't happen instantly so to wait a second we're going to need a timer node so we're going to come up here to main we're going to right click and add a new child node and we're going to search for a timer and we'll add this to the scene here and we'll call it battle timer now we want to get a persistent reference to that in this script so let's come up to the top of battle manager and create a new variable called battle timer and

### Adding Wait Functionality

**2:38** · then the ready function we can assign battle timer so we'll say battle timer equals and then we'll just drag and drop our battle timer node to get that reference now if we click on the battle timer over here on the left the node we can see in the inspector over here on the right that there's a couple of properties one of them is one shot here that we're going to want to enable so it doesn't Loop this timer over and over and the other one is wait time which is just how long the timer is set to so let's say battle timer. one shot equals true so the timer only goes once and then we'll also set the battle timer.

**3:07** · weight time and we'll set it to 1.0 or 1 second now I'm just going to delete this whole process function since we don't need it it just came with the script you can just get rid of it and then down here where we want to wait 1 second I'm just going to say battle timer. start then we're going to use await and we're going to wait for the battle timer to finish and because we use the await keyword there the code is going to suspend on that line and it won't go down any further until that 1 second is passed and after 1 second has passed we want to play a card and what we're going

### More BattleManager Setup

**3:35** · to do is we're going to give the opponent an AI to know what card to play like what's the best card to play and in my case I'm just going to say the best card to play is the card with the highest attack but you could tackle this differently you could say give cards different values and the cards with higher values are better cards and the opponent is going to use those higher value cards first and maybe the value of

**3:55** · the cards can differ depending on what's already on the field so if they combo well the value might go up and the opponent will want to play the card with the higher value but for now we're just going to keep it simple and I'm also just going to rearrange this to be a bit neater I'm going to create a new function called opponent's turn and I'm going to take all this code that we have in the button pressed function I'm going to cut it paste it into opponent's turn

**4:17** · and then in the button press function I'll just call opponent's turn and that's just a lot Neer I'm also just going to take the opponent's turn function and cut it and paste it below the button press function just to make it more visible and we have these comments down here saying what we want to do in opponent's turn I'm also going to add another comment at the end saying we want to end the turn so we want to do stuff like make the end turn button visible again and we also want to reset

**4:39** · the player's uh draw we set it so the player can only draw one card per turn we want to now that the turn is over reset that so they can draw again and now we've kind of planned out what we want to do in the opponent's turn I'm going to do the easy thing first and just copy this up here this making the button invisible and I'm just going to set disabled equals false and visible

**4:57** · equals true so that you can now see the button and you click it again now before we can play a card in a card slot we have to check if there's a free card slot that we can play when in so that means we need a reference to our card slots so let's go up to the top of our battle manager and create a new variable called empty Monster card slots and assign it equal to an open and close square bracket so gdau knows it's an array and now in the ready function we just want to add all of the empty monster opponent slots into this array so get the name of it and then do do aend and now if we drag and drop an opponent Monster card slot from the main

**5:29** · scene so like a reference into this append function it will add that to the array and we just need to do that five times once for each card slot I didn't drag and drop them here but I have my card slots named enemy card slot one enemy card slot two so I just filled in those details and once that's done and we have references to all five of the card slots in that array we can move on to the next step which is checking if there is a free card slot for the opponent to play a card in so this is really easy because if one of those card slots gets filled we'll just remove

**5:57** · whichever card slot was in there cuz it's only empty Monster card slots that are in this array so all we have to do here is check if this array is got no elements in it or if there's no free card slots then we have to end the turn so we'll call a function here yet that doesn't exist called end opponent turn

**6:14** · and then on the next next line be sure to return so we don't run any of the code below then we'll create this function end opponent turn and I'll take this code from the bottom of opponent turn this end turn code where we're making the button visible and usable again I'll just cut that and paste it into the end opponent turn function and then we'll also call end opponent turn up here in the end of opponent turn now

**6:36** · we can work on playing the card with the highest attack but our opponent's hand is not yet set up so let's do that just as a side note as I'm sitting here editing we just hit 500 subs and thanks everyone for all the support so we need to add an enemy hand and this is actually going to be really easy because our player hand code is basically going to copy and paste right over so I'm going to right click on our main node and I'm going to create a new node 2D

### Creating Enemy Hand and Deck

**6:58** · and this is going to be enemy hand and I'm going to rename it enemy hand and then I'm going to go down into our file system I'm going to go into our scripts folder and I'm going to duplicate the player hand script and I'm going to call this duplicate enemy hand then we're going to drag and drop this script onto the enemy hand node we created to make sure we attach it and while we're doing it we may as well duplicate the uh player deck as well the deck.

**7:17** · GD script and we'll call this one oo enemy deck or opponent deck and we'll drag and drop that script onto the opponent deck node as well to attach it and now if we open that opponent deck script there's a couple changes we have to to make in here one of those changes is that instead of drawing into the player hand we want to be drawing into the enemy hand so we'll change that reference down

**7:37** · at the bottom where we instantiate the cards and now to test it we'll go to the enemy hand script the opponent hand script whatever you called it and up at the top we have this variable hand y position and if we set this to zero and hit play you can see that the hand is positioning correctly but we have a couple fixes to do because you can interact with the opponent's cards the first thing we want to do is disable the Collision on the opponent's cards so we're going to go down into the card scene and we're going to right click on it and duplicate we're going to call this enemy card and if we open up this

**8:04** · new scene there's two changes we want to make in here first of all we want to click on the card node that rout node and we'll just right click and detach script to get rid of that card logic and then we're also going to right click on the area 2D and delete it just to get rid of the Collision so we can't interact with it anymore and then back in the main scene my opponent deck was a little scuffed I had the transform set on the Sprite 2D which is supposed to be

**8:26** · 0 0 on the X and Y and then we set the transform on the opponent deck node so I just fix that really quick and now in our enemy card scene I'm going to set the position of the card node the transform the same as the opponent deck so when that card instantiates in it'll spawn where the deck is and then it'll move over towards the enemy's hand and

**8:46** · now if we go to the opponent deck script we have to tell it to use that enemy card node that we created and not the player one so we have this constant up here card scene path let's change this to enemy card and if we run this we're going to get an error and that's that's because we have no script currently attached to the enemy card node but we can't use the player uh card script that we created because it has signals and stuff so we'll just duplicate card.

**9:07** · GD and we'll call this enemy card and make sure to drag enemy card onto the enemy card node to make sure you attach that script and then in the script if we open it up you can just get rid of basically everything in here just keep the extends known 2D and we'll see what we need if

**9:23** · we give it a run it'll tell us what we need when it eror is out and actually we have that error down here we got before that card typ is needed so we'll add for our card type and then we'll give this a run and see and it looks like we need starting position as well so we can just copy that over from the card script it's just far starting underscore position we

**9:39** · need that too and now if we give this a run you can see that it seems to be working and we cannot interact with the cards which is really good one thing I noticed is that we want to move up the enemy's hand a little bit more just cuz it's kind of covering those first row of card slots so we'll come into the opponent hand script and I'll go up to the top and I'll just set a hand white position equal to minus 50 and see how that looks and that looks really good now one more thing is that we can actually see the enemy cards are face up and we shouldn't be able to see them so if we go into the enemy deck script this

**10:07** · bottom line here we're actually playing the card flip to flip the card over let's just get rid of that line and now if we play it again you'll see that the cards don't flip over and we can't see the opponent's hand which is perfect and now we're going to go into the opponent deck script and we have this drawn card this turn variable anywhere we have a reference to this we can just delete it in this script we don't need it that's only for the player so we can't keep tapping on the deck and drawing loads of cards so we can just get rid of all those references and now if we give this a run you can see that if we hit the end turn button the opponent draws a card

**10:36** · but you're going to see that it draws a card into their hand on the left and we want to add that card the side closer to the deck because if we draw a card it goes from the deck to the left of our hand so if the opponent draws a c card I wanted to add on to the right of their hand the side closer to the deck that's going to be a super easy fix if we come into the enemy hand script and we come down here into the calculate card position function and right here where

**11:00** · we have this v x offset line if we change this plus here to a minus and this minus here to a plus then it'll work perfectly so now if we give this a run and press ENT turn you can see that the opponent draws a card into the right side of their hand perfect and you can see here if we try and draw a card when the opponent has no cards left it gets an error and that's because it's trying to access the Collision shape 2D to disable it but of course we deleted that area 2D earlier so if we come down here

**11:26** · where we have the check to see if it we just drew the last card in the deck and we just get rid of this disable Collision line it'll work and there's a couple other changes I'm going to make in this script I'm going to change the player deck variable to opponent deck just so it's clear and I'm also going to add a if statement here in the top of draw a card saying if the opponent deck.

**11:45** · size equals z return just so it won't run any of this card uh any of this code below don't forget to change all the references of player deck to opponent deck as well now that we've renamed it and now I'm actually going to take this code here where I have this check to see if the opponent deck is got zero cards in it and I'm just going to cut it and I'm going to go over to my battle manager script and I'm going to put it in here instead and I'm also going to want to wait 1 second so just right here after we make the button unusable we'll

**12:11** · copy this wait 1 second code paste it here and then below here we'll do our check and we want to do the check in here because if we are able to draw a card we want to draw the card but we also want to wait 1 second and of course we're going to need a reference to the opponent deck to do that check if there's any cards in the deck so we'll drag the node in here to get that reference and then dot opponent deck and in this check there's a double equal so we're checking if there is no cards in the deck let's change that to an exclamation mark equals so if there is

**12:42** · not zero cards in the deck or in other words if there is cards in the deck then we'll draw a card and we'll wait 1 second then we can get rid of this wait one second thing after we don't need that one and the only thing really left to do then is to play the card with the highest attack so I'm firstly going to come here into the enemy hand script and up here we have player hand variable I'm going to rename this to opponent hand and I've kind of done this a bit horribly I've kind of used enemy in half

**13:07** · the places and opponent in half the places and they're the same thing so I'm going to just refactor some of the stuff here I'm going to come to my enemy hand node and I'm going to change it to opponent hand and anywhere else I have enemy I'm also going to change that to opponent just so it's the same across the board and also don't forget in the enemy hand script to replace all instances of player hand with opponent

**13:27** · hand now that we've renamed it and then then in the opponent deck since we just had a reference to enemy hand we're going to have to change that to opponent hand since we just renamed it so let's drag in that new reference there and then I'm going to come down into my file system and I'm going to go to the enemy hand script and I'm going to rename that to opponent hand just to keep that consistency and naming across the board we also have this enemy card script I'm going to rename to opponent card and I'm going to search for enemy as well and it looks like we've two scenes with enemy so I'm going to rename this to opponent card scene and also opponent card slot

**13:59** · scene I'm also going to come here into the opponent deck script and up here at the top where we have card scene path I'm going to change that from enemy to opponent as well and we'll give that a run and just make sure everything works good and we can still Place cards and we can still end our turn and the opponent draws and everything looks good and now that we have all that set up we can come back into our battle manager and we can get a reference now to the opponent's hand so if we drag and drop opponent hand into here to get that reference and then we get do opponent hand which is

### Play Card With Highest Attack

**14:25** · the array with all the cards in it and we'll turn this reference into a variable we're going to want to access the opponent's hand a couple times here so I'm just going to create a variable called opponent hand and assign it to that and now we want to check if there's any cards in the opponent's hand before we play one so we can do an if statement here and we'll do if opponent hand do size I've got do size there but add it in equals zero so if there's no cards in

**14:46** · the opponent hand then we'll call the end opponent turn function and we'll return so that no none of the code below will run so now we have this R empty Monster card slots and now we basically just want to get a random slot to play that card card in so I'm going to make a new variable called random empty Monster card slot and we'll sign that equal to empty Monster card slots our array and then open and close square brackets and now in these square brackets whatever index you put in is whatever uh empty

**15:15** · card slot that it will get and so what we want to do is we want to get a random number between zero and four since there are five card slots and there's actually a function that'll basically do this for us so we're going to use Rand ey range here and then opening close soft brackets here and I'll put zero for the first number comma and now we don't want to hard code four here because this uh

**15:35** · empty Monster card slots array will get bigger and smaller depending how many free slots there are so I'm going to say empty Monster card slots. size for that second number to get a random number between zero and however many slots there are and now that we have our slot that a card is going to be played in we can remove that uh card slot from the empty Monster card slots array because it's no longer going to be an empty slot so we'll go empty Monster card slots.

**16:01** · erase and then we'll put in that random empty Monster card slot and now that we know what card slot we're going to play the card in the next thing we want to know is what is the card that we are going to play so in my case as I said before I'm going to play the card with the highest attack and to do that we're just going to assume that the first card in the opponent's hand has the highest attack and then we'll Loop through the rest of the cards and see if anyone has a higher attack so I'm going to create a new variable called card with highest attack and assign it equal to the first

**16:29** · element of opponent hand and then we'll Loop through every card in the hand and we'll check if that card has a higher attack than our card with highest attack and I might rename that variable to current card with higher highest attack and if it does have a higher attack then we'll set current card with highest attack equal to card don't forget to put a Col in after your if statement line and to indent the line of code below and

**16:50** · now that we have a card to place and a place to put it we just have to animate the card into position so if we go to the player hand script you can see we already have this animate to card two position function we can just yink the two lines from in here go back to our battle manager and just paste it here and I'm going to paste it twice because I want to animate the card's position but I also want to animate its scale and when we're changing its scale there make sure that's far tween two and twe two.

**17:14** · tween property because if you try and use the same tween for two different things at once it'll kind of just mess up we're also going to change it so the thing we're scaling is the current card with highest attack and on that second tween the thing we want to change is not the position it's the SC scale and then at the top of the script we're going to make a new constant called small card scale and set it equal to 0.6 and then

**17:36** · down here in the second tween instead of new position the target is going to be that constant we just created and since scale is two numbers it's X and Y we're going to have to create a vector 2 and then you can just for the X and the Y use that constant and then here I decided to rename my current card with highest attack variable back to card with highest attack again not sure why I did that but just keep a note of it and then after I set that variable name everywhere I changed new position to random empty Monster card slot. position

**18:03** · so that's where the card with the highest attack is going to anime 2 and then I'm going to create a new constant up at the top called card move speed and I'm going to set it equal to 0.2 and then back down here in the twins I'm going to set our move speed to our new constant and at this point we also want to use the card flip animation we made before so I'm going to copy that line from the deck script and instead of new

**18:23** · card it's going to be card with highest attack and then we want to remove that card from the opponent's hand so I'm we have a remove card from hand function in the opponent hand script so I'm going to get a reference to opponent hand and call that function passing in card with highest attack and now since this function is getting a little cluttered our opponent's turn function I'm going to take all this code for play trying to

**18:44** · play a card and I'm going to cut it and I'll create a new function called try play card with highest attack and I'll paste that code into the function and now open our opponent turn function I'll call that new function we created then I'm going to copy our code up here to wait 1 second and I'm going to come down to the bottom of our Tri playay card function and paste it there and then because we have a timer waiting in the tri play card with highest attack function if we want to wait for that function to finish we have to put the await keyword before we call the function so await and then the function

**19:14** · name and then when we go to give this a test it errors out because I forgot to put dot size here for opponent hand on checking if the opponent hand is empty and if we run it again and end our turn to see what the opponent does it errors out again because it's trying to access a attack on the card script and we don't

**19:31** · have that variable yet so I am going to create a variable called attack make sure you're creating this variable in the opponent card script and now in the opponent deck script where we instantiate the cards let's make sure to set that new attack variable so we'll say new cards. attack equals and then we'll take this here card database reference where we have the attack and we'll set the attack equal to that and then down here to make it cleaner we can get rid of this and we can just put new card. attack in here instead and now if

**19:57** · we give this a run we can just end our turn and you'll see that the opponent plays the card with the highest attack in their hand and after their turn ends you can see that we can't actually draw another card we have to reset our draw so let's add that so if we go to the battle manager script and we'll come down here to the end opponent turn function and here is where we want to set reset the player's draw so if we get

**20:18** · a reference to the player's deck we'll just drag it in here from we'll drag the node in to get that reference and then we'll call a function called reset draw and now we have to make that function so let's go into the player deck RT and we'll come down to the bottom and create a new function call it reset draw and all we'll do in here is set drawn card this turn equal to false if we run that now you can see that when it comes back to our turn after the opponent turn we are able to draw another card from our deck which works perfectly but we are not able to play another card so we have to reset uh the Monster card play this

**20:48** · turn as well so now if we come into the card manager script we'll come down to the bottom and create a new function called reset played monster and in here we'll just set played Monster card this turn equal to false and now we just just have to call that function so let's go into our battle manager script and down here in end opponent turn we'll drag in a reference to the card manager and called reset played monster and now there's just one last bug to fix here if we come into the battle manager and we come to this line where we are assigning random empty Monster card slot down here where we have dot size add a minus one

**21:16** · to the end of that just to accommodate that the indexes start at zero and that is it that is it done thanks everyone for watching the video in the next video we are going to be working on attacking so you can attack one of the opponent's cards and then the opponent can attack you back on their turn if you found this video helpful please consider leaving a like And subscribe for many more upcoming tutorials