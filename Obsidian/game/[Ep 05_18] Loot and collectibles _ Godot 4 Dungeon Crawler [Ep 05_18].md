---
title: "Loot and collectibles | Godot 4 Dungeon Crawler [Ep 05/18]"
source: "https://www.youtube.com/watch?v=BPgC4C_LRe4&list=PLT26e2jOwbdg&index=6"
author:
  - "[[The GameDev Tavern]]"
published: 2026-07-09
created: 2026-07-16
description: "Learn how to create a 3d dungeon crawler from scratch in Godot!In this episode, we create objects that can be picked up from the ground, useful for bringing loot into the game.Play the final game"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=BPgC4C_LRe4)

Learn how to create a 3d dungeon crawler from scratch in Godot!  
  
In this episode, we create objects that can be picked up from the ground, useful for bringing loot into the game.  
  
Play the final game here: https://gadgaming.itch.io/goblinsdencourse  
  
Having an issue? Download the project for this episode: https://github.com/nicolasbize/goblins-den-course/archive/refs/tags/v0.5.zip  
  
Enjoy your stay at the tavern!  
  
#godot #gamedevelopment #gamedev #tutorial #pixelart #dungeon #fps

## Transcript

**0:06** · Well, hey there traveler and welcome back to the gamedev tavern. You know, this place is just a nice and cozy little corner of the internet where we sit down and create fun little games together. My name is Nicholas and this is the fifth episode in the tutorial series where we create a dungeon crawler from scratch in GDAU.

**0:23** · All right, and welcome back. So, in the last episode, we created uh two models for the two different weapons, our sword and our axe. And right now, I've kept both of them attached to the player, so we could uh kind of play around with it.

**0:35** · But in this episode, we are going to actually spawn them dynamically. Um so, there are multiple ways by which we could um include those objects inside our game. So, one native approach that we could do is to start by creating a brand new scene for each of the weapons.

**0:50** · So, for example, we could start by creating a brand new sword.tscn. tscn and in that we would have attributes like the damage and um you know a couple of other properties potentially we could have a shirt class and then you know we could then have a second class for the axe so axe.tscn tsn and we'd copy the scene, probably reuse the same script, maybe change a couple numbers in the properties. Then we could add a dagger and have a third class and so forth.

**1:14** · Now, you would end up having like one class per weapon with that system. But not just that, actually, when you think about how we're going to be building this, each of the weapons that we're creating is going to need to behave differently depending on how it's being um used in the game. So, for example, when a weapon is thrown, well, it'll need to behave like a rigid body. It will need to react to physics, bounce against walls, and collide with enemies.

**1:37** · So, basically, we'll need that um that axe.tsn or the uh sword.tsn scene to actually be of type rigid body 3D. But also, whenever the weapon is on the ground, we don't want that to collide with anything. So we just want it to um we want to get close to it and we'll actually want it to shine as we look at it so that it looks like something we can be picking up. So actually we don't want that to inherit from rigid body. So we may need to have like a second class that inherits from maybe node node 3D or area 3D so we can detect uh what we're looking at.

**2:09** · And so for just that state of like the weapon being on the ground now you need to have like a second class. Um, and basically you would see that there's three or four different behaviors like the weapons can exist as part of the player. We don't want uh any of the highlights to appear. We don't want any collision. It can be on the floor. It can be flying. So there's a ton of stuff that could be happening and we don't want to create a brand new class every single time. Um, we could also, you know, one path is we could say like, okay, well, I'm just going to create a rigid body 3D and then I'll disable the collisions and I'll change some attributes. It's a little bit of a pain and a little bit of a mess to do.

**2:42** · So, um, so we're going to be doing things a little bit differently. The way we're going to be building the weapons, and I think this is probably the best way to build, uh, those types of inventory inside your games, is ju just simply to, uh, separate the data from the behavior. And so, this is something that's pretty typical. Um, basically, we will have a script that will define what a weapon is. Um, and it will include some properties like the name, the damage, um, you know, the how fast it needs to fly across the street, the the the screen.

**3:11** · And then every weapon will just be a small piece of data, um, which will be filled with different values.

**3:17** · And then the code that swings the weapon or that uh, uses the weapon will just be the same code across the board and it won't care what weapon it's referring to. So in GDAU, we refer to this as um, a resource type. Um this is the equivalent in Unity by the way to scriptable objects. So it's the same concept. \[snorts\] Um now in good actually uses resources all over the place. You're actually using them maybe without realizing it. So every texture that we're using, every material, every mesh, all of those things are actually resources. So today we're going to be making our own.

**3:49** · And you know again it's it's a very common technique to split the data from behavior especially in rich games like uh like RPGs like Diablo that have like really rich inventory with tons of attributes. Uh typically all of those things are just data um small pieces of data. So for that let's go ahead and start by creating our uh resource. I'm going to go into our script and we're going to create a new file. Let's call this um let me go into resources and here I'm going to create a brand new folder.

**4:18** · I'm going to call this data and I'm going to give the script name maybe weapon data.

**4:28** · Okay. And let me zoom in here a little bit. All right. Uh I'm going to give this a class name like I usually do so that it can be recognized across the board. And here we're not going to extend node. We're actually going to extend resource. Now this is really important. It means that there's no processing, no ready function. It doesn't belong to the tree. This is actually pure data. And uh here we're going to define which properties we're going to be using as to define a weapon.

