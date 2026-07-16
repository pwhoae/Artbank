---
title: "Melee Combat | Godot 4 Dungeon Crawler [Ep 08/18]"
source: "https://www.youtube.com/watch?v=P3ByaVqt8qc&list=PLT26e2jOwbdg&index=9"
author:
  - "[[The GameDev Tavern]]"
published: 2026-07-16
created: 2026-07-16
description: "Learn how to create a 3d dungeon crawler from scratch in Godot!In this episode, we start engaging in combat with enemies.Play the final game here: https://gadgaming.itch.io/goblinsdencourseHavin"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=P3ByaVqt8qc)

Learn how to create a 3d dungeon crawler from scratch in Godot!  
  
In this episode, we start engaging in combat with enemies.  
  
Play the final game here: https://gadgaming.itch.io/goblinsdencourse  
  
Having an issue? Download the project for this episode: https://github.com/nicolasbize/goblins-den-course/archive/refs/tags/v0.8.zip  
  
Enjoy your stay at the tavern!  
  
#godot #gamedevelopment #gamedev #tutorial #pixelart #dungeon #fps

## Transcript

**0:07** · Well, well, hey there fellow traveler and welcome to the gamedev tavern. It's been a while. Come on in and make yourself at home. This is just a little cozy corner of the internet where we create fun little games together. My name is Nicholas and this is the eighth episode of the tutorial series where we create a 3D dungeon crawler from scratch in GDAU.

**0:26** · And welcome back. So, in the last episode, we built our state machines for both our player and for our enemies, which uh will allow us to add just a bunch of additional gameplay elements.

**0:35** · So, I was thinking about what to put inside this episode here, whether to go after something completely new or whether to do a little bit of a repeat exercise from the previous episode. And because I think that it's just so important to fully understand the um how to build a state machine and how to be comfortable with this, I felt that maybe in the spirit of you know repeating to learn more efficiently, we could spend the time today building additional states uh and add a little bit more to our combat mechanics. So right now it's a little bit um dry where we can just you know uh impel the the enemies with our sword and then just pick up their um their weapons.

**1:07** · So today we're going to be introducing um we'll start introducing two states. One of them being the slashing state where when we click with the mouse we'll be slashing our weapon forward and then um so we'll be creating an associated animation in Blender and then just importing it back into GDAU and then we'll also introduce a hurt state for actually getting hit and um we'll also associate a new animation uh inside Blender to that state as well.

**1:33** · So then we'll be putting both of those together and you'll see that of course um you know we'll be transitioning from one state to the next. But again I think um you know while this also makes our combat abilities a little bit better, I think also it's going to um be an opportunity to just recap the state machines and become very comfortable with them. So I'll probably put together a little bit more additional challenges for you in this episode. And I would strongly encourage you to at least try them out.

**1:59** · you know, even if you're not able to complete them, just trying just brings you to a long way in helping you understand how it all fits together, what are the main problems, um what are the challenges in building some of those things together. And just at the end of the day, it will just allow you to uh become more comfortable understanding how everything just fits together. And then at the end of the day, the whole purpose of these tutorials is really for you to become comfortable building your own games uh from scratch and and doing, you know, your dream game uh down the line. So, let's go ahead and get started. We're going to hop over into Blender and we're going to create um two new animations.

**2:29** · One for uh slashing and the other one for getting hurt.

**2:36** · All right. So, let's swing over into Blender. And here I'm going to open up my character blend file. And similar to how we did the other animations, I'm going to hop over into my animation tab.

**2:47** · Going to click on my mesh. Make sure I'm in pose mode. And let's start off with the default animation.

**2:54** · And I'm going to duplicate this. And let's call this uh slash.

**3:00** · Let's make sure to press this um icon here. And we're going to make this about maybe 10 frames long. So let's start by pressing A to select all the bones.

**3:11** · Shift D to duplicate. And let's go to frame 11. And then we're just going to be focusing on maybe one or two key frames uh which will build our animation. So maybe one key frame at frame four. This is when we're going to have the character just bring the sword or their weapon backwards just to get ready to hit. So uh for that, let me go ahead and start by rotating this uh body here. And then uh let's see. Maybe they need to lean a little bit forward. So let's bring this guy back. Gy.

**3:47** · Does it make sense? So actually I think I think we want it to be forward actually.

**3:54** · Let's see. So let me rotate this guy like this. Rotate it backwards. How about the arm here?

**4:10** · Something like this. And how about the hand?

**4:18** · Yeah, I think this should be fine.

**4:22** · I think I might want to move this guy forward here. Gy. Sorry, this one. Gy.

**4:29** · Maybe even bring it up a little bit.

**4:35** · And this guy, bring it back.

**4:40** · Does that make sense?

**4:43** · Hm.

**4:46** · And yeah, I think so. Okay, let's uh let's see. So, we're starting here going backwards. Let's go and sect all the bones again. Let's go to frame seven and let's go ahead and yeah, let's go ahead and rotate this guy on the other way completely. So, rotate like this. The arm needs to be all the way over there.

