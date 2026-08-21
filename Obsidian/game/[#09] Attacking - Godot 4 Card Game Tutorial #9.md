---
title: "Attacking - Godot 4 Card Game Tutorial #9"
source: "https://www.youtube.com/watch?v=yXkLWqj2xwk"
author:
  - "[[Barry's Dev Hell]]"
published: 2024-12-09
created: 2026-08-21
description: "Tutorial for adding Attacking to your Card Game Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpgAccess all"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=yXkLWqj2xwk)

Tutorial for adding Attacking to your Card Game Godot 4.3  
  
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
00:41 Try Attack  
03:11 Direct Attack  
07:33 Player And Opponent Health  
10:11 Attack Function  
14:01 Destroy Card Function  
17:25 Outro

## Transcript

### Intro

**0:00** · hey everyone I've got a really awesome video for you guys today we are going to be working on implementing card attacking which is going to tie our card game together really nicely and change it from Just dragging cards around the screen to an actual playable game with life points and everything I'm going to be implementing the attacking similar to Yu-Gi-Oh Master duel or Magic the Gathering Arena where you select a card

**0:16** · on your Battlefield and then you select a card you want to attack we're also going to be working on a direct attack so if there's no cards on the opposite Battlefield you'll attack your opponent's life points directly and lastly we'll Implement a discard pile or a graveyard where defeated cards will move to I'll leave the playlist Link in the description which contains the eight previous videos leading up to this one and as always if you're subscribed please consider doing me a huge favor and sending those notifications to all so the YouTube algorithm knows that you want to see my videos and that you like me so to get started here we're going to open up our battle manager script and come down to the opponent turn function

### Try Attack

**0:46** · and we're going to make a couple of changes in here the first one is this if empty Monster card slots. size equals equals z we're going to change that to exclamation marks equals z and then we'll move this try playay card with highest attack function we're going to move that up and we'll p it into this if condition instead of end opponent turn

**1:03** · and we can get rid of this return as well and that change is just to stop the opponent ending their turn early because after that they are going to try and attack and before we attack we have to check if there's any opponent cards on the battlefield to attack with so we need some way of storing which opponent cards are on the battlefield so I'm going to come up to the top of the script and create a new variable called opponent cards on Battlefield and assign

**1:22** · it equal to open and close square brackets so the gon knows it's an array and now we have to populate this array so let's come down to the tri playay card with highest attack function and after we remove the card from the opponent's hand that we're going to play let's add the card that we're going to play into the opponent's cards on Battlefield array and we'll do that using the append function and now we can come back up into the opponent's turn function and down here where we want to attack we'll create an if statement checking if opponent cards on battlefield. size is not equal to zero

**1:49** · so if there are any opponent cards on the battlefield and then we want to Loop through every card on the opponent's Battlefield and each card will then get an attack but we don't want to Loop through this opponent cards on Battlefield aray that we created because cards if they're defeated will be removed from this array and it'll get messy so we're going to make a duplicate of this array and we'll Loop through the duplicate instead so we'll create a new variable called enemy cards to attack and we'll assign it equal to opponent cards on Battlefield do duplicate and now we'll Loop through every item in this duplicate array so we'll go for card in enemy cards to attack and here's

**2:21** · where we check if we're doing a direct attack or if there's cards in the opposite field that we can attack so we'll create an if statement if player cards on battlefield. size is equal to zero I put not equals here uh but make sure to put equals equals I'll go back later and fix that so if there's no cards in the players Battlefield we will perform a direct attack and now this player cards on Battlefield array doesn't exist yet so let's go to the top of the script and we'll create that variable and assign it equal to an open and close square bracket and now we have to populate this array so if we open up our card manager script and we come down to the Finish drag function this is

**2:52** · where we handle placing a card onto the battlefield so we can get a reference to our battle manager here and access our array our player cards on Battlefield array and we'll append into that array the current card being dragged which is the card we are placing in the battlefield so now that we're populating that player cards in Battlefield array we'll come back into our battle manager script and we'll come down here to where we're performing a direct attack and we'll call a new function called direct attack then we'll create this function and just to test it inside this function we'll just print direct attack and now

### Direct Attack

**3:21** · I'm going to go into my project settings I'm going to go to display window and just change the mode into Window mode from full screen so I can see the output so I can just see what's being printed and then you can give it a run to test it and you can see when I hit end turn the opponent plays a card but nothing is printed and that's cuz I realized I had the sign the wrong way around so here I made an else statement and I put the direct attack into the else and I just put regular attack in the if statement

