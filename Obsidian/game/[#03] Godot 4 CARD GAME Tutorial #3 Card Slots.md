---
title: "Godot 4 CARD GAME Tutorial #3 Card Slots"
source: "https://www.youtube.com/watch?v=QmTXsm1Tohg"
author:
  - "[[Barry's Dev Hell]]"
published: 2024-10-19
created: 2026-08-21
description: "Tutorial for adding Card Slots to your Card Game Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpgAccess al"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=QmTXsm1Tohg)

Tutorial for adding Card Slots to your Card Game Godot 4.3  
  
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
  
Card Slot image - https://drive.google.com/file/d/1e03-UlZji516Lfgsd59HKe5lub8gzh5U/view?usp=drive\_link  
  
This code can be used for commercial projects, but please don't resell or redistribute it.  
  
Knight asset by SanctumPixel - https://sanctumpixel.itch.io/loreon-knight-character  
Archer asset by OcO - https://oco.itch.io/medieval-fantasy-character-pack-4  
Demon asset by Sven - https://sventhole.itch.io/flame-demons-64-x64  
  
00:00 Intro  
00:25 Bug From Previous Video  
00:48 Create Card Slot  
02:25 Collision Mask and Layer  
03:19 Card Slot Raycast  
04:38 - Update Finish Drag Function  
06:37 Outro

## Transcript

### Intro

**0:00** · hey guys my name is Barry and this is the third video in my gdau car tutorial series I quickly want to say thank you for the huge support on the last two videos and I also want to ask you guys a favor if you are subscribed click the Bell icon and set your notifications to all this will make sure you get a notification when I upload and it'll tell the YouTube algorithm that you like me and you like my videos and it'll really help my channel grow in today's video we're going to be creating card slots that you can drag your cards into like you might have seen in games like yugi-oh Hearthstone or inscription in the previous video we were able to get this card hover effect going but I

### Bug From Previous Video

**0:29** · actually left a bug in the code that I forgot to fix and that is that if you click somewhere that's not a card on the screen you get this error and this is going to be really easy to fix I'm just going to come up to my input function and I'm going to do an if statement just to check if a card is being dragged when

**0:44** · you release left click before we call Finish drag and that'll fix it and now to create our card slot I'm going to right click on Main I'm going to add child node and I'm going to look for node 2D and I'm going to call this node 2D card slot then I'll right click on card slot ADD child node and I'll add a Sprite 2D and I will call it card slot

### Create Card Slot

**1:02** · image so now if I click on my card slot image and I go to the inspector tab you can see this empty texture property and I'm actually going to import I have this card slot image I made myself I'm going to import it into the file system and I'm going to just drag it and drop it into the empty texture property I'll leave that image for download in the description if you guys want it and now we need to set up our Collision so I'm going to right click on card slot ad child node area 2D and you're going to

**1:25** · notice we're basically following the same setup as when we made the card in the first video and and then I'm going to right click on area 2D I'm going to add a collision shape 2D make sure it's selected go into the inspector and set that to a rectangle shape 2D in the shape property and actually just up here in the card slot image make sure centered is ticked for this part and then in the Collision shape 2D just go down here and stretch the Collision over the whole image it won't fit perfectly

**1:50** · if that centered box on the image is Tick but that doesn't matter just get as close as you can and now we're just going to convert this card slot into a scene by right clicking it and coming down here to save branches scene we'll just call it card slot in our main scene we'll just drag our card slot into the middle here so we can actually use it and let's give this a test and you're actually going to notice something pretty funny happens our game thinks that the card slot is a card and we can

**2:12** · move it around and it affects like it is a card and that's because our raycast to get a card is using this Collision mask here which is set to one which is just default and our card slot that we just created is also going to have a collision mask of one so we're going to have to change it so let's firstly go into the card slot scene here right click on card slot and PCH a script that we're going to called card slot and I'm going to do this just because there's something I need to show you and in the ready function here I'm just going to print the Collision mask of the area 2D

### Collision Mask and Layer

**2:39** · so I'm just going to drag in the area 2D here to get a reference to it and just print dot Collision mask and now if we give this a run and we keep an eye on our output we're going to see that the Collision mask in the inspector so if we set it to two in the inspector it's going to print two the Collision mask is two but if we set the Collision mask to three down here you're going to see that that prints four and

**3:01** · you'll see if I set it to four it's going to print eight so it doesn't line up exactly and we want to use the one that it's returning in the code in the output so we'll set our Collision mask to two and also don't forget to change the Collision layer to two as well this is Barry from the future who forgot to do that but don't forget to put your Collision layer to two as well so now when we finish dragging a card we want to check if there is a card slot beneath the cursor so we're going to go down to the finished drag fun function in the card manager and we're going to create a new variable called card slot and we'll set it equal to and now we can actually

### Card Slot Raycast

**3:33** · just basically reuse all the code from our raycast check for card here so I'm going to copy the name of it rast check for card but I'm going to say slot rast check for card slot and then we're going to create that function so let's create this card slot raycast now I'm going to come down here to the raycast check for card I'm going to copy it and paste it up here since this function is going to be 99% the same I'm just going to call it rast check for card slot and then down here we're going to change this Collision mask card to Collision maskk card slot and what I'm going to return

**4:04** · is I want to get the collider first so I'm going to get the first result which is going to be result z. collider and then get parent as well to make sure we're getting the card slot and not just the area 2D and now I'm going to copy this Collision Mas card slot here and at the top of our script I'm going to make a new constant Collision Mas card slot

**4:24** · and assign it to and then here this is the output of what we were doing before when we are checking the different outputs of collision masks and a two Collision mask in the inspector uh was also a two in the code so we can just leave it as two here so now we just need to add a little bit more code to our finish drag function and this will be completely finished and so we're going to have an if statement down here below our raycast to check if we found something and if we did it means we had

### Update Finish Drag Function

**4:49** · a card being dragged that we've just dropped into a card slot so let's process that now so firstly we're going to set the position of the card being dragged equal to the position of the card slot that we found under the cursor then when a card is in a card slot I don't want to be able to interact with it anymore I don't want to be able to hover over it or pick it up so I'm going to set the card being dragged dot get node I'm going to get the area 2D and then the Collision shape 2D so it's going to be the same as the card slot layout here where it's area 2D Collision shape 2D uh and then I'm going to use

**5:21** · disabled and that disabled is coming from if I go into the Collision shape 2D here you can see this uh disabled uh booly and I'm just going to set that disabled equals true now I also want to have a check to make sure that there's not already a card in the card slot when we do this so I'm going to go into the card slot script I'm just going to delete uh

**5:40** · all the functions in there and I'm going to create a new variable called card in slot and it's going to be a Boolean that I'm going to default to false so I'm going to go equals false and now I'm going to go back to the card manager script and I'm going to go to the if condition the if card slot found and I'm going to add to this I'm going to say if C found and not and then I'm going to use the reference card slot found again and that reference has the script attached to it that we just created that new variable so I can just access it here and go do card in slot and I'll

**6:10** · update our comment here to say card dropped in empty slot and now that there's a card in the card slot we're going to say card slot found. Cardin slot equals true and that's it completely finished that's card slots added so you can test that out now and you can see when you let go of a card in a card slot it snaps

**6:26** · the card being draggs position into the card slot and then you can't interact with that card again you can't hover over it can't take it back out of the card slot and you can add a second card slot in here just to test it and you can see it works perfectly and that's everything for this video in the next video we're going to be working on implementing a player hand if you found this video helpful be sure to leave a like and if you're looking for more tutorials and Dev Vlogs in the future subscribe