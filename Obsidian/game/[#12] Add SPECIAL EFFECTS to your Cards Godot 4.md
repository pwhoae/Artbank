---
title: "Add SPECIAL EFFECTS to your Cards Godot 4"
source: "https://www.youtube.com/watch?v=KBzTfCYgnnM"
author:
  - "[[Barry's Dev Hell]]"
published: 2025-01-11
created: 2026-08-21
description: "Card Game Tutorial for adding Special Effects to your cards Godot 4.3Follow my Upcoming CARD GAME on Kickstarter! 👇https://www.kickstarter.com/projects/ratandmonkeystudio/bibdu-irish-mythology-rpg"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=KBzTfCYgnnM)

Card Game Tutorial for adding Special Effects to your cards Godot 4.3  
  
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
  
00:00 Intro  
00:35 Improvement  
02:00 Attack Twice Ability  
07:15 Arrow Ability  
10:00 Trigger Events  
11:33 Outro

## Transcript

### Intro

**0:00** · in the last video we implemented magic cards and gave them abilities I got a couple comments in that video asking if you can use the same method to give the monsters abilities and in this video I'm going to show you it's a very similar process but there are a few important changes we have to make we're going to be giving our demon the ability to perform a second attack and our Archer

**0:16** · is going to have the ability to deal one damage to the opponent when he's played before we get started this week I just set up a patreon where if you support me you'll access all the project files for each individual tutorial I make I also set up a Game Dev Discord where we can talk gamedev you can show your progress on your own game and there's a forum in there where you can get help with code problems the links for the patreon and Discord will be in the description so to get started in the last video in the tornado script we added these two lines to disable inputs and also disable the

### Improvement

**0:41** · end turn button while the ability is activating and if we open up the card manager script in the card clicked function you can see we have this line saying player if player is attacking which is a Boolean in the battle manager then return and we're doing that when we're deciding if we click on a card whether we can attack with that card or not and the new way that we're disabling inputs in the tornado script makes the

**1:02** · player is attacking irrelevant so we can just get rid of this line and use the new way instead so we'll go into the battle manager and we'll also get rid of that player's attacking variable and then we'll search for player is attacking in the script just to see everywhere that we are using it and we will replace it by dragging in a reference to our input manager and setting the inputs disabled Boolean there to true and also where we have these two lines where we're disabling the end turn button and making it invisible we can instead call the end turn button enabled function that we

**1:31** · created and either pass in false to disable it or true to enable the button and now I'll copy these two lines and anywhere we have player attacking and that we're changing that button we'll just use these two lines instead and this is just a quick Improvement before we get started on the special effects don't forget to set inputs disabled equal to false and pass true into the end turn buttons enabled when you paste

**1:51** · these two lines somewhere that you want to reenable the buttons and reenable inputs give that a test now and you should see that while you're attacking you can't click on your own cards and the end turn button disappears and now we're going to start working on our new ability so we're going to come down to the file system and right click on our tornado ability script and we'll duplicate it and we'll call this new one attack twice and if we open it up we can

### Attack Twice Ability

**2:12** · get rid of the constant at the top and we can also just nuke everything within this trigger function then inside we'll just print attack twice ability triggered so we can test it now we need to assign this ability script to someone so I'm going to open up our card database and I'm going to give this ability to the demon so where we have null I'm going to put quotes and then

**2:29** · I'm to go down to the attack twice script I'm going to copy its path and then I'm going to paste that path into the quotes and I'll also give it some ability text to make sure that's also in quotes then we'll need to open up the deck script because where we instantiate cards we currently only have it set up so that magic cards can have an ability so in this else statement is if the card is of card type magic let's indent back

**2:50** · this ability script code to take it out of the else statement so now it'll run whether the card is a monster card or a Magik card then we can add an else statement to this if where we're checking if if the new card has an ability script path and if the card doesn't have an ability we'll cut this line from up here if the card is a monster where we're setting the ability text to not visible and we'll paste it

