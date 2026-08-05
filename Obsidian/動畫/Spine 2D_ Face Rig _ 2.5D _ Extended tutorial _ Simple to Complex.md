---
title: "Spine 2D: Face Rig | 2.5D | Extended tutorial | Simple to Complex"
source: "https://www.youtube.com/watch?v=RFuoAXKo8ZI&list=PLZOZR9OAkzE3T_irm8ighD0fSxtZIkgBj&index=9"
author:
  - "[[Armanimation]]"
published: 2021-04-21
created: 2026-08-05
description: "Spine 2D Animation Coursehttps://www.armanimation.com/spine-2d-animation-course---------------------------------------------------------Rigging another face in Spine to give it a 3D feeling.Rig gi"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=RFuoAXKo8ZI)

Spine 2D Animation Course  
https://www.armanimation.com/spine-2d-animation-course  
\---------------------------------------------------------  
Rigging another face in Spine to give it a 3D feeling.  
Rig girl face https://youtu.be/UQ3GBzLex8w  
#spine2d #madewithspine #tutorial #2danimation #rigging #rig #facerig #shearingtips  
  
You can support us here  
\---------------------------------------------------------  
Youtube https://www.youtube.com/channel/UCL-JqRiHFVRn-iuJn3Gpyfw/join  
Patreon https://www.patreon.com/armanimation Join our Discord https://discord.gg/DQtrjv2Kb2  
\---------------------------------------------------------  
https://discord.gg/DQtrjv2Kb2  
https://www.facebook.com/armanimationn  
https://www.instagram.com/armanimationn/  
https://twitter.com/WArmanW  
  
🌟VFX Playlist https://youtube.com/playlist?list=PL9sqFOj762pxDr45I2MEmbtoJn75DKrrD  
🕺Tracer Playlist https://youtube.com/playlist?list=PL9sqFOj762pze86MJRwKs5xaMEdJ87fCH  
  
Art belongs to Turbo Rocket Games  
https://turborocketgames.com  
  
Artist  
https://www.behance.net/Shokker  
  
Timestamps:  
Intro (00:00)  
Simple Rig (02:16)  
Second Rig(06:25)  
Complex Rig(49:20)  
Bonus Rig (56:42)

## Transcript

### Intro

**0:00** · Hi guys hope you are doing well. Today we will be looking at face rigging.

**0:05** · I've prepared a project and made three faces, so we will be looking at three complexities: simple, medium and complex.

**0:16** · I'm using mostly the simple one but sometimes I also go with medium.

**0:21** · If you are new to this channel we are animating 2D characters for games using Spine 2D tool.

**0:29** · Let me actually switch to that program, here's it and these are our faces.

**0:36** · From left to right we have simple, medium and complex rig.

**0:40** · You can see that this video is super long, it's basically an extended version of my previous video about 3d face. But i think I added some new stuff at the end and even though i'm not using it, I mostly use the first version, but I think you will learn something. If you are an experienced animator just skip ahead or maybe ignore this video at all. Okay that's it let me hide the bone so you can see the result.

**1:15** · Now let's break it down.

**1:23** · Before starting the rigging process let me show you some stuff. Let me actually unhide some bones.

**1:34** · So the first one uses merged head image, While the other two use cut down images, you can see the parts separately so this is the benefit of the first one, you go with a merged face and with much simpler mesh.

**1:59** · While in this situation you get much more details.

**2:06** · Okay now I'm going to create a clean version of this and we'll start from the simple one. Let's see.

### Simple Rig

**2:16** · Well you can see that I have duplicated the first rig, I've reverted all meshes I left this bone, controller one, that contains eyes and mouth. It's not gonna be exactly the same way as I did in previous one because I had it meshed, but this time I will go without meshing it.

**2:38** · So for now as you can see this bone just moves all in one plane and we need to keep it that way so for that we need that face to support that idea let's let's mesh it.

**2:58** · We don't create over complicated vertices.

**3:02** · If you see some flow lines that have logical lines to be meshed like nose or eyebrow, Don't mesh them until you really need it. Less vertices better performance.

**3:33** · Thus I'll have this section plain.

**3:37** · For that I need to create this kind of section to complement that bone movement.

**3:49** · I have created it, now let's go back and bind it to the bones, root bone and controller bone.

**4:04** · This ring is a loop, let's bind it to the controller bone.

**4:15** · Very ugly of course, but if we do some little tricks, I will also add values to the edge.

