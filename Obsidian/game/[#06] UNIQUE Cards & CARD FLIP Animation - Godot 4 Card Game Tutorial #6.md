---
title: "UNIQUE Cards & CARD FLIP Animation - Godot 4 Card Game Tutorial #6"
source: "https://www.youtube.com/watch?v=L1dEuHr5AGU&t=103s"
author:
  - "[[Barry's Dev Hell]]"
published: 2024-11-08
created: 2026-08-21
description: "Tutorial for adding Unique Cards and a Card Flip Animation to your game Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-m"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=L1dEuHr5AGU)

Tutorial for adding Unique Cards and a Card Flip Animation to your game Godot 4.3  
  
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
00:25 Card Database  
02:24 Card Attack and Health  
04:47 Unique Images  
07:15 Card Flip Animation  
12:13 Outro

## Transcript

### Intro

**0:00** · hey everyone my name is Barry and in this video I'm going to teach you guys how to make unique cards for your card game and also how to make a card flip animation when we're drawing a cards from our deck that you can see on screen now if this is the first video in the series that you've stumbled upon then I'll leave the link to the playlist at the top of the description where you can find the five other tutorials that we've made so far if you're subscribed please

**0:19** · consider doing me a huge favor and turn on those notifications just to tell the YouTube algorithm that you like me and you want to see more of these kind of videos so we're going to get started on adding those unique cards if we Open Up Our Deck script from four and we look at this player deck variable that we have which is an array of strings you can see that we have Knight in there three times

### Card Database

**0:36** · but with the code currently it doesn't matter what we put in here it's just however many elements there is in here is however many cards will be instantiated that's what our code is currently doing so I want more than just Knights to be in the deck so I'm going to change one of these elements to say Archer and I'm going to change another one to say demon now we need somewhere to store unique information about each of these cards so I'm going to come down here into the file system and I'm going to create a new script I'm just going to right click on my scripts folder create new script and we'll just call this card

**1:03** · database then we can open that new script up and delete absolutely everything in here we don't need any of it including the extends node and here we can create a new constant called cards and this is going to be our dictionary containing all our cards information and constant because this data is not going to change during the game the keys are going to be a string

**1:21** · and the name of the card so for the first one I'm going to say KN and then we'll put a colon and then empty square brackets then we'll throw a comma at the end and we'll duplicate this line a couple times and make sure for the last entry that you do not have a comma and I said in the deck we have an Archer and a demon card so I'm going to define those here and I'm going to throw a comment up here just so we know the order of the

**1:39** · integers we're about to put into the array and now we can give these cards some data so I'm going to put attack and health values for the Knight Archer and the demon and now if we go back to the deck script we can get a reference to our card database to use those values when we are instantiating our cards so I'll create this new variable card database reference up the top of the deck script and then in the ready function we will assign that reference and since it hadn't hasn't been instantiated in and doesn't exist in the scene tree anywhere we're going to have to load it in so we need to get the path

**2:06** · so we can come down here into the file system right click on our card database script copy path and paste it here and then we'll use the preload function to load it in and then don't forget to surround the path itself with quotes and now down here in the draw card function we can actually use that card database information to set the attack and health

**2:23** · of the card but we don't yet have anything to set it on so we're going to create a new Rich Text label on the card so we're going to go over to to the card scene and we'll right click on the root card and we'll add a new child node and we'll add a rich text label we'll call this first Rich Text label attack and then we'll duplicate it and call the second one Health let's click into the 2D view up here and with the attack Rich

### Card Attack and Health

**2:43** · Text label selected I'm going to go over to the inspector and search for the property position and I'm just going to set the X and Y position so that the rich text label is down at the bottom left of the card and I'll also set the position of the health Rich Text label as well to put it down in the bottom right another property I'm going to change is scale which which I'm going to set to two for the attack and health Rich Text labels I'm also going to set their text properties to zero uh just as

**3:06** · a default value for now I'm also going to search for the modulate property which can change their color and I'm going to set that color to Black if we give this a run now we're going to see that our cards do in fact have health and attack values when they spawn in now we just have to change those values when we instantiate the cards now back here where we left off in the deck script I'm going to say new car. getet node and in here I'm going to put attack which is the name of our first rich text label

