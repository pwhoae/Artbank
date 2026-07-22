---
title: "JavaScript Promises Crash Course"
source: "https://www.youtube.com/watch?v=3xYd9fJ_0Z8"
author:
  - "[[Kevin Powell]]"
published: 2024-06-12
created: 2026-07-22
description: "Links to all the code and more of Chris' great content: https://gomakethings.com/kevinpowell/⌚ Timestamps00:00 - Introduction01:40 - Creating a promise03:50 - Errors and catch05:20 - Chaining mu"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=3xYd9fJ_0Z8)

Links to all the code and more of Chris' great content: https://gomakethings.com/kevinpowell/  
  
⌚ Timestamps  
00:00 - Introduction  
01:40 - Creating a promise  
03:50 - Errors and catch  
05:20 - Chaining multiple methods  
07:42 - Using finally  
08:54 - Practical examples  
14:05 - async and await  
16:45 - gotchas with async and await  
22:00 - Which approach should you use?  
  
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

**0:00** · hi there my FR and Friends promises are an important feature of JavaScript but they can be a little hard to wrap your head around so today I have Christopher denani with me to help break everything down because as well as I know CSS he knows JavaScript so thanks for joining me today Chris Kevin thanks so much for having me I'm uh I'm glad to be here promises are weird so I'm I'm excited to talk about this I'm looking forward to unraveling them for us promises are a

**0:24** · way to handle asynchronous code in JavaScript so I guess the to back up for a second by default historically most of JavaScript has been synchronous and single threaded which means that things happen one at a time

**0:43** · and you can't have two tasks kind of going on concurrently a lot of modern JavaScript code tends to be asynchronous by default but that was not always the case and for most asynchronous code the way that's working under the hood is with promises um and so a promise as its name implies is a promise that something

**1:04** · will happen in the future is the way I like to think about it you not as a developer you're not often creating promises directly you can um and there are absolutely times where people do that so if you have a library that is not asynchronous by default and you want to make it asynchronous you can use the

**1:23** · promise object to create your own and and kind of make it that way but that's that's another video for another time um but understand understanding how promises work can help you understand how most of the asynchronous stuff in JavaScript works and how you how you work with it we're going to create a promise from scratch just to kind of understand what's going on so um I'm using the new promise Constructor to do that I'm assigning it to this the say hello variable but inside my promise I pass in a callback function and that

### Creating a promise

**1:51** · callback function accepts a couple of parameters resolve and reject these are not like I'm I'm not passing any sort of values in uh this is a little bit like callback functions in like array methods and things where the promise callback function is getting passed in some things by default and you're just assigning parameter names to them so you can do stuff with them what I'm doing here is when I'm ready for my promise to be considered complete like the thing that needs to happen is done I run my resolve method

**2:24** · with whatever I want to kind of have passed along as some value for that that thing so I'm saying okay the the promise has has completed successfully and here's what you need to know um so in this case I'm going to wait 5,000 milliseconds 5 seconds and I'm going to resolve it with the message High Universe um and to work with a promise

**2:51** · the the traditional way to do that we'll talk about a newer way to do that but the traditional way to do that was with the promise then method so I've got my promise say hello and then when it's complete I'm going to run this call back function in response and that callback function can accept an argument and the argument or the value it gets for that argument is whatever is passed into this resolve method so what I would expect to happen here is I'm saying when this

**3:24** · thing is done then I'm going to log whatever message it receives into the console and I expect that message to be high universe and I expect it to take about 5 seconds for that to happen so if I reload this page you can see there's nothing in my console and then right about now yep there we go right about now High Universe shows up some five

**3:44** · seconds or so later um so that's it's kind of the high level of what a promise does now sometimes something goes wrong and the promise can't complete um and so that's what the reject portion is four so if

### Errors and catch

**4:01** · something goes wrong under the hood you know promise callback function you would run reject with some sort of error message or additional details doesn't have to be a string it could be like an object or an array um number whatever any sort of valid Java Script value I can get passed along when I'm doing my promise then method near the end I can slap on a catch function with a or catch

**4:27** · method with a callback function in it and that will receive whatever was passed into the reject method as its argument so here I'm saying okay assuming everything goes well I'm going to log that message but if for some reason somewhere along the line something goes wrong catch it and log a warning into