**3:44** · then we'll come down and make that attack function and inside we'll just print attack and if we give this a run now and just end our turn you can see that the opponent plays a card and direct attacks cuz we have nothing on our field and now if we play a card to our side of the field and end our turn you can see that the opponent attacks twice and that's just a regular attack and he's attacking twice because he attacks once for each card he has so that is perfect and next thing we want to do is flesh out this direct attack

**4:06** · function so we're going to take in an attacking card and an attacker and then up here where we're calling the function we'll pass in card which is the current card in the loop and we'll pass in opponent cuz that's who's attacking then I'm going to go into my tri playay card with highest attack function and I'm going to yink these two tween lines so

**4:21** · this is to animate a card to a position we're just going to take this and we'll paste it into our direct attack function and when I say yink there I mean copy and paste not cut and paste just in case that trips anybody up and the thing we want to Tween is our attacking card being passed in and we're going to move it to New pause which is a new variable we're going to create and we'll create that new pause variable now and we'll just assign it equal to a vector 2 and a

**4:42** · vector 2 needs an X and a y coordinate and we want to move this card to a different position depending on if it's the opponent attacking or the player attacking so I'm going to do an if statement to check if the attacker is opponent and also above that I'm going to create a new variable called new pause Y and now if the attacker is the opponent I'm going to assign new PA y equal to 1080 and then I'll add an else statement so if it's the player attacking I'll set new pause y equal to zero then we we're assigning new PA down here to a vector 2 for X we're going to put attacking card. position dox and for

**5:12** · y we'll just use new pass Y and then we want to wait a second and we already have the code to do that so I'm just going to go to somewhere in a code where we've done it in the script and then because we're going to be doing this so often I'm going to extract this out into its own function so I'm going to create a new function called weight that's going to take in weit time and then I'm going to copy these lines here battle.

**5:31** · start and a wait battle. timeout I'm going to copy that paste it into our function and I'm going to add a line to say battle. weight time equals the weight time that we are passing in and now in this script wherever we are waiting a second we can replace that by calling the weight function and make sure to use the await keyword as well so it actually does the code does suspend on this line await wait and then pass in

**5:52** · 1 second or 1.0 and then back up in our direct attack function after we animate the card we're going to wait 0.15 just to give it a little a little bit of time to animate and then here the next thing we want to do is we want to check if it's the opponent or player attacking and we want to deal damage to the opponent or player depending on who's attacking we won't Implement that fully just yet but the logic is there and then after that we want to animate the attacking card back to where it came from so you can just copy these two tween lines up here but make sure to change it to V tween 2 and then tween 2.

**6:22** · tween property cuz if you have more than one tween running at the same time it can just mess things up one other thing to do before I forget is before before we start animating the card let's set the attacking cards Z position equal to uh five so it'll render over everything else then back down here in our second tween we're going to change newos to attacking card. card slot card is in.

**6:42** · position so that we move it back to the card slot it came from and after that we're going to wait 1 second and then we're going to reset our attacking card c Index back to zero and instead of using five and zero here you really should be setting it to a constant value but I was lazy if we run this now we can see that we get an error when the opponent attacks saying card slot card

**7:01** · is in doesn't exist in opponent card script and that's right because it doesn't we only have that in the card script so we can copy this variable from the card script and just paste it into the opponent script and now we have to set that variable when the card is played so let's go into the battle manager go down to where we play a card and then down here we'll put card with highest attack do card slot card is in

**7:21** · equals random empty Monster card slot which is the card slot the card's being played in and now if we give this a run and we just end our turn after playing nothing to our field you can see the opponent plays a card and then that card attacks us directly and that looks really good and now we just have to implement health or life points for the player and the opponent to subtract from

### Player And Opponent Health

**7:38** · when a card attacks directly so at the top of the battle manager script we'll create two new variables player health and opponent health and we'll also create a new constant called starting health and we'll set that equal to 10 or whatever you want and then in the ready function we'll set player health and opponent Health equal to starting health and now we need something to actually display that Health to the player so we're going to come into our main scene we're going to right click on Main up here add a new child node and we'll add a rich text label we'll call this player

**8:04** · Health then in the inspector I'm going to go to the text property and set zero for this and then I'll duplicate that player Health node and I'll make a new one and I'll call it opponent help and then we'll just adjust the transform positions to make the player Health somewhere visible on the player's Battlefield and the opponent's Health on the opponent Battlefield I'm also going to set both of their scale to 2.0 just

