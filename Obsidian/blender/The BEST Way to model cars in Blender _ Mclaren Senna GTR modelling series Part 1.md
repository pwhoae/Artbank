---
title: "The BEST Way to model cars in Blender | Mclaren Senna GTR modelling series Part 1"
source: "https://www.youtube.com/watch?v=Py-amDTcrpI"
author:
  - "[[Phantom Studios]]"
published: 2025-01-28
created: 2026-07-09
description: "In this first episode of the McLaren Senna GTR Modelling Series, we're going to model the hood of this incredible supercar 🚗💨!In this video I'll guide you through the process of shaping the basic f"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=Py-amDTcrpI)

In this first episode of the McLaren Senna GTR Modelling Series, we're going to model the hood of this incredible supercar 🚗💨!  
In this video I'll guide you through the process of shaping the basic form, adding key details, and refining the edges to get that perfect fit.  
Whether you're new to Blender or looking to improve your car modeling skills, this video is packed with tips and techniques to get you started 🏎️🔥.  
  
If you liked this video, please leave a comment down here to let me know ⬇️  
  
You can find the link for the tool that i used for taking the references in the video ⬇️  
https://www.pureref.com/  
  
Get all the References i used on my Patreon Channel right here ⬇️  
https://www.patreon.com/posts/mclaren-senna-120893246?utm\_medium=clipboard\_copy&utm\_source=copyLink&utm\_campaign=postshare\_creator&utm\_content=join\_link  
  
You can ask me anything you want at this e-mail: phantomstudiosts@gmail.com  
\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_  
The song from the video: Energetic Gaming Hip-Hop by Infraction \[No Copyright Music\] / Las Vegas  
Taken from the channel: Infraction - No Copyright Music  
License: Creative Commons – Indicate original source (reuse is allowed)  
Link: youtu.be/JIUXWTs5ZB4  
\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_  
  
Chapters:  
0:00-0:37 - Intro  
0:37-2:19 - Setting up the workspace  
2:19-8:34- Making the inner part of the hood  
8:34-12:25- Making the outer part of the hood  
12:25-14:07- Modelling the curve in the front of the hood  
14:07-21:35- Modelling the Ait Intake  
21:35-22:13- Final adjustments  
22:13-22:35- Outro  
  
  
#blender #tutorial #productdesign #productvisualization #carmodeling #cartutorial #blendercar #organicmodeling #3dmodeling

## Transcript

### Intro

**0:00** · today I'm finally back with another car modeling series and the main character is going to be the McLaren Senna GTR in this video I'll start by making the hood of the car and in the next one I'm going to model the middle of the body obviously don't worry if you are a beginner I'll try to explain myself as best as I can the only thing you need is just a basic understanding on how to move scale and rotate things in blender

**0:30** · this said make sure to leave a like and follow the channel to not miss the next episodes and without further Ado let's get started open a new blender scene and delete the default Cube then import the blueprint reference which as always you can find on my patreon channel completely for free once you did that rotate it to align it with top view and adjust it at the center of the scene making sure that your blueprint is as centered as as

### Setting up the workspace

**1:01** · possible to make this operation way easier click on this icon while selecting your image tick this checkbox and set the opacity to a value of 0.5 so that now the grid appears under the blueprint and you can use these little rectangles to position it

**1:20** · better after you positioned one portion of the blueprint correctly duplicate it with shift plus d and repeat this process with all the other ones obviously paying attention to the proportions using the methods I just showed

**1:38** · you once you're satisfied with your references position them like this and then you're ready to start modeling during the entire process I'm also going to use some additional references I personally got from mcclaren's official website but you can find them together with the blueprint on my patreon channel I'm also going to use

**1:58** · a software called Pure to display them on my screen you can find the download link in the description finally add a lattice and set its resolution to something like 11 on all Dimensions this is done so that we get this nice grid that we can use to properly space our vertices scale it and

**2:16** · position it to fit the hood of the car we're going to start by making the inner part of the Bonnet then we're going to make the sides and finally the air intake in the middle start by adding a cube then enter edit mode select all and

### Making the inner part of the hood

**2:31** · delete by pressing collapse edges and faces now you'll have only one vertex remaining which you're going to position at the outer border of the hood once you did that use e to extrude it and carefully start outlining the borders of this portion of the

