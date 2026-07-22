---
title: "Learn CSS Variables In 7 Minutes"
source: "https://www.youtube.com/watch?v=5wLrz_zUwoU"
author:
  - "[[Slaying The Dragon]]"
published: 2023-11-14
created: 2026-07-22
description: "This video is from a lesson in my CSS course.In this lesson we go over one of my favorite features in the CSS language, custom properties, or also often referred to as CSS variables. CSS variables a"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=5wLrz_zUwoU)

This video is from a lesson in my CSS course.  
  
In this lesson we go over one of my favorite features in the CSS language, custom properties, or also often referred to as CSS variables. CSS variables allow a value to be stored in one place, then referenced in multiple other places.

## Transcript

**0:00** · this video is sponsored by myself learn CSS with my full CSS course which is now available on my website sling the dragon. in this lesson we go over one of my favorite features in the CSS language custom Properties or also often referred to as CSS variables CSS variables allow

**0:20** · a value to be stored in one place then referenced in multiple other places in my index.html inside my empty body element I'll add an H1 element with the class of title and that displays hello

**0:36** · world then in my CSS we see I already have the Border box reset and the everything resets now let's say I wanted to change the color of the background I'll select the body element give it the background color property and I'll set it to hasht 0 2 0

**0:55** · 6 1 7 when I save we see our back ground is now dark however we don't see our title anymore so I'll select our Title by its class name of title and I'll give it the color property and I'll set it to # F1 F5

**1:14** · F9 when I save we see our title is now white I'll head back to my index.html and under our title I'll add a paragraph with the class of description and that displays some filler text then in my CSS I'll select a repair

**1:35** · graph by its class name of description and I'll give it the color property of # 9483 B8 when I save we see our paragraph is a darker shade of white and finally back in my index.html under our paragraph I'll add an anchor element with the class of Link and that dis Place learn

**2:02** · more in my CSS I'll select our anchor element by its class name of link and I'll give it the color property and I'll set it to # E1 D 48 when I save we see our link is now

**2:20** · red we currently have a total of four colors a dark color a light color a grayish color and a red color managing these four colors for now isn't really a problem however eventually your website is going to grow as your website grows

**2:36** · the same color might be used in hundreds of different places and when that happens our four colors will be unmanageable and to make things worse imagine after weeks of Designing and coding you suddenly decide that instead of this red color you want everything that has this red color to instead be purple this decision will have you Scavenging through your entire code base in search for every property that has this red color assigned so that you can replace them with a purple color instead

**3:05** · so in a nutshell this isn't very scalable the solution of course is CSS variables to create CSS variables at the top of the file I'll select the root P sudo class and inside the curly braces I can declare a custom property that begins with two hyphens followed by whatever we want to call our variable I want to create color variable so I'll call the first one color-

**3:33** · dark we just declared our first custom property however we need to assign it a value I'll copy the hex value of our dark background color and paste it as a value to our first custom property I'll create a second custom property called-- color-

**3:53** · light and I'll copy the hex value from our title and paste it inside our light variable I'll create a third custom property called-- color- slate and I'll copy the hex value from our paragraph and paste it inside our slate variable and finally I'll create a fourth custom property called D- color-

**4:20** · primary and I'll copy the hex value from our link and paste it inside our primary variable now that we've created our four CSS variables on my body element I'll remove the hex value from the background color property then on my title I'll remove the value from the color property on the description I'll remove the value from the color property and finally on our link I'll remove the value from the color property when I save we see our colors

**4:51** · are back to their defaults to use our variables starting with the background color on our body element I'll assign it to our dark custom property to do so we need to use the VAR notation and inside the parentheses I can just type out the name of our variable-- color- dark when I save we see the background color property is being assigned to the value that we defined in our-- color-

**5:18** · dark variable now on our title I'll give our color property the VAR notation and inside the parenthesis I can select the variable I want I want the light variable so I just need to type out the name of the variable-- color- light on our description I'll give the color property the Slate

**5:43** · variable and finally on our link if you think typing out the VAR notation each time is a hassle vs code has a CSS variable shortcut where by only typing to hyphens we get a list of all our variables and when I select the primary one we see it automatically added the VAR notation when I save our link is now

**6:05** · red this little project of ours with our title our paragraph and our anchor element really doesn't do justice to how useful CSS variables are just imagine for 1 second that we had over a 100 different individual elements each with the primary color of red and then say you decided you wanted the primary color of your website to be purple instead you'd have to individually update the color property of each element that has your primary color of red CSS variables

**6:37** · solves this issue because now say I still had hundreds of elements with the primary color of red but this time I was using CSS variables to change the primary color of my website from red to purple instead of having to update hundreds of individual elements I can just update the value in my custom property from what it currently is to what I want it to be I'll change it to #t 9333 EA and when I save our link is now

**7:05** · purple if you enjoyed this video please consider giving it a like and hitting that subscribe button also if my way of teaching resonates with you do check out my full CSS course the link to it is in the description of this video thanks for watching