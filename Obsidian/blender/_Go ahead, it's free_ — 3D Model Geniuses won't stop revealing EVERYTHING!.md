---
title: "\"Go ahead, it's free\" — 3D Model Geniuses won't stop revealing EVERYTHING!"
source: "https://www.youtube.com/watch?v=5HivjKiUmVs"
author:
  - "[[2AM]]"
published: 2025-02-16
created: 2026-08-15
description: "1. Blender 3.3 - https://www.blender.org/download/lts/3-3/2. MMD Tools Plugin - https://github.com/UuuNyaa/blender_mmd_tools/releases/tag/v2.10.33. ZZZ Models HoyoLab Post - https://www.hoyolab.com/"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=5HivjKiUmVs)

1\. Blender 3.3 - https://www.blender.org/download/lts/3-3/  
2\. MMD Tools Plugin - https://github.com/UuuNyaa/blender\_mmd\_tools/releases/tag/v2.10.3  
3\. ZZZ Models HoyoLab Post - https://www.hoyolab.com/article/33521446  
4\. Wiggle Bones 1.5.B14 - https://github.com/shteeve3d/blender-wiggle/releases/tag/1\_5\_b14  
  
Twitch - https://twitch.tv/2amworld  
Patreon - https://patreon.com/2amgoodnight  
Twitter/X - https://x.com/2amgoodnight  
Discord - https://discord.gg/pBvd2WxBBp  
  
Hoyo is still publicly releasing their in-game models, completely rigged, textured and shape-keyed, for FREE on their own website!! This is pretty much a $0 masterclass on up-to-date anime style 3d modelling techniques, perfect for games because of how efficient they are. I go into Blender to open up their models, take it apart and see if I can uncover their 3d modelling secrets.  
  
0:30 - Setup guide to acquire and use the free models  
2:23 - Examine model  
  
#blender #blender3d #blender3dmodelling

## Transcript

**0:00** · I keep learning 3D industry secrets to apply to my own 3D models and it's all because anime gotcha games like zenis make their character models available for absolutely free there's so much we can learn just by loading their model into blender and I'll share some of those things with you today including this genius rigging technique now a lot

**0:19** · of people were struggling to get their hands on these free models and open them up so if you need help with that I can show you right now but if you just want to skip to the good stuff this is the time anyways to examine their models yourself you'll need three things and all links are in the description you need a compatible blender version so 3.3

### Setup guide to acquire and use the free models

**0:37** · is perfect for this this is the one I used you just go here download it and for me the best option is just the windows installer go install it on your computer next you'll need the blender MMD tools plugin link is in the description just go ahead and download this ZIP file then find the path of the blender version you just installed and unzip it in their add-ons folder so when your blender addon folder scripts add-ons you should have the unzipped MMD

**1:04** · tools folder for some reason we can't install it in blender using the usual way we have to put it directly into the folder next you'll need the models themselves so you can Google this or just get the link in the description the links are all this post so this is the one I went to for Jane Doe today we're going to pick up the new character Evelyn so I just follow the link and when you get to this page you're going to scroll down until you see this square

**1:28** · with the characters in it and it has left and right buttons just go to the one you want you want Evelyn so I'm going to go ahead and download that and unzip it and last but not least if you want to follow along with the physics lesson that we're going to explore today go ahead and go to this uh wiggle bones download just get the zip file unzip it onto your computer then go to preferences add-ons install go to where

**1:50** · you unzipped it find the py file and then install the add-on go ahead and search for it and then make sure it's checked and then also check your MMD tools plug just in case you have not already okay so now how do we actually get this model into the scene just go to file Imports

**2:07** · Miku Miku dance model which is the format that they're providing the file with the larger size will be the one you're looking for so go ahead and hit the import Button as you can see we have imported her into the scene now I'll leave it up to you how you want to light the scene let's start exploring this model this is what impressed me the most this is a tech that has caught my eye recently which I will call the miracle bone this is what it does when you move it it moves both hips it's the hip

### Examine model

**2:34** · controller bone and the thigh bones are parented to it that's why when you move it all of this moves which by the way this thigh bone system is not something you see every day usually everything is put into this bone right here but actually this green bone on top is what controls the actual leg moving and then this bone right here it just controls the internal and external rotation of

**2:56** · the upper leg similar thing going on with this this does not come with the default meta rig that comes with blender this is that custom stuff and if you're wondering they have four pairs of jiggle bones this top one is for the entire buttock area and it's parented to that hip controller bone these bottom three are connected to the leg bone instead

**3:17** · and this one is the bottom of the butt and we've got one specifically for the for the cheek crease area and a little bit of the thigh which by the way there are thigh jiggle bones as well right here con Ed right to the thigh main bone

**3:32** · which is crazy uh if you've seen her animations in game you know that all this has physics and actually we can kind of replicate that right now if you want to see I showed you how to install the wiggle bones add-on earlier so over here in object mode I'm just going to click the bone tab I'm going to make sure wiggle bone is checked then I'll go over to pose mode all these bones can I

**3:53** · just select all of them I'm going to enable the Wile bone for now this actually has a bunch of settings that you can control exactly how much jiggle you want I'm not going to play around with that right now just going to select again the hip controller bone and if I press the play button I can see it animate in real

