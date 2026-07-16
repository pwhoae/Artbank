---
title: "State Machines | Godot 4 Dungeon Crawler [Ep 07/18]"
source: "https://www.youtube.com/watch?v=tyRnhaquM_I&list=PLT26e2jOwbdg&index=8"
author:
  - "[[The GameDev Tavern]]"
published: 2026-07-14
created: 2026-07-16
description: "Learn how to create a 3d dungeon crawler from scratch in Godot!In this episode, we scale our code quite a bit using state machines.Play the final game here: https://gadgaming.itch.io/goblinsdencou"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=tyRnhaquM_I)

Learn how to create a 3d dungeon crawler from scratch in Godot!  
  
In this episode, we scale our code quite a bit using state machines.  
  
Play the final game here: https://gadgaming.itch.io/goblinsdencourse  
  
Having an issue? Download the project for this episode: https://github.com/nicolasbize/goblins-den-course/archive/refs/tags/v0.7.zip  
  
Enjoy your stay at the tavern!  
  
#godot #gamedevelopment #gamedev #tutorial #pixelart #dungeon #fps

## Transcript

**0:07** · Well, hey there traveler. Welcome back to the game dev tavern. Come on in, kick off your boots, warm your feet by the fire, and come join me as we create fun little games together. My name is Nicholas, and this is the seventh episode in the tutorial series where we create a 3D dungeon crawler from scratch in GDAU.

**0:23** · And welcome back. So, in the previous episodes, we started doing a few gameplay elements such as the ability for the player to pick up the sword or to throw the sword. And um down the line, there's going to be a lot of additional things that the player and the enemies will be able to do such as, you know, kicking or swinging their uh weapons, blocking, dying, and so forth.

**0:42** · And the way that our code is currently set up is that most of that logic currently resides as part of the character script. So, either the player script or the anime script. And uh this will make it very challenging uh for us to implement all of those gameplay elements. Um I think everything will start to kind of blend in together into a single file and understanding how uh the player can go from one state to a different state is going to be quite challenging. So in order to better structure our code and scale it up, we're going to start implementing a state machine. Now I like to think of a state machine as just a giant switch statement.

**1:12** · And the idea behind it is that a character can only be in a single state at a time. Um, so for example, the player can either be kicking or they can be swinging their sword or they can be moving. Um, and so the way we're going to decouple the code is that each of those states uh will will be represented by a node which will be part of the player. So we'll only have a single one of those at a time because we can only be in a single state. And as part of that node logic, so inside the nodes code, we will have all of the logic for that specific state.

**1:43** · Um, so this is going to allow us to scale and we'll need to make sure that we only have a single state uh at a time and that we can uh move from one state to a different state by just destroying that state node and then adding a new state node. So you'll see how it works as as we build it. For now, we're going to start by just implementing the very states which we have uh support for, which is just the players movement, picking up things, and then throwing things. So let's go into the player code, and I'm going to start by listing out those very states. Uh, so I'm going to go to the top of my variables here.

**2:18** · And the states that we currently have are moving or picking up or throwing.

**2:24** · Okay. And let's keep track of which state we currently are in.

**2:31** · And we want to start off in the moving state. So as part of the ready function, I'm going to create a new method called switch state. And we're going to go into the state.oving. So it's going to complain because this method doesn't exist. I'm going to copy this and I go down into just below here my input here switch state. And so this is going to take um a new state of type state. It's not going to return anything. Okay.

**2:57** · And what we want to do here is what we want to create uh and add to our player a node that contains the behavior for this uh state. So we currently don't have um that. We're going to be creating it in just a second.

**3:12** · So maybe we can start off by creating a new script. And let's hop over to our scenes and characters player. Let me create a new folder here called state.

**3:24** · And then we'll start with the moving state. So player state moving.

**3:29** · Okay. And this is going to let's give it a class name.

**3:35** · Okay. Okay. And this is going to extend node which means that um as we add this node to our scene to our player scene as a child node it's going to have the uh proc all the processing and signal uh signaling abilities and so forth and it's going to be processed every single time. So for example for the moving state let's see what we can move from the player code. So uh let me go uh inside our physics process and maybe we just start off with this code here. So, I'm going to take this code and copy it and comment it out.

**4:07** · Sorl C and then Ctrl K. And I'm going to go into our uh player state moving and uh let's go into its own physics process. So again, this is going to be executed on every single uh physics frame. And we can paste the code that we just uh copied from the player. Now, it's going to complain because it doesn't have any reference to velocity.

**4:30** · It's not a charact. This is a node, right? This is not a rigid body or character uh body 3D doesn't have any reference to animation player. So basically the child node that we're going to add, we're going to add this as a node to the player object needs a reference to the parent player. And so typically if we were to add this in the in the uh editor, you would then just have an exported variable something like this. And then we could add the node to player and then just specify player.

**4:53** · And then in order to get rid of the of the all of the errors, we would just do um take all of the areas where we need a reference to the players attributes and and methods and then just do player dot.

**5:07** · Okay, so this gets rid of all of the errors. Um and when we add if we're to add it manually inside the editor, if we were to add this node, then we would have to go into the properties and set the player. But we're actually not going to do this through the editor. This needs to be done through the code directly. So we actually don't need to uh export this uh variable. Okay. So if I press F5 now, you see that uh my animation is broken. So if I move around, my player is static. And the reason for that is because we have not added this uh player state moving node to our uh to our player character. So we need to do this inside the code.

**5:39** · So go back to the player script here. And we can get rid of that for now.

**5:47** · Let's go into our switch state. And um okay, so what do we want to do in the switch state? Well, we want to be able to add as a child our um new player state moving node. So, we need to create it.

**6:06** · So, maybe let me do this. Take this here. var state node player state new and we can add it as a child object. Okay. And we want to make sure that uh the player state moving contains a reference to the player. So we can do state node player equals self.

**6:26** · All right. And if I play the game now, you should see that my uh animation works properly again. And the reason for this, if I go into my remote here, you'll see that if I hop over to my character uh right here, it should have this new node. This is the this is our current state. Um and you can see here it has reference to the player itself. And so it executes this every single frame. And so just like that we've we took about you know five lines of code and moved them into the player state moving uh state.

**6:55** · Um so first of all a couple of of additional things that we probably want to consider. We should never be able to create this without having a reference to the player. So probably we want to be able to pass this property as part of the arguments when we create the the state node. So, going back to player state moving, I'm going to create a new init method and I'm going to pass um let's call it source player and I'm going to just set my value of my player.

**7:25** · Okay, so this means that I can never create my node without specifying the player. So, if I go back to my player script here, it's going to complain that here I need to pass an argument. I'm just going to pass self here. So, that way I don't need to uh have this code. You can press F5 just double check that everything is is working properly. Okay, great. So that's working well. However, um here it doesn't matter what we put as part of new state. It's always going to go into the moving state.

