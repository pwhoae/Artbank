---
title: "Godot 4 CARD GAME Tutorial #2 Card Hover Effect"
source: "https://www.youtube.com/watch?v=1mM73u1tvpU"
author:
  - "[[Barry's Dev Hell]]"
published: 2024-10-18
created: 2026-08-21
description: "Tutorial for adding Hover Effects to your Card Game Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpgAccess"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=1mM73u1tvpU)

Tutorial for adding Hover Effects to your Card Game Godot 4.3  
  
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
00:17 Emitting Signals  
02:47 Capturing Signals  
04:21 Card Hover Effect  
05:25 Bug Fix  
07:14 Second Bug Fix  
09:36 Card Drag Effect  
10:38 Last Bug Fix  
11:07 Outro

## Transcript

### Intro

**0:00** · in the last video we created cards and added the logic to drag them around the screen in this video we will add the ability to hover over cards and apply an effect when we do implementing this will also allow us to fix a bug in our game my name is Barry and if this is the first time you're tuning into the series I highly recommend you watch part one which will be the top Link in the description so to get started let's open back up our project here and let's navigate to the card scene let's open card.

### Emitting Signals

**0:22** · TSN here and now if we click on area 2D and if we go over here where it says inspector and we click the node tab you can see we have these Mouse entered and mouse exited signals and we need a script for these signals to attach to and like I said in the last video we don't want to handle any logic within the card itself so we want to attach

**0:42** · these signals to the card manager but it's not really in the scope here so we're going to have to attach them manually through code so back in our card scene we're going to right click on card and attach a new script called a script card and this is going to give us a place to connect those signals I was talking about earlier so we can go ahead and click on area 2D go make you're in

**1:00** · the Noe Tab and we'll double click on this mouse entered signal here and just make sure it's attached to the card script and we can do the same then for Mouse exited so gdau is making this hover functionality really easy for us with signals and we're just going to go ahead and make sure it works here so I'm going to print hovered and this area 2D Mouse entered and I'm going to print hovered off in the mouse exited we can

**1:21** · then test this real quick by just pressing run make sure your output is open down below and you'll see anytime I hover over the card it says hovered and same for hovered off now we could handle the logic for a card hover here but again we really don't want to we really want to send this information to the card manager so I'm going to declare two new signals signal hovered and Signal hovered off up at the top here and then down here instead of printing I'm going to emit these signals so for Mouse entered I'm going to emit the hovered signal and I'm also going to pass in self which self here is going to be the

**1:52** · card the card that was hovered over in this case and then I'm just going to copy this and I'm going to do the same for Mouse exited and and just replace that signal name so now we just need to connect those signals to the card manager and if I go into main here you can see that I have both of my cards as child of card manager and that's going to be really important for this next step because I'm going to go back into the card script and in the ready function that's already been provided I'm going to say get parent which in

**2:17** · this case is going to be the card manager and then I'm going to call a function that doesn't exist yet I'm just going to call it connect card signals and I'm going to pass in self which is this card and so what this does is when a card is instantiated when it comes into existence for the first time this ready code is going to run and it's going to say call the function connect

**2:38** · card signals in parent and parent is going to be the card manager keep in mind if a card is not a child of card manager this is going to throw a fatal error at runtime so now I'm going to copy this function connect card signals that we're calling I'm going to go into the card manager script and I'm going to create a new function there pasting the name and it's it's going to be taking in a card since in the card script we're passing in self and in here we're going to write card.

### Capturing Signals

**3:02** · connect and then we're going to give the name of the signal that we declared at the top of the card script which is hovered and it's going to be in quotes and then we're also going to give the name of the function that we want to connect it to so this function doesn't exist yet so I'm just making up the name un hovered over card and then we're going to copy that line paste it and then we're going to change the name of the signal to hovered off which was the second name of the signal we created and then here we can also just change this to un hovered off card or whatever and

**3:31** · now we can just copy this un hovered over card and let's make a new function down here and we'll paste that name just to make sure it's exact and don't forget this function is actually going to be taken in a card because if we go back into our card script you can see where we were emitting the signal we're passing in self which is that instance of the card so now let's just print in

**3:52** · this function we'll print hovered and then we can just go ahead and basically copy and paste this function and just make sure that the names are changed and make sure that the UN hovered over card is now changed to un hovered off card or whatever you put for the second signal and we'll just print hovered off here

**4:10** · and let's just give it a run here to make sure it works and we should be able to hover over and off a card and yep you can see it printing down there so this is really good so this means we can start processing those signals that are being captured in the card manager so now I'm going to create a new function called highlight card and this is just going to be called when we want to apply some effects to the card and it's going to take in the card and it's also going to take in a Boolean called hovered and

### Card Hover Effect

**4:32** · I'm going to have an if condition so if hovered so if that Boolean is true I'm going to apply some effects so I'm going to affect the card scale first I'm going to go card. scale and I'm going to set it equal to a new Vector 2 and I'm going to set it to 1.05 on the X and the Y so

**4:49** · that'll make the card a little bit bigger when you hover over it and I'm also going to change the card's Z index which is the layer that it's rendered so if it's rendered behind or in front of other cards I'm going to set that to two and then I'm just going to set an else statement and I'm going to set these effects back to normal so if H is false

