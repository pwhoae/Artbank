---
title: "Spine 2D Tutorial: Face Rig | Turn in 2.5D"
source: "https://www.youtube.com/watch?v=aX3a1ar6CXg&list=PLZOZR9OAkzE3T_irm8ighD0fSxtZIkgBj&index=10"
author:
  - "[[Armanimation]]"
published: 2020-10-22
created: 2026-08-05
description: "Spine 2D Animation Coursehttps://www.armanimation.com/programs---------------------------------------------------------Rigging another face herehttps://youtu.be/UQ3GBzLex8whttps://t.me/armanima"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=aX3a1ar6CXg)

Spine 2D Animation Course  
https://www.armanimation.com/programs  
\---------------------------------------------------------  
Rigging another face here  
https://youtu.be/UQ3GBzLex8w  
  
  
https://t.me/armanimation\_group  
https://discord.gg/DQtrjv2Kb2  
https://www.facebook.com/armanimationn  
https://www.instagram.com/armanimation\_spine/  
https://twitter.com/WArmanW  
  
Art belongs to Turbo Rocket Games  
https://turborocketgames.com  
  
Artist  
https://www.behance.net/Shokker  
  
Intro (00:00)  
Simple Way (02:15)  
Complex Way (09:28)

## Transcript

### Intro

**0:01** · Hello guys today i want to talk about head turn in 3d space in spine with 2d characters so it's not actually professional video on how exactly you need to do to approach a nice 3d turn or pseudo 3d.

**0:22** · Rigging the face is pretty much time consuming so before you start, it's better to think about how it's going to look. if

**0:40** · you are given the freedom of creativity and you have to think about if you should use 3d turn or no I really suggest thinking before starting it. sometimes you just spend a lot of time on it and do actually pretty nice 3d rig and later you just understand that character is going to appear very small in the game or it's just a secondary character that appears once in the game or it it's not gonna have many animations of turning the head

**1:17** · So maybe you could go with directly deforming the meshes in the animation I usually do in two ways. one is for better performance on mobile games

**1:35** · where There are a lot of characters in the scene so if the character is one in the scene, on mobile devices you will be fine using mesh deforms, but if there are a lot of characters in the scene and this is going to be shipped on the mobile you definitely don't need to use any constraints any mesh deformation keys or if even you are using them please

**2:05** · warn about it developers it's really costly making additional constraints just for some final touches. let's start with the first one, the simpler one that i use to do very quick rig, with one controller it actually looks pretty nice and it doesn't use any constraints.

### Simple Way

**2:40** · for simple rig i just create a bone and put whatever bones i have on the face inside.

**2:49** · the idea is to take the face and move it right and left without touching the back side of the head this rig doesn't use any constraints so it's very cheap performance wise and it's very quick to do. so follow me i think i can do it in several minutes let's create a bone and give it an icon and maybe a nice color, next i will just add those bones

**3:23** · and yeah they are going to move in the same plane, the face will look flat but i think it's it's worth doing this way for simple characters and games that needs to be optimized .

**3:43** · okay so i think i control all the bones i have. Next will be just binding this mesh, but before binding, note that iI have removed the nose I merged it with the face since it's not going to move separately it is on the same layer as eyes and the mouth so i merged them we will be working with one face piece and and you may notice that it's a little bit complex for this simple rig maybe we can make another mesh much simpler, considering the performance.

**4:27** · let's give it a quick mesh add some inside some lines to not break the outlines

**4:47** · maybe another inner ring which can flow with the face i don't think it's going to do too much effect on the final result.

**5:04** · let's try this way, let's bind this bone to this mesh first i will give full control to this bone and maybe later just select this

**5:26** · points and give full control to this part yeah i think we are very close and the last thing maybe some fixing here and i think adding also the hat using same steps, just select this front part and

**6:09** · give it high value i think also the the other parts will also have some value, higher than normal Let's see what we have we can play with this edge.

**6:32** · I'm not doing very detailed just to be quick.

**6:41** · This is very simple rig it shouldn't be difficult to do it yourself so i yeah that's it let's also fix these hairs maybe they can have them spherical effect on the head

**7:14** · yeah you can see on the preview outline window in the bottom right corner it's usable it's not perfect but it's usable.

**7:29** · Note that we did this rig with just one bone without constraints Also with simple rig I have reduced meshe vertices count

**7:53** · i would want to say also that i was talking about two ways of rigging but of course there is another way, without rig you can just deform the mesh directly in the animation like for example let's create a test and imagine that we don't have this bone and we just directly want to transform. so we select this tool, it's basically a brush that moves vertices with