**7:48** · So what we want to do is basically we want to check what um what we're wanting to move towards and then create a new node depending on what we want to do. So we're going to have create different nodes for the different states and then depending on the state that we want to switch to, we will go ahead and create an a different node for that. So let's start by creating a new node that would represent the state for when we are uh maybe picking up objects.

**8:16** · So, file, new script, and let's hop over into the player state folder, and then let's type player state uh\_picking\_up.

**8:28** · Okay, I think that should be fine. Let's give this class name.

**8:35** · Okay, so this is going to behave very similarly to the other player state, which means that um well, let's figure out what we need to do as part of the pickup state. So, let's go into the player and see what code we can actually bring into this uh script. So, whenever we're picking up an object here, uh I guess we can take all of this code here and move it into the player state pickup. So, I'm going to um let's go ahead and yeah, let's go ahead and take this, copy it, and go into the player state. Copy and paste this.

**9:02** · So, this is going to this needs to be executed when the node gets added to the player object. So when the node gets added, we enter a function called enter tree. Um, and we also need references to the players attributes here. So once again, we're going to need to have v player player and let's set references here and player equipment.

**9:31** · There we go. Okay. Um, similarly, we should not be able to create this node without specifying the player, which means we should have the init function.

**9:39** · It's going to be very similar to what we had here. So we can copy and paste this here. And as you can see, we already starting to have a little bit of common code between the various state nodes. So actually we're going to be creating a common class that will contain all of the uh stuff that's in common between all of the various states. So typically we cannot start and create a state node without having reference to player. Um maybe we can do that right now. It's not too complicated. And then we'll we'll add on to it over time. So rather than extending node, we're going to create a new base class. So new script and let's call this player state.

**10:18** · Uh should be fine. Class name player state.

**10:25** · Okay. And what we want to do here is take this code that's in common, copy it, and then go and paste it inside our player state. Okay. And now we can just go into the two different states that we created and rather than extend node, we can extend player state and then get rid of this code here. Okay. And we'll do the same thing for the player state picking up. We'll get rid of this and we'll just extend player state. Okay.

**10:50** · This is just a nice and handy way to use um uh to use a common uh base method.

**10:57** · Okay, so we now have logic for picking up an object. Um, so let's figure out now how to uh go into this state. So if you go back to the player script, uh, right now we go into this, we should go into this picking up state whenever we are picking up an object. But this really should not leave here. This should be part of the moving state. This is only something you can do when the player is actually able to move.

**11:24** · So I'm going to take this code and cut it and go into my player state moving. and we're going to paste it. So, it was part of the uh process function.

**11:36** · And I'm going to paste this here. Okay.

**11:38** · And once again, we need to make sure that we fix the references to uh player.

**11:44** · All right. So, this should work. Uh player.pickup object here. Right now, this code um needs to be part of the player state picking up. So, maybe we just remove this here.

**11:59** · Go back to player state moving. And then here we request to switch state to player.state dot uh picking up.

**12:12** · All right. And this I believe should break. And the reason for that is when we switch the state, uh right now we're still only referencing the moving state.

**12:22** · So we need to figure out which state we want to instantiate here. Um, an easy way to do this, I think we can create like a a hashmap, a dictionary that references the various states that we have. So for state.moving, we'll want to use the player state moving class. For state.picking up, we want to use the player state picking up class.

**12:48** · Okay. And then the state node is going to be state map new state. So whatever we pass as an argument new uh it cannot infer. Okay. And I think this is as player state.

**13:07** · Okay. And the second problem that we encounter here is that as we switch states from one state to the next we just keep adding them to the player uh root node. So this means that we break the first um constraint of a state machine which is that we should only have a single state at a time. So for that, let's go ahead and rather than um rather than create this node here, we're going to keep track of the state node that we create and we add to the player.

**13:33** · So let's go over to the top and I'm going to um keep a reference to our state node. So this is going to be of type player state. This is the the node either the player state moving node or the player state picking up node. And then let's double check first whether we actually have something that exists here. So maybe before we even create it if state node is not null then let's go ahead and remove it.

**14:02** · Okay. And that way uh that way we'll we should not have any issues here. Okay. What is it complaining expected end of statement?

**14:11** · Oh we there we go.

**14:14** · actually because we already defined the type up above, we should be good to go.

**14:18** · Okay, so I think this should work. But let me just uh let's double check. So F5 and I if I go to my uh weapon and I press E, I now have the weapon in hand.

**14:28** · So let me look at the um uh let's see, maybe we can print a statement here to say that we transition state. Print transition state 2.

**14:43** · And then here let's call this uh new state dot uh is there such thing as a name? Let's see in a value. Okay, let's just let's just do it like this. Uh a str want to have like a representation to what we transition to. Okay. So if I look at my output window here and I pick this up and I drop it and press alt4.

**15:17** · Okay, transition state to zero which maps to our first state player state moving and then transition state to one player state picking up. And if you look at the uh remote here I'm going to go over to our character.

**15:32** · Okay. So you can see here this node here represents the moving state. And if I go into here and I pick something up, you're going to look on the left hand side. You should see that this node gets uh disappears and then gets replaced by something else. Here we went from node 4 to node 5. Okay. And just like that, we're able to move uh a lot of the logic that we had in our player. Well, some some logic that we had in our player over to our various um state nodes. And again, this is going to be super handy for us to um to be able to to uh scale our code upwards.

**16:03** · So, one thing there's a couple of things that we'll still need to fix here. The first thing here is that um the the child node are calling methods on top of their parent. And this is not something that we want to do. Um typically what we ideally do is use signals to communicate to the parent node that we want to make some changes.

**16:22** · So we're going to be using signals for the state nodes to communicate to the player itself. And then the other part is uh this is going to become pretty big overall. And so I don't necessally want to have all of this code as part of the player. So, we'll probably have a handy utility function that will make sure we're looking into the right state um when we're creating these nodes.

**16:46** · But let me just make sure that you know everything makes sense. So, right now uh let me go back and and look at the code again. So, we start off by switching to the moving state. What happens when we go into the moving state is we check if we already have a state node as part of the as a child of the player. If we do, let's get rid of it. Otherwise, let's figure out which state we want to transition into. which means which node we need to add as a child object which will contain the behavior for that state. So when we initialize the player we want to go to the moving state.

**17:12** · So that means we're going to instantiate this player state moving class and this node we're going to add it as a child object to player. So when we go into player state moving well this now contains the logic. So this is going to be executed as long as this node here is a child object of player. And so this means that we can actually go and only do pickup when we're moving. And that's a really good um way to restrict how often we should be picking up objects.