**3:09** · here in this else and if we give this a run now to test it you can see that the demon card is drawing its ability text from the database successfully but we're going to have to change around where the health and attack are because you can see they're overlapping so we'll open up the card scene and we'll go to the 2D View and in here I click on the ability Rich Text label node and I'm going to adjust its transform size and its

**3:30** · position just to make the text fit better in the card I can copy over the demon ability text from the card database and put it here into the text property to see if it fits okay and now that I'm happy with it I'm going to move the attack and health Rich Text label nodes and I'm just going to move them upwards out of the light gray box and

**3:47** · just kind of align them so they're at the bottom left and bottom right of the dark box then we'll just give that a run to see if it looks okay and the next step is going to be calling the trigger ability function for our Demon's ability after we have attacked so we'll go into the battle manager and we'll come down to the direct attack function and at the bottom if the attacker was player we'll do an if statement to check if the attacking card has an ability and if it

**4:09** · does we'll call the trigger ability function on that ability script now for some reason between the last video and this video I renamed this function to trigger instead of trigger ability so I'm just changing it back here and also the order that I'm taking in these arguments changed so I'm just uh changing this back to how I had it in the last video I'm also making that same change in the card manager and the tornado script you probably won't have to do this I'm just leaving it in in case anyone gets confused now where we're calling trigger ability in direct attack we need to pass in a battle

**4:39** · manager reference and since we're in the battle manager script right now we can just pass in self and then we have to pass in the card with the ability that's triggering which is the attacking card so we'll pass that in and lastly we need to pass in a reference to the input manager and we can just drag that in then at the start of this line I'm going to use the await keyword which means the

**4:58** · code will suspend on this line until the ability has finished activating then I'm going to copy these two lines we've just written and at the bottom of the attack function I'll paste them in here if the attacker as player now if we give this a run you can see whether we direct attack or if we attack an enemy's card we get the attack twice ability triggered printed out into our output so the next

**5:17** · thing to do is actually implement this attack twice ability so if we go into the card manager for a sec and we go to the card clicked function you can see what's stopping us from attacking multiple times with a card is that the card is added to this play are cards that attacked this turn array which is in the battle manager so all we have to do for this ability is to remove this card from that array so we'll check if card with ability that we're passing in is in that array from the battle manager

**5:43** · and if it is then we'll remove card with ability from that array now if we give this a test you can see that it does work somewhat that we can attack more than once with our demon card but we can attack infinite times so let's fix that so if you go into our battle manager you can see that we're calling trigger ability AB ility after any kind of attack and the ability is saying that this card hasn't attacked this turn so it's stuck in an infinite Loop so in our attack twice script we'll create a new variable at the top called already activated and we'll default it to false

**6:12** · and then before we do anything in our trigger ability we'll check if already activated and we'll return if so then after we erase the card from the player cards that attack this turn array we'll set already activated equals to true and now if we run this you can see that we can only attack twice which is perfect there's one more thing we have to do here now and that's when the turn ends we want to set already activated equals

**6:35** · to false so we'll create a new function called end turn reset and in there we'll set already activated equals to false and now we just have to call this from the battle manager so we'll go to the on turn button pressed and then will Loop through all the cards that attack this turn and then we'll call the end turn reset function on each card's ability script I forgot to do it in here but keep in mind that before that you should check if the card has an ability script

**6:58** · because I'm pretty sure this will give a hard error for a card like the Knight that doesn't have an ability script to make sure this works let's just throw a print into the end turn reset function and we'll give this a run and if we attack with the demon then and end our turn you can see that print in the output which is great now we're not fully finished here because I want to add another ability but that triggers at

### Arrow Ability

**7:18** · a different time so I don't want it to trigger after an attack I want it to trigger when the card is placed so I'm going to duplicate the tornado script once again and I'm going to call this script Arrow now I'm going to keep a little more in this script than last time I want to keep the constant at the top and I want to keep the input and end

**7:33** · turn button being disabled and enabled and I also want to keep one of the lines that's waiting one of the weight lines now I'm going to rename this constant to Arrow damage and then we want to actually be able to deal damage to the opponent so I'm going to go into the battle manager and I'm going to create the function in here to deal the damage and the reason is is because we can't access the opponent Health Rich Text

