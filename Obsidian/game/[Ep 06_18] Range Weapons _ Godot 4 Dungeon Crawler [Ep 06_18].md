---
title: "Range Weapons | Godot 4 Dungeon Crawler [Ep 06/18]"
source: "https://www.youtube.com/watch?v=2tYm-Ix84cg&list=PLT26e2jOwbdg&index=7"
author:
  - "[[The GameDev Tavern]]"
published: 2026-07-11
created: 2026-07-16
description: "Learn how to create a 3d dungeon crawler from scratch in Godot!In this episode, we send swords and axes flying through the level.Play the final game here: https://gadgaming.itch.io/goblinsdencours"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=2tYm-Ix84cg)

Learn how to create a 3d dungeon crawler from scratch in Godot!  
  
In this episode, we send swords and axes flying through the level.  
  
Play the final game here: https://gadgaming.itch.io/goblinsdencourse  
  
Having an issue? Download the project for this episode: https://github.com/nicolasbize/goblins-den-course/archive/refs/tags/v0.6.zip  
  
Enjoy your stay at the tavern!  
  
#godot #gamedevelopment #gamedev #tutorial #pixelart #dungeon #fps

## Transcript

**0:06** · Well, hey there, fellow traveler. Come on in and make yourself at home here at the Gandalf Tavern. Grab a blanket, a nice cold drink, and just enjoy the soothing sounds of our keyboards as we build fun little games together. My name is Nicholas, and this is the sixth episode of the tutorial series where we create a 3D dungeon crawler from scratch in GDAU.

**0:25** · And welcome back. So in the last episode we introduced uh two different states for our items. We introduced an equipped uh itemtn and then we also introduced a pickable item.tsseen. So each of these representing a different state by which the various items in our game can be represented. Um and so today we're going to be introducing a third state, potentially fourth state. Um where the third state here is where these objects are going to be flying through the air.

**0:52** · Um and actually we'll also be using this when we're dropping the weapons to the ground. So it's going to be similarly basically we need a way to represent objects that are um represented through a rigid body so that they can properly interact with the laws of physics bounce against walls collide with enemies and so forth. So we will want those nodes to be of type rigid body 3D. We'll want to double check the collision layer making sure that everything works well. And similar to what we did in the previous episode, we're going to create a brand new class which will be mostly empty because most of it will be rendered and generated directly through the code.

**1:24** · Now, so far we haven't actually done a lot of code challenges in this tutorial series and and typically this is something that I try to do more and more and I know that you know to get started in this series we did a lot of art and just kind of laid the groundwork but really in order for you to become more proficient in game development. I do think you know they provide a ton of value. So today I'd like to actually start off with a challenge uh for you.

**1:45** · So in the past episode we created those two scenes equipped item and pickable item. And I would love for you to try to take 5 to 10 minutes and see if you can create this new scene called a throne item. And it should automatically generate the mesh. It should automatic generate the collision shape associated with it. And then whenever the player presses the I believe it's the R key to throw. Guess we can double check that.

**2:08** · Uh yeah, the R key to throw, I would like you to transform the equipped item into a thrown item. And ideally that thrown item because it uh because it has the laws of gravity applied to it will just fall to the ground and bounce on the ground. So it may take you a couple of minutes to kind of put all of that together. But um you know if you look at the way that things are done in equipped item pickable item you should be able to find your way through and hopefully um learn how to do this on your own.

**2:34** · So go ahead and pause the video now and see if you can take five 10 minutes to create this new thrown item scene and then once you're done just come back and then compare your solution with mine. All right. So hopefully you were able to try this out on your end. So I'm going to create a brand new scene and this time I'm going to take another node here and I'm going to find the rigid body 3D and I'm going to call this uh thrown item. I'm going to save this as part of the equipment as well. Um and thrown item.tsn works fine.

**3:04** · So we're going to need to create a collision shape, but we will only define the actual shape inside the code. So, I'm going to press Ctrl+ A, create a collision shape 3D. And here we're not going to touch the shape. I'm just going to rename this to collision shape, similar to what we had done in the other um scene. And we're going to need reference to this in our script.

**3:24** · So, I'm going to rightclick and say access as unique name. Let's go ahead and create the script for this. And this is going to behave more or less the same way as a pickable item. So, let's go ahead and create the script. And hopefully, you have something that more or less resembles what I'm going to write here. So we need to define a class name. This is just so that we can make reference to it throughout our script and uh and have it recognized uh through our uh strict typing. Then we'll need to have a reference to the weapon data.

**3:56** · And let's go ahead and drag this reference to this collision shape here.

**4:01** · Uh this does not seem correct. Let me see.

**4:05** · I want to get this one here.

**4:09** · There we go. Um, all right. Okay. So, what do we do when we instantiate this class? When we're ready and we add it to the scene, let's go ahead and create the object here.

**4:18** · So, it's going to be node 3D. By default, it's going to be null. If we have a weapon data that's defined, then let's go ahead and instantiate our GLV mesh.

**4:32** · Okay, so this is going to be our pactin.

**4:34** · Once again, our pack scene is just a simple node that contains a child node with of a mesh of um type mesh instance 3D.

**4:43** · Uh so if thrown object is not null, then let's go ahead and add as as a child.

**4:54** · Okay, so we'll now have it as part of a child object here of thrown item. And then let's go ahead and have a reference to um let's see var mesh node to our mesh.

**5:06** · So that should be equal to throw an object get child. It's the first child as mesh instance 3D.

**5:14** · And then we'll want to set the shape of our collision shape. Collision shape.shape equals mesh node mesh dot create convex shape. Okay. And and this is it. That's all we need to have our shape be created. Now, let's also make sure we have the right collision layer set up. So, here inside our collision, uh let's see. Let's go. I don't think we have anything for uh for this layer. So, here maybe we create a new layer called uh projectiles.

**5:48** · Okay. So, it's going to be on the projectiles layer and it's going to collide with should collide with the world and with the enemies for now.

**5:57** · I think down the line we'll also have doors. We want to make sure it doesn't go through doors, but for now that that's all we have. We'll we'll build it accordingly. Okay, so now we need to hop over to the player code and whenever we press the throw key or the throw action, we want to uh throw our weapon. And once again, um most of that code should reside as part of the equipment component which we've created. It shouldn't be part of the uh player component. So going to the player script here. Um, let's go into our keys management. So, I'm going to be cleaning this up probably in this episode.

**6:27** · We're going to start working on state management. Um, either this episode or the next, but so far things are kind of piling on here. And you'll see that, you know, it's not meant to scale. So, we we definitely want to have proper state management here. All right. So if input is action just pressed uh throw and we should probably check whether we do have a weapon in hand.

**6:51** · So maybe as part of the equipment component here, uh I'm just going to have a handy function called has weapon which is going to return a boolean.

**7:02** · And uh this is going to just check whether we actually have a weapon data that's defined here. And then it's also make sure that the weapon placeholder um contains a child object. So this is where we're putting our sword and and our weapons. So, and um weapon placeholder uh get shout count.

**7:30** · Guess we could either do equals equals 1. Let's just check whether it's not null and I think that should be fine.

**7:36** · Okay, so this is part of the equipment.

**7:37** · We just want to check whether we have a weapon. We're just checking the node whether it has a child and then whether we do have definition of our weapon here as the resource. So, back to the player script.

