---
title: "Write less code with these 5 CSS tips"
source: "https://www.youtube.com/watch?v=UWFrl79092w"
author:
  - "[[Kevin Powell]]"
published: 2024-04-11
created: 2026-07-22
description: "Looking to step up your CSS? I have free and premium courses 👉 https://kevinpowell.co/courses?utm_campaign=general&utm_source=youtube&utm_medium=usefulselectors🔗 Links✅ Code from this video: http"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=UWFrl79092w)

Looking to step up your CSS? I have free and premium courses 👉 https://kevinpowell.co/courses?utm\_campaign=general&utm\_source=youtube&utm\_medium=usefulselectors  
  
🔗 Links  
✅ Code from this video: https://codepen.io/kevinpowell/pen/rNbYXQa  
  
⌚ Timestamps  
00:00 - Introduction  
00:43 - The problem with overly-generic rules  
01:15 - Using \[class\] and :not\[class\]  
02:50 - Selecting ranges of content  
05:33 - Selecting all the elements except the one I’m interactive with  
09:02 - Selecting the elements before or after a specific element  
12:15 - Using nesting to style an element depending on context  
  
#css  
  
\--  
  
Come hang out with other dev's in my Discord Community  
💬 https://discord.gg/nTYCvrK  
  
Keep up to date with everything I'm up to  
✉ https://www.kevinpowell.co/newsletter  
  
Come hang out with me live every Monday on Twitch!  
📺 https://www.twitch.tv/kevinpowellcss  
  
\---  
  
Help support my channel  
👨‍🎓 Get a course: https://www.kevinpowell.co/courses  
👕 Buy a shirt: https://teespring.com/stores/making-the-internet-awesome  
💖 Support me on Patreon: https://www.patreon.com/kevinpowell  
  
\---  
  
My editor: VS Code - https://code.visualstudio.com/  
  
\---  
  
I'm on some other places on the internet too!  
  
If you'd like a behind the scenes and previews of what's coming up on my YouTube channel, make sure to follow me on Instagram and Twitter.  
  
Twitter: https://twitter.com/KevinJPowell  
Codepen: https://codepen.io/kevinpowell/  
Github: https://github.com/kevin-powell  
  
\---  
  
And whatever you do, don't forget to keep on making your corner of the internet just a little bit more awesome!

## Transcript

### Introduction

**0:00** · hello there my friend and friends and thank you so much for coming to join me for yet another video you'll often hear people say things like use a single class selector for everything and this can definitely be a very handy rule of them especially if you're early on in your CSS Journey but here at my channel I like to help people fall in love with CSS and one of the ways to do that is to take off our training wheels and so today we're going to be looking at some tricks that we can do to help when it

**0:24** · comes to writing less code cuz when you just use a single class for everything sometimes you end up with a lot more code than you actually need we'll also look at some cool little user interaction tricks that we can do with some more advanced CSS selectors and we're going to do that by diving into this example that I have here where we're going to explore a whole bunch of different things and the first thing

### The problem with overly-generic rules

**0:43** · we're going to be looking at is you can see I have a navigation set up at the top but I have bullet points because it's set up with a list and then I have a regular list here and then I have this image gallery set up with a list over here uh and a lot of the times in our CSS we'll get something like this to remove the bullet points cuz so many lists that we create don't need them the problem is when we do that well it helps with things like my navigation and my image gallery down here uh at the bottom it doesn't actually help with this and I

**1:09** · don't want have to bring those Styles back in so how can I do that well we can actually be a little bit more specific with the selector but in an interesting way because if we look here this has a class on it this one doesn't and then the one that's further down over here also has a class on it so I can actually

### Using \[class\] and :not\[class\]

**1:26** · select anything that has a class by putting an attribute selector here with my Square brackets and just write class and hit save and now the ones that have classes get the styling on it but if I have a UL without a class well now we get no styling on there and we can do this in Reverse too so you might want to come in and you might want to say ul and say not class and then you can select

