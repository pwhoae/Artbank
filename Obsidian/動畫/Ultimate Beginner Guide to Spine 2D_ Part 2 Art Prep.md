---
title: "Ultimate Beginner Guide to Spine 2D: Part 2 Art Prep"
source: "https://www.youtube.com/watch?v=C4YZQbqhIHk&list=PLZOZR9OAkzE3T_irm8ighD0fSxtZIkgBj&index=11"
author:
  - "[[Anipalooza!]]"
published: 2022-07-24
created: 2026-08-05
description: "The second video in my Ultimate Beginner's Spine Tutorial series! This time it's all about art prep! Learn how to prepare your art for animating in Esoteric's Spine 2D animation software, whether you'"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=C4YZQbqhIHk)

The second video in my Ultimate Beginner's Spine Tutorial series! This time it's all about art prep! Learn how to prepare your art for animating in Esoteric's Spine 2D animation software, whether you're starting from scratch or need to cut up your merged art.  
  
Go to another video:  
Part 1 - Interface: https://youtu.be/-67qe4HZnv4  
This is where I'd put my next video: … If I had one!!! I'm putting these videos out as I make them, so thanks for being patient as I work on them. Subscribe so you’ll know when the next one comes out!  
  
Grab my FREE art files here and follow along!  
https://drive.google.com/drive/folders/1jc1W7\_t\_QCmG6a\_AneTiVAtRKEr3xK0F?usp=sharing  
  
Get the Photoshop to Spine script here:  
https://github.com/EsotericSoftware/spine-scripts  
  
Timestamps:  
00:00 -- Intro  
00:42 -- Think before you draw  
01:53 -- How I cut up my character  
03:02 -- Other tips for drawing from scratch  
03:46 -- Cutting up a merged character  
05:59 -- Name everything  
06:43 -- Exporting  
08:45 -- Recap  
  
\--------  
Discord:  
https://discord.gg/JnDmBuDb  
  
Follow me:  
Twitter: https://twitter.com/CydoniReyes  
\------------

## Transcript

### Intro

**0:00** · welcome to part two of the ultimate beginner's  spine tutorial this time i'll be showing you how to prep your artwork for rigging and animating  in spine as always you can skip to the end for a recap if you just want a quick answer but  otherwise let's jump right in to get the most movement out of your rig you'll want to draw  your character in a neutral pose with all of the animatable parts as separate images so that  they can move independently from one another kind of like one of those paper puppets with  the little pins in them but if you're starting with a flat image there are ways to prep the  art without completely redrawing the character

**0:31** · i'll first show you how to build  a character from scratch on layers and then i'll show you how to cut it up if it's  on a single layer i'll be using photoshop but you can use whatever software you want as  long as you can export your layers as pngs you might be familiar with character turnaround  sheets which show a character at different angles these can be a great guide for making your artwork  and helpful if you want more complex animations here i have a front three quarter front side  three quarter back and back view depending on how your character moves you might not need  all of these views and you can actually get a lot of good animation out of just a three-quarter  front view it helps to plan out and thumbnail the

### Think before you draw

**1:05** · animations that you'll be doing later just so that  way you know what views you might need using your reference as a guide draw out each moving part  on a separate layer pretty much anything that has its own movement like the different body parts  clothing and hair you'll want to think about your rig and animations at this stage there is a bit  of an art to rigging and many ways to do the same thing but there's generally two ways to move your  art using just bones or adding meshed weighting

**1:29** · imagine the actual skeleton your character has and  where all of its joints are an arm bends at the elbow so it might make sense to separate out two  parts of the arm and just move it with two bones but maybe you're going for a rubber hose style it  might make more sense to keep the arm together and make it one flexible piece using mesh weighting  all this to say use your best judgment for what you need to cut and what to keep together you can  always go back and change it later if you need to for reference this is how i cut up my character  i wanted a lot of control over this character so i cut the major parts into pieces and i even  separated fine details on the face like the mouth

### How I cut up my character

**2:02** · nose brows eyelashes pupil whites of the eyes  and eye highlights but cutting it like this would have also been fine you might notice that there's  areas here that overlap this is to make sure that there's enough art available underneath a moving  piece so that the parts don't separate from each other when they move for example if we didn't  add overlap on the legs when her skirt moves we'd end up with gaps in the art this is important for  pretty much every separated piece otherwise you'll be stuck with a headache using some pretty tricky  rigging techniques speaking of tricky rigging

**2:32** · it's often best to draw your parts in a neutral  straight position so that way it's easier to rig in my different views the hair and the tail are  drawn in a curved position for my reference when posing the character but i might end up using  the straight versions i've drawn to the side for rigging think of your art as the middle point  of motion if the art starts as a curve it'll look

**2:51** · fine going one way but it'll probably be harder  to make it look good going the opposite direction but if we straighten out the art now its default  position is at the middle of the two extreme positions that we might want to have here's a few  other tips for making artprep easier sometimes when we draw things can look great one direction  but it'll look warped when you flip it so make it a habit to flip your art periodically as you draw  to make sure that it reads well in both directions

### Other tips for drawing from scratch

**3:15** · then your character won't look weird if you  want them to run in the opposite direction the symmetry tool is great for making sure that  your art is symmetrical when you're working on the front or back views instead of drawing five  views from scratch you can reuse parts from other views either entirely like i did with the legs  and arms or as a starting point for making new views like i did here with the head using the  warp tool this helps keep your art consistent and can save you a lot of time making the  art because i did this with my character my front view took me about two hours but the  other four views only took like three hours

### Cutting up a merged character

