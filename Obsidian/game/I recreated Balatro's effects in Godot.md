---
title: "I recreated Balatro's effects in Godot"
source: "https://www.youtube.com/watch?v=Alwy-TH0WzE"
author:
  - "[[MrElipteach]]"
published: 2024-04-14
created: 2026-08-10
description: "Balatro is a super cool and juicy game and I wanted to recreate some of his effects in GodotCheckout the source code: https://github.com/MrEliptik/godot_ui_components🎓 Learn how to make JUICY gam"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=Alwy-TH0WzE)

Balatro is a super cool and juicy game and I wanted to recreate some of his effects in Godot  
  
Checkout the source code: https://github.com/MrEliptik/godot\_ui\_components  
  
🎓 Learn how to make JUICY games 👇  
https://shorturl.at/eIT36  
  
👤 SOCIALS  
\~~~~~~~~~~~~  
💰 One time donation: https://ko-fi.com/mreliptik  
💰 Support me on Patreon: https://patreon.com/MrEliptik  
🟣 Join us on Discord: https://discord.gg/83nFRPTP6t  
🔴 Twitch: https://twitch.tv/mreliptik  
🐤 Twitter: https://twitter.com/mreliptik  
🎥 TikTok: https://www.tiktok.com/@mreliptik  
🖼️ Instagram: https://www.instagram.com/mreliptik  
🧠 Try Notion: https://affiliate.notion.so/mreliptik  
🔗All links: https://bento.me/mreliptik  
  
🖥 SETUP  
\~~~~~~~~~~~~  
These links are affiliate, it helps me if you buy through them!  
  
💻 PC/desk setup  
Ultrawide Monitor: LG 29": https://amzn.to/4bVcwd9  
24" HP monitor: https://amzn.to/48Fi8We  
Electric standing desk legs: https://amzn.to/3uQDpyj  
Chair: not the exact same, but better: https://amzn.to/48yL1n8  
SSD: Samsung 980 pro: https://amzn.to/3OWUcqw  
Stream deck: https://amzn.to/4bYcOjy  
Mic: Maono AU A04: https://amzn.to/4bSBHgB  
Keyboard: MX mechanical: https://amzn.to/3wBwYzT  
Mouse: MX master 2S: https://amzn.to/3wsMy0s  
Earbuds: OnePlus Nord Buds 2: https://amzn.to/3OYQNHq  
Elgato Mounting Pole: https://amzn.to/3P1UYSO  
Xbox Series controller: https://amzn.to/4c6DRcK  
Heated desk pad 🔥: https://amzn.to/3TgWyTw  
USB desk fan: https://amzn.to/48AbZdK  
Tablet: Samsung S6 lite: https://amzn.to/3wu4zvk  
Walking treadmill: https://amzn.to/3T50EwW  
  
📹 Camera  
Camera: Sony ZV E10: https://amzn.to/4bXhfem  
Lense: Tamron 17-70: https://amzn.to/3wGKSR2  
Tripod K&F: https://amzn.to/3In4psg  
SD card: SanDisk 128GB: https://amzn.to/3STzZTD  
  
📚 Books  
Steal like an artist: https://amzn.to/42Uloff  
How innovation works: https://amzn.to/42ZfLMX  
Turtles, Termites, and Traffic Jams: Explorations in Massively Parallel Microworlds: https://amzn.to/3UYBVN3  
  
👑 Patrons  
\~~~~~~~~~~~~  
Thanks to the Patrons on Patreon for making this video possible! 💖  
kycho, lokomotywa, furet, Sslaxx, Fernando, Markus, Zimi, Kyle, Mark, Sam, Michett, TLN  
  
🎬 CHAPTERS  
\~~~~~~~~~~~~  
00:00 - Intro  
00:17 - 3D card effect  
01:11 - Card tween hover  
01:30 - Shadows  
02:12 - Dissolve shader  
03:36 - Velocity  
04:00 - Text animation RichText  
04:34 - Background shader  
04:59 - Post processing  
05:31 - Drawing cards animation  
06:31 - Juice course  
06:43 - Cards wave animation  
07:09 - Parallax  
07:31 - Outro

## Transcript

### Intro

**0:00** · you've probably heard about this card game it's pretty popular yeah I'm talking about batro in this video I'm creating some of the UI and effects we see in the game and I'm showing you how I'm doing it the game is mostly UI but don't let that fool you it's full of little effects and it's very juicy let's start after creating a simple card with a button and a texture I want to add the 3d effect we can see when hovering the cards this is actually quite simple to replicate not because we're going to use 3D but because there's a super cool Shader for fake 3D on Goos shaders

### 3D card effect

**0:34** · docomo the Shader only on the card texture if you want to apply the Shader on a more complex scene you'll have to use a viewport and apply the Shader on the texture displaying the viewport this Shader is simple to use you set up the size in the parameters and then you're free to rotate in the x or y AIS you can also change the fov of the camera used for the calculations but I'm fine with the default one then we can simply react to the mouse hovering the button and we can lurp between rotations depending on how far we are from each

**1:10** · sides the second effect happening when you interact with the cars is a twin on Hover super simple I connect the mouse entered and exit signals and I create a tween to scale the card I use ease out and transition elastic to get a nice and Punchy

### Card tween hover