**7:47** · Uh, so if we're pressing the throw key and our equipment contains a weapon, then let's go ahead and hop over to the equipment again and we can create a new method called throw weapon. And you may be wondering like why don't we just put this logic as part of the equipment component. Uh, it's actually a good question. I I do think down the line like all of the inputs of the player are should probably be placed in a single function. It just makes it a lot easier to understand what's going on. But that way you don't split the flow um between verse components.

**8:19** · But but yeah, you you're probably right, right? Like all of the things that are assigned to the equipment could be part of the equipment. So that's that's just an option here. Um all right. So let's go ahead and go into the equipment and we're going to create a thorough weapon method.

**8:38** · So it's not going to return anything.

**8:40** · And so we'll want to be able to instantiate the thrown item uh scene that we just created. So let's have a reference to it here. So similar to what we did here, let's call this thrown item prefab.

**8:56** · So thrown item. Make sure you pick up the scene, not the script.

**9:02** · All right. So what do we want to do?

**9:03** · Well, first of all, let's just make sure that we have a weapon in hand. And then let's go ahead and instantiate our item.

**9:12** · Okay. And let's make sure we pass in the d the various uh data. So first of all, we'll pass in the weapon data.

**9:19** · And we'll want to place it somewhere in the world where it makes sense. Uh so maybe we can start by just assigning the same global transform as our equipped um item. So our equipped item right now is going to be uh a child of weapon placeholder, right? So maybe we just pass this as the transform. Let's see how that works.

**9:41** · global transform.

**9:44** · Okay. And then we'll want to add the throne item. Now, we want the throne item to be completely independent from the player and from its equipment. So, we can't just add a child here. Uh we can't just write this otherwise it's going to just follow the player. Um and it's going to be a child of the player.

**9:58** · We don't want that to happen. So, actually, we just want to add it to uh maybe we can start by adding it to the root of the game. So, we can do this by calling get tree.getroot.child.

**10:09** · add child. And this is probably not going to be perfect, and I'll explain why in just a second. Okay, so this should create our throne item. It should place it at the right spot. And then the fact that we have the weapon it weapon data whenever we add it to the scene, it goes it should go through the ready function here and generate the the associated mesh and associated shape. So I think we should be okay here. The one thing we want to get rid of though is the weapon that we have in hand. So, um, for that I'm going to clear out the weapon data information which we currently have.

**10:39** · And then I'm going to just remove the children. We should only have one, but yeah, let me just try this. Okay, I'm going to pause here for a second so you can see the code. I'm going to start again from the from the scratch. So throw an item here just generates basically the mesh um and it generates the collision shape and then whenever we are in the player we throw um and we hit the throw key which is the R key and we have a weapon in hand.

**11:10** · Then we go into the throw weapon method and here this throw weapon just double checks that we have a weapon. This is probably redundant but you know better be safe than sorry. And then uh after that we just instantiate the item scene which we created and then we get rid of the equipped item which we have in hand. All right. So let's try this out. All right.

**11:30** · So I'm going to go and pick up my weapon here with the E. And then when I press R, it should automatically create this new scene called thrown item and then just drop to the ground. And uh yeah, as you can see it's very seamless for the user, right? Like the player has no clue that we're actually completely swapping objects all together dynamically in the code. Okay, so that um is looking great.

**11:49** · Now we just want to close the loop here and make this weapon a pickable item. So for that um there's basically two things that are interesting that are part of the rigid body. And let's go over to the uh properties here. So if I look at the signals, there is two signals that we are going to be interested in. The first one is body enter. This will allow us to figure out whether we're colliding with anything, whether we're colliding with the walls, the ground, the enemies, and so forth. You can see here the type that we're colliding with is a body.

**12:15** · Uh I think if you let's see if I uh well I'll go into the documentation a little bit later but this will allow us to figure out whether we're actually colliding with anything. The second portion that's interesting as part of the rigid body 3D is if you look in the inspector here and if you go into deactivation there's a couple of properties here that are interesting. Uh freeze basically means that uh you basically stop in time any sort of calculations that is happening on the object. Um the other one that's interesting is sleeping.

**12:43** · Now, sleeping, the way that it works is basically whenever uh by default, GDO will continuously apply the forces of physics onto an object. And look at our axe for example, as it falls to the ground, it bounces a little bit until it kind of stops moving. And while it stops moving, um go to steel continues to applies forces until the movement is so small that it doesn't really make sense to continue to apply uh forces and to do math calculations on the collision.

**13:09** · So if you have enabled can sleep, the object will then enter a mode called sleeping, which means that basically Godo will just stop um from calculating forces until it's actually awakened by another body. So this just is a way for God to save on resources. But on our end, it's a way for us to capture whether something has actually stopped moving. And that's exactly what we're looking for. So we're going to be looking at both of those signals. First one is, hey, are we actually hitting something?

**13:37** · And then the second one is, well, if we started hitting something, let's maybe look at when we're going to start sleeping. And when we're going to start sleeping is the perfect opportunity for us to transform our throne item into a pickable item. Um, okay. So hopefully that will all make sense as we write the code together. Um, basically go into your throne item and um, we're going to listen to let's listen to the first uh, signal here and then maybe we can have a couple print statements just to make sure that we're all following along here.

**14:03** · So body entered.connect connect uh on body entered and let's create a callback method for this.

**14:14** · Uh I believe it's not a physics body 3D.

**14:18** · Let me just check real quick. Uh controlclick on body entered ended when a collision with another physics body 3D or grid map. Okay, so this is why like it's a generic type node because it's one of two things that um don't have much in common. Um, and on our end, because we're using class names all across the board, we can actually check whether you know this body is of type enemy or is of type um door or whatever.

**14:41** · By default, it's going to be the world.

**14:43** · So, going back into the code here, whenever we'll we'll um do collision with the enemies, we can check this a little bit uh better. For now, let's just go ahead and print something. Print uh collided.

**14:57** · And let's try this out. Okay. Okay, so I'm going to go pick up the item with the E key and I'm going to drop it to the ground with the R key and I'm going to close this. And you're going to see that there is nothing here in the output. So you may be wondering like, well, what's going on? Has it not collided? Uh, we even entered this. We should have entered this, right? Because it created the whole shape. You can actually just double check this. Print created uh shape created item.

**15:24** · And if we start this again, you should be able to see that once we pick it up and we drop it, it should have created item. But however, it doesn't go into the body entered. So why is that? Well, uh back into the inspector, uh there's multiple ways that uh we can define how the rigid bodies interact with our world. And um the one part that's interesting to look into is called solver. This is how you define uh how your rigid body interacts and does its collision.

**15:54** · So one path you could do is to uh have a custom function to figure out exactly how it should collide and interact with the world. Another one here is continuous collision detection.

**16:07** · U this is to ensure that things don't go through the walls. I actually think I've checked this on on my end in my project.

**16:13** · Uh let's try to keep it off for now and see if we can see. And then this is probably the most important part here.

**16:18** · the uh contact monitor which we need to set to true and define the the number of maximum contacts that it can collide with. So let's say there's multiple bodies in the way and how much do we want to calculate and on our end we're just going to keep one that's all we're going to need. So if you press F5 again and uh try this again, you should now see that. So E and R and once it falls to the ground, it should uh receive the signals. But as you can see here, uh it collides multiple times, right?

