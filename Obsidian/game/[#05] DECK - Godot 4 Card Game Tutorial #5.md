---
title: "DECK - Godot 4 Card Game Tutorial #5"
source: "https://www.youtube.com/watch?v=riafP7MtvmQ"
author:
  - "[[Barry's Dev Hell]]"
published: 2024-11-01
created: 2026-08-21
description: "Tutorial for adding a Deck to your Card Game Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpgAccess all pr"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=riafP7MtvmQ)

Tutorial for adding a Deck to your Card Game Godot 4.3  
  
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
  
Deck image - https://drive.google.com/file/d/15fysWZri8AlpYlluyzZKDZMnjzBy8lEJ/view?usp=sharing  
  
This code can be used for commercial projects, but please don't resell or redistribute it.  
  
Knight asset by SanctumPixel - https://sanctumpixel.itch.io/loreon-knight-character  
Archer asset by OcO - https://oco.itch.io/medieval-fantasy-character-pack-4  
Demon asset by Sven - https://sventhole.itch.io/flame-demons-64-x64  
  
00:00 Intro  
00:11 Create Deck  
02:06 Input Manager  
08:26 Instantiate Cards In Deck Script  
10:18 Deck Card Counter  
12:08 Card Tween Speed  
14:09 Outro

## Transcript

### Intro

**0:00** · in the last video we worked on creating this player hand that organizes the cards along the bottom center of the screen in this video we're going to be adding a player deck that when clicked adds cards to your hand so the first thing we're going to do here in our main scene is right click on Main add a new child node add a node 2D and we'll call it deck if you've watched my previous videos you'll be very familiar with this we're going to add right click on Deck ad child node we're going to add an area 2D and then right click area 2D ad note

### Create Deck

**0:24** · we're going to add a collision shape 2D going to come over to the right here in the inspector and set that shape properly to a rectangle shaped 2D and then we'll also right click on Deck ADD child node and we'll add a Sprite 2D this is the same setup that we have for the cards and the card slots as well the next thing we need is to import an image for our deck and I have this deck image

**0:43** · that I've made myself and I'm going to drag it into the file system from my desktop if you don't have one I'll leave this one for download in the description and because my file system is a mess I'm going to right click on res create a new folder and I'm going to call this assets and then I'm going to drag any things in here that are assets pngs svgs I'm going to drag all of these into my assets folder and while I'm at it I'll create a script folder and I'll drag all my scripts in there now make sure to select your Sprite 2D and then drag the deck.

**1:10** · PNG over here into the inspector and drop it in the texture property and you know the drill from my previous videos we're going to click on collision shape 2D and then select these little orange boxes and drag the Collision so it covers the whole deck image then I'm going to click on deck and I'm going to go into the inspector and over to the transform property and I'm going to set it y position to 890 which is the same y

**1:30** · position that I have the hand set to you can see we can go into the player hand script here and the Hand y position is 890 and I'm also just going to set the x to 150 just to give a bit of space there on the left then I'm going to right click on the deck node and I'm going to attach script and I'm going to call this new script deck I'm going to create a new variable in here called player deck which is going to be equal to an array of strings and for now I'm just going to leave Knight in there three times then

**1:54** · I'm going to commere this process function down here cuz we're not going to need it and I'm going to make a new function called Draw card which is the main thing that we want in this deck script and for now I'm just going to print draw card just for to make sure it works now we want to do a ray cast when you click and get what's under the cursor and if the deck is under the cursor then we want to call that draw

### Input Manager

**2:13** · card but there's already rast doing exactly that in card manager and we don't want to have two raycast for the same thing so we're just going to extract this out into an input manager that handles it all so in the card manager I'll select all this input code copy it and comment it out for now then I'm going to right click on Main up here ad child node I'll add a node 2D and

**2:31** · I'll call it input manager then I'll right click on the input manager node attach script and we'll create a new script called input manager we can delete the ready and process function that come with this and paste in our input code that we copied from the card manager the one we commented out we can get rid of this code in the else condition and just put in pass and then

**2:48** · we can get rid of the code for the event press and instead we'll call our new raycast raycast at cursor then I'm going to go back to the card manager and I'm going to copy the raycast check for card function and I'll paste it into to the input manager I'll then change the name of it from raycast check for card to raycast at cursor which is the one we're calling in event pressed and this raycast isn't actually going to return anything so we can get rid of that return at the bottom and we can also get rid of this return in the if condition

**3:13** · and instead we're going to create a new variable called result Collision mask and we want to get the Collision mask of the result and we need to get the collider to do that if we look in the card manager we were getting the collider before we're getting result zero so the first result. collider so we'll copy this part and we'll paste it