**4:54** · So first of all, we can have a name. I think at some point I was thinking of having the name show up in the UI as you hover over it. Uh this is something that we could potentially add down the line, but it's always good to have a name uh to indicate the object. And then um if you remember in the the game that I was showing initially, we have this uh this notion of condition. So as you use the weapon, the condition deteriorates and as it gets to zero um the the weapon gets destroyed. And this kind of forces the player to stay fairly dynamic and not keep the same weapon all uh all across the board. So, I think that's that's usually a nice addition.

**5:24** · So, uh alongside with condition, I'm going to have max condition. This is just in case you find a way to repair the weapon.

**5:33** · Again, we haven't we haven't implemented this yet, but it's just uh kind of forward thinking. We'll have a damage min and a damage max. Uh so, there's multiple ways to do the damage. I was thinking initially to something like Dungeons and Dragons where you could figure out the number of dices and the values of those dice is like three dice of of four, for example, 3d4. But I think this is fine. We're just going to have like um a random number between the damage min and the damage max. Uh another import attribute is going to be the ridge. I'm going to make that a float. It's going to be in meters.

**6:03** · And this is just basically how far away from the uh enemies we can actually reach them by swinging the weapon. So different types of weapons. I think the axe, for example, will have a little bit of a longer reach than the um than the sword. Um let's also have some properties around the throw. So maybe like the rotation speed, how fast it needs to rotate in the air. I don't know if there's a float as well. And then the how fast it should go uh move while it's flying.

**6:39** · Okay. And then lastly, one part that's really important is we're going to also indicate the packed mesh uh coming directly from GDO. So when we create the object data, we're also going to uh indicate as part of that resource what is the mesh to use. And then uh I think maybe one or two utility functions we can start writing right away, which is one that will give us like a random amount of damage. So maybe damage dealt.

**7:09** · And here we'll just uh return a simple rand uh random number between damage min and damage max. So I think it's both uh inclusive of both if I remember correctly. Uh yeah, it's inclusive. So it goes anywhere between that value and that value. And then another uh handy function will do is decrease condition by a certain amount.

**7:38** · And basically here we'll just uh clamp the value of our condition between zero and max condition.

**7:48** · Okay. So every time we hit something we'll decrease the condition of the of the weapon by a certain amount. And then this will indicate the life of the weapon. Um all right. I think this should be uh good enough. So now that we have defined this, we can actually go into um let's see let me let's data here and I'm going to create a new folder called weapons and inside this weapons folder we can now define the various types of weapons. So, I'm going to create a new.

**8:18** · And then here, if you do resource, and if you type weapon data, you now have access to this new uh file that we have here. And we're going to call this one um I don't know what did we use for the sword, long sword or short sword. I guess short sword.

**8:34** · Okay. And uh you can see here that the short sword is loaded up here on the right hand side. This is name of the resource. And so here we can give it some um some values. So, I'm going to call this short sword and condition. Uh, I guess maybe we can try 30. Max condition is going to be 30. Damage max maybe between three and five damage.

**8:55** · Let's do maybe 5 m of reach. And then throw rotation. We'll just enter some random numbers for now. We can tweak those later. And then the mesh. Um, if you open this up here, let's go ahead and pick the sword short sword. And you want to make sure you pick the GB file.

**9:10** · This this contains the entire mesh plus the textures. That's that's exactly what we want. And the the the reason why we want to make this as part of the object here as we define it is that uh tomorrow we we just need to pass and tell that the player contains uh or has access to this short sword and we'll be able to dynamically generate the uh object using this mesh here.

**9:32** · Um okay, I think we are ready to start um working on the next script. So, as I said, we are going to be creating the equipment as part of the player using this data. And we can let's actually uh create a second one for the axe uh resource weapon data. And let's call this one axe. And let's go ahead and enter some attributes here. So, condition, maybe we make this um a little bit less than the sword, but the damage should be a little bit more.

**10:04** · Let's do between four and five. the reach. Let's do maybe six to go a little bit further away. Throw rotation speed um h maybe 50. Goes a little bit faster.

**10:14** · And then the speed maybe 12. Okay. And the mesh. Go ahead and pick the axe that we have.

**10:20** · All right. So, we've defined two resources that we'll be able to use in our game. They each have access to the uh the mesh and various properties.

**10:30** · Okay. Okay, so now that we have defined the resources themselves for the weapons, we need to think a little bit ahead in terms of what type of scenes we need to support this. And so the way we're going to be building this is basically we're going to create one scene per state by which the equipment can live in our game. So for example, here and we'll build them um one at a time as we encounter them in the game play. So the first state that we've encountered so far is just the state where the equipment is carried or equipped by the player. So here right now we have a sword or an axe and then we'll have a shield here and the state is going to be the same.

**11:01** · Basically for those for that state we only want the node to be a node 3D. We don't want that to be a rigid body to interact with other uh and collide with other bodies.

**11:12** · We don't want that to be an area 3D. We don't need any sort of detection or anything. The way that we'll be handling the um attacks is by just casting a um casting array cast in front of us to see if we're hitting anything. So for that we just need to basically create a node of type node 3D and then we'll generate we'll automatically generate the content of that node 3D pretty much similar to what we have done here except here we just dragged it into our scene.

**11:36** · So for that let's go ahead and create a brand new scene and I'm going to create a 3D scene and I'm going to rename this to equipped item and I'm keeping this generic. It's not a weapon or a shield. We can use that uh state for both. And then we're going to save this into our scenes folder. Let's create a new folder called equipment and equip item.tsn should be fine. We don't need anything else but we're going to create a script which will generate the right mesh depending on the data object that it contains.

**12:06** · Uh so the resource that we assigned it. So let's go ahead and create a new script.

**12:12** · Equipped item is fine. Let's give it a class name.

