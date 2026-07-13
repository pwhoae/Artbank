---
title: "What Kind of Math Should Game Developers Know?"
source: "https://www.youtube.com/watch?v=eRVRioN4GwA"
author:
  - "[[SimonDev]]"
published: 2025-02-05
created: 2026-07-13
description: "Math is important for game developers, but how much math do you really need? And is it really as difficult as it seems? Let's explore and understand some of the common uses for math in games.Gamedev"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=eRVRioN4GwA)

Math is important for game developers, but how much math do you really need? And is it really as difficult as it seems? Let's explore and understand some of the common uses for math in games.  
  
Gamedev Courses: https://simondev.io  
Support me on Patreon: https://www.patreon.com/simondevyt  
  
Follow me on:  
Instagram: https://www.instagram.com/beer\_and\_code/  
Twitter: https://twitter.com/iced\_coffee\_dev  
  
In this video, we take a look at the various bits of math that come in useful for game developers.  
  
"Dripping Icicles" by barberducky:  
https://www.shadertoy.com/view/MX3cRM  
  
Reference:  
https://en.wikipedia.org/wiki/Quaternion  
Cayley Q8 multiplication graph" by Cmglee is licensed under CC BY-SA 4.0. Source: https://commons.wikimedia.org/wiki/File:Cayley\_Q8\_multiplication\_graph.svg  
  
Great free resources:  
https://www.youtube.com/@JorgeVinoRodriguez/videos  
https://www.youtube.com/@3blue1brown  
https://www.youtube.com/@acegikmo

## Transcript

**0:00** · when I started out the math involved with game development felt really intimidating it wasn't just me many of my colleagues felt the same way but the truth is that a lot of the math that game developers use is a lot simpler than it looks so let's break down the Core Concepts that game devs use the most and see why they're nowhere near as scary as Wikipedia makes them look let's start with the biggest bang for your buck technique linear interpolation this simple little equation A + B minus a \* T

**0:33** · is deceptively powerful the power comes from the fact that A and B can be anything I can fade something in using lurp then I can move this guy to another spot on the screen and shrink it by luring the position and scale and what we lurp can be virtually anything in this case we've got a health bar and we can interpolate the amount of Health we can interpolate the color as the health drops it's really open-ended and a

**1:01** · straight lurp may not be exactly what you need you can see that the movement here isn't awesome so a powerful tool to change this is shaping functions in the middle we can apply a smooth step shaping function to the T parameter or we can optionally apply a more exotic shaping function like this balance that you're seeing here more advanced users can even transform the inputs so if we're looking at this gradient here you can see some sort of reddish Hues right in the middle because we're interpolating RGB colors but we don't

**1:33** · have to interpolate strict RGB we can say change to another color space like HSV which gives us a different look a different gradient if we try another color space okay lab you end up with a gradient that is in my opinion more aesthetically pleasing but not everything can be interpolated so easily if you're making a game and you've got this little turret here and you want to swing it between two different directions in the naive case that works

**2:00** · but in other cases you can see that it fails to take the shortest path to understand that better you as a game developer should know what angles are let's begin with two lines so here they are and this opening here is called the angle between them so angles are a unit of measurement for how big this opening is now in most daily life settings that you run into angles they'll be expressed in degrees from 0 to 360 because reasons

**2:27** · but in math settings you'll use a different unit called a radian if we take this unit circle which is a circle of radius one and start from here on the X AIS and we walk one unit of distance around the circle this forms an angle of one radian angles by themselves are

**2:44** · useful but even more so when we can do math with them so this brings us to trigonometry and it's nowhere near as complex as you might think it is so to start trigonometry is the study of triangles and the relationship between the sides of those triangles and the angles in between between for me personally I find it easiest to start with What's called the unit circle that's a circle with a radius of one and

**3:07** · it's pretty insane the mileage you can get by just knowing a few simple relationships if we take some point on the circle it forms this angle here called Theta in this right angle triangle you already know the radius is one so the hypotenuse is length one then