**3:30** · and we're going to set the text which we defaulted to zero in the inspector equal to and this is where we can use the value that we set in our card database so we're going to get that reference we created earlier card database reference and we're going to go do cards which is the name of our dictionary you can see in here keep in mind that our first value is the attack and our second value is the help and how we access those values if you come back here into the deck script we have cards and then we're going to have square brackets and put our key which is KN and then we're going

**3:58** · to put more square brackets we're going to put either zero for the first value which is the attack or one which is the second value for health so we're going to put zero and now we have KN hardcoded there which we don't want we have that as our key but we want our key to be passed in and card drawn here is going

**4:13** · to be the first element of player deck so we're just going to replace Knight with card drawn and now we'll duplicate this line and we'll this time be getting the health node and we'll be setting it to not the first element but the second element of that array so we'll be putting a one at the end here and we'll give that a run now to see if it works and we'll click on the deck and we get an error here because we're trying to set our text to an integer instead of a string so if we just wrap uh this with string here and also down below it

**4:39** · should work and you can see now if we give this a run and we click on the deck that we are getting unique cards with attack and health being drawn from the database which is amazing and the only thing left to do really is to add unique images for the cards one quick thing I'm going to do just before that just because it's fun and easy I'm going to come up here to the ready function and I'm going to say player deck.

### Unique Images

**4:56** · Shuffle and that fun fun will randomize those elements in the array so now instead of drawing the Knight then the Archer then the demon then the Knight again it'll be randomized now to work on those Unique Images I'm going to come down here where we instantiate the cards and I'm going to create a new variable I'm going to call it card image path and I'm going to set it equal to and then use the string function and then I'll come down here into my file system and I'll find my night card which I'm currently using and

**5:22** · I'm going to just right click it copy path and then I'm going to come back and paste it into this string function we have here and don't forget to surround it with quotes then we're going to get rid of the part that says night just the word night so it's not hardcoded then I'm going to put two more quotes in here so uh the assets part and the PNG parts are different strings then I'm going to add a plus in here and I'm going to come up to the card drawn variable and I'm

**5:45** · actually going to just rename this card drawn name because that's what it is it's taking the first element of the array of player deck which is the name of a card so it might make it a little uh easier to follow and then down here wherever we had card drawn before I'm just going to replace this with card drawn name and then down here where we have our plus that we just did we're going to put our variable card drawn name and then another plus to get the other part then of the path and connect them together so now instead of being hardcoded it's looking for in the assets folder for the card draw name.png so like kn.

**6:15** · PNG or if demon was drawn it'll look for demon.png so now that we have a path to the image we want to set we actually have to set the image so we're going to get the new card we're going to do do get node get the card image and we want to set the text texture equal to

**6:31** · and then we want to use the load function and then we put in our card image path if we play this now you can see that it works but it's only able to get the KN image and the other images don't exist yet we haven't actually put them into our project so they're going to throw an error so just to make it a little clearer I'm going to add card just before the PNG here and then in my file system I'm going to change KN to KN

**6:52** · card just the name of it just so any other assets that we bring in we can call them like demon card KN card and it's obvious what's going on then I'm going to import my demon and Archer assets that I've prepared earlier make sure they're called Archer card and Demon card and now you'll see when I run this that we can hit the deck four times and we will load our four unique cards

**7:10** · and their attack and health and everything will be updated which is perfect so now that that's finished we can move on to doing the card flip effect I'm going to come into the card scene and I'm going to right click on the root card and I'm going to create a child node and I'm going to add an animation player now it'll open the animation window and if we come down here we can create a new animation pressing that animation button and we'll call it card flip and now we want to create a new Sprite 2D cuz we want to make the back of the card so I'm going to add a Sprite 2D as child of card and

### Card Flip Animation

**7:37** · I'm going to call it card image back we're doing this because we're working in 2D so we can't actually flip the card over so we're just going to create the illusion that we're flipping the card the zindex of card back image is probably going to be Zero by default and we want the card to by default show the back of the card first so we want that to render over the card image so we're going to set card images Z and X to minus one and then we want to set the actual texture of card back image if you have the back of a card texture you can use it here I'm lazy so I'm just going to use my deck image which looks like the back of a card and now by default we