**5:14** · Something like this. It probably needs to be a little bit towards like this. Maybe looking downwards.

**5:22** · Again, I'm looking at this screen here just to see if it makes sense. Uh I think this guy needs to come down.

**5:34** · Something like this. Maybe this guy needs to come forward a little bit.

**5:41** · All right. Let's see how this looks.

**5:46** · All right. Okay. Well, you should have something like that. Um, again, maybe we need like some vertical motion as well.

**5:52** · I'm not sure. Yeah, potentially like when he were here, maybe we bring this up a little bit. GZ a little bit. Uh, there's not a ton of room. Maybe a tiny bit like this. And then when we're down here, let's just bring it down. GZ like this.

**6:12** · Okay. All right. That's going to be good enough. Um, let's go ahead and save and let's uh let's create the hurt animation. So, let's go back into the default and duplicate this. And I'm going to call this hurt.

**6:27** · Hurt animation is going to be uh pretty small. Maybe also h maybe we make this like seven uh frames long. So, eight.

**6:35** · Select all the bones. Go into the first frame. Shift D. go into frame seven to duplicate. And then let's go into frame three. And then here we're going to just bring the whole body back as if they got hit. So maybe start with this bone here.

**6:50** · And yeah, something like this. Just exaggerating a little bit. Let's bring also the weapon back.

**7:01** · Ah, this is like drama school. But you know what I've learned, even though I suck at uh creating animations, is that um you mostly want to exaggerate them.

**7:09** · Uh otherwise, it just doesn't sell it.

**7:11** · All right. How does that look? It might be a little bit too fast.

**7:17** · Uh okay, I think it's going to be too fast. Let's Let's take this frame here.

**7:21** · G to grab. Let's bring it to frame nine.

**7:23** · And let's h bring frame three to frame five. See how that looks.

**7:30** · Yeah, it's a little bit better. All right. And this is going to be it for our animation. So I'm going to go back into our layout and then select my um skeleton, shift select my mesh, control S to save file, export. You should be familiar with all of this by now.

**7:44** · Character. And then we can hop back into GDAU to implement those animations into our code.

**7:50** · All right, back into GDO. The first challenge I'm going to have you do is to actually implement the slashing state for the player. So it's going to be very straightforward to start with. We're just going to have it play the animation and then after the animation is completed, we'll just have the player go back into the moving state. But that will allow us to validate how the animation looks onto our screen and uh see if we need to make any tweaks inside uh Blender. So, just go ahead and do that. See if you can um uh do this quick challenge and then follow up on my code after.

**8:18** · All right. So, hopefully you were able to um go through that uh small challenge. I'm going to go into the script and we're going to hop over into the player script. And here we are going to introduce a new state called slashing. So let's go ahead and create a new script. Let's go into the player state.

**8:36** · And let's call this player state slashing.

**8:45** · Okay, it needs to inherit from player state.

**8:48** · And the code here is going to be very similar to some of the other states which we have. First of all, when we enter the tree, so when the node is added, which means when the uh player is entering the state, we'll want to play the new animation which we have added called slash. I believe it's slash. Let me double check.

**9:06** · Slash. Yep.

**9:10** · And we'll want to hook ourselves up to the um animation finished signal.

**9:27** · Okay. And if you remember this takes as argument the name of the the name of the animation which we're not going to be using.

**9:37** · And here we just want to transition back into the player state moving. Um the one thing though is whenever we swing our sword we do want to keep the ability to move. So, inside our physics process, we're going to um do our process movement.

**9:54** · Probably going to be doing this in a variety of our uh states. I think only when only when we get hurt or maybe I don't know. We we'll have to see. So, let's go ahead and try this out. Um oh, actually, we need to be able to move into this state. So, we move into this state when we're starting from the moving state and we want to um use our action. So if input is action just pressed and here we'll have I think it's action and player dot equipment has weapon.

**10:28** · Then we'll transition into player.state dot slashing.

**10:37** · It looks like I need to add the state.

**10:38** · So, let me hop over to uh my enum and add the slashing state. And then let's also add it to our hashmap here.

**10:54** · All right, I believe that we should be able to try this out. So, I don't have a weapon. So, if I click, it's not going to do anything. Let me go grab my sword.

**11:01** · Once I have my sword in hand and I press All right, you can see it looks like my hand is coming uh above the player. So, I'm probably going to go back into uh Blender and just fix the animation a little bit. I just I'm just going to lower the hand a tiny bit. But on your end, you may have actually something that works decently or not at all. So, this will require a little bit of uh fine-tuning inside Blender just playing around with the animation frames and then just so that you have something that that works well.

**11:31** · If I actually look at the player scene here and open up my animation player.

**11:36** · Let's go to animation and let's open up the slash animation to understand what's going on here. If I go over the slash animation. Okay, I think I see what's going on. Do you see how the camera here is uh inside the head? Um, so I mean I could go into Blender and and fix this head to make sure that it doesn't go too far forward. Or I could also just take the camera here and then just move it forward a tiny bit. I think this is Let's see how far does it go. I think about here. So if I bring my camera and bring it to about here, then I I think it should uh almost let me see here.