**12:18** · And what do we need? Well, so the only thing that we'll need to specify is the actual resource. So for that, let's go ahead and have an exported variable.

**12:28** · Uh maybe weapon data. I don't know if there's a better uh way to name these resources. And then what do we want to do? Well, as soon as we start the game uh ready, sorry, maybe we create a let's refresh. Let's create the mesh for our weapon.

**12:46** · So for that we're going to create a new uh object and then we're going to refer the actual mesh itself and then we'll instantiate our scene and if equip object is something other than null then let's go ahead and add it as a child.

**13:13** · All right, this seems pretty straightforward but let me show you in action what this looks like. So, I'm going to go into the uh let's go into the world here and I'm going to instantiate uh maybe just as part of the level. So, control shift a an equipped item. I'm going to bring it uh to about here here and bring it up a little bit. And as part of equipped item here, you see it's looking for weapon data. And I'm going to set it to the shortsword.

**13:42** · And now if I start the game and if I go to the left I should see my sword. So as you can see here this mesh was completely created through the script and it's now under a node 3D. So it's it's behaving exactly the way that we want it. So basically if we now have as part of our player uh and our enemy we're going to create a uh a node called equipment which will take care of generating and rendering uh and creating those those meshes. All right. Right. So next we'll want to instantiate this as part of the player.

**14:12** · And you remember we'll want also do that as part of the enemy. So rather than actually entering uh all of that code as part of the player or enemy code, we're actually going to create a new uh component. And we'll be using composition to add that behavior. So let's go ahead and create a new uh scene. And I'm going to make this a 3D scene. And I'm going to call this uh equipment component.

**14:39** · I'm going to save this into my uh character and let's create a new folder called components and yeah equipment component. I think that should be fine. Okay. And we're not going to add anything under here, but we will add a script. So click on this plus uh icon here. I think the file name is fine. Let's give this a class name.

**15:05** · Okay. So what do we want to do? Well, first of all, we want to be able to load this um we want to be able to create this new object here, the equipped item.

**15:14** · So, let's go ahead and we can just have a reference to this. Uh we could either have it as an exported variable and then load it in the UI, but I don't think this is going to change. So, I I like it to do it like this. So, prefab.

**15:28** · Okay. And then here you want to pick the tscn.

**15:33** · This will allow us to instantiate this uh this scene that we created here. And we'll just pass in the uh weapon data.

**15:40** · So let's have those as exported variables.

**15:44** · And then um if you remember the player and the enemies uh we need to place them. Where is our player? Right there.

**15:52** · We need to place the um the meshes that we're going to create at the right spot.

**15:56** · So we're actually going to need a reference to the weapon placeholder and down the line to like the shield placeholder. We can actually right click on this and access his unique name as well. And um so going back into the equipment, let's go ahead and have a reference to this weapon placeholder. This is just a node 3D.

**16:16** · All right. So what what do we want to do when this uh component gets created?

**16:20** · Well, let's just check first of all if there is any weapon that's associated with it. So if we have some weapon data, then let's go ahead and equip it.

**16:29** · And I'm going to create this uh method in just a second.

**16:37** · Okay. Uh weapon data.

**16:41** · Okay. It's not going to return anything.

**16:43** · All right. So what do we want to do first of all? So this here is the resource that gets passed. So we're going to add the equipment component as part of the player. We could do that right now. Let me just uh pass for now here. You can just look at the code for a second. And then if we go back to the player script or the player object here, we're going to add so go all the way to the top control shift A to instantiate a component um component to it. And so here we can then specify which weapon we'll want the player to start with.

**17:13** · So let's start with maybe the shortsword and then let's pick the weapon placeholder. So we're going to pick uh this one here and we can get rid of the content here. So, I'm going to delete all of these things here because we're going to be dynamically generating what's inside.

**17:30** · Um, okay. So, we have defined an equipment. We've defined what needs to be created. So, now as part of the equipment script, we just need to make sure that we generate this new scene.

**17:39** · Uh, where is it? I have too many things open up. We generate this new equipped item scene and pass in the right uh uh data. But the one thing that's important to note is that this resource here is actually uh the main resource that we created. It's actually shared across all of the entities in our game. So, by default in GDAU, resources are shared by reference. Um, which means that if two uh well, it's two goblins, they they both equip this short sword here. And we don't create a copy of it, they're going to be holding the same object in memory.

**18:13** · So, whenever like one of the goblins sword takes some damage, um the other object is also going to take some damage. even the players if they hold the same uh the same reference here. And so um also I I I found out that even in the editor if you make some changes there and you save it will actually impact all of the um all of the objects across the entire game itself. So this is something that's really important um as you uh work with resources is that we always make uh duplicates. We always make copies.

**18:43** · So every uh every actor basically uses a copy of the resource that you've created. So for that I'm going to start by um so specifying that the weapon data for the player is going to be a copy of the resource that we pass in in the editor. Okay, now that we have a copy, we're going to create our weapon. So this is going to be our equipped item prefab instantiate \[snorts\] and this is equipped item.

**19:20** · And then let's go ahead and uh specify the weapon data and then we can add it to our scene.

**19:32** · Okay. So the fact that we instantiate it and then we add the weapon data. By the way, this is a pretty important thing in GDAU in terms of um the order of things.

**19:40** · As you can see here, we're defining a property of something we just instantiated and then we're adding it into the scene. So, um basically when you add it into the scene, that's when the ready function uh gets called. And the ready function is when we have our uh mesh that gets created. So, as long as we set this property before we add it to the scene, then we should be good to go once we're here. Okay. So, let me just recap the code that we've written so far. So, we've defined a uh uh global scene called equipped item.