**3:29** · here so our result Collision masks equals the first result. collider do Collision mask so now we have the results Collision mask we can check if it equals the Collision mask of the deck or a card or a card slot whatever we want so I'm going to go into card manager here and you can see that we've got a couple constants already defining these Collision masks so I'm going to copy them and paste them from card manager into the input manager and so we'll check if the result Collision mask is the same as a card Collision mask so if we've clicked on a card then we'll create a new variable called card found

**3:59** · and we'll set it equal to the card node that was found so to do that we'll get the first result. collider doget parent which gets the parent of the area 2D or the collider which is the card node so this is just doing the same thing as our card raycast did in card manager now we'll just check if card found and then

**4:16** · we will call start drag in the card manager passing in the card we found this script doesn't have a reference to the card manager yet so we'll come up here and create a new variable called card manager reference then we're going to put back that ready function that the script came with that I said we didn't need we now need it and inside we can

**4:32** · say card manager reference equals and then we can go up to the card manager Noe up here click it drag it and drop it down into here to set that reference and then down here at the rast that cursor I'm going to add an L if to add another condition make sure your indentation here is correct because you don't want it to be an else of that if card found you want it to be the else of that if result Collision mask equals and this L if is going to check if the result Collision mask is the same as and then we're going to go up here where we have Collision mask card slot we don't need

**4:59** · this the card slot stuff is handled in the card manager we can change this to Collision mask deck and now we'll copy that constant name and we'll come down here to our L if and we'll paste it here where it's checking if it's the same and I'm actually just going to add a couple of comments here so it's clear what's going on I'm going to say deck clicked for this one and card clicked for the other one now we need a reference to the deck before we call that draw card function we created earlier so I'm going to come up here create a new variable call it deck reference and then in the

**5:23** · ready function we'll set that deck reference equal to and then we can come over here to Our Deck node drag and drop it and now that we have that deck reference we can call that uh draw card function in there once the deck has been clicked so we'll go deck reference. draw card and now there's still some cases of logic that we do want to process in the card manager when you release your left click so what we're going to do is we're going to declare two new signals left Mouse button clicked and left Mouse button released then we will emit these signals in our input function in the if event. press and the else now we need to

**5:55** · connect those signals so we'll go to the card manager script and we'll go to the ready function and we'll get a reference to our input manager by dragging and dropping the node into here and then we'll do doc connect and then the name of the signal we want to capture which is the left Mouse button released is the one we want and then we have to connect that to a function so let's just call it on left click released and then of course we'll scroll down here in the card manager and we will create that function and we'll just add a print in here to make sure it works before we test this I'm going to come into the player hands script and I'm going to get rid of this constant hand count we no

**6:27** · longer want to be instantiating the card in the player hand script we want to be doing that in the deck script when it is clicked so I'm going to cut all this card instantiating code out of here and I'm going to add it into the draw card function in the deck script instead but I'm just going to comment it out for now just so we can test it without this code and if we run this and just click somewhere you can see at the bottom in that output we're getting that print

**6:49** · which is really good that our signals are working and our new input manager is handling those left clicks rather than the card manager but you're also going to see that we can left click and drag Our Deck around as if it's a card which is a we had before in our card slots video which is very easy to fix we just have to change the Collision mask so if we go to our deck node and click on its area 2D we can come across here to the inspector and under the Collision tab we'll set the Collision layer and collision mask to three because cards are one and card slots are two and if we

**7:17** · go to our deck script now and in the ready function if we print the Collision mask of our area 2D you're going to see something that I warned you about in previous videos that even if your Collision mask is set to three in the inspector it doesn't exactly line up with the code and you can see if we run this we will get an output of four and

**7:34** · this is our actual Collision mask that we want to use in the code so I'm going to comment this out and just put pass here instead for now and then go back to our input manager and in here we'll set our Collision mask deck constant to equal to four now you can see if we test this and we click on the deck and we look at the output we can see it's calling the function correctly and you can see that draw a card is being printed really quickly in the card manager we're going to come down to that function for on left click released and

**7:58** · if we come here actually to this code we commented out earlier we have this if card being dragged finished dragged we're going to copy that come down and we're going to paste it in our on left click release function instead of that print we'll get rid of those comment hashtags and make sure the indentation is correct and then we can actually just go ahead and delete all of this comment this funk input up here don't need it anymore now we've spent a lot of time on that input manager in this video even though it's supposed to be a deck video but it's going to remove so many problems for us in the future if we had two raycasts for one left click so I'm

### Instantiate Cards In Deck Script

**8:27** · going to come back into the deck script and start uncom Ing and fixing up this code for instantiating the cards I'm also going to go to the player hand and cut this whole card scene path line because we don't need it in player hand anymore and I'm going to paste it into our deck script then in the for Loop I'm going to Loop for player deck. size and

**8:44** · I'm going to uncomment the rest of this out as well and for that bottom line add card to hand we need to get that reference to the player hand before we can call that function if we test this now and click on the deck you can see that all three cards are instantiated at once and enter our hand so let's fix this in the draw a card function by creating a new variable called card drawn and we will set that equal to the first element of player deck and then

