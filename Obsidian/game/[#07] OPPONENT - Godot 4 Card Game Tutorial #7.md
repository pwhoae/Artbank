---
title: "OPPONENT - Godot 4 Card Game Tutorial #7"
source: "https://www.youtube.com/watch?v=cTGX4YMmBYc"
author:
  - "[[Barry's Dev Hell]]"
published: 2024-11-19
created: 2026-08-21
description: "Tutorial for adding an Opponent to your Card Game Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpgAccess a"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=cTGX4YMmBYc)

Tutorial for adding an Opponent to your Card Game Godot 4.3  
  
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
00:32 Reorganizing The Field  
04:55 Fixing Bugs  
07:28 Deck Changes  
08:48 Card And Card Slot Types  
14:23 Outro

## Transcript

### Intro

**0:00** · in the last video we added unique cards and this card flip animation when you draw from your deck and in this video we're going to be reorganizing our field to fit in an opponent and we're also going to be changing our cards and our card slots a little bit to accommodate Monster cards and Magic type cards the link to the series playlist where we have the six previous episodes is going to be in the description if you want to catch up or if you're working on your own card game that's fine too you can just add the opponent code to your project and it should still work fine my

**0:24** · name is Barry and if you are subscribed please consider doing me a huge favor and turning on your notifications just to let the YouTube algorithm know that you like me and you want to see my videos so we're going to get started by reorganizing our field to fit the opponent which means we're going to have to make some of our stuff smaller I'm going to come over to the deck node and I'm going to go to the inspector and change its scale to 0.8 and I'm also going to adjust its position just to move it down more into the bottom left then I'm going to select all my card slots here and I'm going to change their scale to 0.6 and now I want to position

### Reorganizing The Field

**0:53** · this first card slot right in the center of the screen and to do this for sure I can go into our project settings and I can check or viewport width and then if I divide this viewport width by two I can use that as my Exposition for my card slot I'll also change the Y position to move it down towards the player and then I'm going to make two card slots to the left of it and two card slots to the right of it so there's five in a line in total so I'm just

**1:16** · right clicking the card slot nodes duplicating them and changing their position then I'm going to go into my project settings go to the window Tab and I'm going to turn full screen mode on and if we give this a run now I'm going to click on the deck and you can see that everything looks good but the cards are really big to fix this we're going to go into our card scene we're going to click on our card node and we're going to change its scale to 0.8

**1:36** · and also since we updated the deck position I'm going to change the card nodes position equal to the deck position so I'm just going to go over grab the decks information and copy and paste it into the card position now you can see when we run it again the cards are still weirdly big and that's because when we hover over them we have effects that set their scale hardcoded so if we go into the card manager uh the script

**1:58** · that is and then if we come to thep we can declare a new constant and we will call this uh default card scale or something and just set it equal to 0.8 then if you hit contrl F here and search for anywhere we're using scale in the code you're going to see that a lot in a lot of places we're setting the card scale to just one one and instead of this we're going to paste in our new constant default card scale for both of those values and then in sometimes in the card manager we're uh setting our card scale to a bigger scale so we're setting to it to 1.05 sometimes so I'm

**2:28** · going to come to the top of the screen and create a new constant called uh card bigger scale or something and I'm going to set it equal to 0.85 so just a little bigger than default and then for all those values where we're setting it to zero uh or 1.05 I'm going to change it to card

**2:44** · bigger scale for both of those values if we run this again you can see that our cards are now scaling correctly but the hand is a little bit higher than the deck on the y axis so we're going to go ahead and go to the player hand script and we have a y hand y position constant here here which is used to set the hand height so I'm going to come over to the deck I'm going to copy its y position and then in the player hand I'll set the hand y position constant equal to that

**3:10** · and now if we play that again you will see that when we draw from the deck It lines up perfectly I'm also going to change this card width constant just to accommodate for the smaller card sizes you can see if I run that now the Gap in between the Cards is uh much less and the next thing I'm going to do is I'm going to duplicate the current card slots I have and make a new line of card

**3:27** · slots above it depending on what kind card game you want to make you might not want to do this the sty I'm going for is to have the top row of card slots be for Monster cards and the bottom row of card slots be for like magic cards uh kind of like Yu-Gi-Oh and to avoid having loads of clutter in our hierarchy I'm going to create a new node 2D call it card slots and then I'm going to child all the card slots we have into this node just so we can hide it so things don't get too overwhelming and the only other thing that we need to create for our side of the field is a button to end our turn so

**3:55** · I'm going to go up to main I'm going to right click ad child node create a button and I'll set this buttons text properly and in here I'll just put end turn and then I'll adjust its transform to bring it down to the rest of our stuff and I'm also going to rame the node in the hierarchy and just call it end turn button then I'm going to duplicate all the card slots that we have and I'm going to move them up to create the opponent side of the field and then we need to create a deck for the opponent so you could duplicate the player deck node here uh I just went ahead and created a new node 2D called