**12:12** · This is as far as it needs to go.

**12:17** · All right. So, my camera now is located at just to give you an idea on my end at um oops 0 1.5 and minus0.493.

**12:35** · What if I do minus 0.5?

**12:39** · Okay, so let me try this out and see.

**12:42** · Okay, let me go grab a weapon.

**12:45** · Okay. And actually, this doesn't look half bad. Uh, so let me take the other weapon here.

**12:54** · Yeah, it's fast enough that, you know, it's it's a little bit transparent. So, I think when hm I think that rotation might might look a little bit weird, but that should be okay. All right. So, hopefully on your end, you are able to either fine-tune the Blender animation so that it works well, or you can also make sure that the camera doesn't overlap with the various bodies that you have.

**13:14** · All right, so let's create that state for the enemies as well. Um, now the enemies is going to be slightly different because the enemies need to be aware of the player and they would only start slashing if the player is within reach and they haven't attacked within a certain period of time. So the conditions are going to be slightly different and again this is where you see that it's beneficial to have uh different states for the various enemies. So let's hop over to the script and look at our uh enemy script here.

**13:41** · Um, so let's create some exported variables.

**13:45** · Um, maybe right here.

**13:50** · All right. So, we need to know if the player exists. So, by default, it's going to be null. And let's say when you're entering a room, they don't have they haven't yet registered that the player is here. And then, as soon as the player will hit one of the enemies, uh, we'll set this value to the actual player and they can start engaging. And then maybe we'll have another variable to figure out how long between various attacks. Uh we'll set that in milliseconds.

**14:15** · And then we need to keep track of the time since the last attack.

**14:20** · So this is also going to be uh an integer. Actually, we don't need to export this. Let's just make it a variable.

**14:28** · Okay. And let me just reorder this properly. All right. So now if you hop over to our goblin uh we're not going to set the player but this duration between uh between attacks let's make it 2 seconds. So 2,000 milliseconds.

**14:42** · Okay. So um let's create two handy method uh as part of the enemy just to see if we have uh knowledge that the player exists. It has registered player.

**14:59** · And here we just need to check whether player is not null. And yeah, in case the player dies, it's always a good idea to to check that it's a valid instance as well.

**15:12** · Okay. And then the other one that we'll need is to know whether the player is in within reach. So is player within reach?

**15:20** · Otherwise, we shouldn't be swinging in the air. So if has register player and equipment has weapon.

**15:31** · So we want to just compare the distance of our position to the to the the distance possible from the weapon. So return global position.d distance. It's always good to do distance square too.

**15:45** · It's a little bit faster to be player.

**15:48** · global position.

**15:50** · And let's check if that's smaller than the equipment dot weapon data dot uh what do we call it reach.

**16:08** · Okay. So uh let's see hop and if we're still um if we haven't registered the player let's just return false for now. Okay. Again, let me um just not a lot of not a lot of space here. So, if our position is smaller than the distance that our weapon allows it, then we will return true. Otherwise, we'll return false. All right. So, that being said, now let's hop over to our enemy state move right here.

**16:37** · And so, here, let's go ahead and go into our physics process.

**16:49** · And let's check if the enemy has registered the player. And if that's the case, uh, and h, we're going to have multiple if conditions. Let me just put them one at a time. Uh, if enemy is player within rich, uh, and can attack. And I'm just going to create this method right now. Let me just pass for now. Can attack returns a boolean. What do we want to check?

**17:17** · Well, we just want to check that uh the time that we are at now minus enemy dot time since last attack.

**17:32** · We want that to be greater than enemy dot duration between attacks.

**17:41** · Maybe I should do this just so you can see the code every single time. All right. So if we can attack then let's go ahead and uh transition into our new attacking so slashing state which we haven't created yet. So actually let me pause this here. Uh but we do want to set the enemies timest attack to now.

**18:08** · All right. So once we're in the moving state, if we have registered the player and the player is within reach and we have a weapon, uh we can attack and we haven't attacked in a while, then we're going to hop over into this new uh state which we need to create. So let's go ahead and create that right now. So file, new script, and let me hop over and go into the enemy uh state. And let's call this enemy state slashing.

**18:40** · All right. So, this is going to be very similar to what we had done for the player. So, I guess we could even just copy and paste that for now and just replace um our player with the enemy and we're going to move into the moving state. Let's make sure that we register it.

**19:02** · So, if we go back to uh enemy the enemy code right here uh slashing uh enemy state slashing does that not exist?

**19:19** · Enemy state slashing.

**19:22** · Oh, we need to add the enum. So, let's go back to the enemy script and go here and add slashing.

**19:29** · All right, so this should work. We just need to go into the slashing state. So back into the moving enemy state moving.

**19:36** · Let's transition state into the enemy.state dots slashing.

**19:42** · Now I cannot remember what we had entered for the uh the various weapons.