**9:05** · we'll remove that card from the player deck array and after that we're going to make an if statement to check if that was the last card that was just drawn from the deck and if it was let's disable the deck's Collision so that we can't click it again and we'll also set the deck image to not visible so it looks like the last card was just drawn from the deck and I have if deck here but it's supposed to be if player deck so I'll just fix that really quick then we'll remove this for Loop here just get rid of this and then indent everything in it back and now you can see if we give it a test run that every time we click the deck one card will come down

**9:36** · and if we click the deck three times the deck will disappear which is perfect except the cards are coming from the top left so let's fix that so if we go to the card scene we can click on the card node the route and if we look at the transform you can change the position of the X to 150 and the Y to 890 which is

**9:53** · the same position that our deck is at so now it'll look like the cards are coming from the deck so we'll give this a run here and you can see every time we click that that works but it looks like the cards are rendering behind the deck so we just have to change the Z index of the deck Sprite here so we'll go in here and we'll search for Z index and let's just put this to minus two and if we run this again we should see when we click on the deck there we go it looks like the cards are rendering over the deck now which is good and there's one more addition I want to make here I'm going to right click on Deck ADD child node add a rich text label and I just want to

### Deck Card Counter

**10:25** · add a card counter to the deck so I'll also go into the properties now of this Rich Text label and I'll look for position and I'm going to change it change its position to kind of be more in the center of the card so I think uh 9 and -28 here are what I have from

**10:40** · before that I think looks good and I'm also going to set the text to zero just for now and in the properties I'm also going to search for modulate and I'm going to under visibility I'm going to set this modulate here to Black just to change the color of the text I'm also going to search for the scale property and set it to two just to make it a bit bigger and easier to read I'll give that a run now and see how it looks and it's looking good we just have to disable the rich text label when the deck runs out of cards so we'll go back here into the deck script and we'll just drag and drop our Rich Text label and visible equals

**11:12** · false right here also another property of the rich text label I forgot to set is the Z index let's also put that to minus two so it's not rendering above our cards and now after this if condition to check if the deck is empty but before we instantiate the cards let's set this Rich Text labels text equal to how many cards are left in the deck after we've erased a card if we run

**11:35** · this now you're going to see it gives us an error when we click on the deck because we're giving it an INT and it needs a string so let's just put St or and Surround our player deck. size with brackets and that will work now and let's also copy this line and paste it in the ready function so that when the game starts instead of defaulting to zero the deck count will default to

**11:57** · however many cards are currently in the deck so if we give that a run now just to test it you'll see that when we click on the deck our cards are instantiated and the count clicks down perfectly but there is just one small change I want to make and that's that I want to be able to control the speed that the cards are drawn at so in the add card to hand where we're calling that function in the deck script I'm going to add a new parameter card draw speed then I'm going to declare this constant up at the top of the script and set it equal to 0.2

### Card Tween Speed

**12:23** · then if we come into the player hand script and we go to the ad card to hand function we can take in speed as an argument and now we can pass this along into the animate car to position function we're also calling this animate carard to position function from our update hand positions function down here so I'm going to pass in speed here too and then in the function itself we can take this in as an argument speed and instead of this 0.1 hard set value we'll just change that to speed and then at the top of the script I'm just going to create a new constant called default card move speed and I'll set it to 0.1

**12:53** · and then down here in the update hand positions function we are passing in speed into the anime character position function which doesn't exist in this scope so instead we'll pass in our new constant and then we're going to go into the card manager because there's a function in here that is calling add card to hand as well so I'm going to search for that and I'm going to pass in that same constant that we just made before and then I'm going to go up to the top of this script and I'm just going to copy and paste the same constant over just as a default speed

**13:17** · now if we go ahead and run this you can see that when I click on the deck the cards are coming out really fast and I should now be able to adjust our constant in the deck script the our car draw speed I'll set it to one and now if we give this a run again we we should see the cards come out a lot slower and it doesn't really look like it worked so I'm going to see here so I found the problem here in player hand we actually sent our speed parameter into the wrong function so I'm going to replace it there with our default uh card move speed constant and then in our update

**13:44** · hand positions function I'll pass in speed and then in that function itself I'll take it in as an argument then for the anime card to position function in here instead of using our default card move speed we'll use our speed parameter that's passed in and then at the bottom of our script here this wants a parameter now so we'll just pass in our constant move speed and now if we run this this should be fully working and you can see that if we draw a card from the deck it'll be coming out really slow but you can adjust that speed by changing that constant in the deck script the card moves speed and so

### Outro

**14:12** · that's it for this video if you found it helpful do me a favor and leave a like and if you're looking for more tutorials such as card abilities and even multiplayer be sure to subscribe