**17:40** · And then in terms of the animation player here, this is what gets executed when we're moving. When we are picking up something, we want to transition to a different state. So what happens here is that first of all, we'll get rid of the moving state node. Uh we'll remove it from the from the tree and then we'll go ahead and instantiate our player state pickup node and add it as a child node to the player. Which means that now this node gets executed. And when it enters the tree, this is where we generate our new mesh and and execute all the logic that we had created earlier. So hopefully that makes sense.

**18:11** · Um we're going to be implementing a ton of various states over time. So this is going to become a very common pattern and you'll see that um it's it's very easy to implement uh new states down the line. So let's start by defining this signal that we will use in order for the child objects to communicate to the parent. Let's go to the player state and define the signal here. And I'm going to call this transition requested. I think the the common uh convention here is to use the past tense for what is happening.

**18:41** · And then we'll just want to pass the new state which is going to be of type player.state.

**18:47** · Um and maybe we just do a handy function here called transition state.

**18:54** · New state player.state which is just call this uh signal Okay, that way um all of the all of the nodes that inherit from player state can just call transition state. And we may want to do additional things other than just adding the signal here. So let's going back to our player state \[clears throat\] moving here. Rather than calling uh player switch state, we're just going to emit the signal.

**19:22** · So the signal is going to be emitted by calling the method transition state player.state.picking up. Okay, so this is great except now we need the player to understand and listen to that signal.

**19:37** · So whenever it's creating this new node here, we need to be able to um listen to the transition requested signal and we're going to connect to that and it's going to go exactly back into the switch state uh function. Right? So whenever we emit the signal um transition state then we are going to come back here and create all of this. Uh I think this should work.

**20:03** · A couple of things I think uh let's give this state node a proper name because I think right now in the code when we're looking at the explorer it wasn't ideal to just have like node at four node at five. I think we can do a little bit better than that. Let's give this a name and maybe we call this state and then uh let's find the keys and I believe this should be actually the string of the key.

**20:33** · So this should be moving or picking up here and let's also make sure given that inside the player script we are keeping track of the state here. Let's make sure we keep that in place as well.

**20:48** · So, state equals new state. Okay. And I think we should be good to go. Let's try this out.

**20:59** · Okay. And I can move. And you can see that the animation is working well. And I'm going to go and look into my remote here. Level player.

**21:09** · And at the bottom, you can see here that we are in the state moving. If I uh press E, I should now transition to the state picking up. So, I'm still picking up things, by the way. So, we're going to need to transition back into the moving state. Um, but right now, you can see how much more cleaner this code is.

**21:27** · Um, the only thing here I'm not too happy about is having this to grow to a huge number of state, but that's okay.

**21:33** · Maybe we'll maybe we'll put this into a different class. But um yeah, so far I think we have two states that are looking pretty good and we'll be able to over time just move more and more code outside of the player script into those various state scripts. So right now it's a little bit hard to know whether we are actually in the right state unless we're looking at the uh inspector in the remote. Uh and so maybe one thing we can do just to make sure that our code is correct is to uh actually prevent the movement if we're in the picking up state. So the movement is happening all here.

**22:02** · So maybe I'm going I can start by taking this code and I'm going to uh cut it.

**22:09** · So remove it from the global physics process of the player. Let's create a new method called process movement.

**22:17** · I'm going to paste my code here. And I'm only going to call my process movement from the states where I want the player to keep moving. So here in our case, we'll just want to do this as part of the moving state. So in the moving state here, I'm going to have in my physics process a player process movement delta.

**22:37** · Okay. And because we are not transitioning back from the picking up to the moving state. What should happen is that as soon as we start picking things up, well, we shouldn't be able to move anymore. So here we're in the moving state. So that means I can process the movement. And then as soon as I start picking something up, then you can see here my movement is not captured anymore. I can't move anymore.

**22:55** · So this will ensure that you know our code is correct. We want to make sure to transition back into the moving state.

**23:00** · So, let me copy this line of code here.

**23:02** · Go into the picking up. And after we've picked up the item, let's go back into the moving state.

**23:09** · Uh, press F5 and let's try this out.

**23:14** · And now I have full control again. Okay.

**23:17** · So, this, you know, this will be a little bit more helpful. That way we don't need to look at the remote view all the time to make sure that we are looking at the right state. Um I I think uh maybe we still want to keep moving when we're picking things up.

**23:31** · Maybe we make some changes to uh the movement. But so far I think this method here might be called for multiple states. So that's why we are not putting this as part of the process state moving. I think when we're kicking for example, we still want to uh be able to process the movement here. So we'll just be calling this process movement from all the states that can support the actual uh movement.

**23:52** · Okay. So, now that we have the foundation for the various um states, I'd love for us to try out a small challenge. We implemented two states, moving and picking up. And there's a third state that we implemented, which is to throw the weapon. And I would love for you to try to see if you can actually create this state from scratch on your end. So that means creating a new node, inheriting from player state, and then figuring out what needs to happen, what part of the code of player needs to go into that state, and then making sure that we're transitioning properly between the various states.

**24:23** · So if you want to take a few minutes and try this out on your end, uh that would be fantastic. And then um after you can come back and check on my solutions. Uh just before we do this, I do like to clear out all of my uh errors here. So this is not being used. We just use underscore for now. And this one is not being used either. So I think we should have cleared out all of the issues here.

**24:43** · All right. So take a few minutes, try to see if you can uh add this new third state and then come back and uh double check your solution with mine. All right. So let's start by creating a brand new uh script. We're going to go again inside the player/state folder.

**24:57** · Let's call this one player state uh throwing and give this a class name.

**25:07** · Okay, let's also inherit from player state.

**25:10** · And then let's think about what code we need to move from player. Uh so right now the only uh logic for throwing is happening here as part of the process method. So we can actually take this code and put as part of the moving code.

**25:22** · So I'm going to cut this and inside my moving code I can have another line for whenever we pressing the throwing key. So again we need to specify the player equipment.

**25:35** · And this time we're not going to throw the weapon directly. We're going to transition to our throwing state. So, uh, state.throwing.

**25:45** · Okay. And I'm going to cut this code.

**25:48** · We're not going to use it for now. So, let's go into the throwing. Uh, let's go into our player here. And down at the bottom, when we switch states here, we're going to need to have another reference to the new class that we created.

**26:06** · Okay. Okay. And then let's go into it.

**26:08** · And what happens here? Well, whenever we enter the tree, this is where we'll want to uh throw the weapon from our player. And then once we're we're done with this, we just want to transition back. So, transition state into our player.state moving.

**26:25** · Okay. And that that's it. So, you might think like, okay, well, this this is a lot of moving code around for nothing.

**26:31** · But actually, down the line, we're going to be introducing new animations. So, it's not just about throwing the weapon.