**8:33** · some fade out effect. with it you just directly deform here and also move the bones so just in those cases when the character has like bunch of animations but only one animation is actually using the head 3d, no need to make a rig for face for just one animation, i think better to just mesh it here and deform the mesh

**9:06** · but remember that this is performance heavy so avoid it if the character is going to be rendered a lot in the same screen let's move to the next one so before starting the second rig,

### Complex Way

**9:37** · i would like to talk about the head shape in 3d space so we can see what we actually do in the spine let me switch to the photoshop okay i have a head from the top so first thing i just divide the head into two pieces, let's assume we have

**10:06** · a line here and what we have to do is actually turn the head this way or the other way this would be our pivot point so for that i we actually need to consider the head in slices like this so the the bottom part of the slice

**10:41** · would be the most affected by the controller bone, if we put the bone here we will add another controller no it's not controller but it's a secondary bone that will move the opposite way we will have two bones and the main head bone which will be controlling the head and these two bones

**11:17** · so the closer is the slice to this point the more it gets affected by controller this part should have like zero weights by this bone and like 30

**11:38** · percent by this and this part is actually would be our let me back switch back to the spine would be our cheek for example cheek and a little bit side of the hair so we actually need to map this all face on the on this head in our mind Let's start the rigging process

**12:10** · Let's hide these bones first so they don't confuse us Ii just select them this way and left click on one of their dots and they disappear There is another way to hide with the hierarchy just select one bone and click with mouse right button on the dot

**12:35** · it will hide everything and if some some bones or images were hidden it will show them so it's like a toggle it's very helpful you have to try it have the nose separated here so i can move it differently than the face let me fast forward this process and so you can see the last result

**13:14** · this will be the bone for the back side it will be moving opposite to this bone so for that we just need to select this bone and create a constraint and

**13:32** · add the target to this, first we just click match it fix the difference between these bones, after that we can just assign the value

**13:48** · so if you are new to these constraints the higher the value the more it listens to this bone, right now it will fully be controlled by this bone it's it's not parented or it's not a child of this bone but rather than it's fully overrides it's values right now we don't want 100 percent instead we want opposite, minus hundred percent,

**14:18** · I love this feature it really enables a lot of things in rigging, Now you can see that it's actually moving opposite and you may imagine how this is the backside of the head and how it actually can work but again it's not it won't give you the real 3d effect

**14:43** · doesn't work that way, you will need to separate this axis of these controllers what we do with this rig actually is just skewing the head and not rotating in 3d This is the actual transformation that happens with the head, and while in 3d you would assume rotation.

**15:09** · I hope in the next versions, spine will give us an opportunity to control constraints x and y axis separately and maybe bind them together some with some kind of rule so if for example x value of the bone is here and y value is depending on this value

**15:57** · right now these constraints are not able to achieve this realistic head rotation what we get is just this skewing Let's continue by binding those meshes to these three bones, the backside, the main head bone, which controls every everything in the face and the actual controller.

**16:31** · I will mark this bone as a stop icon which indicates that we should not move this bone.

**16:46** · it's secondary, it works on itself. What we need from this bone is actually to bind some vertices to this bone so they go the opposite way. Okay let's start by binding them to this bone.

**17:06** · First I bind all face meshes to main head bone.

**17:45** · We are not going to bind mouth for now, I will just use constrain for mouth and eye bones later we will see if we need to bind the mesh itself. let's continue.

**18:36** · okay i think i'm done with the meshes let's see what we can do with the eyes so previously i just put those bones inside this but it gave me a flat turning so these bones and the nose itself were all on the same plane i don't want it right now.

**18:51** · So instead i will try to constrain them to controller Let's not go detailed in naming just give

**19:13** · something so it can actually work again i hit match, to store the difference, and as i said before the this character has a hat, this part is a little bit further than nose let's see in photoshop and get back to this let me switch to photoshop okay so right now what i would do if

**19:42** · character is without head and has a naked head, i would just give 100 percent to the nose, to this slice But right now since we have a hat and that comes a little bit further we need to give 100 percent to this part and maybe some 80 or 75 to to the tip of the nose.

**20:18** · I actually count this starting from the center of the head. Right now you can see this is the line that i divide by part so i can see that it's it's actually close to 75 and the eyes would be some 50 or 55 and so you can see how much value you should give your parts of the face the vertices.

**20:48** · Let's get back to Spine so this part will have a hundred percent and eyes will have some 75 We are going to create... well already created so yeah we will give 75 percent to this They will be controlled by this controller. Let's also give this 75.