**3:24** · s of theta is this vertical distance here and COS of theta is just this distance here here on the horizontal and finally tan Theta is well if you extend the line from x = 1 upwards and the line forming your hypotenuse they meet up here and T is this distance here as you move this point around the circle we obviously expect cos Theta sin Theta and tan Theta to change and we can graph those changes so sin Theta kind of bounces back and forth between 1 And1 as

**3:54** · this Vector rotates around the circle and cos Theta does pretty much the same thing just slightly offset from s of theta tan is kind of neat you can see at Pi / 2 and piun / 2 tan Theta is undefined kind of flies off the screen

**4:10** · and now that you know what tan is well that freak out makes perfect sense since you can't compute those values amazingly enough just these few simple relationships cover a shocking amount of what game developers typically need from trigonometry look at this frog here we can animate various properties of it trivially with trig functions modulate ating the scale by the sign of the time gives you this pulsating effect while adding an offset to its height which is the sign of the time gives you a hovering effect spiraling and orbiting

**4:40** · type of movement is achieved easily by calculating the X and Y coordinates on the circle which as you saw earlier is super easy with cosine and S once you combine trigonometry with a basic understanding of vectors it becomes an even more potent tool and vectors aren't too difficult to understand either you have your little dude and he's located at some coordinate in the world well that coordinate his position that's a point or position Vector let's call it P

**5:10** · which in this 2D case is simply a pair of numbers an XY coordinate this little dude might also have a velocity which is just another Vector but in code we'd be careful to use it differently from a position since they have different underlying meanings it kind of helps to

**5:27** · distinguish between position vectors which represent a point in space and vectors that represent a direction and magnitude these tend to just be called vectors so you got these two distinct sort of usages but they're really easy to work with add a position to a vector to get an updated position useful for moving things around add or subtract two

**5:49** · vectors together to get an updated Vector this could be force or velocity or whatever useful for accumulating forces subtract a position from another position to to get basically a vector telling you how far away one is from the other and in what direction multiply a vector by a scalar value to make it longer or shorter useful for scaling things like velocity by time add two

**6:13** · positions together to get nonsense this isn't a thing that makes sense so let's see it in action if I want to displace this point let's say it's heading in this direction and the total velocity is this vector and we'll scale that velocity with the time pass to get where

**6:29** · to move and that gives us where the point should move too so the new position of the player is this velocity Vector multiplied by the time and then added to the position to get a new position now the velocity that also needs to be updated so here's the velocity of the object and this velocity Vector maybe there's an accelerating force or gravity call this a which we

**6:52** · multiply by the Delta time and that's the new velocity and just like that we have Oiler integration in imperfect but super simple and easy way to compute movement look up for that integration if you want a more stable way among the many advantages vectors have one of the most powerful for us game developers is the dot product so given two vectors and we're going to use unit vectors in this case which are just vectors with a length of one so if I have two vectors

**7:21** · and we draw the unit circle on top then we just chop the vectors off so that their length is exactly one we know that if one of those vectors B lies on the xaxis then this distance on the horizontal here is simply cos Theta or basically cos Theta equal a.x if we expand this out further in terms of the full Vector a then cos Theta is equal to ax \* 1 + ay \* 0 or cos Theta is equal to

**7:49** · ax \* b dox + a y \* B doy this is called the dotproduct so given any two unit vectors Computing the dotproduct gives you cos Theta the cosine of the angle between them seeing it with B on the xais just made it easy to visualize and

**8:07** · the dot product is freaking awesome because it gives you this simple way of determining how aligned two vectors are as they get closer in Direction cos Theta approaches one whereas when they're perpendicular cos Theta is zero and when they face in the opposite direction you get 1 so the math is neat

**8:25** · but what exactly does this buy us as game developers let's imagine a tret which shoots at stuff P pow now some character walks in front of the turret we need to figure out whether this is in front or behind it you have the turret's forward Direction which is this a hat forward and you have this Vector to the guy which is B hat to guy a simple dot

