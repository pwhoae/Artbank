---
title: "Unreal Engine 5: Parkour Series Showcase"
source: "https://www.youtube.com/watch?v=unOExKGUMTw&list=PLd6LaoDjaEtO4atciX9UVhHfWL6ww1BUq&index=1"
author:
  - "[[UE5 Poseidon]]"
published:
created: 2026-09-27
description: "💲Complete Parkour Series Project Files: https://ue4tutorials.gumroad.com/l/parkoursystems======================================================The parkour s..."
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=unOExKGUMTw)

## Transcript

**0:18** · welcome to the first video in a new Parker series this video will cover realistic sliding the player will continue sliding faster if they slide down a slope and gradually stop the system also aligns the player to any surface they are sliding \[Music\]

**0:41** · on if you slide under an object then the player will Crouch instead of standing up and remain crouched until there is \[Music\] space the player can slide under walls that they cannot walk through with accurate capsule size changes

**1:04** · the player will stop sliding if they hit an object while sliding if you slide off an edge then the slide will immediately cancel rather than the animation playing through the air as well first we need to get the animations to use I will be using them from mixo the first one will be running

**1:58** · slide

**2:28** · e

**2:58** · e

**3:28** · e

**3:58** · e e

**4:49** · make sure to enable root motion for sliding from the animation window find the point in the animation where the sliding ends and set the end time of the Montage to it this is since the player needs to continue sliding based on the slope of the floor below them next make the Montage Loop its final frame by first creating a new Montage section and dragging it to the end set it to looping by clicking the small square icon in the right and pressing

**5:22** · Loop set this Montage we created as the Montage to play in the player blueprint next we will create a timeline to scale the capsule component make the length of it 0.2 the starting will be at 0 comma 0 and the end will e at 0.2 with a value of one

**6:03** · create a custom event that will reverse the timeline this will be used later before reversing it we need to add a branch condition that will only reverse if the player is not crouching next we will set the capsule components half height and radius

**6:40** · add aurp node to change the value smoothly set the a value of the half height to the default one which is 90 for me and the target value to 35

**7:03** · remove the set capsule radius as we don't need it instead add a set relative location node for the mesh set the mesh animation mode to use animation and select the running \[Music\] slide also set the capsule half height to 35

**7:35** · \[Music\] move the player down until he is floored with the new capsule height the zv value is the target offset we will use add alur Vector node for the set relative location and set the Z component of the target to the value we just obtained \[Music\]

**8:06** · reset the animation mode and Z location \[Music\] \[Music\]

**8:43** · now add a set timer by event \[Music\] node set the time to 0.01 and looping to True create a new custom event as the input of it called Trace floor while sliding \[Music\]

**9:03** · add a sequence node now create a new macro to check if the player is on the floor this will make sure the player is grounded while sliding and if they fall off then the sliding stops add a capsule Trace by \[Music\] channel the start and end location will be the World location of the

**9:36** · mesh the radius will be an input with a default value of something like four the half height will also be an input with a higher default value of something like 18

**9:59** · next drag out of return value and add a branch if it is false then set is sliding to \[Music\] false add a montage stop as well \[Music\]

**10:30** · make the blend out time and input with a default value of something lower than one like \[Music\]

**10:52** · 0.2 add this macro as the first path of the sequence \[Music\] promote the set timer's return value to a variable and name it slot Trace

**11:12** · handle clear and invalidate at the timer if the check on floor macr output path is reached next create another Macro for aligning the player to the floor \[Music\] add a set actor rotation

**11:43** · node we will use a inter node to smoothly change the player rotation the Delta time is the world Delta seconds the current is the actor rotation \[Music\] for the Target first get the current floor from the character movement break this structure and then break the hit

**12:19** · result make a rotator from ZX with Z being the impact normal X will be the actor forward Vector connect this to the Target the math behind this is that it will find the angle between the player and the floor using the normal of the floor which is basically the angle at which a perpendicular angle is Created from the impact set the inter speed as an input with a default value of