**4:44** · the console and if we jump over to the browser you can see I'm unable to say hi and in my promise because this reject function ran even when this set timeout resolves this never happens so this just this never I can even move this around right so because because this is asynchronous if I moved my reject after it it's still going to reject and then

**5:10** · High universe will never show up um because there's already been an error um so that's kind of that's promises under the hood one other really nice thing about the promise then and promise catch approach to things is you can chain them so um here I've got this this count method here I am always resolving and I'm resolving with a value of one and so

### Chaining multiple methods

**5:35** · I go count then and then I'm gonna I'm going to log the number that gets returned so I would expect the first time around that's going to be one but then I return number plus one and the fun thing about the then method is it is itself also asynchronous with a promise under the hood so when you return a

**5:53** · thing the next then method is going to wait for that to resolve and then pass the value of that thing along as resolved I'm going to kind of repeat the process I'm going to do it again so what I would expect to happen here is we get one we add another one to it we get

**6:10** · two we add another one to it we get three we log another one to it we get four but we're not going to Lo we're not going to log that one um so if I if I jump over to the browser you can see that's exactly what happens get one two three there's no delay here because I'm not setting time out to like hold off when this resolves or anything it's just it's just resolving and returning the value right away uh but the fun thing here is you can chain them and the other cool thing is you can attach those then Methods at any time so uh here I've Got

**6:42** · This Promise called question it resolves to 42 um that is a hitchhiker Guide to the Galaxy reference for anybody who's like why why the heck does this guy keep using 42 so much um and um I am going to wait 5 Seconds long after this has been resolved and then I'm going to attach a promise then method to my promise and log my answer as we'll see it actually is still

**7:09** · going to still going to work properly so even though that promise is long since resolved I'm still able to attach the then method to it and get my value out of it um so that makes promises really cool and really powerful you could have kind of a a chain of catch then so even looking back on on this right I could if

**7:29** · I had had this assigned to a variable of some sort I could slap another then on it 20 minutes later and I'm going to get I'm going to get four as the the resolved amount um so they're really really useful one other method that's worth pointing out you've got then you've got catch you've also got finally so the promise finally method

### Using finally

**7:49** · resolves whether the promise successfully resolved or through an error it's going to run no matter what um so here I've got this promise that uh has about a 50-50 chance of resolving or rejecting you just don't know which one it's going to be um so we'll get we'll get the answer if it resolves we'll get a warning if there's an error but I'm going to get I run no matter what every single time so got 42 42 we'll never

**8:16** · know but always this I run no matter what shows up um so prise promise finally is really useful particularly when you're working with like apis and things like that and you have some stuff you want to do when things are successful some stuff when they're not but you always want to run some code afterwards so like for example if I'm having uh if I'm using a form and making API calls I might disable the form and

**8:39** · then depending on whether it's successful or not I'm going to show an error message or show like a yay you did it kind of message but no matter what when I get that API response back I want to reenable the form so the user can submit again if they want to so uh which brings us to practical examples here one of the kind of one of I think one of the core like promise-based methods in the browser is fetch which you can use to make HTTP request to remote sources so

### Practical examples

**9:09** · it could be calling an API it could be reaching for a file somewhere yeah so I think one of the one of the most tangible ways of seeing promises in action is with the fetch method so um here I am calling the Json placeholder API uh which is really useful for testing API calls um and then when I get

**9:30** · a response back I'm GNA log them to the console if there was an error for some reason I'm going to log it yeah should we dig into this or do you want to is this like a bridge too far do you want to stop what so here let me let me comment some of this out example we'll take a look so um so we jump over here what did I do yeah so right away we get back we get back a success so the call the call worked um one of the things you'll notice with with fetch in particular is the response you get back is not the data it is an entire response object the

**10:03** · URL that was called the type its status the headers and then this this readable stream of a body that is not particularly useful um I do want to show you the the catch method here uh oh actually I think this won't work yeah no no here we go so I get back a 404 um uh

**10:23** · it did not warn though um we'll talk about that more later that's that's a weird thing with how fetch works but so the thing with with this response is we need to then get the body itself um and so that actually requires another promise so here's where the chaining of promises becomes useful so with the fetch method specifically um but with promises in general um there is the promis Json and promise text methods and

**10:52** · those will get a response body and convert it into Json or a text based string or I guess a string of text respectively um because they are asynchronous we want to return them um