**1:47** · any UL that doesn't have a class cuz maybe you want to change your font size for some reason we can say one Ram or something and make your font size bigger or smaller whatever you need to do but you can choose any element that either has a class or doesn't have a class this way which can really come in handy and actually we look at my navigation right here you can see the signup link that's just right there and there's a problem with it where it's hard to read the text because my normal button should look like this but my class is overwriting it and that's because I styled um it this

**2:11** · way where I have a descendant selector on there so this is higher specificity than my normal button styling and it's it's ruining my my button that's up there so there are other options here uh one of them would be to do what we just did here where we could do that exact thing and say not and in the not say

**2:27** · class and hit save so then we're only styling regular links but if you have a link that does have a class in there or something then it just gets its regular styling which can definitely come in handy and I've definitely used this one before so in certain situations whether it's just to be more generic things or to be a little bit more specific in how you want to style things uh being able to choose something for a class can definitely be pretty useful H okay so next up we're going to jump down to this uh showcase that's right here let me move my head down to the bottom so I don't cover any of these images and here I just have a list set up with my show

### Selecting ranges of content

**3:00** · case list and then list items for each one and then an image inside of each one of those uh really quickly I don't have any alt text on here I left it blank because I just set up a quick demo this is definitely a do as I say and not as I do because you should definitely be putting alt text on images if they're like this this is not really decorative you should have some sort of context uh of what those images actually are but if

**3:21** · we come in here this is how I've set up my grid where I'm using my repeat syntax here to set up six columns and what I want to do is highlight the ones in the middle to sort of balance out my grid a little bit here and we can do that in an interesting way so if I come in and we do that showcase list and I'm going to select uh my li and I'm going to do nth

**3:40** · child or it could also be an nth of type it depends how you want to do it but nth child will work fine for what I'm going to do here and let's select this one here so I have six that's my seventh one so I could just put seven here and hit and then I'm going to say grid column is two and this is not the trick that we're looking at uh let's do a span two not a two and it gets bigger cuz now we're spanning across two of the columns on my

**4:04** · grid but ideally I also want to do that for this image and this image so we get those ones all bigger and then it will fill up everything and it's going to balance out so I could take this and then also do it for the eth and also do it for the ninth but there's another way and we can use this to select ranges of content as well and so the first thing we want to do is actually say it's going to be an n + 7 and what that means is

**4:25** · it's going to select the seventh and everyone after that so we're going there we're selecting all of this but now I just want to exclude these ones at the bottom I only want it to be these three that are right here so to do that attach there's no spaces or anything like that I'm going to do an nth child again and say it's n + 9 and the negative N means

**4:46** · we're counting backwards so we're going to go from the ninth one and count backwards so now if I hit save it's selected the seventh the e8th and the 9th and of course I could change that uh you know any range you want here I could do this starting at three and then it will go from the third all the way to the 9th so starting at and ending at right there uh a simple comment here it should be pretty easy to tell what's actually happening uh let's move this back to being 7 8 and N um and yeah it

**5:13** · works really well and the reason this is working is cu it's only finding things that match both of these so it has to be both an nth child seven up and an nth child of nine going backwards and so it selects the range of content this is a really useful one in my opinion you might not use it regularly but you're super happy to know it exists uh when you do actually need it and now moving on to the next step we're going to stick with our showcase grid here and I'm going to look at two different ways we can accomplish the same thing which is selecting every element other than the

### Selecting all the elements except the one I’m interactive with

**5:41** · one that we're interacting with so to be able to do that when I say interacting I'm going to do it as a hover but this could work with a focus as well my images can't be focused um and I wouldn't really want them to be but if you did this in a different way where you might have links or other things that are involved you could definitely do this with Focus states too and we're

**5:58** · going to say that we have my uh showcase list once again and then on that showcase list we're going to say a hover and then we're going to select every image that's inside the Showcase list and it's only going to impact it when we're hovering on the Showcase list and we're just going to do something simple we're going to lower the opacity down to like 8.5 so if I hover anywhere you can