**26:36** · We'll want to make sure we play the animation. We'll only want to actually execute this line of code after the animation has has finished. So, there's going to be a little bit more code inside this state and a little bit more code inside this state as well. Um, not everything is going to be uh part of the moving state here. So, let's go ahead and uh try this out and then after I'll go back over the code so we can review it together. So, here I'm going to go over and pick up my sword and then R to throw. And now I'm back into the moving state. Okay. And um so this works properly. Let me just make sure that we are following along together.

**27:06** · So I created a new node, a new scene called uh player state throwing, sorry, a new script player state throwing which inherits from player state. The only thing that it does is when the node gets added as a child object of player, we're just going to throw whatever weapon the player has and then we're going to transition back to the moving state.

**27:24** · Okay, so as part of player, we want to make sure that the player knows how to initiate this new node. So we're adding it to our dictionary here. We're creating the node, connecting the signal, and then adding it as a child object. And we're making sure that we're deleting the previous uh state, which on our hand is going to be the moving state, and then we're transitioning right back into it. So, a lot of nodes that get added and removed just to represent the state management. And this is perfectly fine. Like goodo is perfectly fine just creating and removing nodes on the fly.

**27:51** · The only thing that we may see down the line some issues with is here we're basically deleting nodes and adding nodes at the same time. Sometimes goodo can complain and request us to add the child node in a different frame. Uh so far I haven't seen these errors but we may we may get there down the line. So okay so this all looks good. Again the fact that right now it doesn't contain a lot of code kind of makes this a little bit meaningless. So what we can do is just a little bit of visual polish. We can go into Blender and create some animations for picking up and throwing objects.

**28:21** · And we can come back to our code and and just polish that uh a little bit more.

**28:27** · All right. So back into Blender. I open up my character.bplend file where I have my character and my armature. And we're going to keep things extremely simple here for the throw weapon animation and the pickup animation. So uh for that, let's hop over into the animation uh tab and select the armature here. Um and you want to make sure that you are in pose mode. And let's see the run loop. I see we're missing the um fake user here. So I'm just going to press this again just to make sure we don't override any of those animations.

**28:56** · I'm going to hop over into the default animation and I'm going to duplicate this animation. I'm going to call this throw weapon and we're going to make this about uh maybe six frames long. It's going to be pretty straightforward. Uh so for that I'm going to um let's go and select all the bones and then shift D to duplicate the frame. Let's go to frame seven and then let's go starting at frame three.

**29:22** · Uh what are we going to do? So, let's make sure that you have the rotation uh set to median point. And let's rotate some of these bones here. So, maybe something like this.

**29:34** · And then uh something like this. Maybe rotate it a little bit like this.

**29:46** · Okay, that should be good enough. Maybe I I bring this down a little bit. Let's go to frame five. And I'm going to bring this to about here.

**29:59** · And this one just down about here.

**30:04** · All right. How does that look? I'm just going to press space to play. And that should be good enough. Um, so that's that's going to be our throw weapon animation. All right. Just make sure to persist it. So click this shield here, press save, and we can start to import this back into GDO. and then I'll have you go through the exercise of doing the same for picking up an an item. So, uh, for now, let's go back into the layout tab.

**30:26** · I'm going to select my armature, select shift, select my mesh, control S to save, file, export, gltf, make sure to go back into the meshes, characters, character.blend, and then if you restarted Blender, then all of your options are reset. So, just make sure to only export the selected objects. Make sure to um apply the modifiers and make sure to export the do deformation bones only. Okay. Make sure you also have the animations checked here. All right.

**30:53** · So, now that this is exported, we can now go back into GDO and we have access to this new animation to throw the weapon. All right. So, back into GDAU, we should now have the animation um exported. And if we hop over to our character and its animation player, we should now see this new animation called throw weapon. And if we zoom in here a little bit, should be able to see the animation in motion.

**31:15** · Okay, let's see what that looks like in the game. So, for that, I'm going to go into the script. And whenever we're throwing the weapon, this is where we'll want to play our animation. So, rather than just throwing the the weapon right away, I'm going to play the animation.

**31:26** · And then I'm only going to throw the weapon once the animation has completed.

**31:29** · So, for that, let's go ahead and hop over to our animation player and play our animation called throw a weapon.

**31:38** · And let's also hook ourselves up to the animation finished signal on animation finished.

**31:50** · Okay, let's create this function here.

**31:53** · I believe that this has uh the animation name as a string. So anim name. I actually don't think we're going to be using this by the way. So let me just use an underscore.

**32:05** · Okay, what do we want to do? Well, this is where we want to actually throw the weapon and transition into a different state.

**32:12** · All right, so let's try this out. So, as you can see here, we have a little bit more logic inside the throwing state.

**32:16** · And over time, we'll just we might have even more and more logic. So, it's always good to have that in its own node in its own uh current state. And that way, it doesn't pollute all of the code from the player code. So, let's go ahead and try this out. But go ahead and pick up my weapon here. And I should when I throw, I should see the animation. And after I'm done with the animation, then the weapon uh actually gets thrown. So, it actually looks a little bit better.

**32:40** · We might want to polish this a little bit. Uh you can see that it does it does appear a little weird. Okay, I did lose my weapon again. So, we'll definitely need to debug this at some point. Um but yeah, like it's uh it's working pretty well. And uh maybe one frame. There's just one frame that just feels a little bit odd, but that's okay. Uh for now, I think this is uh this is going to be good enough. So, what I'd love for you to try to do now that we have um done this is do the same thing with the picking up the object. So, right now, if you pick up the object, you can see that, you know, there's no animation whatsoever.

**33:09** · And maybe we'll just have the hand go down towards the ground to pick up something. And after the animation is completed, then we would start animating the weapon towards the hand. So, if you can if you want to try to do this, it's a good exercise. It will have you go into Blender, create a brand new animation, um, save it, export it properly, come back here, and then hook it up to our state, which is going to be our player state picking up. Um, so try to do this, spend a few minutes, and then let's compare what you have with what I have. All right, so let's go through the exercise together.

**33:38** · I'm going to hop back into Blender, and um, let's go ahead and select our armature once again. Let's go into the animation tab.

**33:46** · And, uh, let's start off by looking at our default animation. We're going to duplicate this. Let's rename this to pick um yeah, pick up, I guess. And same thing. It's going to be very short. I'm going to select all my frames and uh start by duplicating my frame into frame I think six works fine. Um the reason, by the way, why I duplicate this is at the end of the animation, I just wanted to go back to the um the original frame.

**34:14** · So that way there's no jaras between animations. The transition is um is pretty seamless. There's actually a better way to do seamless transitions between animations using animation trees. Um, we're not going to get into that in this tutorial series, but we can get around this by just making sure that the animations kind of connect together um as they go from one animation to the next. Um, so here we're just going to go over to frame maybe frame three.