**19:47** · So I think the enemy starts with an axe.

**19:50** · So the reach is six. So it's going to be the square root of six. Let's see. Let's try it out. So if I go close enough.

**20:00** · Okay, they have not the the the enemy has not registered me, so there's no no way for them to actually swing their axe. So, let's hop over into our level.

**20:11** · Okay, so what we can do is maybe if the player gets too close to the enemies, then we'll detect their presence and uh and we'll be able to set the player that way. So, let's hop over into the goblin and let's create control A. Let's create an area 3D.

**20:28** · Let's call this player detection area.

**20:32** · So it can it's complaining because it doesn't have a collision shape. Let's go ahead and add that right now. Control A collision shape 3D. Let's make this uh a sphere maybe. And let's set the radius to 2 m. How does that look? So if the player gets too close, 2 m could even do like 2.5.

**20:53** · There we go. If the if the player gets within two and a half meters, then we'll be able to detect it and we'll be able to set the player property. So, let we're going to need a reference to this in the code. Right click, access as unique name. Let's hop over back into the goblin code. Hop over to the top.

**21:08** · Let's drag that node into our script.

**21:12** · Uh, and let's listen to the event where we have a body that enters.

**21:18** · Uh, let's also make sure the collision shape is correct. So here we don't need to be on any collision shape but we want to monitor for the player.

**21:27** · Um okay so maybe inside the ready function here we can have the player actually let's do that even before we switch state. So player detection area dobody entered connect on uh player detected.

**21:44** · Okay, let's go ahead and create this method. Uh maybe at the very bottom.

**21:55** · So on player detected. So this is going to be called when there is a body in there which is going to be our player of type player.

**22:03** · And let's set player to body.

**22:09** · Uh let's also just print just to make sure we we are seeing this player detected.

**22:16** · But hopefully because it registers the player, we should see the enemy swing.

**22:19** · So let me just go here close to it and okay well something has happened.

**22:24** · Process movement is uh does not exist.

**22:27** · Oh well we this is the problem when you copy paste code from all over the place.

**22:32** · We actually don't have a way to process the movement right now in the enemy.

**22:34** · This code doesn't exist. So let's just kill this for now and uh start again.

**22:42** · All right. And within two seconds, it should continue to do the swing. It's looking okay. The the um the axe looks a little bit awkward. Let me see.

**22:55** · Yeah, we may have to to finalize the rotation of the weapon as it as it as it gets swung. But uh otherwise, this looks this looks okay and the behavior works correctly. Okay. So, we now can work on the her state. Actually, before going into the her state, you may have actually noticed uh something that's a bit odd. So, when you're coming from uh in front of the enemy, that looks okay, right? Like they're swinging the sword at us. But if you go from behind, you'll see that it will also swing the weapon.

**23:25** · And this may actually cause some issues down the line, especially if we want to be able to surprise the enemies. It this doesn't just quite make a lot of sense.

**23:31** · And the reason for that is that in our enemy uh code uh each player within reach is just looking at the distance between the enemy and the player. And so you know think of it as like a a circle right around the enemy. So that actually doesn't make a ton of sense. And I think a better way to do this is to have a raycast uh on both the player and the enemy and then the the length of that ray cast should be defined by the reach of the weapon. So let me just show you how what I have in mind right now. So, if I go into the goblin to the 3D view, I'm going to add a new uh scene.

**24:03** · So, control A. Let's add a raycast 3D. And let's rename this to u weapon reach raycast.

**24:15** · And it's going to collide. So, this one is going to collide with the player.

**24:20** · And right now, it is looking down, which is not what we want. We want it to look forward. So, let's see if I do minus two and zero.

**24:29** · And let's bring this up as well, maybe by 0.7. So it's halfway through. Um, okay. So you can see the rate cast here.

**24:38** · Sorry, I did not do that on purpose. Let me bring this up maybe to 0.9. There we go. It's a little bit uh a little bit less problematic. All right. So we want to be able to detect the player. And the length of this um raycast here. So this minus2 is going to be the square root of the weapons reach um inside our resource. So we can actually uh make this as part of the equipment. We'll make it the responsibility of the equipment to probably to properly set the length of this uh ray cast here.

**25:06** · So let me also create this raycast on the player side of things. So back into the player uh let's add a raycast 3D. Let's also call this a weapon reach raycast.

**25:21** · And this one though is going to collide with just the enemies. And let's set that uh transform to uh what do we say?

**25:28** · One one meter. And then let's have the uh position go to okay. So this is going to be exactly the same raycast as what we have for the enemies. Now let's go over into our equipment script uh right here and let's have a an exported variable for this raycast.

**25:48** · Let's call this weapon uh reach raycast.

**25:54** · Okay. Uh here we go. And let me bring this just down here. Okay. So if we go back to our player here, let's go ahead and define in our equipment. Sorry. Let's go ahead and define the weapon rich raycast, which is this one here. And let's do the same thing on the enemy. So if I go into the enemy and into the equipment of the enemy right here, I should be able to define the weapon retray cast.

