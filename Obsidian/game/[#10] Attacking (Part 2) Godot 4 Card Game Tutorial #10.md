---
title: "Attacking (Part 2) Godot 4 Card Game Tutorial #10"
source: "https://www.youtube.com/watch?v=XloHvKuQc14"
author:
  - "[[Barry's Dev Hell]]"
published: 2024-12-18
created: 2026-08-21
description: "Tutorial Part 2 of adding Attacking to your Card Game Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpgAcce"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=XloHvKuQc14)

Tutorial Part 2 of adding Attacking to your Card Game Godot 4.3  
  
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
00:19 Destroy Card Function Updates  
00:56 Select Player Monster  
9:04 Select Opponent Target  
13:58 Outro

## Transcript

### Intro

**0:00** · in the last video we implemented enemy attacking and a discard pile where defeated cards go and in this video we're going to work on player attacking so you can choose a card on your battle field to attack and then choose a Target on the opponent's field and have it attack that card as always the link to the series playlist will be in the description and if you are subscribed please consider doing me a favor in turning those notifications to all to help me with the YouTube algorithm to get started we're going to open our battle manager script and we're going to come down to our destroy card function and when a card is destroyed we're moving it to the discard pile but there's a couple lines we want to add in here if the card owner here is player

### Destroy Card Function Updates

**0:30** · then we want to add a line saying if card in player cards on Battlefield we want to check if that card is in the player cards on battlefield of Ray and if the card is on the battlefield we will erase that card from the array since it's no longer on the battlefield then down here before between we're going to get card doc cardslot card is in and then we're going to set the card in slot there to false and here we'll also add a line saying card. card slot card is in equals no since the card is

**0:55** · no longer in that slot and the next thing we want to be able to do is select a card from our Battlefield that want to attack if we open the input manager script you can see down here where we click on a card we're calling start drag function from card manager instead we want to call a function called card clicked so I'm going to go over to the card manager and create a function called card clicked and it's going to take in a card then in the input manager I'm going to call card clicked instead of start drag then back in the card manager script we're going to add some code to this card clicked function We'll

### Select Player Monster

**1:24** · add an if condition to check if the card clicked is in a card slot and if it is that means it's on the battlefield and we can select elected to attack but we'll also add an else condition so if it's not on the battlefield we'll just call the start drag function and pass in card now if we've clicked one of our cards that's on the battlefield we want to check if the opponent has any cards or not on the battlefield and if they don't we'll do a direct attack and to check that we can drag in our battle manager reference and check if the enemy cards on Battlefield array do size is

**1:50** · equal to zero and for the direct attack we already have that function set up in the battle manager so we'll get another battle manager reference and we'll call Direct attack and for the attacking card we'll pass in the card that we clicked on and if we go into the battle manager you can see that direct attack takes in the attacker so we'll also pass in player in quotes then we want to add an else statement here so if there is an

**2:10** · opponent card on the battlefield we will call a new function called select card for Battle then we'll come down here and create this function and where we're calling it we want to pass in card and then in the function itself we'll take it in also up here after the player direct attacks I'm going to return just so the function doesn't run any more code after this line then up at the top of the script I'm going to create a new variable called selected monster then down in the select card for Battle function we created we'll set selected monster equal to the card we're passing in and I'll also set the card's position on the y - 20 from where it is so that

**2:40** · we know it's selected now before both of those lines we want to add an if condition to check if there's already a selected monster and if there is we'll do one more check to check if the selected monster is the card that we just clicked and if it is we want to unselect it so we'll set the Y position of the card plus 20 or down 20 and we'll

**2:56** · set selected monster equal to null then we'll add an else condition so if the the selected monster is not the card we just clicked on then we'll set the selected Monster's y position back down so it looks unselected and we'll set selected monster equal to the card we just clicked on and then we'll set that card's position up 20 or minus 20 and

**3:12** · we'll add an else down here so if there isn't a selected monster we'll run these last two lines of code before this will work we're going to have to come down to our finished drag function and this line we have where we're disabling the Collision of the card being dragged we're going to delete that line and we'll give this a test then and you can see that the card is getting some weird hover effects and we'll fix that quick by coming down to the UN hovered over card function and adding an if condition to check if the card is in a card slot

**3:36** · and if it is we'll return so the function will end here if we run this now to give it a test and we click on the card that's on the battlefield you can see that we get an error because we said enemy cards on Battlefield this array when it's actually called opponent cards on Battlefield so we'll fix that in our card click function and if we give this a run now you can see that we can play a card and when we click it it'll direct attack the opponent and the opponent loses life points or health