**4:24** · it opponent deck and then copy and pasted all the deck stuff into it I then adjusted the opponent deck positions so be up on the top right and if we give this a run now you can see that the opponent's deck actually still has the same collision and functionality as the player deck so let's fix that if we go

**4:39** · into the opponent deck node and we go to the area 2D we can just delete this whole thing we don't need it we don't need it have collision and then if we right click on Deck we can detach the script as well to get rid of that logic and now if we run that again you can see that you can no longer interact with the Enemy deck and the next thing to fix is

### Fixing Bugs

**4:57** · you can see we can place the cards in the card slot but we need them to scale down once they're placed in to handle this we'll open our card manager script and we'll go to the Finish drag function which is where we handle the code for dropping a card in the card slot and we'll add a line of code in here to set the scale of the card being dragged and we want to set it to 0.6 but instead of

**5:16** · hard coding that I'm going to make a new constant up here called card smaller scale and set it equal to 0.6 and then down here we can set that for both the X and Y value for the scale if we run this now and try and place a card in a slot it's still not going to scale down and that's because the UN

**5:31** · hovered off card function is triggering when we place a card in the card slot and it's scaling the card back up to Big again so let's fix that so we want to add a check in the UN hovered off card and we want to check if a card is in a card slot and then we don't want to run the code if that is true and so we have a reference to the card in here but the card itself doesn't know if it's in a card slot or not so let's Implement that

**5:53** · we'll open up the card script and we'll add a new variable called card slot card is in or call it whatever you want it's bit of a mouthful and now in the card manager script in the finished drag function when you place a card into a card slot we will set that card so we'll set card being dragged do card slot card

**6:10** · is in and set it equal to the card slot found and now that a card knows if it's in a card slot we can Implement that fix so we'll go back down to the UN hovered off function and then we'll use that new variable we created to check if a card is not in a card slot make sure to use that exclamation mark so it's not in a card slot and you're not checking that it is in a card slot and then make make sure to indent the rest of the code in this function so that it'll only run if it passes this if statement now you can

**6:34** · see if we give this a run and we drop a card into a card slot it scales perfectly and I'm just going to tidy up the code then in this function a little bit I'm going to combine these two if statements onto the same line using a double Amper sand and I'm also just going to update the comment so that's correct and if we run this again I've just noticed one more issue that if we place a card in a card slot and drag another card over it you can see the card in the card slot renders over the

**6:58** · card we're dragging which doesn't look right at all so we're just going to fix that really easily in the finished drag function we're just going to add a line and we're going to set the card being dragged do Z index we're just going to set its rendering layer to minus one and we'll just run that again just really quickly to see if that change worked and yeah it did another thing to fix here I noticed is in our hierarchy the opponent deck is a bit gamy we're just going to

**7:19** · unchild Sprite 2D enrich text label from this deck node that shouldn't be in here and we'll just make sure they're just child of opponent deck and we'll delete that deck node we don't need it and the next I want to make is I want to limit the players so that they can only draw one card per turn so I'm going to come into the deck script and I'm going to create a new variable called drawn card this turn and I'm going to set it equal to false and then when we draw a card

### Deck Changes

**7:41** · I'm going to do a check I'm going to check if we've drawn a card already this turn and if so I'm going to return which means it'll exit the function and it won't run any of the code below and then below that if we are able to draw a card we'll set drawn card this turn equal to true now I'm going to add a few more cards into the deck just to buff it out I'm just going to fill it with a few more night cards and then when the game starts I want to automatically draw five

**8:05** · Cards into the player's hand so in the ready function in the deck I'm going to Loop I'm going to say for ION range and now I'm going to make a new constant just to so we have a starting hand size and I'm going to set this starting hand size equal to five and then I'm going to say for ION range starting hand size so this will Loop five times and in here we're going to call the draw card function and we are also going to set drawn card this turn equal to false in

**8:29** · here as well just or else it'll only draw one card now if we press play and give this a run you can see that automatically five cards are drawn into our hand and we can actually click the deck and draw a sixth card on our first turn which isn't ideal so let's just fix that after our for Loop we'll set drawn card this turn equal to true and then

**8:47** · that should work next thing we want to do is similar to drawing a card we want to say the player can only play one Monster card per turn so in the card manager script up at the top I'm going to create a variable called played Monster card this turn and I'm going to going to set it equal to false and now down in the Finish drag function when we drop a card into a card slot we want to check if that card was a monster card but cards don't yet have a type so I'm going to go into our card script go to the top and create a new variable called card type then let's open up our card

### Card And Card Slot Types

