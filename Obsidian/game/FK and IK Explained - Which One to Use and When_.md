---
title: "FK and IK Explained - Which One to Use and When?"
source: "https://www.youtube.com/watch?v=0a9qIj7kwiA"
author:
  - "[[Miloš Černý Animation]]"
published: 2018-01-25
created: 2026-07-20
description: "What is Inverse Kinematics? How and why to use it? What are the differences between FK and IK. You can find all the answers in this short explainer video.Forward and inverse kinematics are essential"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=0a9qIj7kwiA)

What is Inverse Kinematics? How and why to use it? What are the differences between FK and IK. You can find all the answers in this short explainer video.  
  
Forward and inverse kinematics are essential part of every animation and every animator should understand it.  
  
The rig I explain it on was done in 3ds Max CAT.  
3ds Max CAT (Character Animation Toolkit) is an animation system inside Max that offers a lot of useful features.  
If you are interested in CAT and why is it (in my opinion) better then biped or regular max bones, be sure to subscribe to the channel or watch other videos and tutorials I have already posted.  
  
  
You can find Barry character rig here for free: https://www.miloscerny.com/download-barry  
  
\*\*\*\*  
Subscribe here: https://goo.gl/XCeaKd  
\*\*\*\*  
  
\*\*\*\*  
Patreon: https://www.patreon.com/MilosCernyAnimation/  
\*\*\*\*  
  
\*\*\*\*  
Download stuff for free on my website: https://www.miloscerny.com/  
\*\*\*\*  
  
Join my discord channel to be part of our community or to contact me personally, about anything (it has over 100 people already):  
Discord: https://discord.gg/kUQxSaJ  
  
Facebook: http://www.facebook.com/MilosCernyAnimation/  
  
Twitter: http://twitter.com/MilosCernyAnim  
  
PayPal: https://www.paypal.com/cgi-bin/webscr?cmd=\_s-xclick&hosted\_button\_id=CTK959WHEJGS4

## Transcript

### Intro

**0:00** · Hey, fellow animators, I’m Miloš Černý and today I am going to talk about FK and IK, which stands for forward and inverse kinematics.

**0:08** · I will try to explain what it is and when do you use one or the other.

**0:12** · It is a quite complex problematic, but I will try to explain it as simple as possible and dumb it down to the important parts.

### Explanation

**0:25** · Before I start talking about FK and IK, I would like to emphasize that this is something that every animator should understand and it is one of the basics in this field.

**0:35** · Similar to animation layers, it is something you should have knowledge of.

**0:38** · For example, even though, you don’t have to use animation layers all the time.

**0:42** · But when you don’t, it is because you don’t need them, not because you don’t know how to use them.

**0:47** · Same goes with forward and inverse kinematics.

### FK and IK

**0:50** · Ok so let’s get to it.

**0:52** · Both IK and FK terms come from robotics, where engineers have to figure out how to move and rotate joints to get the end effector to the position they need.

**1:01** · When you think about it.

**1:02** · If you try to grab a phone on your desk, you don’t have to compute what your joints have to do to get your hand to the phone.

**1:08** · You just do it.

**1:09** · Because it’s natural for us and we learn that gradually from birth.

**1:13** · However for a robotic arm, it’s not that simple.

**1:16** · There is a lot of math behind it, which we as an animators don’t have to understand in detail, but it’s nice to at least know, what your computer has to deal with when you move the joints.

### Math

**1:25** · But I guess, you are not here because of the math.

**1:28** · Let’s explain it plain and simple, and let’s start with forward kinematics, which is the simplier one.

**1:33** · If you animated any hierarchy chain before then you already worked with forward kinematics.

**1:38** · When any bone chain is rigged with FK it means that the bones are chained from parents to children.

**1:44** · It behaves basically as you would expect.

**1:47** · Same as parent/children links in every other field.

**1:50** · If you rotate bone 1 all of it’s children rotate as well.

**1:54** · If you rotate bone 2, again, all of it’s children will rotate as well, which means that bone 1 will not, because it’s the parent of bone 2, and not it’s child.

**2:03** · The reason why bone chain rigged with FK is useful, is that it creates arc movements by default.

**2:09** · Because you use just rotations, joints travel along curved trajectories.

**2:13** · Arcs are very important part of learning animation as most of you probably know.

**2:18** · Motion in nature usually doesn’t happen in straight lines.

**2:21** · It’s curves and arcs most of the time and with FK you get them by default.