**2:48** · hood normally we should position these vertices on the borders of the grid we just made with our lattice but in this case you can notice that the shape of our car requires something different anyway the only purpose of creating this grid is to get the vertices as evenly spaced as possible so keep that in mind and don't pay too much attention to it as long as your vertices are spaced

**3:11** · correctly once you outline one part repeat the same process on the other side but this time make sure that you have the same number of vertices on both sides of the hood in order to achieve a clean quad- based topology in the end

**3:36** · \[Music\] now that we have a complete outline of the inner part of the hood we can start to fill it with some faces start by creating a face

**3:53** · here then add a Vertex on this side here so that we create an edge Loop that passes in the middle of the model now connect these two vertices add another one in the middle and select this section here with control+ shift then simply press ctrl+ F then grid fill sometimes blender is going to get it right at the first time but in this case we'll have to adjust the offset

**4:20** · manually now repeat this operation on the other section but first make sure that you have the same number of edges on opposite sides for example here I had to design all a

**4:42** · Vertex to make our topology a little bit cleaner we're going to use the space and relax Loop tools that are going to be very useful during the entirety of this series for this reason I assigned to them shift plus space bar and shift plus r as shortcuts and I suggest you to do the same once you're satisfied with how your model looks press control+ 2 in object mode to add a subdivision

**5:15** · modifier now add some Loop Cuts so that our topology looks smoother also make sure to use space and relaxed Loop tools to make everything a little more tidy

**5:32** · now go into the modifiers Tab and add a mirror modifier on the Y AIS so that we now have a symmetrical model on both sides to which we can start to give some tridimensionality obviously make sure to position it at the top of the modifier's hierarchy we won't need this grid anymore so you can hide it or delete it

**5:52** · the only thing we have to do now is to raise our model up and to start positioning every vertex in the right position following our blueprint I suggest you to start from the front of the car and to pay particular attention to this part of the process as it is the one that could make or break your car's looks while modeling some parts won't be visible on the blueprint so the only way to handle this is to watch your additional references and to try to figure out how your model should

**6:21** · be here I noticed that the front part of my blueprint is probably not aligned correctly with the rest if something like this happens to you don't worry just try to adjust this in the best way possible and it'll be fine after finishing the front part of the car I suggest you to repeat the same process with the \[Music\]

**6:53** · back I noticed that the outer part of our model it's a little bit higher than it should be so I simply fix the issue after that I passed on adjusting this Edge Loop in between using primarily the relax Loop tool which is very helpful in this types of

**7:25** · situations also I added a new Loop cut to improve the quality of my topology and to drive the curves more easily once I finished that I adjusted this curve Parts here \[Music\]

**8:06** · \[Music\]

**8:22** · then I added a loop cut here to make this angle more tight and after some time here's how my model looks now let's make the sides of our Hood start by extruding this side of what we have done then with your vertices cover about a half of the

### Making the outer part of the hood

**8:56** · fender and after doing that use all alt plus e to extrude all of these faces along their normals in order to create that height difference you can see from the references but to sharpen those angles we're going to need a bevel modifier go into the modifiers Tab and put it in between the mirror and the subdivision modifier then set the amount to 0.01 M

**9:21** · the segments to two the limit method to weight and the shape to one then to add a bevel select the edges you want to sharpen then press n and set the mean bevel weight to one here in the top right corner after applying the bevels I adjusted this part here which is a little bit lower and returned on modeling the rest of the hood using the methods I showed you

**9:56** · \[Music\] earlier as you you can see I started from this part here and went on using Extrusion to outline this part of the \[Music\]

**10:21** · \[Music\] car and then I concentrated on this part here modeling the outer part of the rim and using Loop tools to smooth every part of the model

**10:51** · \[Music\]

**11:14** · \[Music\] also here I added a loop cut and continued rounding the shape

**11:35** · then here I extruded this vertices down and place them as you see on video in a then I added a loop cut here spend some time smoothing the entire shape and here's how our model looks right now

**12:03** · after that I extruded these vertices down to complete this \[Music\] part and then I adjusted this part \[Music\]