**16:45** · Like every time there's like a physics action and the the body kind of bounces on the floor, it's going to enter this function here. \[snorts\] So for that, we want now to listen to this other signal whenever we're sleeping. and we don't want to listen to it, you know, as many times as we're entering this function here. So, let's just double check whether we've already connected to um to our signal.

**17:10** · So, if so, actually, let's create a function on sleep and print create uh pickable item now.

**17:24** · Okay. And I'm going to connect to uh this signal. So sleeping state changed connect to unsleep. But I don't want to connect five times to this signal because I don't want to create five five objects. So for that I'm just going to first double check if we have already connected or not. So if we've not connected and there's a method here called is connected on sleep then let's go ahead and create our connection. Okay. So that ensures that we are only connecting once. All right.

**17:55** · Right. So, just to recap the code, whenever we're um hitting the floor, we are going to enter this on body entered, we're going to then listen to whenever we stop moving. And this is where we're going to uh have our code to create our pickable item. So, I'm just going to remove this print statement here, which is going to verify that once the object stops moving, we should see this line inside our output here. So, F5 to try this out. Let's go over to the item. E to pick it up. R to drop it. And and if you press Alt F4, we should now see the code here. Create pickable item.

**18:25** · Now, okay, this is actually a great um second small uh challenge that you could do.

**18:31** · So, basically here, once again, this is going to be very similar to what we did when we created this thrown item in the first place. We want to swap this thrown item for a pickable item. So, if you want to try this challenge, it should be pretty straightforward. Take a few minutes, try to see if you can tackle this again. It's good. It's a good repeat exercise. So, if you're not able to do it, that's perfectly fine. You can follow along with me, but otherwise, I strongly encourage you to to just try.

**18:52** · Oh, and then also, I do want to get rid of these um warnings here. We're not using this body for now. So, I'm just going to put an underscore here. Down the line, we will be checking the type of this. So, we'll we'll we'll remove it down the line. So, go ahead and take a few minutes if you can uh create the pickable item inside this function here.

**19:10** · All right. So, hopefully you were able to figure this out. So, we're going to need to instantiate a pickable item, which means we need to have a reference to the scene. So, once again, I I typically like to just have cons for this. Uh, so pickable item prefab.

**19:26** · I I use the prefab um nomenclature. I don't know this is I think coming from my uh days using Unity. Uh, but feel free to name this whatever, right? This is just a small convention that I have personal personally. So preload and make sure you pick the scene of the pickable uh item and not the script.

**19:47** · All right. So now that we have this, let's go ahead and create it. var pickable item.instantiates.

**19:57** · Okay. We want to pass in the data information.

**20:03** · We want to place it So again, remember the global transform is uh both the rotation, the position, and the scale. So we want to just have the exact same thing as this object here.

**20:22** · Okay. And we want to add it to our level. Uh so for now, I'll just do this, but we're going to change this in just a second, and I'll explain why. Add child pickable object.

**20:33** · Okay. Okay. And the last thing you want to do is make sure that you actually destroy this thrown item. Uh, so the one that's on the floor that's sleeping, we want to destroy it because now it has been replaced with this new pickable item. So for that, we can just invoke the Q3 method.

**20:47** · Okay, let's try this out. So when I drop the weapon to the floor, I should probably just start with a weapon. Be easier to test. And then I drop it, it falls to the ground. And after a few seconds, it now becomes another pickable item. And so now we've closed the loop, right? So, um, we can have items that fall to the floor and that can be picked up again and you can swap the inventory and making sure that, you know, everything works properly. Okay, great.

**21:10** · Well, hopefully you're able to follow along. I'm just going to go back here and pause for a second so you can see the code, making sure that everything makes sense to you, and then I'm going to um articulate a small thing. I do I do want to change this line here and and explain to you why. So for now, just making sure that you understand the code. So we detect the collision with the floor or the enemies, but for now we're only looking at the floor. And then we're checking whether we stop moving by looking at the sleeping state change. And then this is where we create another pickable item and then just replace this thrown item with a pickable item.

**21:42** · All right, so back into the game here. Um, let me once again pick this up and then drop it. And then I want to show you while this is here inside the remote.

**21:54** · Uh so inside the world uh it's now added it added a pickable item here right next to the world. And while this is this looks fine when you are um you know just testing things out whenever we load a new level we're actually going to have the world script completely swap the content of this object here. This level the level that we created. Um, I don't have it open right now, but we're basically going to clear this out. And we'll want all of the objects to be part of this so that it's completely clean.

**22:23** · So, even our goblin here doesn't make sense to be outside of the world. I think we added it um, you know, dynamically, but on our end, just placed it inside the world, but we actually want it to be part of the level. So, um, for that, every item that I'm going to add, whether it be an enemy or pickable item and so forth, I'm going to want that to be part of the level.

**22:43** · should be like a child of this um of this object here. And that way whenever I clear the level and create a brand new one, it just automatically cleans up everything. So, we're going to have a bunch of those um instances where we want to add objects to our scene and rather than add it at the very top of our tree, we'll be adding it to our level. So, we'll have a couple of those objects that we will need to reference throughout the entire codebase. And for that, we'll be creating a global object.

**23:10** · Um, so let me go ahead and stop this for now. And let's go ahead and I think I'm going to create a new folder here. And let's call this uh global global globals. Let's call this globals.

**23:28** · And let's create a new script here.

**23:32** · And let's call this game state. All right. So uh go ahead and save. And then go into project settings. And in globals, let's go ahead and find the script that we just created here.

**23:44** · And this will and then click add here.

**23:46** · This will make sure that game state is now recognized across all of the codebase. And all the functions that we that we add here. And all the variables are going to be recognized at the global um at a global scale. So basically here we just want to hold a reference to the level that's currently loaded. So maybe we just have a variable called current level which is going to be of type uh base level.

**24:06** · And um rather than have the world so whenever the world will load the level rather than just modifying this directly I'm just going to create a handy um setter function maybe call it register level which is just going to set the value. I I prefer to use like intermediary functions rather than have other objects uh alter the the value of those functions. Unfortunately in GDScript there's no proper encapsulation.

**24:35** · You can't really make this a proper private variable. So, you know, this is this is what we have to work with here. So, level here and let's go into the world script. Do we have a world script? We don't have a world script. So, good time to get started on this. Create a world script. World/world is fine. I think this we can give this a class name. It's not going to be a global object even though we only have one.

**25:01** · And um let's uh let's figure out what how to load the levels dynamically. So uh maybe we can start by defining the list of levels that we have available.

**25:12** · So for now I think we only have so let's create an array here. Uh level 01 welcome.

**25:26** · Okay. Again I there we go. All right. So here we're going to have the list of levels and maybe we'll make this uh an exported variable so we can just add them to our world one at a time. That actually might be a little bit cleaner.

**25:39** · Um yeah, we'll do that in just a bit. So okay, we need to keep track of which level we have currently loaded.

**25:49** · Uh loaded level. So this is going to be the scene by default is going to be null.

**25:56** · And then inside our ready function, uh let's go ahead and load our level current level index.

**26:07** · And you can imagine that we'll be reusing this once you go to level two, level three. It'll just go down through this array here and then just load the level. So what's the logic for loading a level? Well, it's going to be very very simple. If you look at our world view, we basically have we're going to add a node to um our level here. So function load level.