**8:23** · to make them a bit bigger and more legible then we're going to go into our battle manager script and in the ready function where we're setting our player he we're also going to update our Rich Text label to display that player health so we'll get a reference to the text label and we'll get that text property and assign it equal to and we'll use the

**8:39** · string function because player health is an INT and we need it to be a string and then we'll put player Health in there and we'll do the same for opponent health and make sure that's the opponent Health reference there and now if we give this a run to test it you should see that our player health and our opponent Health Rich Text labels are being updated to 10 which is our constant starting health so that is working correctly and then next up we actually want to deal damage in the direct attack function so up here in the

**9:03** · ready function I'm going to copy these two lines and I'll paste them down here where we're checking if the attacker is opponent and if the attacker is opponent we're going to say player Health equals player Health minus attacking card.

**9:14** · attack so we'll subtract the attacking cards attacked from the player health and then we'll copy these two lines and paste this into the else so the else is if the player is the one attacking and then we'll change these two values to opponent Health since it's the opponent Health that we're going to be subtracting from and then we'll change this Rich tax label to opponent Health

**9:31** · as well and then lastly in this string function we're going to put opponent Health instead of player health and then since we don't want our health to go negative we want the minimum it can be to be zero we're going to use this Max function passing in zero as the first value and then what we already have is the second value and we'll do that for the player health and the opponent health and now if we give this run and just end our turn you can see that the opponent attacks and it takes from our life points which is perfect I'm just going to make a couple quick adjustments in this direct attack function I'm going to cut this zindex line attacking cards

**10:00** · change the Z index and Pace it above the weight and then up here where we're calling direct attack I'm going to put the await keyword before it so it waits for that function to finish before the code continues and now that our direct attack function is pretty much finished we can come down to our attack function and start fleshing this one out and our attack function is going to take in an attacking card a defending card and also

### Attack Function

**10:20** · the attacker and now up here where we're calling attack we need to pass those three things in and we know the attacking card is just the current card in the loop but the defending card we're going to have to Define that so I'm going to create a new variable called card to attack and we'll assign it equal to player cards on Battlefield that array and now we want to get a random element in this array and to get a random element we're actually doing that with another array just down here and we

**10:43** · could use this code but actually someone in my comments pointed out a much easier way to do this we can use the shorthand pick random function and it's just a lot cleaner and easier so I'll use it to replace the code I had before and then back up here I can use player cards on battlefield. pick random and now we have our attacking in defending cards we can pass that into the attack function and we'll also use that await keyword as well before calling the function and lastly we will pass in opponent then down here in the attack function we'll set the attacking card Z index to five

**11:10** · similar to indirect attack and then we want to get the position that we want to move the card to so I'm going to create a new variable called new pu and assign this equal to and now we could just assign this to the position of the defending card but in case we want to add an offset here I'm going to assign it equal to a new Vector 2 and for the X I'm going to put defending card oppos i.x and for the Y I'll put defending card. positiony plus and then I'm going

**11:34** · to use this new constant battle PA offset and up at the top of the script I'll declare that constant and set it equal to 25 and now that we have the position to move the card we can use these two tween lines from before to move the card to that new position and then we'll wait 0.15 and then we'll use the tween lines again but make sure to rename it to twe 2 and tween 2. twe property and we want

**11:53** · to be moving the attacking card back to the card slot the card came from and the next thing we want to work on is the the cards dealing damage to each other so we'll start with the defending card so we'll say the defending Cards health equals and then we're going to use the max function here so that the health can't go below zero and we'll use zero for the first thing being passed in and for the second thing being passed in we'll put defending card.

**12:12** · Health minus attacking card. attack and now we need to update this value on the rich text label so we're going to go defending card.get node then if we open up the card scene we want to get this health node here whatever you called this I just called mine health so we'll come back here and we'll go defending guard doget node health and we'll set that equal to and then we're going to use the string function here since defending card. health is an INT and we need a string and then we'll pass in defending card. health and I forgot to put text in

**12:40** · here cuz we're changing the text property of the rich text label so make sure you put that in and then we want to do the same thing but for the attacking card so I'll duplicate these two lines and I'll change defending card to attacking card and attacking card to defending card then we're going to wait one second and set the attacking card Z index back to zero then the next thing we want to do is destroy those cards if their health has reached zero so I'll make an if statement saying if attacking card. health is zero then we'll call a