**20:08** · As long as we pass in a resource type here of a specific weapon, it's going to create the mesh and just is going to add as a child. So, now whatever scene we created here has the mesh that we're looking for. As part of the player, we added this new equipment component. And this equipment component basically you give it where we're going to instantiate the the mesh and then the type of objects that we need to duplicate before we create the mesh. So hopefully that makes sense. Um just to test this out, I think we can uh yeah, I think we should be okay. Press F5 to start.

**20:40** · And you shall now see that the us uh player has a sword. And this is completely uh dynamically generated in the code. It's actually holding. We can actually um look at it right now. If you look at remotes and you look at your player right here, uh, in character and armature skeleton bone attachment. There we go. Uh, I can make this a little bit bigger.

**21:07** · This is our equip item that was generated, which itself generated this uh, this scene here, the short sword, which includes it own mesh. Now, one thing that you'll see, I'm going to press F5 again, is that um the mesh can actually go through the wall. And the reason for that, if you remember, we had to play around with the material and make some changes to the material. Now, by default, this sword doesn't have any modification to the material. And we probably want to make sure that we are careful about which material gets applied to which.

**21:36** · We don't want the swords of the enemies to appear through the walls either. Um, so we are going to need to make a small tweak so that this only affects the um the the objects that are carried by the player. And we'll also want uh by the way this to happen whenever the player is carrying and equipping the object.

**21:55** · Otherwise, once the objects are on the floor uh or once they're thrown away, we don't want them to appear in front of the camera. So let's go ahead and fix that right now. All right. And so to fix this, if you remember what we had done is um so we don't have it as part of the player anymore because we're dynamically generating them. If I go into the enemy here, go into the 3D view, we had uh looked at the children here, we know that whenever we instantiate these uh these weapons, these pack scenes, we're only going to have a single child, which is going to be the mesh. And then we went ahead and changed the surface material override.

**22:26** · So we created a new standard material 3D and then we changed this property called Z clip. So rather than doing this uh dynamically in the code, we can actually create a new uh material that we can just assign whenever we want the uh weapons or the gear to appear in front. So for that, let me go ahead and create a new folder uh maybe at the root here. I'm going to call this materials since we're going to have a couple of those. And let's go ahead and create a new resource. And I'm going to pick standard material 3D.

**22:55** · And I'm going to save this as a Z clip material.

**23:03** · Okay, I have it here on the left hand side, but it's not. You can just double click here. And what do we want to do?

**23:07** · Well, we want to uh first set the texture. So, here you can see that we are starting to have a couple of duplicates of our uh texture atlas that we had created. So, we'll be cleaning this up down the line. We don't need all of the objects to import their own textures. So, for now, just go ahead and pick the dungeon texture uh file that we've been working on in a sprite. And then make sure to set the uh sampling from linear map to nearest. And then inside the transform, you want to enable the Z clip scale. And let's set this to 0.5.

**23:38** · All right, we can go ahead and save. And now we can reference this material inside our code. So let's go into our script and we are going to go into our equipped item here. Let's have a reference to our new material. Let's call this Z clip material equals preload.

**23:56** · And just make sure you pick the right uh object here. Okay. And then here maybe let's have a another exported property called uh is always in front.

**24:10** · I don't know is that clip maybe. I don't know what would make the most sense. But anyways so once we have created the object right this is the node that we instantiate and we know that this only has one child which is the mesh. Uh we're going to do something that's not necessarily ideal, but uh var mesh node equals equipped object.get child. This is the first child as mesh in sense 3D.

**24:32** · This is absolutely not robust. I actually think we should probably fix this, make it a little bit more robust.

**24:36** · And basically, we want to look for all of the children and find them the one that's a mesh. Otherwise, as we make some changes to this packed scene, we actually break this line of code. Um we'll probably come back to this for now. Let's go ahead and and keep it simple. Uh so if the node exists and we always want to render in front then let's go ahead and set the right material. So mesh node domaterial override equals our Z clip material. And again because it's a resource you want to make sure you duplicate it.

**25:04** · Um that way we don't make some changes across the board. Okay. So now whenever we create this equipped item we want to make sure that we pass is always in front. So for that we're going to go back to our equipment component and maybe here we can also have the same property is always in front which is going to be a boolean and let's just pass it uh here weapon that is always in front equals is always in front.

**25:35** · So that way now whenever we uh create our player and you go into the equipment component this one we can check uh and we won't do this for the enemies. Okay. So now that we have that let's go ahead and test this out.

**25:49** · F5 and we should have the uh the weapon not go through the walls. So this is working great and I think we should be okay to now do the same thing on the enemy. So let me close a couple of those scenes that we're not going to use for a little while. So, UI foyer level, I guess. Yeah, level. Let me close uh let me close this. Okay, let's go to the goblin here. And we don't need to have a reference to this short sword. I'm going to delete it. And then I'm going to add to the goblin. Control shift a our equipment component.

**26:24** · And here, make sure you don't set is always in front. Let's go ahead and add an axe. And let's assign the weapon placeholder right here.

**26:34** · Okay. And if you press F5, we should now have the enemy wearing uh holding the axe.

**26:42** · Okay, perfect. And the axe is not going through the walls. Uh you could uh you could double check this. By the way, if you check this and turn this on and try it off, you'll see that you should see the axe. I don't know if it's visible here on YouTube, but the axe kind of goes through the walls here. So, we don't want the enemies um weapons to have that material. So, uncheck this and we should be good to go. All right. So the next step for the equipment that we're going to be working on is the state where the equipment is on the ground and ready to be picked up. So for that the way that we're going to be uh doing it is the equipment itself is going to inherit from uh is going to be of type area 3D.