**4:25** · Add some points here to give this part a little bit 3D look and let's see if that improves something

**5:06** · Yes i think I've finished, yeah.

**5:12** · It's not very flexible, you can see that it helps out a little bit, but if we make it very small for example if you have a character appearing in the game not that big you can see that it does a pretty nice job for like three minutes or four minutes rig.

**5:35** · And you can see that right now the eye can move over the nose so if that's the case you can just cut also the nose and create a layering exactly the same way as the mouth is here.

**5:52** · Also make sure to not just move this, but also use rotation, because sometimes with this rig, moving is not enough, so you have to scale or maybe rotate or sometimes even shear it, to squeeze everything from it. Well basically this is it, so let's move to the second one.

### Second Rig

**6:25** · Moving to the second rig. I have also duplicated the face and reverted all meshes, just left four bones two for eye bones one will be our controller and the last one will be moving opposite to controller with the help of our constraints. Let's do constraint first.

**6:56** · I´ve selected this bone and created a constraint. Now I need to select a target so I click this bone and after that with some settings here this bone will start to follow the controller.

**7:13** · Let's hit match that will save the distance between two bones and let's mark what we want to follow.

**7:26** · I'm going to add minus 100 for X and minus 100 for Y value This way it moves exactly the opposite so this is going to imitate the back side of the head The eye bones are going to be also constrained to this bone.

**7:53** · I will add random names, again hitting match button to store the distance and let's give some 80% approximately, I'm going to modify that later. Similarly let's do it for this side, generate a random name, store the distance, and let's see.

**8:28** · You can see that the eyes are staying behind because they are following only with 80% value So this is the first step that I would do. In second rig we just constrain eye bone Inner parts of the eye will just follow eye bone.

**9:00** · While in the last rig inner parts also being affected by the controller Thus the shape of the eye will change. We will come back to this rig.

**9:14** · Okay now we have moving eyes we need to create a mesh for face, this time you can see that i have part separated, this will give me more freedom.

**9:26** · And since this is more complex rig we can create more complex meshes since every slice of the face will be affected differently.

**9:46** · Don't go too crazy, it should be detailed but not realistic. I will try to do tiny bit detailed.

**10:12** · it's important to isolate the edge of the art, especially when it it has some outlines like this.

**10:23** · For that I would go and create another ring inside, just to have better control over it.

**10:46** · Otherwise they stretch or break.

**10:48** · We don't need this part so even those points are not necessary.

**10:54** · But we need here some extra vertices, because the eyebrow is going to move and we will be expanding this section to give some 3d effect it's not necessary but better to have it.

**11:17** · This is extreme case If the eyebrow would go here and wrap the head the other side I would most probably cut the eyebrows in separate layers and move them separately so this way I saw this gap and thought I could go there and create a separation.

**11:56** · Let's create another eyebrow mesh.

**12:05** · Pay attention at this cheek wrinkle.

**12:09** · It is very important to keep the face realistic.

**12:21** · If you break those lines, face will get very distorted.

**12:31** · Same goes with the chin.

**12:43** · I would add one point here to give more 3d or maybe two points.

**12:55** · Similarly here, let me go up a little bit.

**13:03** · okay let's see what we have.

**13:08** · Maybe here or something If you are bored just skip ahead I just don't want to fast forward this section, maybe people are just starting using Spine and they really need it. I will mark the sections, so please be patient or skip forward if if you are really familiar with these techniques.

**13:42** · Now I would also need control over here and forehead.

**13:56** · I'm going to revise them later I need to see how they work with the controllers.

**14:04** · maybe I will need some ring here but I am not adding it now, I will see if I can go without it.

**14:18** · Let's also mesh this I will be quick here, since this is a little bit 3D and not flat maybe we need to add more lines here to be able to move them and give nice 3d look Let's also do this.

**15:06** · Same would go here this part is going to shorten and hair is thick In that case I would add another line here.

**15:18** · And that will allow me to move this ring, which will give nice 3D touch.

**15:27** · If you want to select the line or an edge, you can hold shift and click, it will select the the whole ring, it will flow to the next point through this line and will stop at the cross section.

**15:56** · I use this a lot when i create rings on the nose or on the eyes.

**16:16** · If you are going to open and close the mouth, or make transitions between different mouth types.

**16:25** · I would suggest also meshing inner part.

**16:33** · let me show you what I mean so this way you could actually manipulate the teeth separately.

**16:44** · Without isolating teeth it would look distorted when we open or close the mouth