**9:15** · database script and we are going to add a new element here so so far a card has attack health and now we are going to add card type to this and for all three cards that are here I'm just going to say it is monster and this is going to be a string so don't forget those quot marks now we're going to go to our deck script and we're going to go down to where we instantiate cards and we're going to say new card. card type equals

**9:36** · and then the same as attack and health we are going to get that database value and since we want the third element which is our card type we're going to put a two in here because it starts at zero and now because a card knows what type of card is we can go into the card manager and back in the Finish drag where we have that comment if card is a monster card let's turn this into an if statement we'll say if card being dragged . card type equals monster then

**10:02** · we'll indent this code below so it'll only run if the card type is monster and now we'll give this a run just to make sure we haven't broken anything and we're still able to put cards in the card slot but now we only want to be able to play Monster cards in the top row of card slots and not the bottom row so to achieve this I'm going to open my card slots node and I'm going to select all the card slots on the bottom row and

**10:22** · I'm going to right click and detach script then I'm going to come down into my file system and I'm going to open the card slot script and I'm actually going to rename this script completely I'm going to come down I'm going to right click rename and I'm going to call this monster card slot and in here I'm going to declare a new variable called card slot type I'm going to set it equal to monster while I'm at it I'm going to go into my main scene I'm going to select all the enemy card slots and I'm going

**10:47** · to right click and detach script if you don't do that you'll be able to play cards in their card slots then we're going to come down to the file system we're going to right click on our Monster card slot script and duplicate it and we'll call this one magic card slot then we'll open this new script up and we will change the card slot type to Magic now we're going to go back into our main scene and we are going to attach this magic card slot script to

**11:09** · the five card slots on the bottom row now the bottom five should have magic card slot script attached and the top five card slots will have the Monster card slot script attached and now that all cards and all card slots have a type a card type or card slot type we can go into the card manager and here where we have this if statement checking if the card type is monster we can now check if card type equals card slot found. card

**11:34** · slot type and now if you give that a run you can see that we can place card slots in the top row and we almost can't place them in the bottom row we're just going to add an else condition here and we're going to add this player hand reference.

**11:45** · add card to hand line we're going to copy it and bring it up here paste it in the else then I'm going to add this card being dragged equals null line and I'm going to paste it up here and then we're going to return so it won't run any of the code below and actually we can just copy this player hand reference. add card to hand copy this line you can delete both of these else statements we don't actually need them and just make sure you paste that line back here and that should work if we give this a run we can see that we can drop cards in the card slots the top card slots and why

**12:13** · are our cards transparent okay they're not transparent it's just the card slots are rendering over the cards so let's fix that I'm going to go into the main scene and I'm going to select all the card slots including the players the opponents everything and I'm going to search for z uh index in the inspector and I'm going

**12:31** · to set it to just like minus three and we'll see now yeah that worked if I try and drag a card here into the enemy's card slot you can see that it errors out and we're going to fix that by creating a separate scene for the enemy card slot so we'll come down here into the file system and we'll right click on card slot scene and we'll duplicate it and we'll call this enemy card slot.

**12:46** · TSN and if we open up that scene here the only difference we're going to want to do is to delete the area 2D so that it's non-interactable we don't want to be able to interact with the Enemy card slots then I'm going to come into the main scene here and I'm going to select all the enemy card slots so these top two rows of card slots I'm going to select them all and I'm just going to delete them and then from our file system I'm going to drag in our new enemy card slot.

**13:09** · TSN I'm just going to drag it into the card slots node and child it to that and then I'm just going to adjust its position and duplicate it so we make two rows same as the last time you can also rename them to enemy card slot up in the hierarchy to avoid any confusion and now if we press play

**13:24** · you can see that we can't drop our cards anymore in the enemy's card slots but we can drop it in our own just fine now earlier we created this variable up at the top in the card manager played Monster card this turn so let's actually implement this now and if we go down to where we drop a card in the card slot in our finished drag function We'll add a check here to make sure we haven't played a monster card this turn so make sure you put that exclamation mark and then indent this already indented code

**13:47** · one more tab for it and now if you give this a run you can see that we have one more problem here when you do place a card into a card slot and when you hover back into your hand the first card you hover over doesn't apply the effect so let's just fix that really quick if we come into the card manager in the finished drag we just have to set is

**14:03** · card being hovered equals to false which is a Boolean in this script so we'll just set the card being dragged done is hovering on card that's what it's called equal to false and now if we give this run it's going to it's going to give us an error and that's because we don't need card being dragged here that is hovering on card Boolean is in this script so we can just get rid of that card being dragged Doh and now it works

### Outro

**14:23** · and that is everything for this video in the next video we're going to be adding a turn system and we're going to be giving the opponent a simple AI so that they can play a card on their turn if you found this video helpful be sure to leave a like and if you're interested in more tutorials like this and Dev Vlogs upcoming in the future then subscribe for more