**34:35** · And then let me rotate this uh bone here and maybe this bone here so it reaches towards the bottom and something like this. All right. How does that look? We can even scale this down, by the way, to have like the arm appear a little bit bigger.

**35:04** · And you can see it almost looks a little bit exaggerated, but that's perfectly fine. I think, you know, the the cartoonish aspect of it. Um, so that should work. Let's try this. Um, okay.

**35:15** · So, it's picking it up and it's coming back down. All right. Uh, let's go ahead and make sure we don't override this animation. And then let's go ahead and export it. So, go back to the layout, select your uh, skeleton, your mesh file, export, gltf, and export it inside the character. So, now let's go back into GDAU.

**35:38** · All right, we should have access to this new animation here called pickup. And similarly inside our player state picking up, what we'll want to do is play this new animation. So it's going to be very similar to the code that we have here. Uh we could potentially copy and paste this code here.

**35:58** · So when we enter the tree, we want to play the animation called pickup.

**36:02** · And when we're done, we want to go here where we're actually going to be picking up the uh the object. I actually think we don't need to wait until the animation is finished to actually start moving the um the object. So maybe what we do is let's bring this code here.

**36:22** · Uh but we only want to transition back to the moving state once the animation has completed. But that way we can already start equipping the weapon as soon as we enter this state. Okay, let's uh try this out. So F5 and go towards the weapon and look at our hand here. We should see the animation uh of the hand.

**36:39** · Just go towards the weapon. It just looks it just looks a little bit better.

**36:42** · I mean it's not it's not a huge difference, but you know, good enough.

**36:45** · It's a lot better than just having no movement at whatsoever on the hand.

**36:49** · Okay, so with that done, um this just teaches you a little bit about how powerful the state machine can be by just um making the code a lot more scalable. Now we have created a state machine for a player and uh as you can imagine we're going to need one for our enemies as well because right now the code for the enemy is uh also going to start to scale up and right now it contains a lot of things that are not necessarily tied to all of the states.

**37:13** · So for example like this is going to be a very specific state this one as well and so there's a a great challenge that I want to commit to you which is to um actually create the state machine for the enemy. So, I know we created a new state for the player, and this was, you know, already a bit challenging, but I would love for you to try this out. It's going to be very similar to the player state. Um, you're going to have to create a an enemy state. You're going to have to list out the various states that the enemies can be in and then figure out how to transition between one state to the next. There's going to be quite an involved challenge.

**37:44** · Um, probably will take you about 15 to 20 minutes if you've, you know, understood well all of the stuff that we've done so far. But again, this is something that you will be using all the time. Literally, in every single one of your games, you will be using state machines. So, understanding how to properly uh implement them and how to properly transitions between state is just going to be so valuable. So, if you want to try this out, take, you know, 15 20 minutes, try to implement a state machine for the enemy. And once you're done, just come back here. We can compare our solutions.

**38:11** · And if you don't want to do the exercise, just wait a couple seconds until we do it all together. Um, and then this will be it for this episode. So you'll see that in this episode we haven't implemented a whole lot of new things. Uh we've basically mostly just moved the code around, but this is really just strong foundation for us to be able to scale our game up and be able to add a ton of additional gameplay elements. All right, so that being said, try to do the challenge and uh and then compare a solution with mine. All right, so let's get started. So we are going to start with listing out all of the various states that the enemies can be in.

**38:42** · So there's a couple of different states that the player is not in. So I'm going to just uh enumerate this here. So we can be in a moving state, we can be in an impaling state. Uh this is basically going to be this code right here. We can be in a dying state. So this is when um we're activating the simulation, but we're not completely frozen yet. And then we can be in a dead state. Uh this is where we've completely frozen the uh the ragd doll physics here. So as you can see, for each of the state, we'll be moving the code around in each of the four uh state nodes. Um, okay.

**39:12** · So, we have that uh working. Let's go ahead and create all of our state nodes. So, file, new script, and let's hop over into the uh enemies. Let's create a new folder called state.

**39:28** · And here, let's start with the first one, enemy state moving.

**39:33** · And I think this one will not do much.

**39:36** · Class name enemy state moving. Oh, we'll need to inherit from a common enemy state class. So, let's go ahead and create that one right now. file new script uh inside enemy state enemy state.

**39:53** · Okay. And we can look at our player code. It's going to be very similar. So I'm going to hop over to the player state here and we're going to um call out the same signal except we need a reference to the enemy itself. And then the rest is going to be pretty similar.

**40:05** · So actually I can copy this here and hop over to the enemy state class and paste this over. Now you may wonder every time we copy paste code around it's always a good question to ask ourselves like is it worth having like a common class for these things again between the enemies and the players I do want to advocate for um for doing common grounds through

**40:28** · uh composition models so rather than have like a single uh common character state class which I think could potentially work and you know you feel free to try it out on your end I think it's always better to just uh share classes by just adding various nodes to the other objects. Okay, so enemy state.

**40:44** · Uh we're going to move into an enemy state.

**40:48** · This is going to be a reference to the enemy.

**40:55** · So enemy is going to be of type enemy.

**40:57** · And then let's just rename these.

**41:04** · Okay, so this is looking fine. Let's if we're or to go back into the enemy code.

**41:10** · Um, again, we're going to have a couple of things that are similar to the player code. So, if you remember what we did, we needed to keep reference to the node that we add to the object. And we need to keep reference of the current state.

**41:19** · So, let's go ahead and do that for the enemy as well.

**41:26** · Uh, except this is going to be an enemy state.

**41:30** · Okay, back into the player code, we also going to use So, we're also going to have this code here. We're going to be moving to the uh moving state. And so we go back into the enemy ready function. Let's go into the moving state. It's going to complain because this method doesn't exist. Let's go and pick it up from the player scripts right here and back into the enemy. Let's create it just below here.

**42:01** · All right. And this is going to complain because of course we don't have any of these player states. So, for now, we're going to map these to enemy state moving. That's the only one that we have. Um, and we'll be creating additional state classes after. So, I think this the rest of this code here should be fine. And again, this might, you know, you may wonder like, hey, is it worth kind of sharing uh with the player and have like a single character uh map? Feel free to try it out. Again, I do think that it's uh it's absolutely a possibility. Okay. So, what do we want to do inside this moving state?

**42:29** · Well, I think the only thing we'll want to do when we enter the tree here for now is just to play the idle animation. So, enemy dot uh animation player dot play animation idle. I actually don't know that we have a reference to the animation player. Uh oh, we need to inherit from enemy state.

**42:51** · Uh let's see our enemy here. Let's rightclick. Uh we can't access as unique name. Let's go ahead and reference it in our script code here.