**26:26** · Okay. And as part of the equipment code, whenever we equip a weapon here, I'm going to um change the length of this raycast.

**26:36** · So let's do it here. Uh okay, what is it going to look like? It's going to be the target position dot Z equals minus. And here we said it was going to be weapon data reach. And we're going to have the square root of this.

**27:08** · Okay. And that should work. Let me just uh enable the collision shapes here just to make sure that everything looks okay.

**27:15** · All right. And you can see here my raycast. This is as far as I will go.

**27:20** · And um so we probably want to Yeah. So this is as far as the the the weapon goes. And I think it's okay, right? It looks okay. So now we only want to swing when that raycast is actually colliding.

**27:32** · Um that's how we detect the presence of the player. And so whenever the we have like um \[clears throat\] whenever we know that the player exists, we'll probably just always turn towards the player just to make sure that it makes sense. All right, so let's go ahead and change uh our code inside our enemy script and is player within reach. Basically, this needs to be um if has registered player and equipment has weapon. So this first line is is fine. Here we'll just return that our weapon cast reach which we don't have a reference to.

**28:04** · So right click access as unique name. Let's drag it into our code is colliding.

**28:19** · Okay. And this will be a little bit better. So that means if we come from behind it's not going to uh register it.

**28:25** · So let me see if I go back here and I go from behind here. Even though it's detected me, it's not swinging the sword. But if I come in front of it and it's detecting now, it's able to actually swing the sword accordingly.

**28:37** · Okay, so this is actually going to fix some issues down the line uh with our enemies behaving a little bit oddly.

**28:43** · All right, so let's move over to the her state. And for now, we're just going to start on the enemy side. We're going to keep things very simple. We're just going to be playing the uh her animation. So you can try to do this.

**28:52** · Take a few minutes. It should be pretty straightforward. And once the animation is completed, then we'll go back to the moving state. So go ahead and try to take a few minutes and and do that.

**28:59** · \[clears throat\] All right. So, I'm going to start by creating a new script. Let's go and place it inside our uh enemy state. I'm going to call this enemy state hurt. Give this a class name. And it extends enemy state. All right.

**29:18** · And typically what we want to do is whenever we enter the tree, so whenever we enter the state, we'll want to uh play our animation hurt. And then let's connect to the uh animation complete. Animation finished signal. Connect on animation finished. And let's just transition back to the moving state.

**29:58** · All right. So, when do we transition into the herd state? Well, we're going to have to detect when the player is is swinging their sword near the enemy. And for that, let's go ahead and create a new function as part of enemy called uh try receive heat. For now, we'll just keep it that way.

**30:19** · And basically, if the enemy has a shield, um it may not necessarily go into the her state. So depending on the uh current state of the enemy, depending on their health, depending on a bunch of factors, they may go into one of multiple states. So try receive hit. Um so here for now we just go and switch to the uh enemy state hurt.

**30:43** · Okay we need to add that to our enum and we need that to add that here. All right. So now whenever the player uh calls try privacy to hit, we should see that the enemies goes into the hurt state. So let's go and try this out. Let's go into the player code here.

**31:12** · And whenever we are slashing our sword here, we just need to detect whether the player is in front of us. And basically we're going to be reusing uh our player here our weapon retray cast. Let's go ahead and have a reference to this um and add it in our player scripts.

**31:37** · So we can reference it and then if this is colliding then this means that there's an enemy within reach. So within the slashing code here whenever we enter the tree um I guess here we can double check. So we're slashing here. If player do weapon reach outcast is colliding then um our enemy equals playerweapon reach raycast dot get collider as enemy and then enemy dot try receive Okay, let's try this out.

**32:24** · Oh, let's get rid of the uh debug collision shapes here. We don't need those anymore.

**32:29** · All right, and I'm going to go and pick up a sword here. And I'm going to come from behind. And here, if I attack, you can see that the enemy um goes into the herd state. It's a little bit odd because as soon as I start attacking, my animation starts swinging the sword. But you can see here that the enemy goes into the herd state directly, which makes it a little bit odd. Now, we're going to be working a little bit on impact, so it's going to not appear as bad. But still, we probably want to only affect the the enemy when the the sword is midway.

**32:57** · So, for example, if I go into the player script here, and I go into my animation player in my slash, I'm going to try to find about what time. So, you can see right here. So, this is about 200 uh right 200 milliseconds. So maybe what we can do is just affect and try to uh try to affect the enemy after 200 milliseconds. Um so let's create a con here.

**33:24** · Time emit damage 200 milliseconds and um let's keep track of time start slash. So this is when we enter into this state and then let's uh make sure let's check if we've already emitted damage or not.

**33:46** · By default it's going to be false. All right. So then within our physics process um what we can do is actually let's go into our I think we could do this as part of our physics uh as part of our process function. All right. So if so let's see var time elapsed time.get get ticks minus time start. Okay.