**27:14** · So we can do the collision detection. Uh so remember the equipped item was of type node 3D. And so we're going to create a new scene of type area 3D for things that are laying on the ground that can be picked up. Um, so for detecting what we're looking at, we're going to need some form of raycast from the player. So for that, we're going to go over into the camera 3D and create a child node called raycast 3D.

**27:40** · And let's call this one um, select raycast.

**27:45** · And we're going to need to work a little bit on our collision max. I know we haven't really done that from the start.

**27:49** · So maybe we can hop over into edit layer name. This should bring you directly to the 3D physics. And let's go ahead and take care of this for now. So, the first one is going to be the world. Second one, let's make it the player. Let's have an enemy layer. And then for now, the only thing that we have is going to be this uh pickable uh items.

**28:08** · And let me uh make sure we have everything set up properly. So, let me go back into our world view here. And our level is contained of floors. These should be on the world layer. This is perfect. Uh it doesn't need to uh have a mask for now. And oh actually I need to do this as part of the global scene here. So our floors here collision needs to be on the world and it doesn't need a mask. Um and then let's hop over to our player. Our player needs to be uh where is it? Here.

**28:40** · Our player needs to be on the player layer and it needs to collide with the world. And I I can't remember if we if I collide with enemies or not. Uh I think I may not. Let me keep it that way for now. Uh, so I'm just going to collide with the world.

**28:58** · And we don't want to collide with pickable items. It's going to be an area. Uh, and then for the enemies. So, back into here, I'm going to set the collision uh layer to be on top of the enemies. And I'm going to collide with the world. And uh, yeah, I think let's leave it at that for now. I I'm not sure about the interaction between the player and the enemies. We'll have to try this out. Okay, so back into the player.

**29:21** · Let's look at the red cast here. And so our raycast uh where are you at? Right here is going to be looking for pickable items. That's all that we need. And we need to also collide with area. So we're going to have uh this is going to be an area three that we're going to create.

**29:35** · In terms of where we're looking at, you can see this blue arrow here. We actually want that to be uh going on the opposite side of the Z axis. So I think minus 2 m should be fine. If you're looking down towards the ground, this is about where we should be able to pick things up. Okay. So, um, and make sure we have all of this all set up. So, let's go ahead and create our scene.

**29:57** · Okay. Actually, the way that this is going to work, um, since we just created this Z clip material whenever the raycast is looking at this area 3D, we're going to have the object itself change its material again. So, here we only change it once um, at the beginning when it's instantiated. But for area 3D, we're going to change it dynamically depending on whether we're looking at the object. If we're looking at the object, the only thing we're going to do is change the material's albido color from white to yellow. This is going to give it a tint, which will kind of show to the player that uh they're looking at something that can be picked up.

**30:28** · So, let's create a new material here, uh resource standard material, and I'm going to call this um highlight material.

**30:45** · Okay, let's go ahead and similar to the other one, we're going to set the uh dungeon texture and then the uh let's go down to sampling. Set that to nearest. You don't want to change the transform. This is fine, but you do want to change the color, the albido color. And we're going to set this to maybe I don't know this this yellow here. We'll have to try it and see see how it works. Um we can actually just double check how it works really quickly.

**31:12** · If we take our sword, short sword, and then let's create a new inherited scene. And let's take this sword here. And in surface material override, let's pick this highlight. So you can see this is what it's going to look like whenever the uh the player looks at the object. And we're basically going to uh go back and forth between the two colors. So one, this is when the user's raycast is looking at the object and this is when it's not looking at the object. Okay, we're not we don't need to save this.

**31:40** · So, similarly to how we created a new scene for the um for the equipped item which was in node 2D node 3D, this time we're going to create a new scene for the ground items. Uh maybe we call them pickable items and it's going to inherit from area 3D. So, pick other node here. Let's call this an area 3D.

**32:01** · And I'm going to call this pickable item. Let's go ahead and save this into our scenes and uh equipment and pickable item. Yeah, I think this looks good. Okay. And once again, we're not going to do anything here other than just write some code because everything here will be dynamically created. Uh so it is complaining here because we don't have a collision shape.

**32:24** · And uh that is something that's really interesting because we'll also need to generate uh the collision shape dynamically in the code. um which is something that good actually provides uh something for. So quickly inside the uh the properties here. So we want we don't need to be uh monitoring. So we're not going to have any code for bodies entering the the area, but we need it to be moniable. And in terms of collision, we want to make sure that we are set on the pickable items uh layer and we're not looking for anything.

**32:58** · Okay. So, let's go ahead and write the code. And it's going to be looking very similar to the code that we had written for the um uh for the equipped item. So, let's write a new script here. And let's give this a class name.

**33:16** · All right. So, we're going to need a reference to the uh highlight material that we just created.

**33:26** · Okay. Okay, this should be fine.

**33:29** · And then um we are going to need to uh again have an exported variable for our weapon data and I think we need to if I remember correctly I think we need to create the shape but then we uh we need to create the collision shape but then we set the shape in the code. Let's see let's see what we need to do.

**33:53** · Um, all right. So, let's go ahead and similar to the method that we had done for the equipment, let's go into the ready function and let's create our object. So, pickable object node 3D equals null. If we have something in weapon data, let's go ahead and instantiate it. So, we'll create our mesh.

**34:16** · Uh, I guess we can go uh weapon data dot glv mesh.instantiate um and let's see if we have if it is not null then we'll add it as a child object.