**8:09** · also want these numbers here this attack and Heth these labels to not be visible so I'm going to go ahead and select them and I'm going to look at the modulate I'm going to search for the modulate and the inspector properties and I'm going to set the alpha to transparent then we're going to set this as a key frame so you can see this little key button here and if I press it and if you don't see that key button make sure you're down here in the animation tab at the bottom we're going to go ahead press the key it'll ask us if we want Reet tracks

**8:35** · we can just press create with that ticked and we're going to do the same for health as well by setting its modulate to transparent and hit that key frame then we're going to select card back image and we're going to look for its scale property I'm going to hit the key frame button here as well because I want the scale to start at one for the animation and I'm also going to search for Z index and I'm going to hit key frame on that as well that's all from card uh image back but now from card

**8:58** · image we're also going to set a key frame for the scale and for the Z index now that we have key frames of all the properties that we want to adjust during the card flip animation we're going to go down here hold control and scroll in to zoom in and here we'll drag the timeline bar and we'll drag it across to 0.1 then we can come up here to card back image and we'll set its transform scale to 0.1 on the X and we'll do the

**9:20** · same for card image make sure to click this on link button so you can adjust the X and Y values separately we're going to we want to make sure the Y is 1 and X is 0.1 now hit the key frame button on scale for both card back image and card image to set those key frames at this point in our card flip animation we also want to set the card image to

**9:39** · visible and the card back image to render under it so we're going to go to the zindex of the card back image and set it to minus one and then hit the key frame button to set that and then go to the card image set the Z index to zero hit the key frame button now if you drag this timeline bar back to the start of the animation and Pull It Forward slowly you can see that our animation is shaping up we just have to set a second

**9:59** · point for our key frames now when the card is flipped over to reset the scale so I'm going to drag this timeline bar first of all to 0.2 and then I'm going to go to the card back image and I'm going to search for scale and I'm going to set the x scale to one and I'm going to do the exact same thing for the card image and I'm going to hit key frame on both of those now if we take a look at our animation it's looking good the only thing left to do is to turn the text from transparent

**10:22** · to visible so now I'm going to hold control and just scroll in just to zoom in a bit closer and I'm also going to make this window bigger so we can see what we're doing doing and I'm going to take this timeline bar and I'm going to put it around 0.15 and it's not actually letting me put it there because our snap is at to 0.333 here at the bottom I'm just going to set that to 0.01 and now it's going to let us put the timeline bar on around 0.15 and this is the point that I want to start fading the text in so I'm going

**10:50** · to go to the attack I'm going to look for modulate and I'm going to set the modulate it's still transparent that's fine I'm just going to hit the key frame button and I'm going to do the same for health and now I'm going to move the timeline bar to 0.2 which is the end of our animation when the card is fully scaled back up and I'm going to select the attack and health and I'm going to go over to the modulate and set its

**11:11** · Alpha from transparent back to fully visible and then I'll hit key frame on both of those and that's our animation fully complete so now the only thing we have to do is play it in the code so now if we head back to our deck script and we go back uh to the bottom where we are instantiating the cards we want to play this animation from here so we're going to get uh the new card. get node then we

**11:33** · want to get that animation player node that we added and then we want to call the play function and we want to pass in the name of our animation that we created which is card Flip or whatever you called it if you click the animation player you can see it down here this animation you created so now if we hit play we can test if this works and when we click the deck you can see that the cards flip when they're instantiated that animation plays and they're added into our hand which is amazing and this

**11:57** · will be able to be reused this card flip animation if say we have a multiplayer game where you can't see the opponent's cards and then they play something on the field we could have the card flip over or maybe an opponent reveals a card in their hand we can use this card animation card flip animation multiple different places but anyway that's everything for this video thank you so much for watching if you found it helpful please consider dropping a like if you have any suggestions for future videos please drop them in the comments cuz I originally had six videos for the series planned in my head and then a few others like multiplayer so from here on out I'll probably just be covering requests

### Outro

**12:28** · if you want to subscribe for future tutorials and Dev Vlogs make sure to hit that notification button and turn your notifications to all so the YouTube algorithm knows that you like me and you want to see my videos thank you very much