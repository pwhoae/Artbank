---
title: "Grid-Based Building System in Godot (First-Person 3D) - Tutorial"
source: "https://www.youtube.com/watch?v=lsg9QSxbdxM"
author:
  - "[[Ragdev]]"
published: 2025-07-06
created: 2026-07-11
description: "Learn how to make a grid-based building system in Godot 4, from scratch. This tutorial shows how to place and rotate object in first-person view, similar to systems used in survival games like ark or"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=lsg9QSxbdxM)

Learn how to make a grid-based building system in Godot 4, from scratch. This tutorial shows how to place and rotate object in first-person view, similar to systems used in survival games like ark or fortnite  
  
Assets:  
Kenny's website: https://kenney.nl/  
Asset: https://daandev1.itch.io/modded-kenny-assets  
  
Includes:  
\-Grid snapping for accurate placement  
\-Preview system with visual feedback  
\-First-person controller integration  
\-Rotating parts before placing  
\-Modular structure logic  
\-Deleting objects  
  
Built entirely in Godot 4 using GDScript. Suitable for survival, sandbox, or creative building games.  
  
Let me know in the comments if you’d like a follow-up for removing parts or saving builds.  
  
Consider buying me a coffee!  
https://ko-fi.com/ragdev  
  
Full fps guide: https://youtube.com/playlist?list=PLBwGzCDhAixXcA\_lysb8R83V1SxcS5CaT&si=66UAbSYb-Qd\_MGPn  
  
#godot #gamedev #godottutorial #godot4

## Transcript

**0:01** · This video I will show you how to make a gridbased building system with everything from object switching to placing, destroying, animations and rotating.

**0:12** · You don't need anything to get started.

**0:13** · I will show you how to make everything from sketch in this video.

**0:18** · Let's get started by spawning in the objects.

**0:22** · Once you open cadeau, your project shoot look something like this. I already have a player first person controller.

**0:30** · It's just really basic. If you don't know how to make one, I put a link in the description to one of my previous videos and of course a test scene which is the static body the mesh init and the collision shape. I also have two modos of a wall and the floor. You can download this at cenny.com.

**0:51** · also put a link in the description to this one. How this is going to work is we going to put a position right in front of the player the player turns head and the camera moves. We want the position to also move and at that position that's a couple meters in front of the player we gna spawn an object and it's gna move with the player when it's moving.

**1:11** · do your headnever here and add a marker 3D z transform to something like min 2.5 Vijf. Zo het is in front of the player.

**1:26** · I'm gonna call mijn hand target.

**1:30** · Save it. En go to your player script.

**1:34** · In your script, let's start by making some basic variables. We gonna need the first four are these. The first is a grid size. I put it at 0.25. You can increase it if you want a more blocky feel or set it at something like 0.1.

**1:53** · If you want a more free placing system, you need a ghost block variable. That's the block that spawns in front of the player. So you can see where you gna play something but not the actual block you can run into or remove.

**2:07** · We can set it equal to nul to start. We also need a list with objects. So we can carry the objects variable. And we need current object index. This number basically and this represents which item on list is currently selected. So now zero that means the first item in the list is selected.

**2:27** · We kunnen create a spawn item function.

**2:30** · Dan call mijn spawn ghost block and this just spawns the block. So the ghost block right now it's equal to no it's gna be equal to objects. So list and then the current object index. So again if it's zero just gna get the first object on the list. kunnen do instantiate to make it actual note get parent to add ghost block this here just means now the players over here we gna get it spent and gna get add not and that's gna

**3:00** · be the floor node but then it's just position at zer so we want to change it to our own position the de ghost block tot global position is equal to self tot global position then we can decrease the y minus equal block global position.

**3:17** · Y minus equal one that lowers it a little bit to spawn somewhere at our feet we also need a snap to grid function of course you want grid base building this one looks a little bit complicated but is really really simple basically get a position git snap right here to 0.25 25 and set position something like 1.26