**34:38** · Okay, so this is very similar to the code that we had done in the equip item here. We could actually probably have some form of utility that creates meshes from the various object the various resources here. We probably will do that. It'll be I think a little bit cleaner. Um, okay. And then we need to create the uh the collision shape for this. We'll also need to persist the material, the original material because we're going to be swapping it uh whenever the player looks at it. So maybe we can start with this function.

**35:07** · So let's create a function called highlight.

**35:11** · And this highlight we need to change the uh the material of the mesh. So if you remember inside here, we had to pick it up as the first child. Here we're going to do the same thing except we're going to need reference in other functions. So let's go ahead and and bring this up as a variable. So uh here v mesh node it's going to be a mesh instance 3D and uh let's add it here. So our mesh node is going to be our uh pickable object get child zero as mesh instance 3D.

**35:43** · And again this is the part that I I'm not too happy about. we'll probably need to refactor it a little bit. So once we have access to this mesh node, the only thing we'll need to do inside the highlight is to set the material override uh equals uh highlight material.

**36:04** · And I guess I don't want to duplicate it every single time we uh we look at the highlight. I think that's going to be uh a little bit inefficient. So maybe we create another Huh. Yeah, let's create another uh variable here.

**36:24** · So, uh let's make it a standard material 3D.

**36:29** · And whenever we instantiate this object, let's create this material.stantiate a oh sorry, duplicate.

**36:44** · Okay. Okay. And now we can just swap this here. And let's actually keep a reference to the original material.

**36:58** · I'm actually not sure if I can pass this or if I this needs to be of type material. Let's see. So, okay. So, when we create it, let's go ahead and pick the original material here. It's going to be the mesh node.get active material.

**37:13** · when we highlight, we want to override it with this highlight material.

**37:20** · And when we unhighlight it, we want the uh I guess if we just set that to null, maybe I wonder if this works cuz that should preserve the original material if we just remove the material override.

**37:37** · So, we may we may actually not need to keep track of this. Um let's see. We can test this out. Um, let's uh let's go ahead and highlight it and then we're going to try this. Okay, so back into the world view. I'm again going to create uh where do we create our equip item here?

**37:57** · Okay, so this still exists. Okay, that's okay. I guess we can delete it. We don't need that anymore. Let's go ahead and create uh control shift A. Let's create a uh um pickable item.

**38:08** · And we'll we will put it uh right here.

**38:16** · Well, I don't know where it's at. Where did it go?

**38:21** · Okay, let me delete it and return it again.

**38:27** · Item and let me bring it here. All right. And let's set the weapon data.

**38:32** · Let's set that to a shortsord. So now it should automatically create it and also apply the proper material. So if I go here, I should have the sword and it's applying the proper material. And I want to check now that if I unhighlight it, it should uh pick a line item here, it should also work and revert it back to the default material.

**38:58** · Okay, so this is working well. So this means we actually don't need to keep track of the original material. Let me just go ahead and delete this code here since we don't need it. Okay, I'll just pause here for a second so you can look at the code. And basically, again, we're going to be using this for everything that's on the ground that can be picked up. We don't need these two lines anymore. We'll be um using this basically from the player code. So the player code once the ray cast collides with something that's pickable, we will call the highlight method. And whenever we're looking away, we'll call the unhighlight method.

**39:30** · So, okay. So, let's hop over to the player script. And I believe we're going to need a reference to this select raycast. So, right click, access as unique name. Let's hop over into the code of our player. And let's drag our node into our code here.

**39:49** · And we're going to need to keep a reference towards what the player is actually looking at. So, let's call this var current pickable focused item.

**40:02** · Uh it should be a pickable item actually.

**40:07** · Okay. And by default it's going to be set to null. And as part of the process uh no because we want to check for collision. So it's going to be part of the physics process. Okay. I'm not a big fan of having all of this here. But um we'll move it later. Let's go ahead and just have a method maybe uh here called check for uh focused or selectable. Check for selection.

**40:33** · Yeah, I'm not great with names. If you find a better name, please go ahead.

**40:37** · Okay. Uh check for selection. This does not return anything. So, what do we want to do? Well, first of all, let's look at what our select raycast is looking at and if we're detecting anything. So let's just have a target node for now.

**40:55** · And if our select ray cast is colliding.

**40:59** · So remember right now it can only collide with uh selectable items with pickable items. So var collider uh equals select raycast.get collider. And this should be a pickable item. But let's just uh double check. So if collider is pickable item then uh target node equals collider. Okay.

**41:24** · So after this line after this if here either the target node is nothing if the player is not looking at anything that's pickable or it's something that's pickable. So now we just need to check whether what he's looking at is actually different from what the player has already been looking at which is what we're going to store as part of the current pickable focused item. I'm not big not a big fan of that name either. So if what the player is currently looking at is different from the currently focused item then what do we want to do?

**41:54** · Well first of all uh did we have something here? So if if this was not null uh then that means that it was a different object. So, we need to unhighlight this.

**42:08** · Unhighlight.

**42:10** · And And then let's uh set that to null for now. And then let's set it to uh I guess we don't need to set it to null. We'll set it to target node.

**42:28** · Okay. And if our current pickable item is pickable item, so this can still be null, then we'll go ahead and highlight it.

**42:42** · Okay, so let me go over the code real quick. So you press enter here. So this is what the player is looking at. And target if he's not looking at anything, then target is going to be null. So there is multiple cases here. Either the player was not looking at anything or he was look or they were looking at something and then this is either something or it's nothing. In the case where those two things are different then basically what the player is looking at is now different from what they were looking at before. First let's check if they were looking at something.