**26:31** · Okay, let's make sure let's let's unload whatever we have already loaded.

**26:38** · Then let's clear it.

**26:43** · And so this should clear this object and all of the children including all the enemies, all the objects. And so this will allow us to have like a very clean new state whenever we instantiate this scene again.

**26:55** · Okay, so let's just uh make sure that we don't go beyond the size of the array.

**27:01** · Then let's go ahead and instantiate our level.

**27:09** · And then let's uh add it as a child.

**27:15** · And we also want to register it uh as part of our game state so that it becomes um recognized across the board.

**27:22** · So again, you could write something like this. Game state current level equals current loaded level. That would work fine.

**27:37** · That would work fine. But again, I'm not a huge fan of just um assigning a value to something that belongs to a different class. So this is why we had this method called register level. and this and the reason why I'm doing this by the way is let's say we wanted to have like additional uh logic whenever you

**27:55** · register the level say maybe we that's a place where we want to uh reset the score or reset the time or do a bunch of things well that that's where it's useful to just have additional logic here as part of the uh registration directly all right so back into the world view here so I think this should work um I can I think so let's get rid of the goblin here. Let's get rid of this level here. And let's uh let's open up our level and we're going to add So, I pressed Ctrl P.

**28:28** · By the way, it's a handy method to navigate through all of your scenes. And then I type level 01.

**28:34** · So, we here we have a level and I'm going to add our enemy here. Uh so, going back to the top, control shift a goblin. And let's go ahead and drag this guy to here, I think, is where where it was.

**28:55** · Something like this. Okay. And we'll want to also set uh I guess it's fine. She doesn't need to have any equipment for now. Oh, let's rotate it the other way.

**29:10** · There we go. Okay. So if I go back to the world, I should now have an empty world and everything should be dynamically created when I press F5.

**29:19** · Okay, so it's incending the level which has its own the enemy itself. And then here I now have uh my axe. So I haven't actually changed anything, right? So if I look now inside my remote uh world, I still have the pickable item, but now I have a way to add it to my level pretty easily. And for that I'm going to go into the script and whenever I've I've added the lines um get root add tree. So let's see I think we had it in multiple instances here.

**29:48** · So rather than typing get treat add child I'm going to go into game state current level add child control shift f uh get tree and I also want to change it as part of the equipment component whenever we throw the weapon and we create a new thrown item. Same thing here I'm going to replace this line with game state.curren level. Okay let's go ahead and try this out.

**30:15** · So when I pick up an item and I drop it to the floor and I look at my world here, it should be pretty clean.

**30:22** · There we go. So there's nothing left.

**30:23** · Everything is now part of level. So when I go to level two or if I restart this level, I'm just going to get rid of this object and recreate it and it should be all clean.

**30:32** · Okay, so hopefully that code makes sense and it's just a little bit of cleanup, but I think it's going to actually uh make it easier for us to uh instantiate objects down the line. Uh you'll see.

**30:42** · So, it's it's going to be uh it's a little bit ahead ahead of the ahead of the curve here. All right. So, while we have the opportunity to um pick up weapons and and make them fall on the ground, you can see that it's not too exciting. We actually want those things to actually be thrown at the enemies and thrown against the wall. So, for that, um let's uh let's figure out how we're going to build this. For now, let's uh let me prevent the object from falling to the ground.

**31:06** · So, if you go to throw an item, uh, whenever we're throwing it right here, let's go ahead and set the gravity scale to zero.

**31:19** · Okay. So, let me pick up the item. And when I throw it, you can see here um the position of the item. Now, this uh position here is defined by the transform of the um where is it that we created? uh equipment here. It's defined by the transform of the weapon placeholder. If you look at the players, and if you look at the weapon placeholder, which is right here, and make sure you toggle the local space here, you can see that this transform is a little bit all over the place.

**31:49** · And especially it's not constant because remember that this body here animates.

**31:55** · So whenever we use this, this means that we're going to have a variable uh transform. it's going to be a little bit for hard for us to predict exactly and to have like a predictable path for our uh weapon. So, one path that we're going to be doing is we're just going to have um we're always going to instantiate our throne item from a specific transform that is going to follow the player. So, for that, we're just going to add a child node to our player. Ctrl+ a node 3D. And I'm going to I'm going to call this um I think I called it weapon spawn uh position, I guess.

**32:28** · And I'm going to bring this up.

**32:33** · And I'm going to bring this to the right of the player. A little bit forward. Let me see. Uh let's see. Let's do maybe 0.35.

**32:41** · And let's do a little bit higher. 1.3.

**32:45** · So it aligns with the eyesight. And then minus 0.5 should be fine. Okay. So, we'll need to have uh because the equipment is what spawns the um this is the node that actually spawns the weapon. We need a reference as part of our on ready properties to reference the weapon spawn position. So, it's going to the code of the equipment. Scroll all the way to the top.

**33:08** · And here, let's have another variable here. Weapon spawn position. This is going to be a node 3D. Just going to bring this uh here to the bottom so it's alphabetically ordered. And then let's go ahead and set this weapon spawn and pick the weapon spawn position which you have just created.

**33:26** · Okay. So let's go ahead and use that transform instead of uh the weapon placeholder.

**33:35** · Okay. So now if you go over and pick something up and throw it, we now have the object.

**33:42** · Now this is not exactly what we want, but at this it's very predictable. This is exactly the mesh uh you know that we created in Blender with the proper rotation set to zero and so forth. And this is always going to be the case. If you pick it up and you throw it again here, it's going to be very consistent.

**33:57** · So, first of all, you can see that we need to rotate the transform by 90° alongside its X-axis. So, we can do that uh quickly. So, let's go back into the 3D view of the player. Pick the weapon spawn position. And then, let's go ahead and rotate this alongside the Z axis by 90°. So if you press shift uh sorry control uh the rotation will be done according to 15°ree increments. So we should now have a proper rotation here.

**34:23** · If I pick the item and I drop it. Yeah, it's properly properly rotated and and it's ready to go uh and face forward.

**34:30** · It's always going to be facing what what the player is looking at. Um we can try this with the sword as well just to make sure that things look okay. So, back into the level, pick up your pickup all item and quick load the shortsword.

**34:46** · Okay. And when you throw, okay, it's the right position. Okay. So, now all that we need to do is we need to um give it a linear velocity. And we're I'm probably also not going to have it drop to the ground. So, I'm going to set I'm going to keep the gravity scale to zero until it actually hits something. And then we'll set the gravity uh back to one so that it actually stops moving at some point. So we need to pass in the um let's see in the player here uh equipment uh okay so here we have the global transform and we've created it.

**35:21** · Now let's go into our throne item and see if we can add some linear velocity.

**35:32** · So this needs a direction. So we're going to go um straight ahead. So minus global dot uh basis dot uh zed times weapon data dot throw movement speed. Okay, let's try this out.

**35:59** · Okay, and you can see it goes straight and it stops. Okay, let's also remove the gravity. Let's set the gravity back to one whenever we're hitting something.

**36:11** · Let's try this again.

**36:15** · Okay. And it's falling to the ground.