**3:57** · equal to the card's attack which is amazing but now let's make it so that a card can only attack once per turn in our card click function before we check if there zero cards in the opponent Battlefield I'm going to check if the card is in a new array called player cards that attacked this turn I'm going to copy that name and then I'm going to go over to our battle manager script and I'll go up to the top and I'll declare that variable and I'll assign it equal to empty square brackets because it's an array and then back in the card manager I'm going to drag in that battle manager reference before the array name and I'll also change it to if card not in because

**4:28** · we only want to run the indented code code if the card is not attacked already and then I'll highlight the code below and press tab to indent it and now we want to populate our player cards that attacked this turn array so if we go to the direct attack function in the battle manager script and we'll come down to this else statement which is if the attacker is player then we'll append the attacking card into the player cards that attack this turn array then we'll come down to the just regular attack function and we'll create a new if statement at the top to check if the attacker is player and if it is we will

**4:56** · once again append the attacking card into the player card that attacked this turn array and now we want to empty this array when the turn ends so we'll go to the on-end turn button pressed function and we'll add player cards that attack this turn equals and we'll just set it equal to two empty square brackets so if we give this a run now you can see that we can click the card and attack but you might notice that sometimes when you click on the card nothing happens and then sometimes when you click on the card it'll attack and that is because

**5:21** · the card slot Collision is getting in the way so sometimes you're clicking on the card but sometimes you're clicking on the card slot so we can fix this by disabling the card slot Collision when we put a card in a slot so we'll go to our card manager script and we'll go to our finished drag function where this code is handled and we removed the line from here earlier that disabled the card Collision we're basically going to add that line back but for card slot found instead of card being dragged so we can run that again and verify that that problem is fixed but you can see here when we try select a monster when there's opponent monster on the field we get an error and that's because we have

**5:52** · card. position here but we are supposed to change card. position doy so I'm going to change that in the four places I have it in the select card for Battle function and now you can see if we give this a run and end our turn so the opponent plays something now if we play something we can click it and select it and you can see it moves upwards and then if we click that card again it'll move back down and unselect but there's still a couple things we have to do so we are disabling the card slot Collision when we place a card in a slot but now

**6:18** · we have to enable that Collision again when the card leaves the slot so in the battle manager we'll come down to the destroy card function and if the card owner is player we will set the card do card slot card is in Collision disabled to false and also now that the player card is destroyed and moved over to the graveyard it is no longer in a card slot so you will be able to drag it around so to prevent that we're going to disable the card's Collision so we'll copy the Collision line but we'll change it to card.get node and we'll set that dot disabled equal to true then down here in the else

**6:49** · so if the card to destroy belongs to the opponent we want to check if the card to destroy is on the battlefield or is in the opponent cards on Battlefield array and if it is We'll erase that card from the array since it's no longer on the battlefield the next thing we'll do is we'll go into the card manager script and we'll create a new function called unselect selected monster and in here we'll firstly check if selected monster and if there is we'll set its position on the Y down 20 or plus 20 and then

**7:17** · we'll set selected monster equal to null and then we'll copy the name of this function we'll go into our battle manager script and when we press the button to end our turn we'll call the function unselect selected monster from the card manager we also don't want to be able to select a monster when it's the opponent turn so in the battle manager script up the top I'm going to declare a new variable called is opponent's turn and it'll default it equal to false and then we have to set that variable so as soon as we press the end turn button we can set is opponent's turn to true and then down here in the end opponent turn function before we

**7:48** · make the end turn button appear again we'll set is opponent's turn equal to false then if we go to the card manager and go to the card clicked function if the card is in a card slot we're going to add another if statement and check if opponent's turn equals false and we'll indent this code below and then because that variable exists in the battle manager we'll drag in our battle manager reference if we give that a run now you can see if we play a card and click on it it gives us an error because in the battle manager we called the variable is

**8:14** · opponent's turn not opponent's turn so let's fix that here but we're playing this now one more bug that we want to fix you can see if I leave my cursor on a card when it's defeated and it moves over to the discard pile you can see that it scales big when it's supposed to be small so let's fix that I'm going to go into the cards script and create a new variable called defeated up at the top then we have to set this variable so we'll come into the battle manager and in the destroy card function if the card owner is player we'll set card. defeated

**8:40** · equal to true and then back in the card script actually I forgot to default this variable to false we're going to set it bar defeated equal to false and then to fix that bug back in the card manager in the on hovered off card function up at the top we can do an if check to make sure the card is not been defeated and

**8:55** · then we'll indent the following code so it only runs if it passes that if statement and now if we run this and try to replicate that bug you can see that it doesn't size up to Big it say small which is perfect now that we're able to select a monster on our side of the field the next step to attacking an enemy monster is going to be giving the enemy cards collision and then knowing