**43:10** · But if they were looking at something that means it's different from what they're looking at today. So now we want to unhighlight what they were looking at. And then we want to change the value of what they're looking at to the new thing that the player is looking at, which still can be null, right? So because it can still be null, we don't necessarily we're not necessarily able to highlight it. So we only want to highlight it when it's actually a pickable item, right? So if this is if this is null, this is going to be null and this is going to not enter this if if condition.

**43:39** · All right. So if we try this out, uh we should see if we can highlight the sort here. Okay, it's not working. Um, well, that's actually perfect. It's it's a perfect uh way to illustrate how I typically debug those types of issues.

**43:53** · And the first step that you want to do whenever you debug collision issues is to go into the debug menu and set the uh visible collision shapes. You just want to make sure the shapes do exist and that they collide with the raycast. So, if I go back into the game now, so you should see the shapes for all the walls.

**44:07** · We could probably tune those down a little bit. Uh, and if you go here, you'll see. Oh, it's a bit hard to see, but there's actually no shape uh on the sword. We did not create one. And so this is probably going to the problem.

**44:21** · So, let me go into the pickable item here. If you go into the 3D scene, yeah, there's there's no shape here. So, it is first of all, it's complaining that there's no shape. So, there's nothing to detect. Um, but also the shape itself is going to be dynamic. It's going to depend on the mesh itself. So we're going to need to create the shape dynamically in the code. So for first let's go ahead and start by adding a collision shape. So control a collision shape 3D.

**44:47** · And let me just rename this to collision shape.

**44:51** · And we're going to need a reference to this in the code so we can assign the shape directly uh in the code. And I may set the color to some form of red. It'll be easier to see whenever we debug this again. Um, all right. So, right click, access as unique name, and then let's hop over into the code. We're going to need to drag this into our codebase here.

**45:16** · All right. And then, uh, there's a handy method to create a um, a shape from a given mesh. So, we're going to do this here. After we've created the uh the the mesh node, after we've assigned it, we want to set the shape of our collision shape. So, collision shape.shape equals our mesh node dot uh so we want to get access to this uh to the mesh object of the mesh instance 3D. And then there is a method called create convex shape.

**45:44** · And you can click into it to see, but basically creates the convex polygon shape 3D from a mesh. you can actually um see what this does in practice. So if I go into uh let me once again create a new scene from this.

**46:01** · Go into the 3D view here. Okay. So here's my mesh and this you have access to the mesh object here. If you click here you can create a collision shape.

**46:10** · This is exactly the same thing as what we just did in the code except here you have a little bit more parameters. Um you could actually set those up whenever we make the call to create convex shape as well. And basically if you uh let's say simple convex here it's going to create this uh collision shape that you can see here. And so that's exactly what we're doing dynamically in the code uh rather because we don't know what mesh it is. Right? So we want to be able to dynamically generate the collision shape. All right. We don't need to save this. So let me say don't save. Let's try this again.

**46:43** · Uh if I go here and there we go. All right. Now, it does appear like everything is actually colored, but I believe this is only the uh the ray cast that's changing colors, but we're going to the only way to know for sure because I do think we duplicated the material is to uh go back into debug and remove the visible collision shape and then press F5.

**47:04** · Now, as I go close to an object that's willing to get picked up, I now see that it properly highlights and unhighlights.

**47:10** · Okay? And we can do this with any object, right? We can creately create like an axe. As long as it's a pickable item, it's going automatically going to generate the shape, generate the mesh, generate the collision shape. All of that's going to be done in the code. And that's going to be super convenient. Uh and actually when we pick up, so when we're going to click or press the grab button, what we're going to do is we're going to transform this uh pickable item, we're going to actually destroy it, replace it with a uh equipped item, and then we're just going to move that equipped item onto our hand. So, it's going to be a little bit of a magic transformation between two different scenes or completely different scenes.

**47:43** · One of them being in area 3D and the other one being a node 3D, but it's actually going to be completely transparent for the end user. And uh and that way we'll be able to transition seamlessly between the various states of our uh equipment and that's going to be uh very powerful. All right, so let's go ahead and do that transformation real quick. And I think um we'll be close to the end of this episode. So, let's go into the player script. And here what we'll want to do is uh we'll need to have a function to check whether the player is actually looking at something that's not null. So this can be null.

**48:14** · Let's just have a quick handy method. Um maybe here at the bottom function can pick up object is going to be a boolean. And what we want to return is whether our current pickable focused item is something different than null.

**48:31** · And then let's have a method to actually pick up the objects.

**48:36** · It's not going to return anything. So, our pickable object is going to be our current pickable focused item. And if that object contains a some weapon data, then we will want to um probably I think need a reference to this equipment component here. Uh let me right click access as unique name. Let's drag it into the code. Uh keep it like this. Okay, I'm actually going to call this equipment.

**49:07** · I think it'll be better than equipment component. Okay, so if we have reference to the equipment, we'll just need to uh equip the weapon here. And so the only thing we'll need to pass is this data property. Again, this is the whole this is the whole value of this system. You don't need to pass objects. You just need to pass the data and then the objects will automatically create themselves. Um okay, so this will create a new uh equipped item. So, we want to get rid of this pickable item that's on the floor. So, we can just go ahead and uh destroy it.

**49:43** · Q3. Okay. And um let's uh let's try this out. So, for this to try this out, let me uh go onto the player and I'm going to remove Yeah, let's go into the equipment and let's remove the weapon data. So that way the player should not start with any weapon. Okay, empty-handed. And when they go here and okay, I actually actually need to be able to call the uh the method that we just created pickup object here.