**3:47** · and gna set it to gna snap it to get so for example the X let's say the X position is 1.26 and we want to snap it to git of 0.25 it's gna divide that by the gitnap so 1.26/ 0.25 25 is zoteen ik 5.02 kunnen rounded to 5 en dan we kunnen multiply bij de gitnap.

**4:11** · Zo 5 times 0.25 snaps exposition down to this number right here do that for every position we return that as vector 3 that becomes the snap position basically dat we can actually spawn the block and snap it to git we need to actually position the de block right here this is our hand target so

**4:44** · first we gna create a verbo on is just a reference to our hand target note right here kan move the ghost block if we have on to that position the new function building use the delta verbo right here we kan create a new position de snap plus which is gonna be a vector 3 gna equal it to snap to grid is the function we just made.

**5:16** · of our hand target if we move the player the hand target position move to move the block to that position using the snap to get function and darker tot global position and of course we gna give the kidsap verbo who just cre it but this verbo just calculates the position where it needs to be we still need to move the actual ghost block there right here ghost block global position is equal to lurp.

**5:46** · So this just slowly moves this value to this value right here. So ghost block to position is equal to lurp ghost block to position and the snap position and to go smothly to.

**6:07** · But this function doesn't do anything yet because we haven called it. So let's go to the physics process function.

**6:16** · So if ghost block this right here means if ghost block exists and if it's not equal to nul then we do the building this every single frame set position every single frame the ghost block now at the start is still n fix first code project settings input map key equ be zo if input is action just press

**6:51** · al have a ghost block ex destroy do destroy function next

**7:16** · save scening floor object or wall object new scene make it a static body kan call mijn floor gna add a modo of course I already pasted mij in the main scen zo' just Get this one.

**7:43** · You can get this modo at the link in the description.

**7:47** · Make sure to call modo collision ship make sure it fits exactly the size of the modo. So doesn't clip other objects.

**8:01** · Make this one.

**8:08** · Save it. Gna make a new folder called objects.

**8:14** · So this is just the floor model. You can stand on it with a collision shape but once we replacing it, we also wanna to check if it's not clipping with something and we also wanna to check if it's not just floating in the air. So let's make a new hitbox in area and call it clipping hitbox.

**8:32** · Een area 3D is just an area and you can check whether notes are inside of that area using collision shape also make the collision shape the same as this one a little bit smaller something like this. So if the modo is clipping with something that's inside of this area, you can place it.

**8:58** · For our floor object like this, make sure to make the Y a little bit smaller so the legs can still clip with the floor so it looks better on un even train.

**9:10** · I'm also gonna make a floating hit box.

**9:13** · This hit box just checks whether or not it is colliding with something. You don't want it to float in air.

**9:21** · En this collision shape is gna be the exact same size as the original.

**9:27** · Save it. And go to the top note, the floor node and go to hit node groups.

**9:34** · Make a new group. I'm gonna call it object.

**9:40** · Before we start coding, we also wanted to turn a bit red or blue whether not it's clipping you can place it. So go to material overlay go to Albedo.

**9:53** · We can move the color to make it a bit more red. Darken it a bit.

**10:00** · We only want it to look like this when it's clipping with something or floating in the air you can't place it. Take this material save as red do the same for blue.

**10:17** · Save it.

**10:20** · I'm gna call this blue en als kunnen change in the code the transparcy a little bit. So it looks like it's ghost block it and let's start coding. Make sure to call it something generic like object and not floor wall. We wan reuse script for whatever object you're placing.

**10:44** · First let's start with some references to the nodes we have.

**10:50** · modo for our mesh instance en collision shape then two hit boxes want two materials as variable red material blue material is equal to load and then this you have to replace that with the scenes we just had these are the ones I made before I started recording go to the folder we made and you can just drag them in