**36:16** · Okay. And then we can pick it back up and throw it again. Oh, you see the weapon here? Go through the wall. I think this is why I had set my continuous collision detection. So go into your throne item uh rigid body 3D and then check this property here continuous collision detection. I think this will prevent it from going through the walls.

**36:38** · Okay, pick it up, throw it, and yeah, it should uh should be good. Okay, and right now it feels very static because there's no rotation whatsoever. We're going to fix this in just a second, but at least it's it's headed in the right direction and it is bouncing off the enemy, which is exactly what we want.

**36:54** · Okay. So, let's go ahead and add a little bit of uh rotation to this. So, inside linear velocity, we're just going to add an angular velocity.

**37:05** · And I believe it should be alongside its x-axis. I guess we'll try this out.

**37:10** · Times weapon data dot throw rotation speed.

**37:16** · Okay. And let's try this.

**37:19** · Pick it up and throw. Okay. Not the x-axis. Let's try the y- axis. Had to be one or the other.

**37:28** · Pick it up and throw. Okay, perfect. So, this is working. Oh, it still went through the wall, huh? So, I guess we'll need to figure something out. Uh, let me try it again.

**37:39** · And we're going to try with the axe after this.

**37:44** · Okay, let's try with the axe. Make sure that everything's okay. Back to the level. Uh, look at your pickable item here. And then let's swap this for an axe.

**37:54** · We should probably have two instead of just playing around with one. Okay. And if I throw it away, it just bounces off.

**38:00** · Okay, perfect. This is working uh exactly like what we want. And you know, with uh a little bit of uh Yeah, I can't get it to go through the wall through the walls again. But I think we'll need to fix this at some point. So if we do see it go through the walls, maybe we'll need to fine-tune a little bit how our physics operate. And there is a couple of properties that you can play around with the jolt physics engine just to make sure that we have uh better collision detection. But so far this looks good. Um our weapon is thrown properly.

**38:31** · The rotation may be a little bit fast for the ax. So I'll let you play around with you know those the resource properties. You can just change them right here and uh and see what what works best.

**38:42** · Okay. I think now we are ready to start impacting the enemies with those thrown weapons. So basically there's going to be two code path happening here. Either the enemy will have a shield and will be able to block the weapon in which case it will behave exactly like bouncing against the wall. Um and you know it'll fall to the ground. The player will be able to pick it back up. Or if the enemy doesn't have a shield or is stunned or is in a condition where they're not able to block, then they're going to get um impaled by the weapon. So the weapon is going to go through them.

**39:09** · It's going to be a direct instant death. and then we'll play with some rectal physics to have the character just fall to the ground. So, we need to figure out how to best place the weapon so that it sticks to the enemy in a way that feels credible. Um, now we already have created a class for a character to equip an item, uh, which is the equipped item class here. And we're going to be reusing this exactly except just the position of the item is not going to be attached to the right hand.

**39:38** · It's going to be uh attached to probably another part of the body. Uh we can actually start by going into the enemy. I think this is a good time to start creating the physical uh skeleton. So if you go into the goblin scene here and click on the skeleton 3D, you're going to have a new menu here uh and you can click on create physical skeleton. When you do this, it's going to create a bunch of physical bones.

**40:03** · Think of physical bones just as another physics body that can uh detect collision. uh that can you know collide with the floor and so forth. This is going to be very helpful for us to fine-tune how the um uh how the ragd doll physics work. Uh but for now the main thing we're interested in is figuring out where we're going to stick the weapon. So uh I think what I did is this bone here, this central bone, the torso is probably the best place to stick the the weapon in.

**40:30** · And then as the player falls down, it'll just follow uh you know as as a child object of this physical bone. it'll just follow naturally the path of the corpse.

**40:41** · So, uh, pretty gloomy. Let's go ahead and right click. We're going to need a reference to this in the code to access as unique name. And then let's go ahead and write our script for our goblin. I'm going to I'm going to rename this to enemy because I think we'll be reusing the same script for the various types of enemies. Uh, if we have time to create multiple types.

**41:00** · All right, let's go ahead and create a class name.

**41:04** · Okay, and what do we want to do? Well, maybe we start uh so first of all, we'll need a reference to this physical bone torso. So, control-click drag into the your scene. And we're going to create a function called uh impel.

**41:18** · Okay, so what do we need for this function? Well, first of all, we need to have the object that's uh impaling the enemy. So, let's have a reference to the throne item. This going to be of type thrown item. Maybe we can start with this and then we'll we'll add additional things at as as needed.

**41:34** · So what what needs to happen when you get hit by a thrown item? Well, we need to instantiate another equipped item and then place it accordingly. So similar to how we had done that code const um equipped item prefab preload, make sure you take the scene object and now we can instantiate it.

**41:54** · So v impulse item and when I instantiate this and then let's make sure we pass the uh the weapon data.

**42:12** · This will make sure that we can generate and render the right mesh. And then let's add it as a child object to our physical bone torso.

**42:24** · Okay. And uh as usual, because we're transforming one type of object into another, we want to make sure we get rid of the original object. So for that, we can just uh clear the throne item.

**42:36** · Okay. And next next we need to go into the throne item code. And then right now we're only colliding with the world here. So let's have um so let's uh remove this underscore here and let's just check if body is of type enemy. And I guess we could have done like character body 3D. That could have also worked. But if it's of type enemy, let's go ahead and impale the enemy with this current object. Otherwise, let's go inside this code.

**43:07** · Okay, so that should work. Let's go ahead and try this out.

**43:11** · go ahead and pick up an item, this axe here, and then throw it against the um the enemy. Okay, so nice hat. So, you can see here that um there are a couple of things going on that are wrong. So, first of all, it's completely resetting the transform. And ideally, we would like the transform to um you know, to basically look at where it's coming from, right? So, if I throw the weapon, I'm going to show it again here.

**43:40** · If I throw the weapon from here, I actually want the transform to remain exactly pretty much what I have right now at the second that I throw it. So, I'm going to keep a uh a reference to the original rotation and I'm going to pass that on to my impel function and I think we'll be able to reuse this. So, uh when we start this, let's create a variable original basis.

**44:09** · This is of type basis.

**44:13** · Okay. And we when we start uh let's go ahead and define it. It's going to be the global transform basis.

**44:26** · Okay. And when we impel let's go ahead and pass this.

**44:31** · So if you go into this here uh basis.

**44:38** · Okay. Okay. And then let's go ahead and uh pass it. So, impelled item dot We may want to actually do this after we add it. Impel item dot uh global transform.

**44:56** · I don't know why it's not doing giving me the static typing. Oh, I need to type here. Equipped item. There we go. Global transform.basis equals basis.

**45:08** · Okay, let's try this out.

**45:12** · So, when I pick this up here, and I'm going to throw it. And there we go.

**45:16** · Okay, so this is exactly what I want. I want it to be attached to the body, the exact same position that it was thrown in. Um, let me see if Okay, let's actually not delete it. That way, we can test it out multiple times. So, let's go here.

**45:32** · Okay, I'm going to throw it here. And you can see here. And I'm going to take it here and throw it here. And it's going to appear behind. Okay, perfect.

**45:40** · So, there's it's almost perfect. There's two issues here. Um, first of all, the location of the uh weapon is needs to be shifted by a little bit. And not just the location, but I think also the rotation, otherwise it's going to be look a little bit uh odd that the enemy gets impelled by this wooden portion here. Um, for the sword, probably going to see the same thing. So, let me hop over and swap our axe for a sword.