**13:06** · new function called destroy card and we'll pass in the attacking card and then we'll come down and we'll create this destroy card function and we want to take in the card to destroy and we also want to take in a second argument card owner which is going to make this function much more reusable now up here where we're calling destroy card we have to pass in the card owner and we can do

**13:24** · that by just passing in the attacker that we are passing into the attack function so we'll take this pass pass it in down here and that's perfect also I misspelled the destroy card function there so I'm just going to fix that and then we're going to check if the defending card's Health has reached zero and if it has we'll destroy card and we'll pass in the defending card this time and for the card owner here we can't pass in attacker because it's not the attacking cards help that's reach zero so we'll do an if check we'll check if the attacker is player and if it is

**13:50** · then the defending card is the opponent so we'll pass in opponent for card owner and then we'll do an else statement so if the attacker is the opponent then it's the player that's defending so we'll put it in Destroy card defending card pass in player and now we have to flush out the destroy card function which is going to do two things it's going to move the card to the discard pile and we also have to reset any code to do with the card like it might be in the player cards on Battlefield array or we have to clear the card slot that the card is in so the card's no longer in

### Destroy Card Function

**14:15** · the slot that sort of stuff and the first thing we're going to do is create that discard pile or graveyard or whatever you want to call it so we'll come into the main scene we'll right click on Main We'll add a new child node node 2D and we're going to call this player discard and then we'll right click on player discard ADD child node and I'm going to add a Sprite 2D then I'm going to select player discard node and in the inspector I'm going to change the scale to 0.6 to match our

**14:38** · Battlefield then I'm going to select the Sprite 2D for player discard and I want to give it a Sprite or Texture so I'm going to drag my card slot PNG into the texture property then I'm going to adjust the player discards transform position to move it to the right of the player's Battlefield and then I'll duplicate the player discard node I'll rename this one opponent discard and I'll move it up to the left of the opponent's Battlefield then I'll go back into our battle manager script and down

**15:01** · in the destroy card function I'm going to create a new variable called new pause then I'm going to do an if statement to check if the card owner is the player and if it is I'll set new pause equal to and I'll get that reference to the player discard node we created and then doos and otherwise if the card owner is the opponent new pause is going to equal the opponent discard opposition then we'll grab these tween

**15:22** · lines that we've used so many times before we'll copy and paste them and we'll change the thing to Tween to the card being passed in and make sure the target destination is new pause then we can get rid of this stuff we don't need it then back up here in the attack function we'll go just above where we're calling to destroy the cards and we'll create a new variable called card was destroyed and we'll set it equal to false and now in both of these if conditions We'll add a line saying card was destroyed equals true and then below

**15:46** · all this we'll do a check to see if a card was destroyed and if it was we will wait 1 second now if we give this a run and place something in our field and end our turn you can see that the enemy places a card and attacks and then we get an error and that's because we haven't got the health and attack set up properly and it's saying that this error is in the card script so if we open up that card script I'm going to add VAR health and VAR attack and I'll also open up the opponent card script and that one already has VAR attack there so I'll add

**16:13** · VAR health and now we have to make sure these variables are being assigned so if I go over to the deck script and we come down to where we are instantiating the cards then I'm going to set that Health variable we just created so I'll do new card. health equals and we're already accessing the card's Health from the card database here here so I'm going to cut this line and I'll paste it here and then where we're setting the rich text labels text I'll just do new card.

**16:35** · health instead then I'm going to copy that new line we created and I'll do the same thing for attack and I've kind of mixed up attack and health a little bit here make sure you correct that and also make sure you're assigning the attack and health to the right thing from the card database then we're going to go over to the opponent deck and do the same thing and it looks like we've already got it set up for attack so we only need to do it for uh health and now

**16:54** · if we run this again and do the same thing where we just play something to our Battlefield and end our turn you can see that the opponent attacks and now we don't get a hard crash error but if we X out of this you can see that we are getting an error with our tween here if we click on it it'll bring us here where the problem is and we can just put attacking card Dot card slot cards in do position which we forgot to put now if we give this a run play something to our field and end our turn you can see that the opponent plays a card attacks our card our card is destroyed and goes to the graveyard or to the discard pile and

**17:24** · everything looks like it's working really well and there is a couple of bugs here and we haven't implemented the player being able to attack yet but I think this video's gone on long enough so I'm going to end it here I have the footage for part two already recorded so it should be out really soon if you found this video helpful please consider dropping a like to help support the channel and subscribe and turn on notifications for upcoming tutorials and devlogs