### Select Opponent Target

**9:12** · when we click on an enemy card so if we open up the opponent card scene we can right click on the root card node add a new child node add an area 2D and then we'll right click on the area 2D and add a collision shape 2D and if you've watched my videos before you'll be very familiar with this setup we'll change the shape property of collision shape 2D to a rectangle and then we'll drag these orange points to fit it over the card and then if we click on the area 2D open the Collision tab in the inspector and

**9:38** · have a look here we have these layers and collision masks and we're going to set ours to four on the layer and four on the mask because when two and three are taken I think one is cards two is slot and three is deck I'm pretty sure and now if we open up the input manager script if we come up to the top you can see we have these const Collision mask values we're going to make a new constant called Collision mask opponent card and we'll set it equal to 8 which

**10:01** · if you see here we have our Collision mask set for but the value there is eight and the value is the code number that we want and then we'll come down here to where we're checking what kind of collision our click rcast hit and we'll add an L if here and we'll check if the result Collision mask equals the

**10:17** · new constant we just made Collision mask opponent card and if it does we want to call a function from the battle manager so we'll drag in our battle manager reference there and then we'll call a new function called enemy card selected and don't forget to put that colon on the line above and into this function we want to pass in the card that we clicked on which is this bit here and now we

**10:36** · just have to go into the battle manager and create that function and make sure to take in that card now that card that we're passing in is the defending card or the card being attacked but we actually have to get the card that is attacking so we'll create a new variable called attacking card and we'll set it equal to and then we'll drag in our card manager reference here and get selected monster from the card manager script and then we'll do an if statement to check if attacking card is not null and we also want to make sure that the defending card is on the opponent's Battlefield so we can come up and just copy the opponent cards on Battlefield

**11:06** · array and we can check if I'm going to rename card to defending card there we'll check if defending card in opponent cards on Battlefield and if both those conditions are met we'll call the attack function which already exists in here and that takes in an attacking card and a defending card which we have and it also takes in who is attacking and in this case the player is attacking so we'll pass player in in quotes and one more thing to do before we test this is to come up to the attack function and if this is called and the attacker is player we are going to want to set selected monster equal to null and since

**11:36** · that's in the card manager we're going to have to drag in that reference first and if we test this now you can see you can select cards perfectly but you can attack twice at the same time so we want to make sure that you can only attack if you're not already attacking so let's go up to the top of the battle manager script and declare a new variable called player is attacking and we'll default

**11:54** · this to false and now we have to set this variable so down in the direct attack function if it the attacker is the player we'll set player is attacking equal to true then at the bottom of this function we'll do another if statement to check if the attacker is player and if it is we'll set player is attacking equal to false and then also down in the attack function if it's the player attacking we'll set player is attacking equal to true and then finally at the bottom of this function if it was the player attacking we will set player is attacking equal to false then in the

**12:21** · card manager script we're going to go to the card clicked function and after where we're checking if it's the opponent's turn we're going to add a new if condition and we'll Dragon a reference to our battle manager so we can access the player is attacking variable and we'll check if the player isn't attacking and then we'll indent this code below it so that this code will only run if the condition is met then we'll go back to the battle manager script and we'll come down to the enemy card selected function and here we have two conditions on one line I'm just going to break them into two separate lines so we'll have if attacking card

**12:50** · and then we'll have if defending card and opponent cards on Battlefield then I'm going to add a third if condition if player is attacking equals false and if all those conditions are met then we'll attack we can run this now and give it a test and you'll see that you can't attack twice at once you have to wait for the first attack to go through before selecting or attacking with a monster again and you can only attack on your turn one more thing to fix is to

**13:11** · disable the end turn button just while we're attacking so if it's the player attacking in the direct attack function I'll disable the end turn button and set its visible property to false and then at the end of the function I'll reenable the button and I'll set its visibility to true and then we'll do the exact same thing for the attack function if the player is attacking we'll disable the button and hide it and then at the end of the function when the attack is finished if the player was attacking we'll reenable the button and show it again as you can see here when I gave this a test and tried to attack I got an error and that's because I'm looking for a node called button but we called our

**13:42** · button end turn button so I'm just going to replace everywhere I have that button reference with the end turn button reference and then the very last thing we have to do is come down to the enemy card selected function and just before we attack we're going to get a reference to card manager and set selected monster equal to null and that's it that's a ATT in and direct attacking working for the opponent and the player if you found this video helpful please consider dropping a like below the next video I'm going to release is going to be on card abilities which is going to be really fun so make sure to stay tuned for that and subscribe for upcoming tutorials and devad vogs