**12:56** · five add this macro as the second path of the sequence create one more Macro for checking if the player collides with anything while sliding add a sphere Trace by

**13:26** · channel the start and end Position will will be a socket location from the mesh with an

**13:42** · offset set the zv value of the offset to an input I will leave it at zero but you can change the value if you need to for the actors to ignore make an array the only element in the array will be the hit actor from the current floor's hit

**14:28** · result

**14:58** · e

**15:27** · e

**15:57** · e e

**16:30** · duplicate the clear and invalidate node after this macro as well I will set the draw debug type as an input as well so it is easier to debug the \[Music\] \[Music\] system as you can see the trace appears when sliding

**17:06** · make a new Vector variable called current sliding \[Music\] velocity open up the sliding montage and the characters animation blueprint \[Music\]

**17:33** · add a new notify track add a new notify called calculate \[Music\] velocity set the position to just before the last \[Music\] frame add one more notify call check should slide and set the position to the final

**18:03** · \[Music\] frame add both anom notifies in the animation

**18:23** · blueprint for the calculate velocity cast to the player character and set the current sliding velocity \[Music\] the value of it will be the velocity from the character movement component

**18:53** · \[Music\] \[Music\]

**19:19** · create a new custom event to check if the player should continue sliding \[Music\] call this event in the check should slide

**19:35** · \[Music\] notify for the event first add a branch that checks if is \[Music\] sliding if true add another \[Music\]

**19:56** · Branch create a function to to find the current floor's angle and \[Music\] Direction add a return \[Music\]

**20:18** · node copy the current floor brake hit result code get the dot product from the normal \[Music\] the second Vector will be 0 0 1 get the inverse cost of this and drag it into the return node to create a new output name it

**20:47** · angle next make a rotator from XY with X being the normal and Y being the actor forward vector split the Rotator and multiply the X and Y \[Music\] components add a greater than zero node and drag it into the return node to create a Boolean output name this is slope \[Music\]

**21:23** · up add the function set the function as a pure function the condition of the second Branch node will be a slope up if true then set the velocity from character movement to the current sliding

**21:57** · velocity next set a timer by function name and promote the return value to a variable called continue sliding \[Music\] \[Music\] handle add theine floor angle and Direction function and promote the angle to a variable called current angle

**22:39** · if the branch returns false then add a montage play node duplicate the sliding montage and rename it to Sliding end

**23:02** · delete the Montage section and the two notifies set the start time to the same end time and reset the end time to the default one so this is just the getting up portion of the animation set this as the Montage to

**23:26** · play add a retriggerable with a duration of 0.02 then add a sequence for the first path add a branch node get the slide Trace handle and check if it is valid

**24:07** · if true then clear and invalidate the

**24:25** · timer in the second path call the revert cap custom event we created \[Music\] earlier make a new custom event called play Get Up animation and connect it to the Montage

**24:49** · play make another custom event called continue sliding copy the name exactly from the right panel and paste it into the function name from the set timer by function name set the time to 0.001 and looping to True first we will set the current

**25:27** · angle set it to the angle output from the F floor angle and Direction function you can also add AF inter node with these settings if you want the check to be gradual rather than \[Music\]

**25:49** · \[Music\] sudden check if the output is greater than three for the branch condition this check decides if the player should continue sliding based on how steep the current floor

**26:15** · \[Music\] is if the branch is true then create another branch \[Music\]

**26:35** · get the vector length of the player velocity and check if it is less than a value I will use 80 this value determines the minimum speed at which the player will continue sliding and if it goes below then player stops sliding if true then clear and invalidate the continu sliding handle \[Music\] call the play Get Up event as \[Music\]

**27:10** · well I will promote the minimum value to a \[Music\] variable if the branch is false then add a sequence add a movement input node and the world direction will be the forward Vector of the actor rotation with only the Z

**27:53** · component set the max walk speed and Max acceleration the walk speed should be the maximum speed you want the player to slide at the acceleration will be for how slow or fast the player speeds up for this video this will be static but you can make it even more Dynamic by setting the acceleration based on the slope steepness