**1:28** · effect to emphasize the 3D aspect of the cards batro is using Shadows the behavior is relatively simple they always have the same vertical offset and the horizontal one depends on where the card is placed compared to the center of the screen we can do that easily by duplicating the texture used for the card and placing it behind I then simply modulate it to a darker color which works because I want something darker so it Heights the details we could otherwise use a blank card or make a Shader to fill in another

### Shadows

**1:59** · solid color then the Shadows is simply offset it depending on its Exposition compared to the center of the screen this gives a nice separation from the background and the effect is very simple to use when you open a pack or destroy a

### Dissolve shader

**2:14** · card there's a dissolve effect Burning Down the object we can reproduce that easily with a Shader fortunately there's a dissolve Shader on GTO shaders decom made by goodto shaders there's one thing missing though and it's the burning edge where the dissolve is happening I spent some time to modif the Shader to add the edge the way I'm doing the border is by removing some of the sides of the border to the threshold and doing the opposite to the Border then I still use the threshold to decide where the alpha should be used to show the texture or remove it for both I use smooth stamp to

**2:46** · ensure I don't have very hard edges as you would with step finally I can mix between the card texture and the burn color using the newly created border you can find the modified Shader on my GitHub or on goodto shaders Link in the description

**3:03** · you might have catched that I already have a Shader on the card for the 3D effect so how am I also using a Shader for the dissolve effect well I'm not my quick and dirty solution is simply to put the dissolve Shader on the parent of the card in this case the button even if I activate it it doesn't do anything as the parent is not visible whenever I want to destroy the card I simply check use parent material on the card texture

**3:26** · and I can then animate the dissolve amount this is the same as swapping the material for another but it's just less code as the material is already set up and I just switch with a Bool a subtle effect that makes moving the card super satisfying is to rotate slightly with the velocity I'm redoing the effect using a DED oscillator I made a video

### Velocity

**3:45** · about the subject so I won't go over the details again I'm basically calculating the velocity of the C every frame and I use this velocity to calculate how much rotation should happen using the dmed oscillator again check out my video on the subject to learn more batro animates its text and you can do it quite easily in gdau using BB code it's a way to write text with special tags to add colors align stuff add images Etc it's a bit like HTML a cool

### Text animation RichText

**4:12** · thing you can do with it is ADD effects good comes with built-in effects like wave rainbow and more and you can even create your own I decide to use the rainbow and wave effect combined to get something that resembles batro creating a custom effect is relatively simple and will let you do more complex animations I won't go into this for now you can check out the good documentation for that it's pretty well explained the background Shader is doing

### Background shader

**4:36** · something quite cool in B first it looks like some sort of liquid maybe oil I can tell it's probably done with noise and maybe a combination of noise but I don't really know how also it seems to be warping into Polar coordinates when you fight a boss and then comes back to linear to be honest I'm not really sure what's happening here so I decided to skip it if you manage to recreate the background please share with us in the comments below by uses some post

### Post processing

**5:00** · processing to add a bit of pixelation and Sky lines we can again do that easily with a Shader when I say easily it's mainly because amazing and intelligent people have done the work already and have shared it online so thanks to pendu for making this super cool Shader I set it up to have the sky lines visibles but not too distracting and I also enable pixelation to get a nice crunchy look to apply this as a postprocessing I put it on the canvas layer that will sit on top of the rendered game and I can then use a color wct that takes the full screen with the Shader on it creating the drawing card

### Drawing cards animation

**5:32** · animation is pretty simple using twins we need twins because we require the dynamism of drawing how many cards we want let's take a look at how I'm doing it in the draw cards function I Loop for the amount of cards I want to spawn each time I instantiate a new card and I put it in the drawing deck position after that I calculate the position by removing instance. size divided by two

**5:53** · to center it and then I offset the car depending on its position in the hand the problem by doing that is that the whole hand get slightly moved to the left to fix that I simply move all of the cards to the right to make sure they're centered I also apply a different rotation to each to have a nice effect where the cards are more rotated to the outside as you reach the borders of the hand with this position and rotation calculated I can add a new tween and make sure to set the duration using the index of the Drone card that way the duration for each card gets slightly bigger and we see them move not

**6:24** · at the same time this gives a nice and satisfying effect if you want to learn more stuff about game juice I made a course exactly for that in good of four I'm teaching you the techniques to make your game juicy using the animation player particles twins Etc check it out on you to me using the link in the description when the cards are drawn they have a subtle up and down animation forming a wave we

### Juice course

### Cards wave animation

**6:47** · can reproduce that easily by using your favorite math function the sign we have all the cards as children so we can animate their position using the sign we're simply using the index of the child as an input for the sign and using the result to change the position this gives us a very cool wavy effect that we can easily tweak by changing the amplitude or the frequency of the

**7:08** · sign for the finishing touch I recreate The Parallax effect there is when you move the mouse around the game it seems to be moving the whole game around and we can do that quite easily I put the whole game as a child of a control node called anchor and then I'm moving it around depending on the mouse position don't move it too much as you want the effect to stay subtle not to jarring for the player and with that I'm done with this

### Parallax

### Outro

**7:37** · Recreation I hope you enjoy seeing the different techniques I used in this video I really enjoyed it so let me know if this is something you'd like to see more often and give me your game suggestions I'll see you in the next one \[Music\] bye