**17:16** · Okay, let's also mesh the nose

**17:37** · I think this is enough.

**18:19** · okay let's also quickly do the ear, nothing to do complex here, separate this part.

**18:32** · Also do this one Yes, now let's see what we have here, so I have removed this side of the hair, I'm going to use this part, because I want to turn the face to his left side a little bit more than we have here, and you can see when we turn it too much this section appears empty.

**19:13** · So I use this part, but since right now it shouldn't be visible I leave it here for now, and when I finish the ring I will bind it in a different pose, when the head is in this position.

**19:35** · So let's mash it and I will be back to this binding and explain it at the end.

**20:05** · I'm not going to rig the eyes, I will just leave them closed.

**20:10** · I will rig the eyes in the last rig, since here it is very straightforward, the eye will be isolated in this bone and nothing inside the eye will behave differently, so everything will follow this bone.

**20:32** · I think we miss also this.

**20:36** · let's do it.

**20:47** · let's see what we miss here, I will filter meshes and bones, then will go and select this one and see, we have missed this one which I will do very quickly.

**21:08** · We have missed this one, let's leave it this way and that's it yeah.

**21:19** · Let's disable filters and start binding the meshes.

**21:27** · I will start from the face, previously I've added transform constraints for the eyes.

**21:34** · They are very strong guidelines for me, where the face should go. So in this case I will just enter animation mode and create an animation, create a loop, and we will start binding it.

**22:04** · In setup I will bind on controller and the opposite bone, give it full to the opposite or controller, it doesn't matter.

**22:20** · Let's also bind this.

**22:24** · And this, And everything else what we have meshed.

**22:34** · I will skip this one for now i'm going to bind it

**22:54** · later yeah everything is done so you can go and start painting it using the Add tool. I would always

**23:21** · increase the feather, reduce the strength of the brush, select all points, pink one is the back side of the head.

**23:46** · We will need to paint with blue one let's paint front of the face.

**24:00** · It's not gonna look nice yet.

**24:05** · but be patient.

**24:15** · Always animate, move the frame so you can see and go quickly over all adjustments so you can see the picture quickly, don't polish one part to the end.

**24:44** · Just move quickly.

**25:22** · It may look very easy as I do, but I have a lot of experience of doing it so you you need to get your own experience. Don't be scared believe me you will learn it, don't use brush if it looks complicated, you can go and use direct weighting, but please don't be scared, if you need any help you can find us in this discord channel I think everyone there, who has experienced would love to help beginners.

**26:04** · I think we have a great community, very helpful.

**26:40** · You can see I jump from brushing to direct editing and at the end you will see that I only use direct weighting, because with brush you can easily do batch modifications, but when most of it is done doing tiny adjustment it's much much easier with direct mode.

**27:28** · You can see that i'm concentrating only on this pose of the head after that I will also fix the other pose, right now the head only comes forward and moves to the right.

**27:45** · After I fix this I will try to move more to the left.

**28:00** · It's very tedious work you need to be patient.

**28:09** · And believe your skills.

**28:17** · Even now I don't see that it's becoming a good result but I know after some time I will have something nice.

**29:33** · I already see that I need some more vertices here and here is the gap that I was worried about, you can see that we can push the eyebrow without disturbing this outline.

**29:51** · So this comes with experience if you are new you may be wondering "how would I know", but after some time you start developing some kind of feeling.

**30:08** · It's everywhere, whenever you get experience you become better.

**30:34** · You can see that all meshes are moving except the eyes, they are just moving with their root bones.

**30:41** · so we we can close this gap by just adding new vertices to the face mesh I would not touch the eye meshes

**31:03** · looking good, similarly would go here let's update the bindings And try to close this gap close, I don't like the eye, it comes too much to this point, in this case we can move it less than the other eye.

**31:33** · It's not fully correct, but anyway it is not possible to use just transforms and achieve full 3d effect. Now, let's see in animation what we like, lets also align it with y-axis

**32:06** · and also let's move this one, let's give it a less value yes I think I like it, you can see that one eye is smaller than the other, it's just a limitation of 2d.

**32:29** · When artists start drawing they will draw in a nice pose of course, they want it to be beautiful, nice pose means face is in perspective eyes are different sizes. You can see that from the holes, this one is smaller than the other and it creates huge problems when you want to create a nice looking 3d. So you have to solve it.

**33:08** · With every face you get new challenges, there is no one way to solve everything just be aware some face may have horns some would carry hats some would have maybe very small eyes etc.