**46:07** · Uh, here.

**46:10** · And let's see.

**46:13** · Taking this here. Throwing it. Yeah, you see the location of the sword is also shifted. Uh, we probably won't need to rotate this, but once again, we're going to need something that are specific to each weapon. And so we're going to add additional properties to the weapon data that will help us place the uh the impalement uh position and rotation \[clears throat\] of the objects. So let's go into our script and inside the weapon data, let's add two new properties.

**46:43** · I'm going to call the first one um impel local translation.

**46:50** · It's going to be a vector 3. And \[snorts\] then another one export var impale local trans uh rotation. This is just going to be a single angle um in radian. So let's just say a float.

**47:05** · All right. So let's see. This is our short sword. So our short sword I think the only thing we'll need to do is to move it back by let's try one meter here. And let's save this resource.

**47:19** · And then let's load up our axe.

**47:25** · Tres. And here let's set the local translation back by 1 m as well. And the rotation here I want to say uh maybe pi divided by 6.

**47:41** · So maybe let's try like 0.2. Let's see.

**47:46** · Okay. And let's use these variables here. So whenever we're instantiating the uh impaled object so as part of enemy here uh impelled item dot translate object local and we'll pass the uh impelled item weapon data dot impel local translation. Okay, let me see if I can once again.

**48:13** · I feel like I have a hard time showing the entire code here.

**48:19** · Okay, and then let's do the same for the rotation.

**48:25** · Rotate object local impel item weapon data dot impel local rotation.

**48:34** · All right, let's try this out. Why is it complaining?

**48:38** · Oh, we need to define an axis. And this should be uh alongside the up axis if I remember correctly.

**48:46** · Okay, let's try this out. So for our sword, we're just shifting this by 1 meter. And there we go. So this looks almost too much. So I'm going to shift this by um maybe 0.6 0.7. So, let me go into the short sword here and let me set this to 0.7. Let's try it again.

**49:18** · Yeah, this looks great. I think this is uh this is perfect. It's about halfway through. And if I throw it from here, this looks decent as well. Perfect.

**49:28** · Okay, let's try the axe. And you know what? And let me fix this runs in forall. I'm going to create another pickable object. And I'm going to have an axe here. Pickable item.

**49:40** · Let's bring it. We'll have we're going to create like an armory.

**49:44** · And let's bring it here.

**49:47** · And let's make this an axe. That way we'll always have both when we play test the game. Okay. So, let's pick up the axe. Let's throw it. Okay. And how does that look?

**50:00** · Okay. I think the Huh. I think the location looks okay uh I think the rot the rotation doesn't look too good. Let me increase the rotation a little bit. So go back into the axe. Sorry, I should have tested this beforehand, but uh impel local rotation. Let me set this to 0.5.

**50:23** · Let's see.

**50:29** · All right. How's that look? This looks much better. Looks like it's actually properly impelling the enemies.

**50:35** · Okay, great. So, with that done, we can now destroy the object. We don't need to we don't need it to spawn multiple times. So, back into the script. Let's go ahead and uncheck this line. And then I'm going to pause here for a second so you can read through this if you want to copy uh the script here. So just as a recap, we're basically instantiating the equipped item, locating it at the right

**50:58** · spot, rotating it the right way, and then each item in itself needs a little bit of fine-tuning in order to have like a proper impale position and rotation, which we pass as part of the weapon data. So we made some quick tweaks over the axe and over the sword. So with that working, I think we should now be able to um Yeah. So you can see it looks a little bit odd, but to be fair, once you have like impact and so forth, it's going to be pretty transparent for the user.

**51:26** · So now that we have that ready, we can actually get the enemies to collapse on the floor, and that's going to be a pretty fun uh aspect. So um we're going to start working on the ragd doll physics and uh and that that I think will be it for the episode. I just want to clear out real quick the various uh errors that we have here. So we don't use um or basis is already used. So maybe we call this item basis and \[groaning\] there you go.

**52:00** · Wait, do we have global?

**52:03** · Okay.

**52:05** · Uh and then this function here has no static return types. Needs to return void.

**52:13** · Okay. All right. There we go.

**52:15** · All right. So, we should now be able to start and playing with some ragd dolls uh physics. So, if you go over into the goblin and by the way, you'll see that, you know, all of the stuff that I'm about to do is going to be very dependent on my mesh and the bones location and so forth. So, it may be slightly different on your end. You might have slightly different results, but again, like making the rectal physics work well is a matter of just fine-tuning various properties. Um, so a couple of things to note.

**52:43** · So first of all on the left hand side if you look at what was generated when we created the skeleton using the mesh is a bunch of bones and the parent of that bone is called a physical bone simulator 3D.

**52:53** · Basically this is the main um uh object that allows us to do ragd doll physics.

**52:59** · Um there is a property a function that we can call called start simulation which which will basically start the simation the physics simulations of all of the uh underlying bones here and all each of these bones will behave like a physical body.

**53:14** · and uh and we'll just you know uh uh collide with each other, collide with the world and uh and and be affected by the laws of physics. So a couple of things, first of all, we need to have a reference to this main simulator because we'll be calling this inside our code.

**53:28** · So right click and access as unique name. And then the next thing you'll find is that once we have all of those collision shapes enabled and start simulating the physics body and so forth, um a big thing that's going to come in the way is that by default our character body 3D has this big collision shape. uh this big capsule here and we won't want that to be enabled. We'll want to disable this so that the physics simulation of all the bones actually take over. So I'm going to right click and access unique name. Actually I'm going to rename this to collision shape uh like this.

**54:00** · And we can go into the code and actually um do a very simple simulation. Start the simulation and you can see what it looks like. So uh our player is going to die through multiple means. So here they're getting impaled, but they can also get uh killed by um you know just hitting the spikes or just getting hit multiple times. So we're just going to separate the logic here and have a separate function for the death. I'm just going to call this register death.

**54:24** · And then we'll just call it from the impel function here.

**54:30** · All right. So how do we make this work?

**54:32** · Well, first of all, we're going to need a reference to those two objects that we had. So, here at the top, I'm going to control-click on my collision shape and on my physical bone simulator, and I'm going to drag both of these nodes inside my code. I'm just going to uh order this properly, and I'm going to call this simulator maybe skeleton simulator.

**54:58** · All right. So, as I said, what what do we need to do when uh the enemy uh dies?

**55:02** · Well, first of all, we need to disable the collision shape.

**55:06** · So that's the main uh collision shape that we had set up initially dot disabled equals true. And then we need to um enable the uh the simulation. So for that skeleton simulatoractive equals true. And then we're going to start the simulation. skeleton simulator dot physical bones start simulation.

**55:29** · And here you can see you can actually pass a list of bones that we want to simulate in case you wanted to only simulate the um the physics of a couple of bones.

**55:40** · Let's say the enemy gets um I don't know impelled to like a wall for example and they can only move their feet. You would you would then only specify the feet as part of the array here. But for now we're just going to pass all the bones and we'll just keep it very simple.

**55:55** · Okay. So whenever the player dies we remove this collision shape or we disable it. we and then we enable uh the collision shapes of all of all of these.

