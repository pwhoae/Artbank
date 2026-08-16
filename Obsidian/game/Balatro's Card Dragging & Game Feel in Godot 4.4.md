---
title: "Balatro's Card Dragging & Game Feel in Godot 4.4"
source: "https://www.youtube.com/watch?v=x5RVUs6Qhls"
author:
  - "[[Mostly Mad Productions]]"
published: 2025-04-13
created: 2026-08-16
description: "Recreate Belatro's Card Dragging in Godot 4.4[Free Assets] To Follow the Tutorial ► https://www.patreon.com/posts/balatros-card-in-126154478[Project Files] ► https://www.patreon.com/posts/balatros-"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=x5RVUs6Qhls)

Recreate Belatro's Card Dragging in Godot 4.4  
  
\[Free Assets\] To Follow the Tutorial ► https://www.patreon.com/posts/balatros-card-in-126154478  
\[Project Files\] ► https://www.patreon.com/posts/balatros-card-in-126154498  
  
Follow me here:  
• Patreon ► https://www.patreon.com/mostlymadproductions  
• Itch.io ► https://mostlymadproductions.itch.io/  
• OTHER Channel ► https://www.youtube.com/@VylanYT  
  
Chapters:  
0:00 Set-up Card scene  
1:14 Set-up Card script  
2:13 Adding Left-Click Input  
2:28 Finishing Basic Card Script  
3:15 Creating AutoLoad Script  
3:45 Finishing Polished Card script  
4:54 Coding Balatro-Style Card Polish  
7:11 Set-up Mouse scene  
8:02 Set-up Mouse Script  
  
In this video you will learn how to recreate Belatro's card dragging system and polish in the Godot Game Engine Version 4.4. Additionally you will learn to recreate the position of hovering over a card, clicking a card and dragging it, as well as the rotation of cards when moving them. You will also learn about creating a custom style mouse cursor.  
  
Tags: Godot 4.4, Godot, game development, card dragging, game feel, tutorial, GDScript, drag and drop, card game mechanics, game design, indie game development, Godot tutorial, UI design, game polish, Balatro, card system, game programming, Godot engine, interactive tutorial, visual scripting, game UI, 2D game development, programming tutorial, card interaction, game prototype, user experience, game development tutorial, digital card game, GD Script, 4.4, Belatro, Roguelike  
  
As Thanks, Enjoy this Steam Key for Vylan!  
6RYHZ-72YIK-TRK7Y

## Transcript

### Set-up Card scene

**0:00** · You can download the art seen in the video for free link in the description.

**0:02** · Drag and drop cards and go do like the game Bolatro. First, we will set up the card scene by using a controller node as the core of the scene. I'll reset the anchor points by grabbing the bottom right most and bringing it to the top.

**0:12** · We use a control node to detect the mouse enter and exit without an area 2D.

**0:16** · And we also use a control node for its size property, which can be divided by two to get the center of the card. Right click and select rename. Rename it to card. Then go to layout and change the custom minimum size to 94x 148. then reset the size. Alternatively, you could just set the size and ignore the custom minimum size. However, I like to work with the custom minimum size in the case that I use containers, which for this tutorial, we won't. Next, we add a sprite 2D node as a child. We can now add the card sprite that you can download for free. Link at the description. Go to transform and change the scale to 0.2x 0.2.

**0:46** · Then, set the position to 47.25x 74. Add a sprite 2D node as a child of the sprite 2D. Right click and hit rename. Rename it to shadow. Set his texture to the card sprite you can download for free link in the description. Then go to visibility and change the modulate to be black and set the transparency to 100. Enable show behind parent so that it appears behind the main card sprite. And don't worry about the offset as we'll handle that in the script. Finally, save the scene and select the card and hit add a script.

### Set-up Card script