**6:15** · see the whole list darkens CU all the images are getting the opacity of 0.5 this is really important we don't do it like this because this would look exactly the same right now but we wouldn't be able to overwrite things that are inside of it because if you take a parent and you reduce the opacity you can't go into one of the children and raise the opacity of that child whereas if we lower the opacity of all the images what we can then do we're going to duplicate this selector right here and we're going to say that we're going to move this off of here showcase list image hover and the opacity will be

**6:47** · one and so now whichever one I'm hovering on is actually going to get that opacity which is kind of cool and this is working because of the Cascade because these are equal specificity right we have a class selector we have the pseudo selector here uh and then we have the element selector and we get those same ones here just in a different order so same specificity this one wins because it comes second and that works and you could put a transition or something on here to make it look a little bit nicer of course and

**7:13** · there is another way to do this the other way to do this is a little bit different though where what we can do is I'm going to comment this out and we're going to come in and this could be really useful but browser support isn't quite as good but I'm going to say showcase uh list has image hover and

**7:31** · let's start with that uh actually we're going to say yeah has image hover and here we're going to say image and we can do the same opacity of 0.5 so now if I'm hovering on top of an image you'll notice that they get the opacity of zero there is a difference here though because if I go in between the two of them we're not getting it because I'm in a gap now so this is the difference with the opacity and with these small gaps it definitely can lead to some flickering do apologize if that bothered you a little bit um but I'll try not to do that too much

**8:03** · uh but it's definitely like a potential downside but it could also be potentially what you want because you might want this only to come into effect when you're specifically on whatever element you're building this interaction around and the cool thing with this is if we come here we can do it now with a single selector by saying not hover um

**8:21** · and this looks kind of weird for sure we're doing basically the same thing we were doing here but we're doing it with a single selector because we're saying if my showcase list has an image that's being hovered on every image that's not currently being hovered on will get the opacity of 0.5 so the has selector here

**8:40** · is super cool super powerful and is actually getting to an sort of acceptable level of browser support uh so I'll put a link to the description so you can make your own mind up about if it has good enough support or not but being able to select all the siblings other than the current one you're interacting with can be quite useful um

**8:55** · and and you can do some interesting things with that so yeah it looks a little bit strange but once you understand what it's doing super cool selector right there and this next one just cuz I want to stick with the the example here we're going to stick with our showcase I'm going to comment this out the finished code for all of this will be in the description down below though so uh there'll be a link to a code pen where you can play around with any of these if you want them but what we're going to do now is one where it's

### Selecting the elements before or after a specific element

**9:18** · about selecting proceeding and um following siblings so let's say once again we have my showcase list and in this case I'm going to do it on An Li and not the image just cuz if we come and look here we have the liis and then the images inside of them so for this to work we have to work with direct siblings um and we don't want to bounce back and forth there's probably ways we could use has but it just would complicate something for nothing where and we're already going to be using has anyway so I'm going to say Li uh hover

**9:45** · and we going to say plus Li and what we're going to do here is say that the we'll give it an outline so it doesn't shift the layout at all 5 pixels solid lime and now if I hover on one of these you can see it's not the one I'm currently hovering on but the one after it is getting that green outline on there and I wouldn't actually do this this would just you know be very frustrating as a user but I just want to show that we can select an item that's coming after something and I'll show you a way that we could probably use this um in a good way and but or not a good way

**10:15** · but maybe a useful way but let's come here on the LI hover where what we're going to do is Li and then we can say has and I'm going to wrap all of this um together and we can just say Plus plus hover so if we hover On An Li if the

**10:34** · element after it is currently hovering let's just change this over to uh pink or something just so we see that it's a different color so now the preceding sibling or The Sibling before it is getting the pink and let's change that pink to a hot pink so it actually stands out on this dark background and there we go you can see we're selecting the element just before and the element just after and we can do this to another degree too cuz I'm using the direct sibling uh selector here but I could change this to be a TI like that and