**11:08** · and then use another chained then method to handle the result um so in this case we've got a response we run response Json to get the Json data from that response and then we can log that and if there was an error we can warn that as well so let me go ahead and comment this one out so we're not cluttering up our console and we'll jump back over and now you can see I've got this Json object with all of my different array values and uh this this kind of garbage laurum ifom as as the data if I were to use um

**11:40** · text instead so if I were to go text what I get back is this giant string instead of um instead of a Json object but either one is valid a lot of it depends on what you're trying to do so for example if you were fetching an HTML file somewhere you'd probably want text instead of Json um because you're getting back an HTML string whereas if you're calling an API it's usually going to be Json um one

**12:08** · other really fun thing you can do with promises is you can call multiple Promises at once so um you know let's say I wanted to call multiple apis I could call them one after the other but every now and then you have a situation where you need to call two apis concurrently and then merge the data from both of them when all successfully

**12:31** · resolve and promise all is great for that so you pass in an array of promises and it won't run its chained then method until all of them resolve so in this case I'm calling Json placeholder I'm getting posts and users from Json

**12:48** · placeholder and when I get my responses back I'm going to use promise all again to get Json from each of them and in this case I'm using uh because responses is going to be an array of resolved promises I'm going to use array map to Loop through them and uh basically

**13:09** · repeat that process creating a new array with my Json responses and then when those all resolve I get back my data which we'll see is actually an array of responses so I've got my array and I've got two separate things so here are my posts and then here are my users with

**13:28** · their ID and their their real name and their username this one's a little bit more like I don't use this all that often but every now and then you know uh I think an example I use in my classes a lot is like if you're working with a a newspaper where you need to get a bunch of Articles and then some author data and merge the two of them together you could Loop through each article and make a request for the author and then do something with it but it's sometimes more performant to run them at the same time and then smoosh the data together um if that makes sense yeah totally

**13:59** · awesome so one other thing I like to point out um and Kevin please stop me if we're getting too far into the weeds no keep going so promise then catch finally they're great but a lot of developers who are used to

### async and await

**14:17** · writing code synchronously find them a little bit clunky and awkward to work with and so modern JavaScript provides a newer approach that allows you to author your asynchronous code a little bit more like synchronous code um and it can make reading and writing promises a little bit nicer and easier and I'm talking about the async and await operators as an example here I have let me let me reverse these so I've got my traditional

**14:45** · function here and in it I'm calling my fetch method and then when it resolves I'm logging uh traditional Fetch and my data um and I've also got this console log traditional message now when you look at this you might think okay traditional fetch is going to is going to run our log and then traditional message will but actually what what ends up happening is traditional message logs and then traditional fetch logs right because fetch is asynchronous so it you

**15:14** · say okay go do this thing it runs asynchronously in the background and then while it's waiting this runs so if we jump over to the browser and reload I get my message and then my fetch response um and there's really not a great way to make this waight other than

**15:32** · you know tacking a a finally on here which you may or may not want to do async and a weight allow you to write this in a way that's a little bit more like you might expect things to happen if you're new to working with promises uh so if you slap async in front of a function it converts

**15:50** · that function into an asynchronous function and once you have declared a function as asynchronous it allows you to then use the await operator inside it and what the await operator tells that function to do is do not run run any code that

**16:06** · comes after this until this asynchronous bit has resolved so I've got the same exact code structure here except I'm using async and I'm using a weight and so what I've effectively done is said do not log this message until this asynchronous bit finishes resolving um and so if we comment this out uncomment

**16:28** · this so they will run and I reload the page you can see fetch logs its results and then my message runs um and a lot of people really really like this when you start running code this way um there are a couple of gotas that you need to be aware of so the first is slapping async

### gotchas with async and await

**16:48** · on a function fundamentally changes how it works so here I have I've made this function asynchronous I'm returning 42 I am running my function assigning its returned value to answer and then logging it into the browser and one of the things I find with a lot of my students is when they start working with async and await they expect that answer is going to have a value of 42 and

**17:11** · they're always surprised to find that they're wrong it actually has a value of promise and they're like okay well so how do I get how do I get it to not be promise how do I get it to be 42 so um the thing that happens is when you slap async on a function it ends up it always returns a promise so at that point you've effectively said this is asynchronous it's it's a promise now um