**43:06** · I'm going to click and drag.

**43:09** · Okay. And so now if I start, we should be able to move into uh this moving state. It's going to be hard to see, but okay. Let's see. Enemy. Player dot.

**43:21** · Is it play? Just play.

**43:24** · All right. There we go. And now it's playing the uh the animation. And okay, let's uh let's try to implement the other states. So the next we want to build is the uh impaling state. And once again, we're going to be taking this code over. So let's go ahead and create a new script inside the uh enemies state enemy state impaling.

**43:55** · Okay. it needs to inherit from enemy state.

**43:58** · And once again, once we enter the tree, so once the state gets added to the tree, we want to uh take this code here, and I'm just going to copy it for now, and bring it over here.

**44:12** · Okay. And once again, here we're going to need to bring a couple of references and map uh some of these things to the enemy. So going back to the enemy the equipped item prefab, we can take this code here. I'm going to copy it for now.

**44:27** · I just want to show that we can still compile the various files here. Okay, so this gets rid of this error. And then impel itemweapon data equals thrown item.weapon data. This is um this is actually um a little bit of a problem that we're going to have to drill into here. So register death here, we want to do enemy.register death for now. And the problem here is that whenever we're passing that function uh impale is we have some arguments here that are useful for us to actually do the proper impelling.

**44:57** · And what we're doing when we switch the state is we're basically just adding a new node and not passing any information to that node and then we're expecting that node to behave properly.

**45:09** · So here when we enter this tree we expect this node to be able to do everything properly. The problem is that this node doesn't have any concept of the impel item and any sort of the physics and so forth. This going to be enemy. Uh and so we need to pass arguments to this state. And this is something that's very common whenever you transition state from one state to another. You might want to be able to pass some data and some information so that the new state that gets called knows how to behave itself. And right now there's no way for us to pass uh information down.

**45:39** · So you could potentially have like some variables here and then um inside the enemy whenever we're going into that impaling state you could pass state node dot and then you could add those the value for those properties. But a better way to do this is um whenever we're switching the state and we're going into an enemy state is to allow these enemy state to have um a global data object here that uh we can we can fine-tune and that we can use to pass in properties across the various states.

**46:09** · Um so for that I'm going to start by creating a new file which is just going to be a data object. So inside enemy/state, I'm going to call this enemy state data.

**46:22** · And we're not going to extend node. We don't need that. This is just going to be purely a data class, almost like a resource class. Class name enemy state data. And for now, the first thing that we're going to be doing is we're going to be passing um so we need the throne item information and we need the item basis. Right? If we go back to the enemy code, whenever we do the impale, we basically need this information to be passed to the uh to the impale state. So let's go back to our data and we're going to add uh these two items.

**46:49** · So thrown items is going to be of type thrown items and then item bas is going to be of type basis. Maybe we call this thrown item basis. That makes a little bit more sense. Okay. And so we can instantiate this uh file. we can um add values to these objects and then we can we're going to pass this uh into our state. So our state here whenever we create it we're going to have the ability to pass in our state data.

**47:16** · So state data it's going to be of type enemy state data and then let's pass in some data. Let's call it source data.

**47:30** · By default we won't need to uh create anything. So enemy state data do new.

**47:36** · We'll just create like an empty object.

**47:38** · Okay, let's make sure we pass it off.

**47:39** · So, state data equals source data. Actually, I'm not sure that I want to keep state data. I'm not a big fan of that name, but um yeah, let's it's okay. Let's keep that for now. And when we transition the state, we also want to have the ability from one state to pass information to a different state. So, let's also have the ability to do this. I'm going to copy this argument here and paste it here. So by default if you don't specify anything when you call transition state it's going to just create an empty data object here. Okay. And let's also pass it in as part of our um signal.

**48:11** · So here I'm going to have a source data enemy state data and I'll pass it on here.

**48:25** · All right. So basically now whenever we create this enemy state node we have the ability to pass in uh a data object and we're going to we're going to add a bunch of variables in there and add in uh various things. So if you go back to the enemy code now whenever we switch states um we should also have the ability here to pass in some data. So I'm going to paste once again. Uh may I'll call just this data.

**48:49** · And when we create our new object, we're going to also pass this data object here. Okay. So once we are inside our player state and we create a new object, we'll pass in the data. All right. So, now that we have the ability to pass data around, let's go ahead and ensure that when we um impale the the the enemy that we're able to pass in all of this information here.

**49:15** · So, inside our uh impaling state, so now we should have access to this thrown item because now it is part of our state data dot thrown item.

**49:27** · Okay. And similar here, this is going to be thrown item bases.

**49:32** · um thrown item.

**49:35** · Q3 and enemy register. Okay. And then this is thrown item basis.

**49:43** · And it's complaining because it doesn't understand impel intensity. So let's go ahead and bring that code over from the uh from the player script from the enemy script.

**49:56** · All right. So I believe that this should now resolve all of the issues. So if we go back to the enemy script here, we can get rid of this line and of this line.

**50:05** · And then if we go into the impel function here, the only thing we need to do is to switch states to the enemy.state dot impelling. And here we're going to pass in a data object that contains both of these things here. Um, so let's create it beforehand.

**50:23** · So var state data equals enemy state data new and state data dot thrown item equals thrown item state data dot thrown item basis equals item basis. Okay. And now we can pass in that state data information. Okay. We can get rid of the rest of these lines here.

**50:52** · All right. Um, let's go ahead and press F5 and test this out and see if the enemies is actually going into the proper state here.

**51:02** · All right, so it is complaining. Oh, we forgot to add it to our dictionary. So, let's go ahead and do that. State impelling enemy state impelling.

**51:12** · Let's try this again.

**51:14** · And then I'll go back to the code and we'll just take some time to review it together. And there we go. So, it got impaled and now the enemy is stuck in the impaled uh state. Um, all right. So, let me just go over the code one more time because we did add a little bit more content here than we did for the player. We'll actually need to do something similar for the player because some of the states will need to pass information. So, um, before we're just switching to a new state, but the new state had no way of behaving correctly depending on, you know, various constraints, external constraints.

**51:42** · So now we're able to not only go to a new state, transition to a new state, but also passing a data object. This is just a plain and simple object that contains various properties. And we there's actually a better way to write this that we'll go into in just a second. But for now, just know that we have the ability to create our new state node. And we're also passing in that data object. And then whenever we go into the uh enemy state, we also have the ability to transition between states and pass in some data information. So this is just going to be very useful down the line.

**52:14** · And the way that we're using it initially is that inside the impaling state, we're able to pass in some of the data that we need to use in order to know how to properly impale the um the enemy. All right, so hopefully this made sense. Uh I'm going to just pause here for just a little second and go back again over the code so it all makes sense. Um, so this is the enemy state code where which looks very similar to the player state code except the only difference is we have the ability to have some additional state data.