**2:26** · Inverse kinematics however, works kind of in an opposite way.

**2:30** · You lose the ability to animate every bone of the chain separately, but you gain the ability to animate the whole chain just with the end effector.

**2:37** · With IK, joints move in line trajectories, unless you create the arc manually.

**2:42** · And sometimes this is exactly what you want.

**2:45** · For example as I mentioned before, when you are reaching for your phone on the table, the hand follows more of a line trajectory then an arc.

### Practice

**2:52** · Ok so that would be the main difference between them.

**2:55** · Let’s take a look at how it works in practice.

**2:58** · I will be explaining it on Barry here.

**2:59** · For those who don’t know, you can download this rig on my website for free, the link is below the video.

**3:05** · Basically every good character rig should have a way of changing between IK and FK for it's limbs.

**3:11** · CAT provides this option automatically for each limb, but every animation system has a way of doing it.

**3:16** · Whether it is Maya, MotionBuilder, Biped, regular 3ds Max bones, or anything else.

**3:22** · So in CAT, if you select any bone of a limb, in motion panel you will find this IK/FK slider.

**3:28** · We see that now it’s value is 1 which means it is fully in FK.

**3:32** · If we select this square, which is our IK end effector and try to move it, nothing happens.

**3:38** · Well, that’s because we are in FK.

**3:40** · We can animate each bone in that parent/child manner as we showed in the beginning of the video.

**3:52** · Now if we try to move the slider to zero, so the limb is fully in IK and then move our IK effector, we see that the arm is moving and that it’s trying to reach the effector as best as it can.

**4:05** · If you don’t have this end effector for your limb, don’t worry.

**4:09** · When you are creating new rig in CAT, legs get IK platforms by default, but arms don’t.

**4:16** · However if you go to motion panel with any of the arm bones selected you can see this “Create IKTarget” button.

**4:22** · Just click it and cross will apper.

**4:24** · You can choose between cross or platform in the modify panel.

**4:28** · Whichever you prefer.

**4:30** · Ok, so in CAT by default arms are in FK and legs in IK.

**4:34** · If you move pelvis, you can see that legs stay on the ground and everything else is moving with pelvis, because pelvis is parent for all the bones.

**4:41** · You will realize that it is usually more useful to keep legs in IK, because in a real world, we have gravity and that keeps us on the ground.

**4:50** · Unless you are doing some roundhouse kicks, underwater animations or something like that, you can keep legs in IK.

**4:57** · Let’s set up a pose real quick.

**5:25** · Let’s say that he wants to push this big box.

**5:27** · His arms are currently in FK which means they will move with pelvis, but we want to keep them steady on the wall.

**5:34** · So change them to IK.

**5:36** · But you see, when you change the arm, it moves to the IK platform which is in a wrong place.

**5:41** · That’s why, you have these buttons here.

**5:43** · Click “Move IKTarget to Palm and it aligns the platform to palm.

**5:48** · Same goes with Match IK and FK for the opposite process, when you need to match FK to the position of the IK platform.

**5:55** · So now the arm doesn’t move when switching to IK.

**5:59** · And if you try to move pelvis now, you can see that hands are staying on the wall.

**6:03** · There will come situations where you will want to change IK/FK during animation.

**6:08** · For example he pushes the box forward and then you want him to walk away.

**6:12** · So let’s say that in frame 20 he is done with pushing the box.

**6:16** · You would key the slider in that frame, and in next one it should be on value 1 already.

**6:22** · You should always change this from one frame to another.

**6:25** · There are very few situations where you actually want different value then 0 or 1 and it can create some unwanted results.

**6:36** · You can see that utill frame 20, IK platform affects the arm but from frame 21 it is back in FK and the arm follows the pelvis.

**6:46** · So that’s it.

**6:47** · It’s a quite complex problematic, but it is essential for every animator to understand which one to use and when.

**6:53** · If we simplify it down.

**6:55** · You keep legs mostly in IK and arms in FK by default.

**6:59** · If you want to hold something or place hands somewhere where they should stay put, you switch to IK.

**7:07** · I have also started a Patreon account recently if you would like to support what I am doing.

**7:12** · There is also an exclusive content there for my patrons.

**7:15** · Currently a full 2 hour long video of my recent quadruped tutorial, for anybody who missed something in the edited version here on YouTube.

**7:23** · And I am planning to add more as time goes on.

**7:25** · I am Miloš Černý and Thank You for watching.