**4:15** · time that is crazy \[Music\] that's wow

**4:32** · anyways this is an MMD model so I'm not sure that they have this functionality in the actual game itself for those that are not aware MMD is just when like they make the character dance to certain songs and that's quote unquote the real reason that hoyo released these models

**4:48** · that's why I highly speculate that these models probably have different optimizations when it comes to the actual game and like combat and stuff I'd imagine this would be so useful for like any dance move that involves shaking the hips catwalking animations

**5:04** · this is just a One-Stop solution for all that movement going on back there look like they have one for the calf as well they've also got a multi-point solution for the breasts all seems to be parented to this bone and this is how they've had their weighting set

**5:24** · up I'm I'm not going to be demonstrating this one today cuz we have other stuff to cover moving on let's take a look at our mesh and as someone said before you can select all with a and then you can use tries to quads or all J to UNT

**5:43** · triangulate it so you can see all the quads but I'm not going to do that right now because here's the thing these modelers let me let me tell you what they do let let me see if you can see but their topology is so precise that every accessory and clothing piece is

**6:00** · lined up usually you'd think like it wouldn't matter where they place the texturing or the details of these like strap thingies they literally align the topology right to it it might be better when it's all orange like this that you can see like this goes all around that

**6:17** · strap there's a strap that goes around here and they literally they cut this topology in and for this they need to specify which direction the triangles are facing or else it might not line up like this this is without its purpose like it's going to pay off the payoff is that if you don't do this the textures will be pinched in between faces which will lead to deformations that don't look good when the character moves a certain way and related to that point any any clothing that's skintight it's

**6:46** · literally just textured in if you're like me you might have been using this easier but much less efficient method where if you have any skin tight clothing you just duplicate all the faces of the body in that area and then you make your clothing like that for example example these pants doesn't matter too much if you delete the body faces under afterwards like after you rig it but these guys save literally every single vertex that they can and to

**7:11** · prevent it from getting flat if you've noticed they extrude it at certain areas like this is the exact location where this went from being flat to having that slightly extruded detail let me see where else so this this belt strap thing flat and right onto the skin then

**7:30** · here extrudes out and that's something we can all appreciate because we've come so far from the days where everything was just textured onto the model now there's so much effort in putting even the like so many tiny details modeled out like this that just makes me wonder what was their process like did they just slide the edges and make knife Cuts after texturing or did they apologize first and then use the UV lines as guides when texturing both viable possibilities I suppose as usual her

**8:02** · facial expressions are controlled by shape Keys as someone mentioned we can have these translated the one I used kind of failed but it did give me most of them maybe you'll have better luck with a better translator if you decide to do that now here's something a little unusual they didn't do this one with the Jane one but the eyes are not shap keyed they're actually Armature rigged did they do this for Jane I actually don't know same with the Brows too I don't think there's a shape key for the Brows they just have it controlled by these two bones

**8:33** · again if you look at her bangs like around this area definitely around here you can see it's semi-transparent and if you want to mimic that in blender use a different material for specifically only the parts that you want to be semi-transparent then you can pause and copy my node set up here we're just mixing the image texture with a transparent bsdf and using mapping to control where the hair

**8:55** · starts fading out and with a color ramp we can control how tight height we want it and how seethrough we want it to get make sure your blend mode is set to Alpha hashed or Alpha Blend or else you won't see any transparency look at this this \[Music\] part that's just textured in but this part like the hair it's uh it's actually

**9:25** · transparent wait wait wait wait wait hold on I I think we might have caught hoo verse lacking this time hold \[Music\] up hold up oh oh okay I'm surprised it even got to

**9:44** · like halfway you know it's actually kind of surprising here's another random small thing I noticed inside the sleeve we got this cone thing that plugs up this entire inside prevents you from seeing in and actually I see why they did this now because from here it's it's

**10:01** · not a flat plane but once it gets to this area it's flat and they've called the back faces which is why it's invisible when you see it from the inside but not on the outside they cover that up we're saving a lot of faces on these parts that we know will never Bend like this part of the forearm this part of the bicep the calvs and thighs have physics so makes sense why those are not

**10:24** · like saved on but while we're on the topic of the forearm they've also got these twist TST bones which come in like halfway and the purpose of these is just to offload some of the twisting on the wrist to the forearm cuz in real life when your wrist twists your forearm also

**10:41** · twists so if you don't have that like here see how I'm moving it from the wrist it's going to get real unnatural even going to a wrist up position everything's going to get pinched that's what the forearm twist bone is for see how much more natural that is they got one for the bicep as well so that's what that twist has control over anyways that will be it for today

**11:03** · hope you enjoyed our little study session there's always something new to learn even across characters from the same game there was some new stuff and variations of things from their older models in this one now I know you guys have been requesting me to look at other games as well especially girls front line 2 and Arc nice Enfield trust me I do want a deep dive on enfield's models

**11:23** · if I could get my hands on them or if you know they release their game already but either way lots more 3D content coming your way so do subscribe and stay tuned if you want to come learn 3D together you can also check out the new Discord and twitch I'm trying to gauge like how many people would be interested in that kind of thing so links will be in the description as well see you in the next one