**11:01** · that means it's going to select all the previous and all the ones before it so you can see as I move that around it's doing you know you get the idea of what it's doing right so all the ones before are pink and all the ones after are green so we could do some interesting things with that as well and if you have any ideas on how you might use something like this please leave a comment down below and let me know uh but what I'm going to do is I'm actually going to go back to this version of it and we could also add in one more selector here where we could do something uh showcase showcase list list Li hover and maybe this gets

**11:34** · the outline as well so we say outline of lime then this one gets like green on it and then this selector I'm going to cut that we're going to do a comma here just so both of them get the same styling on it and so you could do something where it's sort of like and this is with an outline I would do it probably a different type of effect but where it's fading out a little bit around the one that's currently being highlighted um so

**11:59** · it could even be some sort of like glow effect or something else though do be careful about animating box Shadows cuz they can be kind of bad for performance but just a few ideas um or different things that you might want to play around with if you have any cool ideas for this again I would love to know what they might be and now we're going to go on to the last one which is an interesting one and it might get people that like it it might get people that hate it um but I I I think this is a

### Using nesting to style an element depending on context

**12:22** · good use case for it actually where let's look here I have this article and I have a card so there's a really faint border um around here the Border doesn't matter too much but I have a button in there and the button has specific styling on it which looks fine on this dark background but I might come on here and I might do an in inverse class where I'm actually switching it and now my button doesn't look so good right it would be good on an inverse class for the button that have more saturation on it and be darker and how what's the best way to do

**12:50** · something like that so what we can do for that is I'm going to put my button styling here this is what's currently styling my button uh and you can see like I sort of like this styling a little bit better so what we could do is on this inverse and you know what we're going to do let's copy this article we're going to have two of them just so we can compare the two at the same time so we have the dark one on the top and then the inverse one on the bottom and what we could do is and this is only with nesting so again browser support's not perfect for this but we can do an inverse like that and then do an ampersand after and the Ampersand is a placeholder for the selector we have

**13:23** · right there so this is a placeholder for my DOT button so what this is actually doing is making we're we're testing our button inside the inverse so then what I could do is I could come and take my colors and change them and I'm going to you know some people might not like this idea but I'll I'll try and justify it for anyone who's not happy with it you can see that's coming through now and then of course I can come in and we can add our uh and hover since we're already using uh and focus visible one second

**13:53** · talking and writing isn't always easy for me um but then we can come in and add our stylings there um and since we're using nesting I might as well just continue to Nest this all the way down and just for fun let's just change this one to um an accent 500 or something just so we have a different color that comes on it the reason I don't mind doing this is

**14:14** · because especially we work in a very componentized World these days and if I had a button component I would probably expect all of my classes for my button to be in one place and this is just a really easy way to change the styling for the different contexts that my button might live in now there's other ways of doing this 100% uh you might

**14:33** · actually set up your color here with a custom property and then your inverse class is changing things I'm not saying this is the only way to do it but I'm just saying in the right situation you could probably make a case for doing something like this you might get mad at me CU you're saying Kevin this is super weird looking and anybody else who looked at my code base would have no idea what's going on and that's a very bad thing and to a certain extent I do agree with you but I also think it's really important not to get stuck in the

**14:58** · old ways we've been doing doing things when there's new better ways of doing things just because we're familiar with them and you know it's the same with arrow functions in JavaScript those look really weird for a long time until we all got used to them this is actually something I went kind of in-depth in and looked at a bunch of different patterns that we have new modern ways of doing

**15:14** · that are much better than the old ways but the old ways are familiar patterns that people are used to and I just made the argument that we should probably be looking at moving on to the newer ways so if you'd like to see that video it is right here for your viewing pleasure and with that I would like to thank my enablers of awesome Tim Simon and and philli as well as all my other patrons for their monthly support and of course until next time don't forget to make your corner of the internet just a little bit more awesome