**12:21** · here so that now our car looks way better and now let's focus on making the curve for the front part of the car I started by simply trying to outline it shape from side \[Music\]

### Modelling the curve in the front of the hood

**12:49** · view but then I realized I was doing things wrong and had to start over basically these vertices had to be a little bit lower \[Music\] I also had to redo this part here

**13:29** · \[Music\]

**13:44** · you know in know you

**14:03** · but in the end it turned out great and now let's finally focus on making this big air intake in the center of the hood I started by duplicating the inner border of what we just made then separated this to a new object with P then by selection once I did that I extruded this curve here and adjusted it following the blueprint

### Modelling the Ait Intake

**14:31** · as you see from your reference this part here should be separated from the rest so select the vertex and press V to do so after that raise this up a little bit to match the blueprint then add a loop cut in the middle and lower it to create this smooth upside \[Music\] curve now we have to create the hole where the air flows to do that I firstly

**14:58** · extruded one one vertex along the border of the vent then I duplicated this curve here and adjusted it following the images I had and then when I was satisfied I connected these vertices created a face right here then I selected this border and pressed F multiple times to fill this up here I applied a bevel and modified the amount param to

**15:30** · 0.001 in the modifier's tab finally let's make our air intake here firstly I tidied up the topology a bit then I ins seted these two faces by pressing I and check boundaries by pressing B then I simply extruded them in deleted

**15:50** · the back faces and our holes done for now I only applied some bevels to the borders but we're going to modify this later in now let's fill the surface to do this I firstly duplicated this curve here and adjusted it to fit the rest of the

**16:16** · shape now after that I connected these vertices right here so that that we can fill one section at the time let's start from this one to make

**16:35** · this process faster you can go here in this section in the top right corner and tick the check box which says statistics now in the top left corner there's going to appear some data about how many vertices you're currently selecting for example and this is super useful you can see from the video that I deleted two vertices from here to make them four

**17:01** · and added one vertex here to make them seven on this side so that I have the same number of edges on opposite sides which allows me to fill

**17:19** · everything I decided to remake this hole as it wasn't similar enough to the original as I wanted to basically what I did was shrinking this border here \[Music\] then I made the side a little more curved and extruded it again and applied bevels to all the corners except for the top right

**17:47** · one finally we can concentrate on filling the other section of this hole what I did was simply aligning this vertices with my blueprint

**18:06** · then I deleted one vertex and connected this with the other side to fill everything obviously during this operation make sure to maintain the same number of edges on opposite sides otherwise you won't be able to fill this up I quickly use the relax Loop tool to improve my topology then I concentrated on this part here because as you see here there should be some vertices that separate this little triangle from the

**18:38** · model after adjusting everything I quickly modeled the center part of the air intake by extruding this face here adjusting the vertices following the \[Music\] blueprint and then we can start to model the final part of the air intake which is the one in the center of it I started by simply extruding a bunch of vertic in the center of the model then I rais them up to match the

**19:08** · reference and connected these vertices together immediately after that I started outlining the rest of the shape

**19:32** · and after doing that I made a face here adjusted these two Edge Loops so that they can be connected and started filling everything \[Music\]

**20:05** · \[Music\] if your faces start to look like this select everything and press shift plus n to recalculate the normals and it should be fixed here I figured out that we don't need these edges so delete them and close this Gap to make it look

**20:44** · better now that we don't have this in our way we can simply finish closing this faces here then you can add a loop cut here to merge these vertices and extend this pipeline \[Music\] obviously don't forget to apply \[Music\]

**21:26** · bevels know you there are only four things we have to do now to complete our Hood we need to raise these faces up by a little bit using alt plus s to make them look better then to apply some bevels on their

### Final adjustments

**21:53** · Corners also we need to add a solidified modifier to this object in order to give it some make sure to position it between the bevel and the subdivision modifier then use a value of 0.005 M for the thickness and minus 0.8 for the offset now finally add a loop cut here slide it up to sharpen those corners and here's the hood of our McLaren Center

### Outro

**22:20** · GTR I hope you like the content of this video if you did make sure to leave a like And subscribe to the channel to not miss the next episode in which we're going to model the middle part of the car this said let me know if you like what I'm making by leaving a comment below this video and as always see you in the next one \[Music\]