**56:04** · So, let's try this out and you'll see how this um behaves by default. I'm going pick this sword here. I'm going to throw it on the enemy. All right. And you can see here, I mean, this this works well. However, you can see how the um all of the bones kind of collapse on top of each other um and the enemy almost feels like uh jello. And this is because by default we haven't provided any sort of instructions to God as to how each of those bones actually behave.

**56:32** · So we're going to have to do and this is where all of the fine-tuning part happens and this is where you will probably see different results than me.

**56:40** · But each of those bones here um we can affect various properties. The first property which is the most important part is the type of joint. And and this is basically a way to create a new set of properties here that will provide abilities for the bones to rotate uh or to have different abilities uh to move.

**56:59** · Um so pin joint, cone joint, hinge joint, slider joint, and send 60 six degrees of freedom joint. Uh, personally for a character, what I found to be most useful was to use a cone joint for anything that was a ball and socket type of um uh of connection. So, typically it's useful for things like shoulders or hips or the neck on our and we're just going to use this for our neck. So, I'm going to go into the head here. I'm going to set the joint to cone joint.

**57:29** · And as you can see, as soon as I set the different type of joint, I now have these uh this helper um indicator here, those gizmos that allow me to understand how much degrees of freedom uh this bone can allow uh the rotation. And inside joint constraint, you can then play around with these properties. So, for example, I think on my end, um mostly I've I've been keeping these down and just playing around with this.

**57:54** · I think for uh for the head I put a swing span of 40° so you can see like it's it's going to be restricted towards the top and then a twist of 20 so it doesn't rotate too much.

**58:10** · And I also set a weight to uh 4 kg.

**58:16** · Okay. And then let's we're going to go over uh each of the other bones one by one. Uh the one other thing I want to do is inside the collision here. So, it is going to be part of uh I think I part of the enemy, but we don't want actually we don't even need to be on any layer. We just want it to um not go through the floor. So, just remove the layer here. I think that should be fine. Okay, let's go bone torso. I think this one I set it as a type uh hinge joint.

**58:43** · So, hinge joint is perfect for anything that has like an angular constraint, which is pretty much default for anything. So that's what we would typically use for like a door hinge or something like that. But it's it's perfect for any sort of other type of joints like the elbows, the knees, um the feet. That's that's what we have most in most other cases. Uh all right.

**59:03** · So hinge joint. And then um I think I put a mass of 4 kg for every bone except for the torso. Actually, this is the torso. So let me set this to 12 kg. Uh and then go into joint constraint and set some angular limits. And I think I set all of them to 25 and minus 25.

**59:27** · Uh, and then go to collision and then remove this layer here. Okay, let's move on to the upper arm. Right, I think I set the mass to 2 kilos. And uh, joint constraint. Oh, let's set the joint type first. So, let's make this a hinge joint. So, 2 kg is fine. Let's set some angular constraint. And similarly, I think I put 25 and minus 25.

**59:52** · Okay, let's move on to the lower arm, right? So, I think I put that to 2 kilos as well. You know, who knows how much weight each of those uh pieces of flesh should actually be. Uh, and then let's make sure we set the joint type to hinge joint. Go over to um joint constraint, set an angular limit, and then it's to 25 and 25. So, I'm going to do this across the board. each of the other bones that we have down here. And I'm going to speed speed up through this, but it's going to be exactly the same setup. It's going to be a hinge joint.

**1:00:23** · Uh everything's going to be about two to four kilograms. Let's see what works best on your end. And then make sure to set the angular limits between 25 and minus 25. So I'm just going to speed up through this as I go through each bone one at a time.

**1:00:46** · All right. So, hopefully you've been able to uh play around with each of the properties and then we can try this around again. And hopefully it should feel a little bit less like jello if I throw this here. Yeah, should see it's it's a lot better. Um so, you can see the physical simulation just keeps going and going forever. Um, this is because we are not instructing it to stop and it's always finding a way to uh continue to rotate. So, we can actually fix this inside the code. We'll probably put a timer after which we'll just stop the physical simulation.

**1:01:17** · Uh, but for now, this actually looks a lot better. Uh, the one part that you may see feel is a little bit awkward is if you go from behind or in front, you'll see that actually doesn't make a huge difference in how the player falls.

**1:01:30** · Um, you can see that here the player is falling exactly the same way as it fell in the opposite direction. And the reason for that is because we're not providing any sort of velocity to the bones, but remember that each of those bones are physical bones. So we can actually apply impulses to them. So that's probably one thing that we can do whenever we're registering the death here. We can um provide some form of impulse.

**1:01:52** · By default, we'll just set this to vector 3.0.

**1:01:57** · And then we can after we kick start the simulation, we can just apply to our torso and impulse.

**1:02:06** · And we're applying it to the torso because the weapons always stick to the torso. That's one way to simplify the game. But if you wanted to go a lot deeper, like you could actually have various simulations for various um pieces of bones and you know in an FPS if you shoot for example the hand, you would actually apply the impulse to the hand bone and then have the simulation according to that impulse. So there's a lot of of things that you can do and play around with here to be a little bit more precise. Uh okay, let's go ahead and specify which impulse we want here.

**1:02:35** · So we know that um see we know that there is uh an impel item here. So maybe we can just uh let's see let's do item basis. So, this is the rotation times vector 3.

**1:02:54** · And uh let's just have a magic number for now. And then I'll just uh I'll just hardcode it after as a constant. And then let's also make sure that the enemy flies up in the air a little bit. Let's try 20 and 20. Okay, let's try this. So now if I take this weapon here and I throw it. All right. And you can see that they're just falling backwards now instead of falling forwards. So that works fine. They're not going high in the air as much as I wanted. So, maybe we need to increase this. Let me try this one here.

**1:03:25** · Okay, there's a little bit of a bug there. Probably because I think it um it collided against this weapon here. We need to try this out again.

**1:03:34** · We go here and from the side.

**1:03:38** · All right.

**1:03:41** · Okay, that's not too bad, but it's not very powerful either. Let me try to increase this to maybe 40. See if that provides a little bit more knock back.

**1:03:51** · All right, great aim. Great aim.

**1:03:55** · All right, let's go. There we go.

**1:03:59** · All right, it doesn't provide a ton of uh knock back either.

**1:04:05** · Maybe because the the bones are heavier.

**1:04:10** · Yeah, let me try to do uh 100.

**1:04:13** · I want to see like some uh All right, this is starting to look better. And then let's how about 100 towards the top. Let's have him fly to the ceiling.

**1:04:27** · There we go. This is feeling much better. Okay. And let's try with the axe and maybe from behind.

**1:04:39** · Okay. All right. Great. Um, okay. I think this is good. The only last thing is maybe we can we can stop it from moving after a couple seconds and then uh we'll have it drop its weapon as well. Making sure that because that looks a bit weird. Uh, for now, maybe in this episode, we'll just uh stop the simulation after maybe two or 3 seconds and then I think we we'll call it for the day.

**1:05:04** · All right. So here, um, we want to wait about 3 seconds after we've, uh, started the simulation here. So, I'm just going to create a timer. Oh, by the way, let's get rid of these, uh, magic numbers here. I'm going to go all the way to the top and let's have a constant for this.

**1:05:23** · Let's call this um, impel impulse or impel intensity.

**1:05:35** · Okay. And we set this to 100. I'm going to make this a float.