**34:16** · And we want to check if we have not if not has emitted damage and the time elapsed is greater than 200 millisecond time emit damage. Then we'll want to emit the damage. So has emitted damage equals true. And this is where we want to do our enemy.tribe to receive hit. So, actually, we're going to need uh we're going to need these here. Let's take these lines and put them here.

**34:55** · Okay. If it's colliding, then get the collider as uh let's just double check that this is not null. By the way, if enemy is not null, then try to receive hit.

**35:07** · Okay. And I think this should be a little bit better. So, let's go ahead and try this out. I'm going to go and pick up a sword and go back there and swing it. All right. And you can see it's it just feels a lot better. Uh it doesn't feel a little bit out of place. So, it's only providing it's only emitting damage once. Um but it's actually doing it when the sword is right in front of us. All right, this looks great. Um a couple of things. We'll want to start passing how much damage we're making. And we'll also want to pass in the origin of the impact.

**35:36** · This will allow us to um actually have some knockback effect on on the enemy. So that way when we hit them, they'll be knocked back towards uh where they're where they're being hit. So we'll need to keep track of just those two things. And again, because we'll be passing this over to the data, we'll need to uh to the state, we'll need to add that to the state data.

**35:56** · So let's start by passing the damage information. So uh first of all, let's go into the player state uh slashing here. So whenever we are emitting a hit let's go and figure out how much damage we need to make. So for that we can um damage equals so we can get that from the equipment dot weapon data dot get damage dealt. So this is a handy function which we had created earlier which is just a random number between damage min and damage max.

**36:25** · And we can now pass this uh to our try receive hit. So let's go ahead and pass it for now. And let's go into the try receive hit and alter the signature of this.

**36:34** · And we'll need to pass that information to our herd state. So right now um if we go into our enemy state data, we don't have any way to pass in the damage. So let's go ahead and add that. It's going to be an integer and fun set damage.

**36:59** · And we want to return self so that we can chain this method. Now back into our enemy here. Um let's go ahead and pass in our data. So we can do enemy state data new do set damage and we'll pass in this damage here.

**37:17** · All right. So now that we are in the hurt state, we should have access to this new damage property. So here and what we're going to do is check whether we are still alive or not. So, first of all, um, enemy dot, do we have this notion of life? I don't think we've created it yet. Uh, I don't think we have this concept of health yet. So, let's go ahead and create a health component and then we'll add it to both our player and our enemy. So, we're going to keep things pretty straightforward for now. Just go ahead and create a brand new scene here. We want to just use a node for that. We're just going to add that to both of our scenes.

**37:48** · Let's rename this to health component and save it as part of our scenes characters component and health component. Okay. And we just want to create a script for this. Health component is fine. And then uh extends node. Let's give it a class name. All right. And then here let's export a couple of properties. Uh one will be max life.

**38:17** · It's going to be an integer. Let's do current life. It's also going to be an integer. And then let's create a couple of handy functions. So, for example, this one, uh, take damage. And we'll just want to clamp our current life between current life minus damage between zero and uh, max life.

**38:45** · Okay. Um, and let's do another is dead function. This is going to be a pretty handy method. Return current life equals zero. All right. So, let's add that health component to both our player and our enemies. So, I'm going to hop over into our player script, go into all the way to the top, control shift A, and let's add our health component. So, uh, going back into our player here, we now have added our health component. We can add a couple of properties. Let's set the max life and the current life to 30.

**39:14** · And then let's also add that health component to our goblin.

**39:18** · Control shift a health component. And here let's set the max life to eight and current life to eight as well. And we're going to need a reference uh inside the code. So let's go ahead and access as unique name on this one. And same thing for the player here. Uh access as unique name. All right. So let's go into the goblin code base and let's drag this um similar to how we had dragged our equipment here.

**39:46** · Okay. And let's just call this uh health. And I'm going to bring this uh up right here. Okay. And let's copy that line and go to the player. And we're also going to need that in the player script as well.

**40:02** · All right. So, back into the uh enemy state hurt, we now have access to this new component called enemy.alth. Uh so, here what we want to do is enemy.alth health dot take damage and we're going to pass the information coming from the uh state data dot damage. Okay. And then let's check if we are still alive or not. So if enemy health dot is dead, if we are dead, let's go into a different state.

**40:40** · Okay. And if we're not dead, then we're just going to play the hurt animation. All right. Uh, let's try this out and see if it works. So, I'm going to go and pick up my weapon here.

**40:51** · Go over there and hit once, twice, three times. And now they died. All right, perfect. So, it looks a little bit janky. I still need to fix my uh I might do that right now. I still need to fix my uh uh my bones here, my joints. But you can see here that after three hits um the enemy just died and is now into the dead state.

**41:15** · All right. So on my I just went ahead and made a couple of tweaks to uh the various bones especially bones uh for the arms. I just changed the various constraints. Uh for the upper arm both the right arm and the left arm I put the upper limit to 90 and the lower limit to minus uh 45°. Uh so upper arm here and then for the lower arm I also set that to 90 and minus 45. So when I go now and pick up a weapon and let's say I'm going to come from the side here.