**52:40** · And then inside our moving state, we're just playing the idol and start our impaling state. When we enter the state, we're basically just duplicating the code that we had inside the enemy. Um, but we're also passing the right data information.

**52:55** · All right, so hopefully that made sense.

**52:57** · And we're going to do something very similar for the um uh for the dying state which is when the player here enters this code here. Uh but before that, so it's a bit of a pain right now to have to create the object and then uh set each of the properties individually.

**53:14** · So there's actually um a different paradigm or pattern that we can use called uh fluent interface which allows for something called method chaining.

**53:23** · Let me just show you uh briefly what it looks like. Um it's not very complicated. Basically, in order to set each of these properties, we would create a different method for each of those. So, set thrown item and then source uh throw an item.

**53:39** · We would always return the enemy state data and then let's go ahead and set this and return self. Okay, we'll do the same thing for the item basis.

**53:51** · set thrown item basis and let's call this basis.

**54:01** · All right. And what this allows you to do now if you go back into the enemy is you can uh not only just create a new object here, but you can automatically chain all of your code directly. And you know this allows you to write everything in in one line, which can be help can be helpful from time to time. Uh set through an item basis. And here we're going to set the item bases. But to be honest, I I don't know if it's that that different. Um so yeah, we we wouldn't even need to create this object. You could just pass that argument directly here. It's exactly the same code.

**54:30** · I mean, it's just a nicer way to um to handle these data objects. Um so again, this is called method chaining. And uh and having all of the classes and methods as part of this enemy state data return self means uh that it's it's called a fluent interface. it allows you to do some method chaining. Anyways, that's just a quick detail. So, if you want to try, if you haven't been able to um write the state for the dying state, I think this would be a great opportunity.

**55:00** · It's going to be, I believe, very similar to what we did with impel because, as you can see, when we call register death, we actually need to have a property called impulse. So, we need to add that to our enemy state data. So, if you want to take a couple minutes, try to do this. try to add this uh third state and make sure to not forget to add it here in our uh state map dictionary.

**55:23** · All right, so hopefully you're able to try this out. So let me go ahead and do this. I'm going to start by creating a new class um file new script uh into the enemy state. I'm going to call this enemy state dying.

**55:41** · Okay, it needs to inherit from enemy state.

**55:45** · And when we enter the tree for now, I'm just going to pass and I'm going to go into the enemy and I'm going to copy paste the code that we have for dying here. So, let's take this and go into the dying code and let's paste this. So, let's go ahead and fix all of the references that require the enemy.

**56:04** · This this I believe this uh duration ragd doll simulation we're going to need to do. And then this method we're going to we're not going to do actually we don't want to freeze the ragd doll as part of the dying state. I think this is where we want to uh actually go into the death uh state. So uh yeah I guess we can do this funk freeze ragd doll.

**56:32** · Okay. And then let's just transition state here.

**56:39** · All right. Uh, okay. So, it's going to complain because impulse and duration rag delimation doesn't exist. Let's bring them those over from enemy.

**56:48** · Okay. I'm going to copy this line. Go into dying and paste it up here. So, that should take care of this first item. And then here, let's go into our enemy state data. And I want to make sure that we capture this impulse here.

**57:02** · It's going to be a vector 3. So inside enemy state data, let's allow us to set the impulse.

**57:16** · Uh let's call it a source.

**57:33** · Okay. So now that we have the ability to set the impulse as part of the data, let's go back into our enemy dying and now we should have access to this as part of the state data. Okay, so that should get rid of this error here. And the only problem now is that uh we have not defined the death state inside our enm uh oh dead. Okay, let's go here.

**57:56** · Okay, so this should fix all of our code. I'm going to pause here for a second so you can see again we've barely just done anything. we just move the code from the enemy class over to this dedicated state. Uh so now inside the enemy code here, we can actually get rid of this code for now.

**58:17** · And when we are in the impelling state, uh rather than register the death here, we want to transition to our new state. So transition state uh enemy.state dot uh dying and here we want to pass in our impulse which is this object here. Uh let's maybe create it just beforehand.

**58:44** · So var state uh yeah state data I guess. Oh, this already exists. Maybe data equals state data new dot set impulse. And then let's copy all of this code here.

**59:13** · Okay. How about this?

**59:15** · at impulse.

**59:22** · All right, I think this should be pretty clean. So, we don't need to register the death here. Okay, so we are generating our impulse which we're going to pass as part of our enemy state data and then we're going into the dying state. So, that should transition us from this impaling state into the dying state automatically. And once we're in the dying state, then we should be able to automatically simulate the ragd doll physics. And after that we're going to transition to the dead state. Notice that this is going to uh generate an error because we have not created the state and it's not part of the state map here.

**59:54** · We actually don't have the dying state map here. So let's go ahead and fix this right now.

**1:00:03** · And let's create our last state. So file new scripts enemy state dead.

**1:00:20** · So it's going to inherit from enemy state. And once we enter the tree, we want to execute the code that um that put puts to sleep all of the bones. So, let me go ahead and Ctrl X this code. I don't think we need this anymore. Go into the dead state and paste it in. And then let's go ahead and fix all of the references which I think is just uh part of the uh enemy here.

**1:00:49** · Uh it is complaining indented block.

**1:00:52** · What am I missing?

**1:00:54** · Oh, right here.

**1:00:58** · Okay. So let's just have a reference now inside our uh state map state dead enemy state dead.

**1:01:08** · Okay. And I think we should be good to go. So whenever we're impaling the enemy, we are switching over to the impelling state. The impelling state will first um do all of the uh creation of the impaled object which is an equipped item. Then it's going to transition into the dying state. Pass in some information about the impulse.

**1:01:25** · inside the dying state. This information is going to be used um to uh apply the impulse to the torso bone and then we are going to go after 3 seconds inside this freeze rag doll which should basically just transition the state. So we actually probably don't need like a brand new function here and then when we transition into the dying state is when we pause all of our bones.

**1:01:46** · So a lot of logic moving around I think in our enemy here we should be able to yeah basically that's that's all the code that we have is just this method u that gets called from from the throne object and this is great like this is just as clean as we can be uh even this part here again I I think we could potentially moving out let's go ahead and try this out make sure that the enemy still behaves properly I'm going to pick this weapon here throw it and the enemy stops after 3 seconds there we go Perfect.

**1:02:19** · All right. So, the last thing I want to do in this episode is make sure that the enemy can drop their weapon whenever they uh get impaled or whenever they die. Basically, uh I don't want them to keep that weapon just looks weird altogether. Um so, for that, let's figure out how to make it work. So, when you think about it, dropping the weapon is very similar to uh throwing the weapon. It's going to create another thrown item here. The only difference is well we don't want to be flying around. We don't want to have some form of initial velocity either angular or linear. So we could either create a new class.