**1:15** · Then select the card again. Go to nodes then in signals. Double click the mouse entered signal and hit connect. Double click the mouse exited signal and hit connect. In the script we will add two variables. one that keeps track of if the mouse is overlapping the card and another that keeps track of the card that is being dragged. Is dragging is important as it will ensure that the player can't stop dragging the card unless they let go of left click.

**1:35** · Otherwise, without this, when the mouse exits the card, then the card will be dropped, which we don't want. Inside the mouse entered and exited functions, we will set mouse in to true or false respectively. Next, we will create a custom function called drag logic and have it contain a custom built-in variable called delta. We will also call this function inside the built-in physics process function and pass delta inside the brackets. We use a custom function instead of having all the logic inside of the physics process function to make the code cleaner. And because we'll be using return to avoid certain lines of code below it.

**2:03** · So containing that inside of its own function is much better and easier to manage if you ever expand the script further. First we check if either mouse in or is dragging is true. Then we need to create the input for clicking the mouse button. To do so, go to project project settings.

### Adding Left-Click Input

**2:18** · Then select input map. Click add new action. Type click and hit add. Then press the plus. Hit the drop down for mouse buttons. Select the left mouse button. Hit okay and close. Now check if click is being pressed. If so, then we will smoothly set the global position towards the global mouse position and enable is dragging. Else we will set is dragging to false. Lurp will smoothly move the global position towards global mouse position at a speed of 22. We use delta to make sure the lurp is independent of frame rate, meaning that it will reach its destination at the same amount of time no matter the player's frame rate.

### Finishing Basic Card Script

**2:48** · And we add an offset of size divided by two from the global mouse position so that the card is centered to the mouse. Otherwise, the top left of the card would be at the mouse position instead. Keep in mind that if you were using a sprite with a lurp for a custom mouse, then make sure that that sprite's lurp is at the same speed of 22 to ensure that it doesn't lag behind the card while it dragging.

**3:07** · Now, this will work fine until you have more than one card, as the mouse will drag multiple cards at the same time if you're holding down left click and hovering over multiple cards, which we don't want. To avoid this, we will create a new script by going to file, new script. We will name it mouse brain and hit create. We will then go to project, project settings, select globals, hit the folder icon, select the mouse brain script, hit open, then press add, and hit close. Inside the script, all we need to do is add a variable to track what node is currently being dragged. Keep in mind that if you already have a global script within your game, you may want to use that instead of creating a new one.

### Creating AutoLoad Script

**3:37** · Additionally, you will also need to make sure that you reset this variable back to null whenever you load into the level or scene that features dragable cards. Back inside the card script, we will add a check for the mouse brains variable, checking if it is either equal to null or this card. We check null as that means no card is currently being dragged. And we also check for this node as otherwise as soon as we begin dragging this node, it will let go as mouse brains variable is no longer null.

### Finishing Polished Card script

**4:00** · Then we set node being dragged to self when we are dragging and we reset the variable in else. Additionally, we make sure to only reset the variable if it is equal to this card. Otherwise, the node being dragged will always be set to null due to other cards that are being dragged setting it to null. This concludes the basic movement for the cards. For the visuals, we will first need to set the shadow offset. We use an offset of 12 to the left and down. We also make sure to factor in the rotation of the main sprite so that the drop shadow is rotated properly. Next, we set the Z-index to 100 if it is being dragged. And then we add a return after else. Then we set the z-index to zero.

**4:33** · You don't need to set the z-index to something crazy like 100. I just do that since in this example 100 is in front of other cards but still behind the mouse.

**4:41** · We also set up the return for other visuals that we will set up soon. As there will be alterations we want to reset if the mouse is not dragging or hovering over the card. And to stop the reset from happening when the player is either dragging or hovering over, we can use return to avoid the lines of code below. Next, we will create two variables and a custom function called change scale with a built-in variable for desired scale. Current goal scale will be used to keep track of what scaler we are currently trying to reach.

### Coding Balatro-Style Card Polish

