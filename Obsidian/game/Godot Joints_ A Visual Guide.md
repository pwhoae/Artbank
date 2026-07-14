---
title: "Godot Joints: A Visual Guide"
source: "https://www.youtube.com/watch?v=2JP_bEm4xvE"
author:
  - "[[Bacon and Games]]"
published: 2025-01-25
created: 2026-07-14
description: "The first 500 people to use my link https://skl.sh/baconandgames01251 will get a 1 month free trial of Skillshare!Joints are an important part of the Godot physics engine but they can be a bit confu"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=2JP_bEm4xvE)

The first 500 people to use my link https://skl.sh/baconandgames01251 will get a 1 month free trial of Skillshare!  
  
Joints are an important part of the Godot physics engine but they can be a bit confusing. Well, never again. Here are several practical examples of Godot joints in the wild so you can skip the documentation and get straight to making cool stuff.  
  
https://youtu.be/YPZQM6w7rlI?si=hPbwgu-XvKhEJoMg  
https://youtu.be/Bwgj-6Xp6\_8?si=uEUbt7YuULVJNNBm  
  
Project files available on itch for free here:  
https://baconandgames.itch.io/godot-joints-playground  
  
0:00 - Intro  
0:20 - Physics Bodies  
1:35 - PinJoint2D  
3:56 - Example  
5:05 - GrooveJoint2D  
7:07 - Example  
9:15 - DampedJoint2D  
12:36 - Example  
13:39 - Steve  
  
Art assets in this video by @KenneyNL ❤️  
https://kenney.nl/assets/physics-assets  
  
#godottutorial #godotengine #gamedev #gamedevelopment #gdscript  
  
https://uppbeat.io/t/hey-pluto/heatwave  
License code: KLQZOV76C6F61WKJ  
This video is sponsored by Skillshare

## Transcript

### Intro

**0:00** · joints are an important part of any physics engine they're how we connect bodies to one another unfortunately in gdau they're a little bit unintuitive so today we're going to go through some practical examples so that you can spend less time reading documentation and more time making cool stuff like this let's get started in the interest of not leaving anyone out I very briefly want to cover static versus rigid body 2DS if you're

### Physics Bodies

**0:28** · already super familiar with them I'll leave a Time stamp below so that you can skip ahead but this is going to be quick for the purposes of these examples you can think of static bodies as objects that don't move they're not affected by gravity if something whams into it it's not going to move no matter how heavy or how hard it gets hit rigid bodies on the other hand do move they are affected by gravity and they will react to other forces taking a look at how they're constructed both have a root node of either a static or rigid body 2D they

**1:01** · have a Sprite Which has nothing to do with how they behave it's just a visual and then a collision shape that defines the Collision each of the rigid and static body 2DS in these examples have Collision layer and collision mask Flags set these Define which objects within the simulation collide with one another so for example you might have balls that collide with the floor and one another but not the player if you want more information I'm going to leave a link to a video I did exactly on this topic down

**1:32** · in the \[Music\] description with that background behind us let's take a look at the pin joint which I think is the simplest of all the joints this very basic scene has a couple of static bodies to collide with or hang from as you'll see in a second and this one rigid body which will fall

### PinJoint2D

**1:53** · when we test the game it collides with the static body and bounces off into Oblivion if we instead wanted to fix it to something like this static body triangle up here we can bring in a pin joint which is going to show up in the upper left me drag that over here and then zoom in so you can see it better you'll see they show up as just a plus

**2:17** · if we select the joint you'll see it's asking which two nodes do we want to pin together you can think of a pin joint like a thumb tack so we can do that two ways the first is to click this assign button and then select the object we want to assign to that node in this case the static triangle the other way is to drag the object onto the assign button and now if I test this you'll see it's

**2:41** · actually just going to dangle in place because it's connected by that joint to a static body which is not affected by gravity now you might assume that this pin joint like a real Thumbtack actually has to overlap the Collision shape and that's actually not the case it's just anchoring it to the object with no nodes rather that have been connected so let's zoom out a little bit and mess with the one property that you're going to use the most on the pin joint and that's this softness which essentially defines