**41:47** · All right. You can see it's a little bit better that the uh you know the the arms now fall into a much more natural position than if they were to just stick on to the ground. So this uh yeah this looks much better. All right. And so while um this all works, you can probably notice that it all feels a little bland, right? So like when I go and attack the player once, two, it just dies like that. There's no notion of impact whatsoever. And we're probably going to be working on impact a little bit later as we kind of pump up the joist of the game.

**42:16** · But for now, we should at least have some form of push back movement as we hit the enemies that they get pushed back a little bit. Right now, the enemies are not moving. U pretty soon, they'll be moving towards the player. I think we'll be able to uh have a little bit more dynamicity here. But at least let's start with with that.

**42:33** · So whenever we're hitting the enemy, we need to pass the information from where the player is to figure out in which direction the knockback should be. Um so let's go into our player state uh slashing uh state right here. And so here when we try to receive the hit, let's also pass in the information about the player. So uh I don't know, maybe as a first argument here. So, player damage. Let's go into try receive hit. And here, let's have a uh source player damage. Okay.

**43:04** · And then we're going to need to pass in this new information as part of the enemy state data. So maybe we have something called impact direction, which is going to be a vector 3. And let's have a setter method for this.

**43:41** · Okay. Uh, what's the problem here?

**43:46** · Indents. Uh, what did I miss? I miss a Oh, there we go. Okay, let me just bring this window back here a little bit. Okay, so now we can pass in this information whenever we are uh hitting the player. So in the enemy here, let's pass in this um direction information. So var hit direction. This is simply going to be the source player global position dot direction to the uh current global position of the enemy.

**44:19** · because it's just a simple vector that goes from um and we can probably normalize this by the way. All right, so hit direction and let's go ahead and set it as part of the data that we're passing. Set impact direction hit direction.

**44:38** · All right, so now we have that as part of the herz state. So here we could use this information. Now the only thing is right now our enemy is not moving at all. like we're not even calling um move and slide on the character body 3D. So, we probably need to have similar to how we did on the player. We had um this method called process gravity process movement. We probably want to have something fairly similar over on the enemy side. And even though right now they may not be moving, at least they'll be able to slide and and have some knock back. Uh so they'll be moving a little bit in the world as we hit them.

**45:11** · So, let's um uh yeah, let's add maybe a couple of methods as part of the enemy. Uh maybe right here. All right. Funk process movement.

**45:30** · Okay. There's a couple of things that we'll need the enemies to do. So, first of all, when they fall, they'll need to um remember this is a character body 3D, so we need to handle the gravity ourselves. So let's just have a method to process gravity and we're going to start by creating it right now.

**45:50** · Okay. So basically if you're not on the floor then let's affect your velocity, your vertical velocity. And let's add a new constant towards the top called gravity. Let's set it to 20. And then coming back down. Sorry, I should probably pause a little bit. So I just added this constant here. And then coming back down here, I'm just going to affect my vertical velocity by gravity multiply by delta. All right.

**46:20** · So we're already now making sure that the player can fall down. And then let's also have the ability to process some push back force. So similarly to uh how we have a velocity let's also keep track of the ongoing push back. So here v push back force is going to be a vector 3. By default it's going to be set to zero but then um the her state can then affect that to a different vector.

**46:56** · All right, let's create this method here. Okay, what do we want to do? Well, simply we want to affect our current velocity by our push back force.

**47:12** · And we probably want to tame the push back force over time so that it it goes towards zero. So push back force equals push back force dot move towards uh vector 3.0 zero and at which speed let's do delta times maybe we can have a some form of friction here air friction and let's create this con at the top

**47:43** · and I'm not sure what value I put there uh let's also set 20 let's try this out all right so uh every enemy can have a push back force can be affected by gravity.

**47:57** · Basically, these are forces that will affect the velocity of the enemy. And from various states, we can also affect the push back force as well. By default, the push back force as soon as we increase it, it will start going towards zero. So, this is just something that will slow the player, you know, uh it will slowly not affect the enemy over time. Um, so we now have those methods that affect the velocity. Let's make sure we're calling the move and slide method.

**48:25** · That way we can actually u affect the movement of the character body. Okay. So now we have this set up. Let's go ahead and apply some push back force to um to our enemy as part of the herd state. All right. Right here, let's go ahead and type enemy dot push back force plus equals uh data.impact direction. Sorry, state data dot impact direction times maybe we can have some form of uh knockback force factor here.

**48:57** · And let's create a const. Let's set this to I don't know 3.0. Let's see if that makes any difference. All right. So, let me go over the code once again. So, whenever the player hits the enemy uh inside the player state slashing here, we are going to pass in the location of the player, actually the player itself, plus some damage. The enemy here is going to receive this hit. We're going to pass the information uh to the state um first as an impact direction and as the damage itself.