**7:54** · label node to change it from the Aros script so we'll just create the function to do the damage in the battle manager and we'll call that function from the Aros script so we'll create a new function called direct damage that takes in damage and if we scroll down in here we'll find the code already from before where we've dealt damage to the opponent's help and we'll just copy those lines and paste them into the direct damage function and we'll replace their attacking card. attack with our damage being passed in and then in our Arrow script after we wait 1 second

**8:22** · we'll call that function from the battle manager and we'll pass in our Arrow damage constant for the damage and then we'll wait another second after that next we have to assign the Archer with dis ability in the card database so we'll replace that null with quotes and then we'll copy our Arrow script path

**8:38** · paste it in I will'll also swap out the other null with some ability text and I'm going to say this card does one damage to the opponent when placed now we just have to trigger the card's ability so if we go into the card manager and we go down to the Finish drag function you can see that we're already calling trigger ability on cards down here but we're only currently calling magic cards abilities so let's

**8:58** · get rid of this lse statement checking if the card is a magic card and then let's indent this line triggering the ability back one and then let's just make sure that the card has an ability before we try triggering it and if we give that a test and place an Archer you can see the opponent's Health go from 10 to 9 there which works perfectly but you

**9:15** · can also see that if we attack with the Archer it triggers the ability again and we deal an extra damage to the opponent another problem is that if we hit the end turn button after the Archer is attacked we get a crash because end turn reset function does not exist in the AR script so we'll fix that problem first

**9:31** · by creating that function in the arrow script and since there's nothing to reset in here we can just pass I'll also print Arrow triggered in here just to show you that the ability is getting triggered when we attack and then we'll run it we'll play an Archer and you can see that we get the print there but then also will attack and you can see Arrow triggered gets printed once more so let's fix this if we go into the battle manager and scroll down to the end of either the attack functions you can see

**9:55** · that if the attacking card has an ability script we are triggering that ability so we need something in the ability scripts to know when to trigger the ability so in the attack twice script I'll add a constant up at the top called ability trigger event and I'll set it equal to after attack in quotes

### Trigger Events

**10:11** · then I'll copy this and paste it into the arrow ability script and then here I'll set it equal to card placed then we'll take one more argument into the trigger ability function called trigger event and we'll do the same in attack twice then in the card manager where we're calling trigger ability we're also going to pass in a trigger event which here is going to be card placed since this is in the finished drag function function then in the battle manager where we're calling trigger ability I'll pass in after attack make sure those

**10:34** · names line up with your constants from your ability script then back in the attack twice script at the top of the trigger ability function I'm going to check if ability trigger event is not the same as the trigger event being passed in and if it's not we'll return then I'm going to copy this and I'm going to paste it into the arrow script again at the very top of the trigger ability function and now you can see if we run this we can play an Archer the Archer does its ability and when we attack that Archer does not repeat its

**11:00** · ability so everything is working correctly and we can play a demon as well to test it and we can attack with the demon and we actually got an error here and it looks like we forgot to change the second place we're calling trigger ability in the battle manager so we'll add after attack in here as well and if we give this a test you can see that everything is working perfectly one more thing is that the tornado ability script is going to need to take in a trigger event now and we'll also give it a constant trigger ability event and set

**11:26** · it equal to card placed and if the ability trigger event const doesn't equal the trigger event being passed in we'll return and that is adding special effects finished so now it's going to be really easy to add card abilities in the future whether it's a monster or Magik card ability the only real improvement from here is if you wanted to add a card ability stack like in Yu-Gi-Oh because what if multiple abilities trigger at the same time then instead of just triggering the abilities you might want to add that card to an ability stack and

### Outro

**11:54** · then you can Loop through that ability stack one by one triggering those abilities which is exactly what I do on the game I'm currently working on anyway thank you guys for watching if you found the video helpful please consider leaving a like my patreon is linked in the description where you can access the project files or if you just want to support me and subscribe for upcoming tutorials and devlogs