**3:12** · how much play that joint has from where it was pinned so by default it's set to zero which means it's completely rigid if I pull this up a little bit and test it again you'll see it's going to kind of sag a little bit more like a spring but not actually a spring that's a different joint that we'll get to and you'll notice gravity is acting upon that so if we actually move this joint up let's put actually let's put it on the point here and then let's move our

**3:41** · alien over here and then just for fun let's turn on this stack of blocks that I prepared off camera and when I hit play it's going to swing around that pivot point and smash into the blocks giving us a sort of wrecking ball effect so before we move on let's look at two practical examples of the pin joints I've got this very basic car it's literally just a rectangle it's three rigid bodies connected by two pin joints when I start the game it lands quite

### Example

**4:13** · rigidly if I open up the car and select the two pin joints and give this a softness of 10 you'll see it's going to behave more like a suspension there's some bounce to it the other thing I added is this rope Bridge can put the car up there there and you'll see this is a it's two

**4:34** · static bodies with a bunch of rigid bodies strong together in between all connected with pin joints so if I start the game you get this sort of rope Bridge effect which you can drive across and you can even jump believe it or not I'm not going to go over the car script it's in the example project you can play around with it if you want to download it but I thought this rope Bridge was a good examp example of how pin joints and softness might be used to make something

**5:04** · like that in a \[Music\] game moving on to the groove joint if a pin joint is more like a thumbtack a Groove joint is more like a fader bar let's again add our joint to the scene

### GrooveJoint2D

**5:22** · and we're going to add a Groove joint again added in the upper right um a nice trick if you get tired of repositioning these is you can rightclick anywhere in the scene and then move the selected nodes to that location you can also skip that step entirely and just right click and add the node at the place of the click if you like tips like that I will link another video down below it's called 10 gdau features hidden in plain

**5:48** · sight it's full of little nuggets like this so I'm going to move this node here and then we're going to rotate it and the way these work is they Define a Continuum along which a rigid body will slide you'll see we've got different properties now instead of softness we've got a length and this offset so if I bring the length up and if zoom in you can see it's it looks kind of like a timeline and then there's this sort of light pink little playhead here which

**6:15** · acts it's called the initial offset but it's basically where your rigid body starts along that Continuum let's add an alien a rigid body and if we position our alien at that start point and like we did with all the other joints let's select it and we're going to connect to

**6:34** · the ground so that it stays put and then we're going to connect our alien to the other node and then I'm going to hit play and you'll see it's going to slide down there and slam into the other physics objects that it's supposed to interact with we wanted it to start at a different position we could set this to say 200 and then reposition our alien

**6:54** · accordingly and play now you will notice well you won't notice until until I turn on debug Collision shapes but you'll notice that this doesn't actually update in real time and a better example of that would be the other practical example I have here let me delete these and turn on what I call Mr Happy wrecking ball so

### Example

**7:16** · we're building on what we learned with the pin joints I've got a series of rigid objects that are connected together with pin joints just like we did with the Rope bridge but instead it's sort of this dangling clog game wrecking ball kind of thing and so the top rigid body which I'm calling the anchor is the one that is connected to this horizontal Groove joint and on that

**7:42** · I've placed a script that allows us to apply a force to move it rather than letting it slide down like we did in the gravity example on an angle this one is horizontal and it will move based on forces that we apply to it now if I play it and press right you'll see it the anchor moves along that Groove joint and everything comes with it because they're connected through the pin joints and all of their masses and their momentums are

**8:09** · affecting that simulation now as I mentioned earlier you can see all the pin joints remain in their starting position as does that play Head On the Groove joint this is normal it's unintuitive but now you know it and don't worry about it when you see it now if you're looking to learn more about physics simulations or game development in general or honestly anything creative you should check out this video's sponsor skillshare one of my favorite productivity experts Ali abdall has several amazing classes on getting the most out of your time and effort I honestly can't recommend these enough