**1:05:40** · And let me use this across both the forward and the upward direction.

**1:05:47** · All right. So, after we've started the simulation, we want to wait about 3 seconds. Once again, let's go ahead and have another uh method here.

**1:05:56** · Uh time simulation. \[sighs\] rectal simulation or maybe duration.

**1:06:06** · Let's set this to 3 seconds.

**1:06:13** · All right, back here. So once we have started the simulation, let's go ahead and wait 3 seconds. For that, we can just create a timer in the code that I think it's simple enough. Um so v timer equals uh get tree dot create timer and here we'll just pass uh the 3 seconds that we have. \[snorts\] Then let's go ahead and connect to the timeout signal and let's call this on maybe like freeze fractal.

**1:06:46** · All right, let's create this method here.

**1:06:50** · Okay, so I have to be honest here. I actually have not found an quick and easy way to get all of the bones to sleep uh to to go to sleep. So remember how I was talking about uh how the throne item here has this sleeping property here? You can actually toggle this on or off and this will deactivate all of the forces. This is exactly what we want for the bone um for the bone bodies as well. However, we don't have like the physical bones don't have that property. Uh, I wasn't able to find it.

**1:07:19** · So, you might think that by just stopping the simulation, we should be good to go. But I just want to show you what that does. So, if we stop the simulation here and play the game. So, let's go ahead and and uh kill the enemy and then we'll wait 3 seconds. So, E R K 1 2 3 and then they reappear here. And this is because once the simulation is over, the bones don't affect the the enemy anymore. So, it's back to its original shape. So, that that's not what we want. Um, we can't stop the simulation.

**1:07:51** · We can't just set active to false. All of those things won't work. We actually want each individual bone to go to sleep. And and again, there's no there's no, as far as I could find, there's no way to actually set that um easily. So, if you were to go through each individual bone, actually, let me go through the goblin here. So, you can see the tree on the left hand side.

**1:08:12** · So, the skeleton simulator.get children And let's make sure that we do have a physical bone. So if child is physical bone 3D and varone equals child as physical bone 3D. And here ideally what I want to do is to call sleep or is sleeping equals true, right? But unfortunately the only thing that we have is can sleep.

**1:08:41** · And so basically the simulation will just go on and on and until there is any sort of forces that it gets applied, it's just never going to go go to sleep. So and the the only path that I found was to play around with the various properties to make sure that all the joints were properly placed and so forth and ensure that all of the bones actually end up going to sleep. That's one path. Another path that I found and this is what we're going to be using here is we can actually force each individual physics body to go to sleep by using the physics server.

**1:09:09** · So the physics server is basically this global entity that keeps track of everything that needs to move in your world and you can actually override or enforce a specific state to any physics body and we can force a physics body to go to sleep uh through the physics uh server.

**1:09:28** · So that's what we're going to do. So, um, if you go to the documentation inside physics server 3D, uh, if you go here, you'll see that, um, well, there's a ton of documentation here. The the main, um, the main method that we're going to be using is called body set state, which is right here.

**1:09:54** · And you can see \[clears throat\] the documentation is pretty sparse here, but it does uh require basically two things.

**1:10:00** · Um uh reference ID. So basically every every um sorry a resource ID. Every resource that you're using in your game will have a resource ID. This is kind of an internal identifier that Godo uses just to reference uh every object is like an internal hashmap that it uses.

**1:10:17** · And then you can force the state of for that body. So that's that's exactly what we're going to do. So we'll need to get the resource ID of our bone and then we'll need to enforce the state using this body set state method. So let's get the uh bone resource ID. We can that we can get that by calling uh child.get resource ID and I believe it's type our id. I think this return it already returns it. So that should be fine.

**1:10:46** · And then here we want to call the body set state of the bone resource ID. And then here the state that we're looking for is physics server 3Dbody state sleeping.

**1:11:08** · Okay. And we want to set that value to true.

**1:11:12** · Uh cannot infer the type. Okay. There we go. All right. Let me gosh this this window here. Let me make sure you can see all of the code. Okay, so this is how I found the best way to freeze our ragd doll in place to go through and use the physics server to set every one of those physical bone uh in a sleeping state. All right, so we can try this out. And after 3 seconds, we should now see that the player stops moving. Okay.

**1:11:42** · And I do see that the uh junctions here, my joints are still a little bit too rigid.

**1:11:49** · I think the legs are okay, but the arms definitely don't make sense. So, I'm probably going to tweak this a little bit. I think in the next episode, we'll start off by um removing Is there a collision shape here? Yeah, there's still a collision shape. I think we'll probably want to stop the collision so we can actually go through the enemies, but we also want them to drop their weapons. That doesn't make a ton of sense. I mean, unless they're really attached to their weapon.

**1:12:13** · And then um and then we may play around with various properties of the joints just to make sure that it just feels a little bit more natural. So again, this is probably going to feel very different on your end depending on the mesh that you have. Uh on my end, I think I I set the joint uh constraints to like minus 25° to 25°, which is a pretty small angle when you think about it. So it doesn't allow for a ton of rotation at the joint level. So we'll probably need to fine-tune this for the arms. The rest looks okay. It looks pretty natural. Um, I think the impact looks fine, the legs look okay, the rotation of the head looks fine.

**1:12:43** · I think it's really about um the arms, but let's make sure that, you know, we'll remove the weapon. We'll make sure the collision shapes are gone and all of that uh should should be much better.

**1:12:56** · All right. Well, with our ragd doll system working and both our weapons having the ability to impale and one-shot our enemies, this is going to be it for this episode. So today we actually covered quite a few different topics from ragd doll physics to physical bones and skeletons and so forth. So hopefully all of it made sense to you and you know as usual feel free to ask any questions in the comment section below and I'll do my best to respond quickly. Um as you probably started to notice our code is not starting to scale.

**1:13:24** · We're starting to have like a ton of code in our main player class in our enemy class. uh our functions and methods are starting to grow um to a place where it's becoming very difficult and challenging to actually understand what they do. Let me actually fix this error here once again.

**1:13:40** · Uh bone is declared never used.

**1:13:44** · Oh, I guess there you go.

**1:13:47** · Um so, you know, starting the next episode, we're actually going to be implementing a proper state machine uh for both our player and the enemy classes. And again, we're going to be doing this using the composition meth method so that we don't have any overlap in code and we can properly dispatch the various states to the various um characters. So I'm pretty excited about that. I think uh it will really help clarify the behavior and split it depending on upon what the characters are actually doing.

**1:14:13** · So this will make our code a lot cleaner and pave the way for us to add additional gunpill elements like um new actions kicking the door and so forth and and then just engaging in combat. So otherwise I think the game here is starting to shape up pretty well. Um still a couple of things to do but you know now we have our weapons in our various states and you know implementing our shields is going to be very similar as well. So time for me to thank you so much for your sticking around. I know those episodes are pretty long and it really means the world to me that you're still following through uh them one at a time.

**1:14:43** · So, uh thank you so much for building the game alongside me. And if you do like this channel, if you do like this content, you want to help it grow, please go ahead and press those like and subscribe buttons. Tell your friends about it.

**1:14:54** · Have them join you in this game day of adventure. It's always fun. It's always more fun when there's more people. So, in any case, time to take a quick break and I'll see you in the next episode.

**1:15:03** · Cheers.