**8:47** · product and check the sign and voila definitely in front but if we move this guy behind the turret so he kind of moves over here you can see at some point the arrow goes red or more event let's narrow the field of view of the turret to 60° well cosine half of that

**9:06** · 30° is roughly 0.866 so we calculate a normalized vector from the turret to the player compute the dot product between the turrets forward in that direction and compare that to our cut off and we can figure out whether it's visible or not of course now that this dude is fair game to shoot we might need to rotate the turret and for that you'll need to be familiar with matrices matrices are

**9:30** · these big blocks of seemingly random numbers that you somehow do math with but what do they mean exactly and is there any way to understand them better Beyond just blind trust so the first thing to do is to start seeing matrices as linear Transformations imagine a grid with an X axis as 1 Z and a y AIS as 01

**9:53** · those two vectors or basis vectors Define the space now if we wanted to say stretch out this grid making it wider and taller how do we do that the stretched version of this space has X at three and z and y at 0 and two so we'll

**10:10** · take those vectors and just dump them into the Matrix as columns like this now when you multiply vectors by this Matrix you'll find that they get stretched out horizontally by three units and vertically by two and we can Define other matrices similarly let's say that I make X here like 01 and Y is 1 0 what

**10:31** · does this do well we can see that the Matrix is just 0 1-1 0 which is just those two basis vectors which when applied to any Vector does a 90° rotation so let's draw our unit circle again and we know that if we have a point here we can easily Define it as cos Theta sin Theta let's make that our xais then our y AIS is just Theta + 90°

**10:57** · which is over here well then magically we just figured out how to make a rotation Matrix you're probably more familiar with this version which is what you get when you simplify it they're not really all that mysterious at all and to cap things off what if the two axes aren't at 90° well I can Define X along

**11:16** · here and Y along in this direction in this slanty effect you get this is what's called a shear and why am I talking about shears well we already know that our 2x2 matrix can rotate and scale just f fine yeah that's super easy but how do we translate none of these operations maps to a position well we can kind of cheat by using another dimension if we have a secret Third Dimension Zed and any point we Define like say this point here is actually located at x y and one so by adding this

**11:50** · new dimension we are now working with what's called homogeneous coordinates then we can Define our rotations and scales as normal and in this Zed column here we can tuck our translation in what happens now is when we apply this Matrix look what happens the origin moves this

**12:07** · transform which looked like a Shear earlier is kind of being abused to handle translation instead this extra Dimension lets us use a single Matrix to handle everything rotation scales and even translations all at once this gets us into the topic of representing rotations which is something you as a game developer should familiarize yourself with the problem with storing your rotation as matrices though is that well first of all if it's a 3D rotation

**12:34** · that's nine values which is just a lot of data but more than that if you try interpolating between two matrices that's going to get you into a world of trouble you can see here as we try to interpolate this monkey from start to end position it kind of freaks out a bit people have made stabs at this in the past but it's difficult to get right and just really complex I remember when this was posted and the pretty significant criticism of the article another common way to represent rotations is Oiler angles and many games

**13:03** · will expose these in UI they're basically yaw pitch roll or rotations around each axis applied in a fixed order they're awesome they're compact having only three components they're intuitive since they align closely with a how an airplane works and you can quickly get a feel for what the numbers mean but that's where the advantag is end you can't interpolate them easily if

**13:26** · you do a naive interpolation like you're seeing here you you can kind of see that this gives results that really aren't ideal more than that Unfortunately they suffer from something called gimbal lock now gimble lock is easy to understand once you see it in action so you've got these three rotation axes and they have to be applied in a fixed order to visualize we have this object and these three rings around them they're the rotation axes or gimbals so we rotate

**13:52** · around one we're doing the blue one you can see that spins the model and nothing else we follow that with a rotation of the green ring and both the model and the interior gimbal the blue one they both rotate finally the outer ring rotates and it brings everything with it the problem arises when you use this ordered method of applying rotations and accidentally line up two of the gimbals if we rotate the green by 90° look what