**49:26** · You may be wondering like why don't we just pass the impact direction directly instead of the player. We could have definitely done this. The one part that I I noticed is that down the line we will want the enemy to register the player. Remember how we did that when we got close to the enemy, but I think we'll want to also register it whenever we get hit. So the you know we'll we'll be able to do that in just a little bit. So for now we're just passing that information to the enemy state and we we're going to the hurt state. We now are able to affect some push back force.

**49:58** · So let's try this out and see if it works. So I'm going to go and pick up a weapon here. And if I hit the enemy once. Okay, you can see they're barely moving. Let me go ahead and increase the knockback force. Let's go to 30 and see if that makes any difference. And it's not working. All right. And I think the reason this is not working is because we are actually not processing the movement here.

**50:34** · Uh physics process and enemy.process movement. Okay. And I think this may actually um mean that 30 is too much. Let's try this out. Okay. Yeah, it's a little bit too much. Uh, let's see. Maybe 2.5. Yeah, you'll have to play around on your end. See what works best. Yeah. Okay.

**51:01** · 2.5 is almost too much. I'm going to set it down to 2.0. And you'll probably see as well that um whenever the enemy dies, it doesn't quite make sense because the impact isn't there. What we'll probably do is similar to how we impel an enemy and um and provide an impact on the torso, we'll probably do the same thing.

**51:19** · We'll pass in the information and uh impact that bone here. So, similar to how we have like some impact here. Okay. So, let's go ahead and do that. And then I think uh we'll have completed kind of this hurt state for the enemies.

**51:33** · All right. And to do this is actually pretty straightforward because when we go into the dying state, if you remember, um if we pass in an impulse as part of the state data, then it will automatically apply that impulse to the torso bone, which is exactly what we want. So here we just need to um we just need to pass in a new state data. So let's go ahead and create another one.

**51:53** · Uh data equals uh enemy state data new do set impulse. And here, well, we'll just want to use the same um I guess we could use the same push back force. Uh I don't know if that's going to be h that's going to I don't know if that's going to be enough because if you remember like when we're in the dying state, I think we need to apply a much stronger impulse, right? It was in the order of uh I think 100 or so that we had applied uh where was it?

**52:24** · Impaling here impulse intensity was 100. So h let's see let's uh let's try something. So let's do state data.imp impact direction times I'm going to go with uh maybe yeah let's do 100 120 plus vector 3 up and let's bring this up by maybe 80.0.

**52:48** · All right you'll have to play around with these and actually we should probably not have these as magic numbers in the code but probably have them as const. Um, but anyways, now we can just pass in this data here. And let's try it. Let's see. Let's see how much the uh if it's too much or not enough of the impulse. Go ahead and pick my my sword.

**53:05** · Hit once. Hit twice. All right. And this looks it just feels much better. Um I mean down the line you may want to provide a little bit more impulse, but you can see that the enemy is falling and flying a little bit towards where we're the direction that we're hitting them. So all right. Well, with the enemy now able to swing and receive hits from the player. Um, this is going to be it for this episode. So, you'll notice that we didn't actually take care of the player getting hurt. Um, and this is partly on purpose because it's a lot easier to build and test the game um in some form of god mode.

**53:35** · So, whenever the player is just invincible and you know it's just it it prevents us from having to restart the game and so forth. So, we'll take care of that probably towards the end of this series. will just make sure that the player can actually get hit, can actually get hurt, can actually die, and uh we'll build all of the states at the end. So, right now, the enemies, right, they're pretty static.

**53:56** · They don't move. They don't do much except just uh getting hit. So, it it does make it for, you know, pretty dull interaction. So, in the next episode, I think we'll be working a little bit on uh enemy movement. And we'll talk a little bit about path finding cuz right now um if we were to just move towards the player, they would just fall here in the trap. Um I don't know if we'll have time to do the trap, so I think we'll do that in a different episode. So, we'll just introduce the ability for enemies to go and run towards the player and and uh and have proper path finding, but that way it'll make it uh make the interactions a little bit more cohesive and fun.

**54:25** · And then we'll also probably add a little bit more juice to the impacts of combat because right now it's still a little bit lame. Um it just feels like we're hitting jello-. So, uh today we mostly wrote a lot of code. So, if you have any questions, you know, please don't hesitate to ask in the comment section below and I'll do my best to respond quickly. Uh \[snorts\] again, I think it's really important that you understand every single line of code that you write. So if you have any questions, don't hesitate. Thanks so much for watching. I know those episodes can get pretty long sometimes. Uh so this really means the world to me that you're still here. And I really hope that it's helpful to you in return.

**54:53** · Um you know, I've had a lot of you reach out to me and ask how you can support me and support this channel. And look, I'm not planning on setting up any Patreon.

**55:02** · I'm actually very lucky that I'm I'm well off enough with my day job. So, my hope is just to inspire more um you know, aspiring game developers out there just to go out and build their the game of their dreams. So, hopefully all of this is useful to you. Uh and if you do want to support the channel, I guess uh you know, please use the like and subscribe buttons. It will definitely help the channel grow. So, with all that said and done, it's just time to take a quick break and I'll see you in the next episode. Cheers.