**33:35** · okay let's now work on this gap, adjust with the eye. i think we are okay with this gap yeah, we are totally fine. you can see that we we didn't even touch the nose, now here I forgot to apply transform values, we have key, but we need to move the values to the setup pose. for that I will just remember 46 and 72 for the other one. let's add this values

**34:19** · 72 72 and i think it was this one no we have already done it bad naming, just make all everything difficult fast, but difficult at the end.

**34:39** · so it goes back to six. yeah i remember let's remove the keys. yes let's fix this

**35:10** · What's wrong with you Why can't I fix this Yeah we are fine here, let's also put the nose in right position.

**35:37** · Okay I'm looking at this section, it has to connect to the forehead obviously. and i'm looking to nostrils and the tip the other part will flow properly if we fix all this.

**36:06** · Also we need this. let me fix this it's super easy I wish I had some sculpting skills then I would kill this task. I feel sometimes I struggle to find the correct shape. This is very important, the more quality you put in the rig more skills of drawing or sculpting you will need.

**36:43** · Let's see the eyebrows,

**37:16** · they need to be equal size since the face is fully frontal.

**37:24** · And this eyebrow can expand a little bit

**37:56** · okay I think we... Oh no we've missed the hairs, let's quickly adjust them.

**38:07** · I think we lost all of our experienced animator here. If you are here you either have a lot of time or you will just join to this community and working your way out to become a great animator with spine. I wish you good luck, I really really do want you to succeed in this path.

**38:39** · And i would suggest quickly find the way to the community because we are helpful And yeah you can also find me on discord as the other animators I think most of us are there.

**39:04** · Once in a while helping each

**39:26** · other. Let's push it back Go away baldness.

**39:41** · I think i will need to move this hair it narrows the head too much.

**40:10** · Yes i'm fine with this side I'm fine with the front okay we have a problem here they are overlapping.

**40:26** · let's check these

**40:58** · It's so hard to understand where those cheekbones are going.

**41:08** · This is where i need sculpting skills. And you can see that eye is floating in the socket, I don't like it, I really really don't like it.

**41:24** · So let's try to find another value for the eye, 66 for example. Let's copy that and put it here.

**41:37** · Remove the key and we have a new hole, will leave the eye here and close the gap, I think we have

**42:03** · the last thing remaining which will be this part. As I said I want to bind it at this moment when the head is visible so when it goes back it will deform accordingly, for that I will move it here.

**42:39** · I will transfer this deformation to the setup so we we avoid creating deform keys here somehow it affects performance Let's assume we are happy with this. I will select all vertices with box selection, copy vertex position and go back here and select again all vertices and paste it here.

**43:32** · We need to keep the order of the vertices as selected previously, otherwise they will mess up.

**43:53** · See I didn't bind it previously just to be able to bind it in animation. Now we are binding it to these two bones. When we move it back we can accordingly align it as we did with other parts

**44:24** · okay

**44:49** · I see something is off but i don't understand Some parts are floating but I don't want to spend forever here we need to move forward with the other rig.

**45:07** · Let's fix the mouth i think yes so let's sum it up so we have one controller we have a head that moves

**45:42** · of course i don't have much time you can see that hair is not looking properly but it depends how much time you want to spend here so improve as you have time basically you got the idea. The other thing I want to mention that if you want to go with this flat rig then you want to have this ability when bones move opposite way while here it does not move at all.

**46:22** · It makes controlling a little bit difficult But I don't know it depends what you want to achieve.

**46:33** · So we have middle bone that will contain both of these bones one is basically controller that we left untouched and this one will be as opposite bone, we are not going to use constraint here, instead we will be just using a scale inheritance option so now that I scale it you can see that everything works. So nice...

**47:09** · Just looks like cartoon character. I'm going to do also here something it's awesome, I never tried. What if we scale on one axis .

**47:26** · okay let's see. let's not spend too much time here.

**47:32** · okay so I will deselect the scale here, for this children bones and now when I scale it you can see that this one moves this way and this one moves the opposite way so we somehow achieve that effect if we scale in one direction It behaves exactly the same way. Maybe programmatically it behaves differently, but we can achieve similar results we will need also to disable rotation.

**48:17** · if we want to move perfectly, without snapping.

**48:23** · and up and down so this is just to avoid constraints.

**48:31** · okay let's move to the final one. this one will be a little bit longer so I'm going to cut some part maybe I'm not going to mesh. it's basically the same.