**1:02:53** · H I think the logic is going to be close enough. So let's just create another variable here is being dropped.

**1:03:03** · It's going to be a boolean. And let's uh let's check the value. So, if we're not being dropped, then let's go ahead and add these various velocities. Otherwise, uh keep going. And also, if we're if we're encountering an enemy and uh colliding with an enemy, we just want to make sure that we're actually not being dropped either. Otherwise, we're just going to impel everybody on the way down. And not is being dropped.

**1:03:30** · All right. So, we need to pass in that information. So, let's see. When do we drop the weapon? Uh I believe it's when the enemy should be Is it when the the enem is getting impelled? Yeah, I think that would make sense, right? So before transitioning to the dying state uh maybe in the dying state actually it might make even more sense. So here let's just drop the weapon here. Enemy dot uh equipment dot I don't have equipment.

**1:04:01** · Why do I not have a reference to equipment? Oh, I think I only did this for the player. So if you go over, let me really remove this line for now. Go over to the goblin code, the enemies code, and we need a reference to yeah, our equipment. So right click on the equipment component and access as unique name. Drag it into your code. Let's call this equipment.

**1:04:26** · So we have reference to it. And then back into the dying code here should now have reference to the equipment.

**1:04:33** · equipment dot uh and let's create so throw weapon right now if you go there it just throws the weapon completely. So maybe we just uh pass in whether it's being dropped here.

**1:04:47** · So by boolean let's set it to false by default that we shouldn't break any existing code and let's pass it on to the throne item.

**1:05:00** · I do see already a problem that's going to happen here, which is that uh we need a weapon spawn position. So for the player, if you remember, the player has this weapon spawn position. This is from this is the position from where we throw the weapon. The enemy currently cannot throw the weapon. So they don't actually have a weapon spawn position. We could add it. Um I don't think enemies are going to throw weapons right now, but um down the line it's very likely that they will.

**1:05:30** · So yeah, I guess we can do that right now. So let's just add as part of goblin control A and node 3D call this weapon spawn position.

**1:05:41** · And then let's see where would they throw it from? Somewhere around here.

**1:05:46** · Around here. Okay. Uh this is what I have for my transform. So let's do 0.4 one and minus 0.5.

**1:05:57** · Okay. So if you want to have the same values as me. I don't think we're going to be using this right away potentially down the line. So now in the equipment we need to assign the weapon spawn position.

**1:06:08** · There we go. Okay. And so let's go back to the equipment code.

**1:06:13** · Uh cuz we actually don't want when we drop the weapon, we actually don't want the weapon to spawn from from uh that position. It's going to it's just going to be looking weird. The the weapon is going to teleport. So for go back to the script here, uh we probably want to reuse when we're dropping the weapon, we probably just want to use the weapon placeholders transform. So var spawn transform equals weapon placeholder dot global transform.

**1:06:46** · And if we're not dropping it, then let's use the weapon spawn position instead.

**1:07:05** · All right. Again, it seems like there's not a lot of room to see the code. So, I'm just going to try to bring this a little bit to the side so you can see a little better. Uh, okay. So, what is the code doing? So now the equipment has the ability to throw the weapon. This now has an additional um v uh property called is being dropped that you can set to true or false. If it's uh if it's set to false by default, we're we're basically just throwing the weapon. If it's set to true, then we're swapping the transform. We're keeping it towards where the weapon currently is. And then we're hopping over and creating our thrown item.

**1:07:35** · So if you go to throw an item code now, uh we have the ability to pass is being dropped. And the only difference when it's being dropped is that we're not changing the gravity.

**1:07:46** · We're not creating any sort of velocity and we are not going to impale other enemies. All right, let's try this out.

**1:07:52** · I'm assuming there may be an error.

**1:07:54** · We'll see if if it works. Um, okay.

**1:07:56** · Let's pick the sword here. And when I throw this. All right. Well, uh, okay.

**1:08:02** · This is I was not expecting the, uh, enemy to, uh, take revenge there. So, something is wrong. Um, are we not passing?

**1:08:10** · Is being dropped? Let's see. Let's go back to the equipment component and is being dropped. Okay, so whenever the enemy is dying, throw it. Okay, we need to set this to true. Okay, let's try it again.

**1:08:32** · There we go. All right. And it just looks very natural, right? Like the the weapon just stays in place. All right.

**1:08:38** · Once again, I'll be probably fixing my rectal uh physics here, playing around with my joints uh between the two episodes so that it looks a little bit more natural. Feel free to do that on your end. Again, on your end, it's probably going to be different settings than on my end. So, I don't know if it's worth uh putting that on on video, but yeah. And now I can pick up this uh this uh object and then and then just uh use it. By the one thing I'm finding a little bit odd is when I throw my weapon, I actually completely lose access to my movement.

**1:09:03** · And I know we did that on purpose, but um yeah, we could keep it that way, or we could just uh just restrict the movement a little bit um in a different manner. So, that being said, um we now have those two state machines well in place. We have one for the enemy, one for the player. So, it's a very solid foundation. We'll be able to start adding a bunch more gameplay elements to our characters. We'll be able to do so in a very orderly manner without cluttering any of the core classes, code, and logic. So, that's going to be very powerful.

**1:09:29** · Now, I imagine that this episode was a little bit tedious because let's face it, we just didn't add a ton of new things to our game. This was mostly about moving code around um and you know, had we implemented the state machine from the very beginning, we wouldn't have had to do this refactoring. But look, I think in the spirit of you know, you only refactor when it's needed. I think it's use you know, it's pretty useful to go through that together and hopefully it's useful for you to understand how state machines work and how you can implement them in your own game.

**1:09:56** · So, however, because this was a lot of code, if you have any questions, please don't hesitate to go in the comment section below and just ask away and I'll try my best to answer as fast as possible. So, in the next episode, we are going to start introducing new states to our character, so give a little bit more uh logic to our gameplay. I think we'll um provide the ability to swing the weapons when we click and the ability to get hurt as well. So, this will make our combat a little bit more interesting than what it is today. That being said, if you're still listening after all this time, you're a true warrior. Thank you so much.

**1:10:26** · I think we're about a third of the way uh of completing the game and the entire tutorial series. So, thank you so much for watching this. It really means the world to me and really appreciate um you all watching this. So, if you like this content, you want to support the channel, you know, please use these shiny like and subscribe buttons. Let the YouTube algorithms work in my favor. All right. Well, it looks like it's time to take a quick break.

**1:10:48** · So, I will see you in the next episode.

**1:10:49** · Cheers.