**11:22** · the last variable is a can place variable and this is a bullion so it's true or false and this just decides not we can place it process function in clipping box is the boxing checks ex of course But once we place it, we want to destroy the clipping box and the floating box.

**11:51** · It's just a ways to keep checking if it's clipping or floating whether it's already placed. So if it exists, we kunnen set the mod transparity 0.6.

**12:00** · The can place variable so whether not we can place is equal to get of clipping hitbox tot get overlapping bodies. So this right here gets all the overlapping bodies. And if that is empty, so if the clipping head box is not eh doesn't have any overlapping bodies buuse that's what we want. Of course we don't want it to clip and if not the floating hit box get overlapping bodies is empty.

**12:26** · So if the floating hit box is overlapping with something if both of these are true we end statement can becomes true. And if one of these is false eh can place becomes false. So if we can place we set the model totial overheid to blue material and if that's not the case we set to get material because we can't place of course we also need two more functions.

**12:55** · A place function for once we decide to place it.

**13:00** · So once it w delete the clipping hit box en floating hit box bij the QQ free method de model over to set to nul so no override and right now the de overheid is also nul and then it just becomes a normal texture the transparency zero and the collision shape to disabled is false right what I

**13:22** · forgot to do to just now we don't want it to clide with anything but when it's floating so we kunnen set the disabled variable on the collection shape equal to true en place it we set it back to false and then destroy function and this just runs the QQ function on ourself save it can see destroy

**13:46** · is the method we just code over here but that is just our floor note we also want to make a wall the other notes in static body 3D the same as the floor just gna get my bottle name it wall add your object script

**14:11** · select the top notes notes groups and add your object group so it's in the same as the floor right here save it as wall en Colition shift.

**14:32** · Again, make sure this one fits exactly.

**14:39** · En add your two hit boxes.

**14:42** · The first one is clipping hit box. That is a bit smaller than the original collision shape.

**14:51** · Something like floating hit box.

**14:55** · En that one is the exact same size storage ination shape.

**15:00** · Save it. And now two identical objects.

**15:04** · Go back to your player script list all of objects. Empty all of the items we made objects to append then our floor object first preload.

**15:24** · En just drag in the same for wall now that we added objects to our objects listange between them by changing this number to project project settings I already have these two inputs E for next item and Q for previous item first scroll down and create a new function I'm gna call it object change and gna take one parameter direction which is gonna be a one or negative one.

**15:59** · So if ghost block if one exist it's gna get the ghost block and it's gonna delete it and it's gna get a current object index and gna add the direction. So if the direction is one it's gna add one and if the direction is minus one it's gna add minus one. So actually it's gna subtract one and can get the previous item in the list or the next one.

**16:21** · But of course the list only has a zero and a one buuse it is two items. So what if you already have the second item and you press on next item we don't want it to just error or don't do anything we want to then so that it loops a little bit. So if current object index is smaller than zero, it's gna add the object size. So if for example the current object index is zero and you already have the first item and you click on Q for the previous item, it's gna subtract one get minus one.

**16:55** · And this here becomes true. It's gna add the objects size and the size is two. So minus one plus two becomes one. get the automatically the last object in the list and it loops back around and this right here is the same but if you press E instead of Q and it's already on the last item gonna just subtract the whole size and loop back around so when it's fixed the the current object index it's gna spawn the ghost block again so if we go back to that function

**17:27** · is just gna get the ghost block and the current object index which is now different from what it used to be G spaw een du object before we can start testing we just need to add two more things to the building function the first one is rotating code project settings and I already added the rotate key and set it to R.

**17:48** · So if input is action pressed rotate it's gna get the ghost blocks current rotation add 90 deg I'm use degrees to radi the rotation right now is in radiance and 90

**18:05** · degrees is just easier the last thing we need to add in the bing function for now before it actually works is placing actually bu right now we can rotate it we can spawn it in but we don't have a button to place the block project settings input map en I added left click voor the left mouse button so if input is action just press left click and ghostblock to camp place this is the verbo we just created and that checks if the clipping hitbox and the floating hitbox works.