**14:17** · happens the red and blue gimbals are aligned now and no matter how you rotate either of them you've lost a degree of freedom in your rotations which sucks that's not to imply that games don't use them they totally do because they're simple and easy to understand so any user facing stuff will probably be using Oiler angles but deep in the darkest parts of the code ideally you have a representation that's compact intuitive

**14:41** · immune to gimbal lock and can interpolate smoothly fortunately there's a solution unfortunately they're called querian and they give you three out of four of those things which is about as good as it gets they're compact requiring only four values they're immune to gimbal lock assuming you don't build them from an Oiler angle and expect magic and they interpolate smoothly as you can see here we've got the original Matrix and Oiler angle interpolation and to compare here's the querian version called spherical linear

**15:11** · interpolation as you can see it's much more what you'd expect quorans are these mathematical objects that we can use to describe rotations in 3D space they consist of a scalar or real value and three imaginary values from that description alone you probably get the feeling that these are going to suck to understand and you'd be right they're hard a lot of people have tried to simplify them make them intuitive or give you ways of visualizing them but at the end of the day they're just fraking hard to understand if you're one of the chosen who gets them awesome if it's any

**15:43** · consolation even as a graphics programmer I've only had to know how querian actually worked precisely once in my career and predictably it was in an interview but just because they're hard to get any intuition for doesn't mean that you can't at least sort of understand why they work let's backtrack a bit and start with complex numbers those weird things you learned in high school you know square root of-1 i^2 =

**16:08** · -1 Etc so we'll start with that because in math you can invent your own rules and if they happen to be useful then yay so we'll consider a number line and then extend it with a second set of imaginary numbers so you've basically got these two axes now under normal circumstances you'd call this X and Y but for now we're using real and imag imaginary so then every number has two components one real one imaginary so one Z would be

**16:35** · written as 1 + 0 I and of course if we plot a point up here at 01 that's written as 0 + 1 I or realistically just I now you can do some interesting stuff let's bring back our point at one Z like what happens if you take this point here 1 Z and multiply it by I well that results in I \* 1 + 0 I and that equals to I + 0 i^ 2 or 0 + I or in other words

**17:05** · we just did a 90° rotation in this two-dimensional real imaginary coordinate system What If I multiply by I again well then you end up with -1 + 0 I or -1 this point over here so at this

**17:21** · point it should be somewhat evident that multiplications are kind of like rotations so we'll bring back our unit circle and if I pick a point on it and we know that's cos Theta sin Theta then this point up here is represented by the complex number 1 + 1 I so we'll multiply these two complex numbers together so 1 + I \* cos Theta + I sin Theta and that's

**17:45** · equal to well you can read all of that but the final result should be cos Theta minus sin theta plus I cos theta plus I sin Theta now we compare that to a matrix multiplication well you know the Matrix that's cos sin Nega sin cos \* 1 1 and

**18:03** · what you end up with is cos minus for x and sin plus cos 4 y you get basically the same thing right so back to querian then they're pretty similar but extended with three imaginary components and a bunch of crazy rules surrounding how you simplify the terms if say you multiply I

**18:21** · by J for example okay this one is just needlessly complicated here's a version that's a lot simpler I said simpler not simple this isn't some rigorous explanation but hopefully you at least feel like yeah I kind of feel like I could understand this given deeper study

**18:37** · and that's really the point of this video that math can on the surface be a little scary at times but in reality most of the concepts aren't super hard to understand or work your way through if you find yourself wanting to take that next step I've packaged up all the math game developer might need into an easy to follow course it's designed to make these Concepts simple and approachable so you can start applying them right away it's nowhere near as hard as you may think and with time many people can Master these mathematical tools which maybe all you need to build a fun and interesting game at the end of

**19:10** · the day that's what many of us are trying to do what you may find is that once you have a basic understanding and the confidence that you could Advance suddenly topics that seemed Out Of Reach can become accessible to you and of coures aren't your thing no worries there's plenty of resources online you can kind of piece together a lot of this information from from various sources personally I like three brown one blue Freya Homer and George Rodriguez's stuff they're all great starting points cheers