**5:06** · those effects will apply and now I'm just going to call this function on hovered over card passing in the card and also passing in true that it is hovered over and then paste it into the other function and just say false so let's test that out now and as you can see when we hover over the card we get that really cool effect which is awesome but there is a problem and you can see that if I kind of Stack the cards like this it performs the effect even if you

### Bug Fix

**5:30** · hover over the card behind so let's fix that so firstly let's go to the top of the script here and just add a new variable that's going to be a Boolean called is hovering on card and then we'll copy that variable name and down in the function un hovered over card we're going to have a new if condition so we're going to say if and then we're going to paste our new variable if is hovering on card and then we're going to add an exclamation mark here to reverse that so if not hovering over a card then we're going to apply the Highlight effects to the card card and we're also going to say is hovering on card equals

**6:03** · true then down in the UN hovered off card function we're going to set is hovering on card equal to false if we run this now just to check it kind of is fixed the first time you hovered onto a card of the back but then not the second time so we just need a little more code so in the UN hovered off function I'm going to comment out that is hovering on card equals false and what we want to do now is we want to check if we've hovered off one card and

**6:29** · straight onto another card and to do this it's going to be really easy we can just create a new variable called new card hovered and then we can reuse our raycast that we already created which just Returns the card at the cursor which is exactly what we want and then we'll just add a new if condition so if the raycast returned something or if you

**6:48** · did hover straight onto another card then we'll call our highlight card function passing in the new card that was hovered to apply the hover effects to that card and then also in I'm going to create an elf statement and if you HED on to nothing we're just going to set is hovering over card equal to false

**7:04** · and I'll just get rid of this commented line from earlier so now if we give this a run we can see that the hover is working perfectly but there is at the start of the video as I mentioned a bug in our game and I'll show you this now that if we stack two cards on top of each other kind of like this and place our cursor in the way that it's over both the cards if you left click you just start dragging a random card and we want to drag the card that's on top and we can fix this by adjusting our raycast check for card function but first i'm just going to print result and show you exactly why it's returning a random card

### Second Bug Fix

**7:36** · you'll see if I hit play now and I just place my cursor in the middle of both cards and click the output will print an array and that array will contain information of here you can see there's the first card and here's the second card and I just want to return the card that's on top and you know from earlier when we were doing our highlight card function that the Z index is responsible

**7:57** · for whether a card is rendered above or below other cards so I'm just going to return here but I'm going to replace what we had before I'm going to comment that out and I'm going to call a new function get card with highest c Index and we're going to pass in result so now I'm going to come down here and create that get card with highest c Index function and you can see we're passing in results and I'm going to take it in as cards and in here we're going to

**8:21** · assume that the first card passed in has the highest Z index to start so we'll create a new variable here called highest Z card and we'll set it equal to the first card that's being passed in and don't forget that we're just that's a bunch of garbage so we actually need collider dog parent to get the card itself and I'm also going to create a second variable called highest Z index

**8:41** · and I'm going to set that equal to the Z index of the highest Z card that we've already set and now that we have those the next step is to Loop through the rest of the cards looking for a card with a higher Z index so we'll create a for Loop here and we're going to skip the first card since we're already assuming that it has the highest c Index we don't need to Loop through it and then Within in the for loop we're going to create a new variable called current card and set it equal to the current card in the loop make sure to use collider do parent again and then we're

**9:08** · going to check if the current card in the loop has a higher Z index than our current highest Z index and if it does we're going to set our current highest Z card equal to that card currently in the loop and we're also going to set our current highest Z index equal to that card's Z index and

**9:26** · that's everything we want in the for Loop and now after the for loop we're just going to return in the highest Z card and if we run that now you can see that it will always drag the card on top which is exactly what we want now there's one more effect I want to add here and that's when you are dragging a card I want some sort of feedback for that so up here in the card manager script below the input function I'm going to declare two new functions start drag and finish drag then I'm going to

### Card Drag Effect

**9:49** · cut this line up here and paste it into my start drag function and I'm going to call start drag up here instead don't forget to pass in card cuz we need it in the start drag function don't forget to take it in there in the function to and we're also going to do the same with that card being dragged equals null line extracting it out into the Finish drag function so that just tidies up the script a little bit but now I'm going to take the card scale effect from our highlight function I'm going to paste it up here in Finish drag and in start drag

**10:14** · and I'm going to set the scale to one on start drag and 1.05 on finish drag this is going to give us an error in Finish drag because card doesn't exist in this scope so I'm going to cut this line paste it above card being dragged equal to snull and we'll set the card being dragged scale instead and if we run it

**10:30** · now we can see that when we click and drag a card that its hover effect stops applying and it just gives some really nice feedback to know when you're dragging a card but you can see there's kind of now one last problem left that when we're dragging and we leave a card like that you can see it unapp applies the effect so let's just fix that really quick and I'm going to do that by adding an if condition here in the UN hovered off card function and I'm just going to

### Last Bug Fix

**10:52** · make sure that we are not currently dragging a card so I'm just going to take this card being dragged don't forget the exclamation mark there so it's not being dragged and that should be that fix so let's give it a test and just drag a card drag it over the other card and all is looking good that looks amazing and that's it for this tutorial guys thank you so much for watching in the next video we are going to be working on card slots that you can see on the screen now if you like this video or found a helpful be sure to drop a like below to help this channel grow and also if you're interested in upcoming tutorials and dead blogs be sure to subscribe