**21:32** · Although sometimes i give give them different values, because not always they are drawn in the same size in same place you can notice that one eye is smaller than the other so to give it a nice look sometimes I just give a little bit different numbers. Right now let's hit match, ah i've already done it and let's give the value. Next go to the mouth. Right now i'm going to just constrain the bone.

**22:13** · and not touch the mouth mesh. Again hit match so the difference is calculated, here you can see the number of difference and for mouth again i'm going back to photoshop i think 60 would work okay So for eyes i should actually give 60 too. 75 would go for tip of the nose which i will do the next.

**22:48** · Outline of the nose as we gave this eyes a value of 60 to be constrained to this bone it means that we are forced to give this edge of the nose not less than 60. it's on the same plane on the same slice. Let me go back to photoshop it's on the same slice so you can see here the eyes. oh the nose is actually a little bit farther but not too deep.

**23:28** · it only can get a little bit higher values but not less than 60 percent.

**23:38** · let's continue to bind the nose we just need to select all the vertices and start by binding from the edge, because whatever value has edged the higher value will have the tip so we are not risking to then modify.

**23:56** · So let's start by giving it like some 60 We know that the tip should be 75 from the slice that I've shown in photoshop let's give it 75 or maybe we can give it some 73 so we give space for this tip and it will be 75

**24:34** · and the further we go from the tip actually it gets closer to this value which which is 60 percent let's give it slowly with fading out values

**25:12** · We're finished the nose we will get back to it in a moment, let's do the face. The face, the forehead, the cheeks should be considered as the slices so the further it goes to the ear it should lose the value of the weight.

**25:35** · You need to consider that when we are close to the nose and eye and mouth actually let's select those parts approximately i think it would be those vertices let's select those so we can paint on them.

**26:12** · I've just noticed that I haven't bound it to this bone, right now since I have selected, I will go and save this selection I pressed ctrl + 1 and it saved the selection. right now i need to bind this to this bone and get back our selection and start to paint while selecting this bone.

**26:40** · when this on this drop down you can find add tool, i will just adjust these values of my brush and we can even go and use this replace i think it's

**27:01** · it actually limits, for example if we put 60 it will limit your brush power to 60 percent, whatever you do here it won't go further than 60 percent it's very powerful, but i don't use much i just wanted to show you.

**27:17** · Right now let's start from 50 and paint the edges of this selection and go a little bit higher and

**27:40** · paint inside and maybe with much higher value paint the tip part, maybe we can also paint the cheeks with the higher values so they are a little bit

**27:57** · closer to us then we will need to paint the other parts, as i said the ears will actually not be weighted to this bone, further than this line nothing should be painted and weighted to this bone this line is actually

**28:27** · corresponds to the center of the head and the closer to this line we lose the weights to both bones so the the base of the ear is actually shouldn't be bound to any of those two bones, let's bind this bone as well so we can have access to it and start to actually paint on this side using this bone

**29:10** · This hair part should not be bound to this bone because it's very far from the center of the head

**30:00** · to avoid some sliding effect that hat is actually sitting on the forehead so it should not slide or float over the head, you need to be careful so the value that it has here like some 46 percent. this part also should have the exact same value to avoid the sliding, right now it has 52 and definitely they will slide over when we move it

**30:45** · I think we are ready to start actually testing it let's do some quick fixes here

**31:20** · We will have some issues with the layering ordering of this mesh Let's leave it for now. The head should also be bound to this backbone Let's create brand new animation test and try to move it.

**32:34** · If you are new to to spine and you are wondering what means this orange lines and how to put them so while you are making the mesh you have the option to create them yourself to like manually direct the flow of the polygons for example if you don't like this polygon to be divided in to these triangles you can just change it and make a custom.

**33:11** · this also affects the smoothing pattern when you smooth the values of the weights it actually flows through these orange lines like the values of to this vertex will not be smoothed if this gets like hundred percent and this zero they will just flow to this direction rather than to jump here.

**33:46** · this eye definitely goes too far let's reduce it's constraint value

**34:36** · we are done here to not exaggerate the effect i would actually avoid moving this head this way I could actually separate this part and

**35:02** · maybe use them separately so this could be totally controlled by the weights Let me check the final time we have also some issues here

**35:21** · right now i don't want to make it perfect This character doesn't have any shadows it's super easy so you need to consider if you are working with very polished art it will take much time and if it's easy like the shape is clean it will take less time so you need to consider all those aspects before starting, I think

**35:56** · that's it if you have any questions let me know i will think about what else i can share from my works. See you next time bye!