**17:35** · so whatever value you return out is a promise that will resolve to 42 right it's not it's no longer going to just give you that answer directly so what you end up having to do if you want to log that answer you have to slap then on it or you you know you

**17:51** · have to do the async a weight thing around it so like this is one approach but I call I could also do something uh I don't know why you do it in this case but you could right so I could do like function get answer or I guess resolve answer is maybe the the better way let's say log answer there we go so I could do something like say let answer equals await get the answer and then console

**18:15** · log answer and then that would also get me you know running log answer would get me this the same thing but you can never turn this back into a thing that just returns 42 so like I'll sometimes I'll have students who do things like um you know they'll say let answer equals get

**18:34** · the answer return data right y they'll do something like this and it it it just it doesn't work you're always going to get back a promise and so that's something to be aware of but what it also means is that fundamentally the the structure of your code is going to change a little bit let's look at how this might affect your code structure so here I am I attempting to get an article by its ID uh and Json placeholder uh has this

**19:01** · awesome uh kind of dummy API where you can pass in an ID zero to 100 or something like that and it'll spit back a response and I've got this written as a traditional promise then catch kind of situation here uh and let me let me block out

**19:18** · block out the other one so I pass in an ID it runs the code and then it'll log the result uh and if we were to jump over to the browser you can see I get back I get back this object it's got an ID of three free and I've got some content um if I were going to restructure this as an asynchronous function usually the first kind of pass is you you do you do something like like this right but it didn't really doesn't really change your code all that much so what I recommend is you assign each step

**19:52** · to a variable just like you might a traditional um you know like a traditional synchronous function so I've got async and now instead of having like in in one of the earlier examples I think you saw you know I was uh you know let a wait and then I had kind of the whole thing going um so what I'm doing here I'm just going to break each step into its own thing so the response I'm

**20:16** · going to wait my fetch return and then that gets assigned to the response value um if for some reason there's an error there I'm going to I'm going to like kind of throw this error that say something went wrong uh but otherwise I am then you know this used to be part of the chained then method but I'm breaking it out into its own variable so let data equal await response Json and then I can log that data and this is going to get me a an identical response to what I was doing doing before uh so here I've got

**20:46** · my I've got my same object here now the last piece is if I'm doing this approach how do you actually handle errors so like before we would have promise then and if something went wrong like this throw bit right you would get get your catch method well for async and a weit

**21:03** · you can uh I've replicated my code here and I'm sorry but you um you can wrap your code in try and catch all that I was doing here all this um all this code up here I've just I've wrapped it in a

**21:20** · try method and then if at any point along the line something goes wrong this catch method is going to catch it and log an error in the console so just as an example here I'm calling an ID that's way too big this is going to throw an error on me uh so here I've got my my something went wrong message um which is not oh so that's what I threw right and so that's what gets passed into catch and so it logs it logs

**21:48** · that warning for me um one other nice thing about try and catch is you can also slap a finally on there um and do like a whole you know this always runs kind of sit situation so now now I've got my then catch finally becomes try catch

### Which approach should you use?

**22:05** · finally the question that always seems to come up at the end of our videos is which approach should you use is promise then better or is async and a away better and the answer is yes um they are both good they're both fine they both do the same thing I think you'll find that a lot of newer code leans towards async in await because it gives you a slightly more consistent authoring Style with how the rest of your code base may be written but they are both fine and uh

**22:34** · you can even use them in conjunction you know like just looking at this code for a second like I could do I could do something like weird like let data equal um you know a weight then and I could have my whole my my whole kind of old

**22:52** · school function here right with the um you know return response Json like I could do that if I commented this out so I'm not doing the same thing twice like this will work this will work as well so now this will get me my data and I can log it so that's an option if you want it so you can mix and match them but I generally um I generally like all all these videos Kevin my suggestion to you is whichever one feels more natural

**23:20** · easier to read easier to wrap your head around that's the right one unless you're work working on a team in which case stick with the team convention because it makes the code base nicer for everybody app and if anybody enjoyed this lesson and they want to learn more about JavaScript Chris is always someone I recommend for that so where can they find out more thank you yeah so if you head over to goak things.com Kevin Powell um you'll find a bunch of Articles and uh like other resources related to all the stuff we talked about today as well as the source code from uh

**23:53** · today's video awesome thank you so much the links for that will also be in the description and yeah until next time don't forget to make your corner of the internet just a little bit more awesome