**18:37** · If both of these are true, it's gna create a new variable block instance and it's gna get the current object. is the de index we just changed instantiate it so make it real actually gna get our parents right here the player is here in the scene and get parents and add whatever the object is kan run the place function but then it spawns of course we wanna change the coordinates to the coordinates of the

**19:10** · hand target right here kan get the global Globo transform as equal to snap to grid the function we created right here then the ghost clock tot global transform so again the position and the grid size exactly the

**19:30** · same as the snap position basically and kunnen set the rotation equal to the new rotation save it but before we can test we need to change one more because we object change function here but is never actually called so hier in physics process function if we have a ghost block kan check if inputs dat is action just pressed next item kanun object change function

**20:03** · the direction of one en prev item same next item minus Save it. Run it.

**20:17** · If you press on B and object appears and it becomes blue when you can place it. You can switch object rotate them. But this it works but we can add a little bit of animation and lurping in the codes to make it look more smooth.

**20:38** · Before we do that, let's add a way to destroy the blocks placed. Go do your player scene and as of the head set in the direction of our hand target minus 2.5 V

**21:02** · save it go back to the script and add a reference to it de top on device en scroll down to the process function or the physics process in this case.

**21:17** · So right here we already have a if statement for if a ghost block exist but we only wan to be able to delete the blocks if one doesn't exist. So we can add 11.

**21:27** · So ghost block does not exist and recast the recast which made is colliding something here if input is just press right click if the re tot kider is in group object that's why we added them to the group over here both the form are in object

**21:50** · z is tru it's g kan get the request tot collider zo de object En kan destroy function the object the destroy function just deletes it using Q3 save it. Go back to your player script.

**22:07** · The last two things I wan to add is a smooth rotation and a smooth animation for once you place and destroy it. Let's start by making two new variables. First is a normal variable that is equal to the new rotation.

**22:22** · It's currently rotated zer degrees and the new rotation is 90 degrees. This right here becomes 90 instead of just setting it directly enotation complete variable. This is a booan and go back to the building function. So instead of if input is action just pressed also wan to check if the rotation is complete. In that case set rotation complete equal to false of course bu rotate again and instead of adding it directly as I set just gna change the new rotation.

**22:53** · Z eerst first we set the new rotation to the current rotation then we add the 90 degrees and if the rotation is not complete add marker not complete do this here use the lurp function that is the same as h takes two values this value and this value and a third value that dictates how fast it goes and it slowly moves this value to the new value.

**23:25** · So instead of just setting the rotation is equal to the same rotation plus 90 degrees gna set this rotation is equal to this rotation but somewhere in between the old rotation and the new rotation that's the same as we use for the positioning right here.

**23:43** · We still wan to set the rotation complete do true once the rotation is equal. So just gna set if the current rotation is equal to nul rotation. Z the rotation complete in equal to true because then the de rotation is over.

**24:00** · Let's finish this by making some animations for our objects.

**24:05** · Do your floor node en add animation player.

**24:11** · Kun cre new animation and call it place.

**24:15** · Dan make it zero points too long.

**24:19** · Zoom in a bit.

**24:23** · So at the zero mark I'm gna make it a little bit smaller look like it's growing point to 15 skill to 1.1 end skill one change

**24:51** · zo look something like this click animation create a new one call it destroy also gna make that one 0.2 G start take the whole note start at one en 0.5.100.

**25:28** · Z once we destroy something d animation place call mijn enim save it code script add another reference to note on voor once we place it we wan to play the place animation once we destroy it we wanna play the destroy animation but this just place the animation and we still want it to actually delete once the animation is finished As you can see the destroy animation ends the x value at 0.01.

**26:03** · So just gna check if is the case if self tot scale tot x is equal to 0.1 or 0.01 tutorials to like subscribe any questions Ho.