**3:47** · so what if we want to use an image that's already  been merged well that's where the good old lasso tool comes in handy duplicate your image and  lock it so that you've always got a backup in your file for reference and then start cutting  up the other one by selecting a section with your lasso tool and then pressing ctrl j this  will duplicate the selection to a new layer then go back to the other layer and repeat this  process for every moving part it's good to work in the background of the foreground so that way you  don't have to rearrange the layer order later you can use the magnetic lasso tool to help snap the  lasso along the edges of the art but i personally

**4:19** · find the tool a bit obnoxious to use so i just  stick to the regular one and get a general cutout and then i'll go through the layers one by one and  refine the edges using a combination of the loop and eraser tool it's helpful to use an obnoxious  background color for this part too so you can see what you're erasing more clearly also be mindful  of layer dust at this point pixels that exist on the same layer away from the artwork but might not  be easily noticeable there's a pretty easy way to spot this right click on one of your layers  thumbnails and then turn on large thumbnails and clip the thumbnails to layer bounds now  the thumbnail layer bounds will only show

**4:52** · the art on the layer and it will be easier to  notice when a layer has extra unneeded artwork you can add a stroke to this layer and find  any extra pixels that you might need to erase and don't forget the overlap you'll probably  need to recolor areas that overlap so that way when the art moves it doesn't just show the  same art underneath it this might be as easy as painting an extension of flat color or it might  mean having to draw out more complex art manually sometimes you can get away with using the  content aware fill tool to fix these problems with your layer selected first click this icon  to lock the transparent pixels on the layer

**5:25** · now only the existing pixels will be recolored  select the area that you want to overlap and then go to edit fill and select content aware in  the drop down photoshop will then take the color information from the surrounding pixels and paint  the area that you selected to match it doesn't work for every situation but it can be helpful for  getting an area started and it works really well when there's not distinct shapes around now double  check that the prepped layers match the original image as best they can toggle the original  image on and off over top of the prepped artwork

**5:56** · if anything doesn't match now it's a good time  to fix it and now that we've got all our layers it's time to rename everything each layer needs  a different name so that they don't override each other during the export you can name them  whatever you want but it's really helpful to have a naming convention in place this is my naming  convention i identify the character the body part the direction the part faces the numbered part  if there's more than one of the same thing and then the view so here that might look like which  underscore hair tuff underscore left underscore

### Name everything

**6:24** · zero two underscore front quarter i usually  shorthand this though if certain information is unnecessary i also identify left and  right based on the character's perspective and not based on the screen's perspective  that way when my character is turning around the left and right view will always be in the  same spot in relationship to the character and we're done all that's left to do now is export  the images as pngs there's a really great tool for exporting layers called the photoshop to spine  script you can download it from a github at the

### Exporting

**6:52** · link in the description below along with scripts  for other adobe programs like after effects and illustrator and even for some free programs like  \[ \_\_ \] and inkscape it's updated pretty regularly by some folks on the official spine team so it's  good to check back every once in a while for a new one to use the script go to file scripts browse  and locate the script on your computer and the

**7:11** · photoshop dispine window will pop up ignore hidden  layers will tell the script not to export any layers that are hidden in the layer menu ignore  background layer will also tell the script not to export the background layer when trim white  space is checked white space around the edges of each layer is removed and when it's unchecked all  images will be the size of the psd it's usually best to keep this on for optimization purposes  checking right spine json will create a json file

**7:36** · that can be imported into spine this lets you  import the art into spine in the same position and layer order as it is in photoshop based on the  psd's origin point by default the origin point is at the top left corner of the canvas but this can  be changed by turning the rulers on then clicking and dragging from this corner square to the place  that you want the origin point to be checking right template image will create a reference  image of all the visible layers in your psd you can also adjust the export scale and how much  padding to have around the edges of the images the default output path for the images would be  a folder called images wherever your psd is saved

**8:10** · as will the json saved with the same name as the  psd you can see the full paths here you must save your psd before running this exporter or else it  won't work and it's good practice to save all of your files in a project folder so things don't  get lost on your desktop once all of the settings are to your liking press ok wait for the script  to finish running and you're good to go if the script runs into any issues like layers having the  same name it'll open a script alert to tell you how to fix it the script also does some pretty  cool things if layers are named a certain way put into groups or has adjustment layers check all  those cool features out on their github page for

**8:44** · more information and now we're finally ready to  take this bad boy into spine but first let's do a quick recap of all the important bits draw or cut  up your character on separate layers turnarounds are great references for tracing over plan your  animations ahead of time with thumbnails you know what art you actually need separate anything  that will move onto its own layer during animation including body parts clothing and accessories your  needs will vary draw parts in a neutral pose for

### Recap

**9:08** · better looking meshes later make sure every piece  overlaps the surrounding parts so the art doesn't separate when it moves if you're cutting up your  art because your artist didn't work in layers like a big poopoo brain use the content to wear tool to  avoid manually painting overlap whenever possible it doesn't need to be pretty it just needs to  be functional reuse as much artwork as you can across the different views to keep things  consistent and because we're lazy and we don't want to draw more than we have to flip  your art periodically to make sure it doesn't look like trash going the opposite direction  give all your layers different descriptive names like the good mommies and daddies you  are download the photoshop to spy and export script or whichever one you need on github make  sure your psd is saved in a project folder and

**9:41** · export your art by going to file scripts browse  photoshop to spine use these settings wait for photoshop's brain to work and you're all set to  use some sweet spine skills if you want to see a time lapse of the entire art prep process you can  watch a video of it here and if you want to check out my files i've linked them in the description  below feel free to use this and follow along with the next tutorial when we finally get into spine  and begin rigging our character i'll see you soon