**28:49** · add the check if hit surface macro to the sequence as well connect the true output of the macro to the clear and invalidate node

**29:34** · \[Music\] \[Music\]

**30:05** · add a custom event for resetting the XY \[Music\] rotation get the actor rotation and split the structure make a rotator with only the Z value and X and Y being zero promote this to a variable called default your rotation this is what the target rotation should be once sliding ends as the ya is the direction the player was sliding

**30:35** · \[Music\] in copy and paste the timeline we created for scaling the capsule rename it to reset slide rotation

**31:02** · on update set the actor rotation for the new rotation add alur Rotator node the alpha will be the value from the timeline a will be get actor rotation B will be the default your rotation \[Music\]

**31:31** · on the uncompleted set the max walk speed and acceleration back to their default values \[Music\]

**31:52** · \[Applause\] \[Music\] call the reset rotation custom event in the third path of the sequence

**32:13** · node add a branch after this macro the condition is checking if the continue sliding handle is valid

**32:30** · if true then clear and invalidate the timer also call the revert capsule and reset rotation events if the branch is false skip the clear timer Noe and connect it to the events

**33:02** · call the play Get Up animation after the clear timer node which is connected to the check if hit surface macro as you can see the player gets up immediately when they hit an object while sliding the player also stops sliding if they start sliding but fall off an edge

**33:32** · reconnect this Branch node after the check if on floor macro I will set the capsule component to not be hidden in game so it is easier to debug the capsule is scaling correctly when sliding which allows us to slide under objects

**34:09** · to test the sliding mechanics I will change the map and add some new geometry

**34:43** · the final feature will be making the player Crouch if they slide under an object and there is no space to stand up once the slide ends open the sliding and montage and add a new notify call check ceiling add this notify in the first frame open the animation blueprint now create a new custom event in the player blueprint called trace for

**35:17** · ceiling add the anom notify in the animation blueprint and call the custom event in it

**35:34** · for the event first add a capsule Trace by channel the start and end Position will be the actor location with a z offset I will use a value of 70 but you can change the value if you are using a different character or animations set the radius to the same as the capsule component radius the half height can be something like 50 this value should make

**35:57** · the capsule's topmost point be where the player's topmost point would be if they were standing drag out of the return value and add a branch if it is true then add the Crouch node add a montage stop node as well to stop sliding and set the blend out time to 0.2

**36:36** · create a new blend space 1D for your character for crouching set the horizontal axis name to speed and the maximum value should be the Crouch speed add the Crouch idle at the beginning hold shift to snap to the

**36:57** · it add the Crouch walk forward to the end of the blend space in the player blueprint click on character movement and set can Crouch to True set the max walk speed Crouch to a slower value I am using 150 the player is crouching now but we need to set up crouched

**37:24** · animations drag out of the movement component get is crouching and promoted to a variable I will use a blend poses by bull node to select between regular loc or Crouch but you can replace this with a more advanced setup if you want \[Music\]

**38:08** · \[Music\] \[Music\] \[Music\]

**38:37** · increase the duration of this retriggerable delay so there is enough time to check if the player is crouched before trying to revert the capsule it works now you can skip this next part if you want the player to remain crouched Even After exiting under an object and want to uncrouch manually

**38:58** · create a new Boolean called Trace \[Music\] ceiling set it to true on the false path of the branch set Trace ceiling to false \[Music\]

**39:28** · \[Music\] add the uncrouch node before setting Trace ceiling to false add a branch before crouching that only crouches if the player is not already crouched

**40:06** · do the opposite before UNC crouching this is not 100% necessary but just a quick check in case of any bugs since we will be calling this event every frame the player moves while tracing for the ceiling after the movement input add a branch that checks if Trace ceiling is true and calls the trace for ceiling event \[Music\]

**40:42** · that is all for this video you can purchase this project using the link in the description if you want if you enjoyed like And subscribe for more content thanks for watching \[Music\]