**5:04** · This will ensure that our tween doesn't reset when it doesn't need to. And we create a variable for the tween. Inside of change scale, we will first check if the desired scale passed when the function is called is the same as the current goal scale. If so, we return and therefore stop the function from continuing. Next, we check if the tween is already active. If so, then we call the kill function. Then we set the tween to a new tween with the create tween function. We also add the parameters for the ease and transition making the tween animation more unique and interesting.

**5:30** · Then we tween the sprite scale towards the desired scale at a total of 0.125 seconds. And we finally set the current goal scale to the desired scale. Now inside the drag function, we can set the scale to 0.26 when the card is being dragged, 0.22 when the card is being hovered, and the default scale of 0.2 when the card is idle on its own. Having this function can allow for easy scale animation simply by calling the function with the desired scale. Now, as for rotating the card, we will add two variables and a custom function called set rotation.

**5:56** · This rotation will act the same as the card rotation seen in the game Batro where the card rotates the more faster you drag it. Sort of like cloth physics reacting to the wind, although a lot more simpler. As for the variables, lost pause is used to determine the speed we are moving the card at by comparing the current position to the previous. Max card rotation simply defines the maximum angle left and right that the card can rotate. Inside the set rotation function, we define a variable for the sake of making the code more readable and to shorten the length of the next line. Inside, we grab the difference between the current position and the last position on the x-axis.

**6:26** · We then add a multiplication of 0.85 so that it requires more movement to reach the max rotation. You can increase the 0.85 to require less movement and lower it to require more. We put this calculation inside of the clamps to ensure that desired rotation cannot be less than negative max rotation or more than max rotation. Then we set the spr rotation degrees to alert with the desired rotation at a speed of 12. Then we set last pause to global position. It is important to set last position at the end of the function as otherwise it loses its purpose of recording the last position.

**6:57** · Now inside of the drag logic, we will call set rotation when we are dragging the card passing delta. When the card is not being dragged and it is either hovered or not, it will simply lurp the sprite's rotation degrees towards a default of zero. This concludes the code for the card. Now, if you want the custom mouse seen at the start of the video, create a new scene.

### Set-up Mouse scene

**7:14** · Use the sprite 2D node as the core.

**7:16** · Right click and hit rename. Rename it to mouse. Set the texture to the mouse sprite that you can download for free.

**7:21** · Link in the description. Go to transform and change the scale to 0.2. Then, we're going to change the offset to 125x 200.

**7:28** · This is to ensure that the point where the clicking occurs is in the right location. Finally, we'll go to ordering and we'll set the Z-index to the absolute maximum. You can change the Z-index however much you like. Just make sure that the mouse appears in front of the cards. Add another sprite 2D as a child. Rename it to shadow. Add the mouse sprite. You can download for free.

**7:45** · Link in the description. Change the offset to be the same as the mouse sprite. Then go to visibility and change the modulate to be black with a transparency of 100. And make sure to enable show behind parent. That way the shadow is behind the sprite node. Don't worry about the position of the shadow as we will deal with that in the code.

**8:00** · Save the scene and select the mouse sprite and hit add a script. Inside the script, we will first make sure that the user's mouse is invisible so that they can only see the custom mouse. Then inside the built-in physics process function, we will lurp the global position towards the global mouse position at the same lurp speed as the cards when we are moving those, which in this case is 22. Next, we will lurp both rotation degrees and scale for when the mouse is being clicked. We use lurp to smooth the animation, and we do the animation to provide visual feedback that a press is being registered.

### Set-up Mouse Script

**8:28** · Finally, we set the shadow sprite to a position to the left and down by 12 pixels while also taking into account the rotation of the mouse. Keep in mind that this amount of pixels to the left and down is the same for the cards for the sake of consistency. So, if you change this amount in the cards, then make sure to change the same amount of offset here as well. Now, we can hover over and drag the cards around smoothly and with polish. And don't forget that you can check out the project files link in the description.

**8:51** · \[Music\] \[Music\]