**50:14** · So for that um maybe so we want to check for a key input. So maybe as part of the process here if input is action just pressed I think we had the use which is the E key and player can't pick up object. Oh sorry the n can pick up object. Then let's go ahead and pick up object.

**50:42** · Uh okay let's try this out. F5. And if I go there and I press the E key.

**50:48** · There we go. I have now uh my weapon in hand. And you know, you can see that the transition is is pretty terrible. We can actually fix that pretty easily. But those are two completely different scenes. And uh now my my weapon behaves properly. Uh we can probably use a small tween. And when we when we generate the object uh here, this going to create our weapon. Maybe we can pass in as argument the transform of the previous uh object here. And then we can twin the transform from its current position all the way to the player's hand.

**51:19** · Um, so that should be a pretty pretty small and nice polish that we can do here. So for that, we're going to need to pass \[clears throat\] a second argument to this equip weapon uh method here.

**51:33** · And maybe we call this pickup transform.

**51:38** · By default, I'm going to make this the uh transform 3D.identity.

**51:44** · That way if we don't pass anything um the transform is going to remain the same. And after we add the child let's look at the property which we have. If pickup transform is different then transform 3D identity. So basically if we if we passed an argument then we will um let's set the global transform to this pickup transform.

**52:15** · So again this is going to be the transform of the object on the ground.

**52:18** · And then let's create maybe a a quick uh separate function to do a twin to animate it. Uh animate to hand maybe weapon. I think that should work.

**52:33** · Animate to hand.

**52:36** · And this is going to be the uh equipped item.

**52:45** · Okay. And here we're going to create a very simple tweener equipped item create twin. And let's uh let's set the uh let's do a couple properties first.

**53:01** · Set transition to tween the transition.

**53:05** · Let's do cool. Uh do we do Yeah, I don't think bounce or elastic would work.

**53:10** · Maybe we just do quad. So it's pretty fast. And then let's set the ease motion to maybe ease out. So that way it starts out fast and uh ends up pretty uh pretty slow and then let's run in parallel.

**53:28** · We're going to run both the position and the rotation. So let's twin both of those properties. So let me go down here. Twin.parallel dot twin property.

**53:41** · And we're going to twin the property of our equipped item.

**53:45** · And the property is position. And we're going to go to vector 3.0. zero and let's make it last 0.4 seconds.

**53:54** · I wish I could just extend this a little bit more so you could see more of the code here. And let me remove this input here. Okay. And we'll do the same thing for the rotation except maybe the rotation will make it go a little bit faster so that way it rotates in hand properly.

**54:10** · All right. I'll just pause here for a second. So basically if we do pass a transform then whenever we equip the weapon we'll want to start the object that we just created. We want to set it to that transform and then we'll want to twin the position and the rotation so that it goes back to zero. Um, and I think the only thing we need to do now is whenever we are in the player and we equip the weapon here, we want to pass the uh the actual pickable object transform.

**54:39** · Uh this one here.

**54:49** · Okay, let's try this out.

**54:52** · I go here and I press E. There you go.

**54:55** · So you can see basically as soon as I click as as soon as I press E, even though the object still is on the ground, it actually transforms it right away into an equipped item and then it just brings the equipped item over to my hand um in a small motion. Okay, I think this looks pretty good. Let me just make sure that it works well for the axe as well. So let me go back into the level here. And here in this weapon, I'm going to swap this uh a quick load for an axe.

**55:26** · And you should see the exact same behavior here. Press E and it goes to my hand. Okay, perfect.

**55:35** · Okay, and well, with the weapons actually working and the ability to actually pick them up, this is going to be it for this episode. So, I hope that uh you know, everything made sense to you. I do think that, you know, properly using resources can really make a huge difference in how you structure your code. Uh it's really a great concept to understand and it will make a huge difference uh in your game. So, we still have a couple more states to code for our weapons and then we haven't started on the uh shields either.

**55:59** · So, in the next episode, we'll actually create a thrown item state uh which will be of type rigid body 3D as it needs to bounce off the walls and it needs to also uh collide with the enemies here. And then we'll work on transitioning between the uh equipped item state, which we have now, and the throw throw an item state.

**56:18** · So, you'll see it'll be a lot of fun to see the weapons fly all over the levels.

**56:22** · And then as they um bounce on the walls and just fall to the ground, then we'll just swap those objects uh back for yet another pickable item. So, we'll just destroy that scene and create another scene for uh of type pickable item. And uh yeah, this will bring us to one of the most uh fun aspect of the game, which is to actually throw weapons at enemies. So, we'll take the time to implement this properly. Uh, we might have like an an additional state which I think is called the uh impal impelled state impelled item.

**56:48** · Basically, like the weapon is going to be sticking inside the body of the enemies and they won't be pickable anymore. They'll just be u that's like a one-shot kill. So, I I think we just can't let the player just uh pick up the items right away. But, you'll see. It's also going to be an opportunity for us to talk a little bit about ragd dolls, which I think is a really fun aspect of combat and just creating procedurally generated uh death movement that looks natural. Uh and it's actually quite easy to do in good. So that will be really fun and uh so I'm pretty excited about the next episode.

**57:20** · So that being said, thanks so much for sticking around. Really means the world to me. I know that these lessons are these episodes are pretty long. Um I do hope that everything makes sense to you.

**57:29** · Otherwise, you know where to reach me.

**57:30** · just hop over into the comment section and just let me know what you think. Uh if you do like this content, if you want to help promote the channel, please go ahead and use those like and subscribe buttons and let my friends over at the YouTube team know that I exist. All right, with that being said, uh it's time to take a quick break and I will see you in the next episode.