**8:41** · skillshare's classes are designed by creatives for creatives and they've got thousands of classes ranging from storytelling to game development marketing illustration and more and if you're not sure which classes to start with they've got curated sequential class collections called learning paths that help you master a specific skill on on skillshare you'll learn by doing alongside a community who can give you feedback if you want and you'll learn at your own pace on your own schedule the first 500 people to use my link in the description will get a one-month free trial to skillshare so get started

**9:14** · \[Music\] today now that brings us to our third and final joint the dampened spring joint which I think is the most unintuitive of the three it does behave like a spring as you're imagining but there's some strangeness about the UI so let's add one to our scene and learning from past mistakes let's right click and say add node here and add our spring joint I will zoom in again we're getting that sort of Continuum looking thing without the playhead this time and I'm going to rotate it

### DampedJoint2D

**9:46** · 90° 90 to be exact and then we're going to increase the length to line it up with the center of mass so that these two are now connected by this spring in the middle of course as we've done prior we're going to need to drag both of those into our nodes A and B and if I run this simulation you'll see nothing

**10:08** · happens why does nothing happen well if you look at the length and the rest length the length is exactly what you think it's the starting distance of the spring the rest length is the length that the spring wants to return to whether it's able to has to do with the mass of the objects it's connected to but the rest link when it's set to zero is treated as identical to the L length so what we have here is a spring of 190

**10:32** · length that wants to return to 190 so very little if anything is happening if I set this to about let's say half around 90 and play this you'll see now they're actually going to pull together now they don't Collide and that's because by default all joints have

**10:49** · disabled Collision turned on it's probably because in a lot of cases especially with pin joints you have overlapping geometry and like the car you don't want the wheels colliding with other things that might be attached to the Joint in this case we actually do want these to collide because they're like two dominoes toppling into each other so I'm going to uncheck that the next thing we're going to do is look at the other two properties that you're most likely to fiddle with the stiffness

**11:14** · is pretty much what you're imagining it's kind of the strength of the string how heavy a string it is so it defaults to 20 if I crank it all the way up to 604 you'll see these two are going to wamp together a little faster than they did which is pretty much what we expect damping is a little bit harder to describe it's a lot easier to experiment with and I I encourage you to do so I like to think of damping as kind of the inverse so if stiffness is the strength

**11:42** · of the spring the damping is how hard it works to bring the objects back onto that spring when they're pushed away from it or away from each other so if I turn damping way down and this is kind of why I think of them as inverse you'll see if I play this they're going to really wamp together in all honesty you will probably play with stiffness far

**12:05** · more than you'll play with damping but just sort of experiment with how they relate to one another and that will likely be good enough now I showed you the spring in this format because I think it helps illustrate the way the spring functions especially relative to where it's connected in fact if I drag this down here to the bottom if I play this you'll see they're not going to move in the same fashion but

**12:29** · this isn't always how you're going to see Springs Ed so usually they're more of like a dangly kind of rope thing so let's get rid of this spring let's pull one of these guys down here we're going to right click here and add a dampen spring joint we will increase the length so that it connects to this object and then of course we're going to assign like we've been doing let's connect the top part of the spring to that static platform and the bottom of the spring to

### Example

**13:02** · this object and play it let's just see what happens so it's going to Sag a little bit and come to rest and you'll see it's dropping below the length of the spring you can adjust that a couple of ways so one of course you can play with the stiffness if we turn this way up and run it again it's not going to Sag nearly as far but also things like

**13:24** · gravity other objects and also this object's Mass have a role in deciding how much it exerts on that spring so if I were to turn the mass up to 10 and run this again you'll see it behaves very different now that you understand how joints work you can get to making freakish things like Steve here who's about to leave all of his pin joints behind and waddle off this platform this is made with pin joints and a motor which we didn't get to but we can in future videos if you'd like as always

### Steve

**13:56** · thank you so much for watching please be kind to yourself be kind to others and I will see you in one of these videos soon oh Steve rough day Bud rough day \[Music\]