**48:45** · And parts are exactly the same. I have just new part introduced at the top of the head.

**48:52** · But everything else is exactly the same. I will just show how this works I am not doing it from scratch maybe some part. Because this video is already passing an hour mark, so let's avoid that. okay let's see, and we are at the third rig.

### Complex Rig

**49:24** · i'm going to explain this rather than do from scratch it will take two hours from me.

**49:40** · please just see how it works, I think you will understand whatever question you have just ask me in the comments i will explain.

**49:53** · everything what you want so just to not make this video longer and not torture myself.

**50:04** · okay before starting I want to say that I mostly go with this face it's super quick super easy and it covers most of things. If I use like big characters of course i will think about moving to this rig but mostly I do this one, so I never did this I tried this first time I saw similar technique for the dog one russian guy did it, and I liked it, I actually wanted to try on the face and it come up very nice looking, one thing that i want to say you, if you want to go with this one.

**50:52** · make sure you have a nice drawing skills or understanding perspective, the shape or sculpting skills. It would really help you because I gave me freedom to move all vertices whatever I want but I ended up not understanding how to move them.

**51:15** · how the chin will behave. be careful when you pick this and also there are a lot of constraints here So basically we have one circle, this one, let me enable that circle, here is it

**51:45** · and we can rotate that bone and it rotates like in its local position it doesn't know that it's scaled because we scaled the parent so this is the normal state of the circle I scaled it i rotated it correspondingly, and after that i started to bind but before scaling and rotating i placed these bones

**52:20** · the yellow ones

**52:43** · so i rotated this way and i aligned those points to the nose, eyes and ears

**53:00** · and after that i scaled them and positioned exactly like this and started to weight them so nothing really special just in this case we have very powerful bones this line and the one at the back this one we can add as many as we want to give more details

**53:27** · in this case we just have one for the back side you can see here cheekbone or eye and nose we could go and add another bone here and another bone here to complete this, but i didn't go into more details here although sometimes i really need those two missing bones, anyway so when we have those bones you can see they are rotating

**53:59** · circular way, in 3d, we have freedom of binding the mesh whatever we want so if you see this mesh you can bind directly to this bone and once it comes to this side you bind it to this so binding is very tedious and

**54:24** · very difficult for me i'm not going to bind it again but basically i explained it this section would be bound to this let's also see the overlay color

**54:46** · and now let's check the eyes this is the first rig that when we rotate the head the eye shape change the eyelids are changing so apart from they are bound to this up and down blinking bone you can see the section of the eyes are also bound to these bones as the rest face so i did only the edge

**55:14** · to not disturb the up and down movement otherwise it would like distort everything here so this way we have the blinking functionality while also keeping the perspective the rotation and yeah since we have ability to move the head down we would expose our bold head

**55:46** · so that's i went and modified some parts of the top part of the head and yes that's it for this rig it was very quick to explain it

**56:04** · i'm pretty sure if you are new you may not understand how i did the circular stuff but please find me in community and under comments i will be happy to help to explain

**56:20** · we will set up a call i will explain everything what i did i'm thinking about sharing also this project i'm not sure about it because the art is not mine and i don't know how people will react on this but let me sometime i will think about it maybe i will share the art

**56:41** · also before leaving you i want to share another technique that i tried before this i wanted to not complicate this much because i understand this is not realistic nobody is gonna use this so i wanted to do another way to similar way but much easier i ended up finding one solution but i

### Bonus Rig

**57:03** · didn't use this i think it's not ready yet i'm experimenting with it so we have bones, one controller, these bones are just

**57:24** · targets of ik chains and you can see that at some point one of them starts to slow down and the nose will continue moving until one point so you can imagine the face when we move it frontal everything overlaps and

**57:51** · when we move it this way again nose is overlapping to the face but at some point nose will poke up so this is another technique i'm not sure is it useful or not but just sharing with you

**58:09** · okay this is it let me know in the comments this video was super long so i want to know your reactions your feedback on this should i continue making this long videos or it's too long to invest in this and also i want to say that i have enabled ads on this channel to experiment

**58:37** · and see if i can earn some revenue so if you see ads on my video please be understanding i'm just experimenting i don't expect anything real like just experimenting with youtube to see how it works everything so that's it

**59:00** · thank you for watching if you are still here from the start it was a great journey thank you for watching um let me know what you want to see next in the comments or just wait i will find something interesting and prepare a new video okay cheers bye guys