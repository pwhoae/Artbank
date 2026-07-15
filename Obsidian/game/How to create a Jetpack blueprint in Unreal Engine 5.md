---
title: "How to create a Jetpack blueprint in Unreal Engine 5"
source: "https://www.youtube.com/watch?v=kGmxVItJnic&list=PLzn9qrbm2X8OuNjFPw2rIj8O1h1Kt8JX0&index=9"
author:
  - "[[Agora.Community]]"
published: 2023-01-21
created: 2026-07-15
description: "Learn one of the many ways you could create a basic blueprint setup for a Jetpack feature in Unreal Engine 5! In our latest Learning Path video, Andrew Kephalidis (Agora.studio Tech Animator) guides"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=kGmxVItJnic)

Learn one of the many ways you could create a basic blueprint setup for a Jetpack feature in Unreal Engine 5!  
  
In our latest Learning Path video, Andrew Kephalidis (Agora.studio Tech Animator) guides us through setting up the environment and implementing the jetpack animation to adding a timer and fuel limit.  
  
If you'd like to learn how to animate basic locomotion and implement it in Unreal Engine, you can watch our Learning Path here:  
https://youtube.com/playlist?list=PLzn9qrbm2X8OuNjFPw2rIj8O1h1Kt8JX0  
  
🔔 Subscribe to be notified of when the next episode is released and for more animation industry advice and interviews!  
  
Join our Discord Community: http://www.discord.gg/daMCPGWjc6  
  
Facebook: https://www.facebook.com/Agoracommunity-106340684571716/  
Instagram: https://www.instagram.com/agora.community/  
Twitter: https://twitter.com/agoracommunity2  
LinkedIn: https://www.linkedin.com/company/agora-community/about/  
  
  
#gameanimation #unrealengine5 #animation #agorastudio #agoracommunity #cgi #vfx #animator

## Transcript

**0:00** · foreign guys Andrew here um I've been asked to do a quick demo on how I would make a jetpack feature inside on real engine 5. so this isn't going to be too deep or complex um it's just more of an example of how I would set up a feature to be made uh how to test it debug it and potentially improve it so very quick uh probably 20

**0:25** · minute demo at most so this is just one of an infinite number of ways you could do a feature like this I'm just going to do it off the top of my head how I think it would go with the anticipation of having to change it depending on where the game goes if this were an actual production so nothing I'm doing is permanent set in stone you can figure out your own ways to do it but this is just one of those ways I'm

**0:53** · going to be using Unreal Engine 5 and I'm going to assume that you have a little bit of knowledge on how to use the engine but nothing I'm doing is too crazy today so if you're going through the videos and you see something you don't quite understand it's all basic stuff so we can find we'll probably make some more tutorials in the future but there's a lot of tutorials on YouTube you can find about things like this so don't worry about it it's it's very basic so the first thing I did was I started a new third person project by

**1:24** · clicking launch here on my 5.1 editor um I already did this so that it didn't have to go through the compile phase and waste anybody's time but this is what I'm starting with so you see here I've got my third person template projects it's got everything that I need a character to run around with everything for the inputs is set up it's got some animations that we're going to use and adjust so this is a

**1:47** · perfect starting point for what I'm trying to do one of the things I like to do whenever I'm starting a new project though is if you notice here my frame rates I'm at 90 80 to 90. you can show your frame rate by clicking these three lines and show FPS um so I'm going to turn off Lumen I've got a decent machine but even in an empty gym like this it's uh it's kind of heavy so I like having as many frames as possible nice and smooth and nothing we're doing needs Lumen active right now

**2:19** · so to do this you just go into the project settings scroll down to rendering and under Global illumination and Reflections I'm going to put none click Lumen and go to the nun drop down and now when I go back to my view I'm at 120 110 120. so it's it it's noticeable

**2:40** · um so this is what I like to do first thing and if you've got a VR headset you can disable those uh plugins but everything else is good to go so I'm just going to show you some of the assets that this project comes with if I click control and space I open up my content drawer which is the content browser of ue4 they've added the drawer

**3:01** · functionality so I can actually open and close it wherever I am it's very nice so I'm going to go into my third person character this is the blueprint of the character we're going to be adding to I'm not going to be changing into the foundation of it I'm just going to be adding a jetpack function to it so if I go into my third person map and click play this is what we start off with so again I haven't built anything yet this is the default third person project if you're curious on how this is set up I would recommend you go in and break things it's a great starting path

**3:33** · and if you go I think we can add it to the link but there's a YouTube series on how they go from nothing to this project that epic gave out on YouTube so you can follow that series to get here and then you can add on to my to that series by watching these videos to add your jetpack if you want to it's good practice so let's get into it

**3:57** · so one of the first things that I started doing that I find helped a lot whenever I'm working on or building a new feature is write down the rules and the requirements and a notepad or a piece of paper in front of you this is a good way to anticipate the things that you're going to need from the rest of your team potentially and maybe see an issue right off the bat without having to build something beforehand so for this feature here

**4:22** · this is what I've written up so the first thing would be the rules what needs to happen and what does happen so in our case uh if jump is pressed will Airborne we're going to activate the jet pack we have to hold the jump button to thrust a total of five second duration and this

**4:39** · we can adjust and then it only refreshes when we're on the ground so as long as I can follow these rules I'll have exactly the future that I'm expecting but again this could change as we're working on it you never know so don't be afraid to change what you've

**4:56** · written here this is just a general guideline that helps you drive the work that you're doing in the needs Department we're going to have a animation blend space of the character flying and I'm just going to be using these the Assets in this project I'm going to change them in the editor not a big deal and we're prototyping right now so even if it's not good animation it it as long as there's animation there we'll know

**5:21** · that the future is working I'm going to need a Boolean which is a variable type a true or false in my character that says is jetpack um that just tells me that I'm using my Jetpack where I want to I'm going to make a float for total duration a float is a number so how long can I fly for I'll need a

**5:42** · float that says how long I have flown for so current duration and then maybe a jetpack mesh if I can make something inside of the editor So based on this I know for a fact that I'll need I'll need at least three variables added to my character so to do this it's very easy I'm going to go into my character blueprint like I opened up earlier and to do that again you just go click control space to open up your content drawer and in this

**6:12** · particular project it's under content third person blueprints so if I open this up on the left side of the screen here you've got a my blueprint tab this is a list of all the variables and components that are available to you this is information that you can use to drive things or save and store information retrieve later under that you've got variables so my three requirements here for variables are one Bull and two floats

**6:40** · so I'm just going to click the plus here and you see I've got a new variable and by default it's a Boolean so I'm gonna change the name to is Jetpack you can put it whatever you want it's up to you it's your project I'll call it is Jetpack I'm going to add two more but this time I'm going to change it from a Boolean which is a true or false to a float which is a number and then I will call this total duration

**7:07** · and then another plus and you see it it was by default the float because it automatically chooses the previous variables type so total duration and then I'll call this current duration another thing I like to do whenever I create variables to keep things clean is in the details panel of that new variable so you see when I selected the

**7:32** · details on the right are set to whatever this variable is I like to add a new category so click on default here and I'm going to type in Jetpack and now you see on the left side I've got a new drop down for Jetpack this is a great way to keep yourself clean

**7:51** · um do not underestimate the importance of keeping a blueprint Simple and Clean like this because it can get overwhelming fast so once that's done I have my three variables I'm going to click compile and I'm going to save uh so from there

**8:08** · we've got my three here I'll do the um the animation and the jetpack mesh after because those are cosmetic we don't need these to make the feature work so I like to build the functionality first I don't care what the look is once it feels good and it behaves the way I'm expecting based on these rules then we can start

**8:29** · making it look like the feature that we're expecting it also helps if you have a game in mind that you've played in the past that you can use as a point of reference but it's not not important just play whatever feature you're making and uh it's gonna feel good to you eventually if you keep trying

**8:50** · so before I do any of the visual stuff like the animations and putting a jet pack on the character I'm going to build the functionality and in this case that functionality is going to be inside of the character blueprint um so the character blueprint is the brains and the the movement of the character the animation blueprint which we'll get into next is the visual

**9:12** · representation of what the character is doing so you can you can keep the logic of a jetpack in the nmdp if you wanted to but then you would have the character telling the animation blueprint to tell the character to tell the animation blueprint so in this case here it makes sense to put the logic in the character itself um so I'm going to quickly build that and this is what it would look like in this case so the first thing I need to do is figure out what button it's going to be and if I go back to my rules here

**9:43** · jump so if I click the jump button when I'm on the ground it will do a jump but if I click while I'm in the air that's when we're going to get our jetpack functionality so if I go into my character blueprint you'll see here it's already got a jump action so if anybody's used ue4 you'll notice

**10:00** · that the input for jump here is a lot more complex than it was in unreal four that's because they've updated their inputs uh the way that their inputs are set up so this is the new version It's called an I think an advanced or enhanced action but we're going to be using the old way which is a lot faster for prototyping and uh eventually you can transfer all the logic over to the new input system but for this video to avoid com making

**10:29** · things more complicated than they need to be I'll just be using the original version so to do that you click on edit project settings and you've got your input tab here so this is where you can set up a bunch of inputs button presses essentially and what types they are so Axis or action you'll notice here it says that uh

**10:52** · everything is deprecated in here you can still use it just know that if you're using this for an actual production it's not a good idea because deprecated means they're not supporting it anymore and they're probably going to remove it eventually so for prototyping I think it's fine to use but eventually you want to look up uh enhanced input right here

**11:12** · so there's a new tab for that but for now we're going to go to inputs it will be an action mapping so an action is just a button press and I'm going to click the plus button here and you'll see I've got a new slot and I'm going to call this jetpack next thing I want to do is Select which button triggers the jetpack in this case here will be the space bar and that's all I need to do so if I go

**11:35** · back to my character in his event graph which is the brain of the character if I right click anywhere on the graph with nothing selected I get a drop down of everything I could potentially do in this graph so it is context sensitive meaning I can't choose a node that is for materials for example but even with contact sensitive on you

**11:56** · see there's a lot of stuff I would recommend in your own project just going through as much of this as you can just to kind of get a sense of the things that you could do in the event graph and construction scripts uh different graph types just explore but for now I'm going to right click and type in Jetpack and you'll notice I have action events jetpack so you remember it was an input action

**12:23** · which is what the action event implies and that little white square with the arrow means it's an event so an event is a red node here that fires logic out when the specific condition is met in this case here because I custom made this jetpack event I know that when I

**12:42** · click the space bar I'm going to get my event fired so to show this I'm going to drag off of my pressed slot so that means when the button is pressed and I'm going to type print here so the print string node I use a lot for

**12:58** · debugging this is a great note to let you know in game what's happening when so in this case here I'm going to type click the print string and I can either leave it hello or I'm going to just type in Jetpack pressed so try to be as obvious about what your print does in case your your blueprint for some reason has four or five print string nodes that are all running at the same time depending what you're trying to debug so jetpack pressed if I compile and save

**13:26** · and click play watch what happens when I click space see a printed jetpack pressed and that only happens when I click space so right now there's no logic about when jetpack press becomes true this was just to show you that I have my event and it fires off when I when I

**13:49** · expect it to which is spacebar pressed the next thing I want to do is make sure that this thing only fires off if I'm in the air because going back to my rules if jump is pressed while Airborne activate jetpack so if I'm on the ground and I click jump It's triggering I don't want that the next thing I need to do is drag off a pressed type in Branch to get a branch node so

**14:15** · this is a flow control node which are nodes that you can use to change where that event fire goes so it's like a street like Red Light Green Light intersections of a of a street so you can use this to direct where you want that logic to go so you can either click and drag and type in branch or if you hold B and left click in the graph you'll create a branch it's an extremely common node so it's got its own dedicated hotkey to it

**14:46** · so I'm going to click my pressed drag it into the input of my branch and then out of my Branch node and the true slot I'm going to type my print string and then this is where I'm going to put Jetpack pressed

**15:04** · so a branch node needs a true or false condition so it can either come out the true or the false not both at the same time and you'll notice here my Branch node has a condition input pin and that input pin is red if you look over here my Boolean is red that means that this

**15:24** · pin is expecting a Boolean and again if you Mouse over it you'll see it says condition Boolean as well so it needs a true or false plugged in here so it knows where to go which means if I click my Jeff hack I need to know am I allowed to do the jetpack and the the logic that I need is am I in

**15:47** · the air or am I on the ground because like I should only be able to Jetpack if I've already jumped once or if I've fallen off of like a cliff for example luckily unreal has a very handy component over here you'll see under the components Tab and components are basically building blocks of a blueprint so in our character's case if I go to the viewport you'll see in the components tab I've got a bunch of things I have the capsule which is the physical space the

**16:17** · character takes up in the game the mesh which is the character's body camera boom and camera so these are components additionally it's got a character move component so this is a default component that comes with a base character inside of unreal and this component handles how the character moves and feels in the game world

**16:38** · and the fun thing about that is because it's a component of my character that means I have access to any information relevant to that component so if I click and drag my character movement into the graph and release I now have a pointer to that component so if a node has a output on this side it means it's giving me the information stored in that component so for example if I click and drag off my character movement and type in Airborne or is falling there you go

**17:12** · and click that this little function here you can tell it's a function because it has a green f f for function um tells me if my character is falling or not so luckily for me it's also a Boolean true

**17:29** · or false I am falling or I am not and I could just plug that straight into there so if I compile and save and go back into my game and I jump once nothing happens but I'm going to click the space bar a second time when I'm already in the air and there you go so now I know that if I'm in the air and I click my spacebar that's the only time I'm technically allowed to Jetpack so perfect we're halfway there already

**17:57** · the other thing I need to know though is do I have the gas to even fly so I had created my total duration and current duration because in my rule set here I have a total of five second duration

**18:13** · so if I select my total duration variable here in the details panel with this selected you'll see at the bottom I've got my default value five I had actually put that in myself before but by default a float comes in empty so if I go to current duration you'll see the default value is zero so my total duration I'm going to set that to five and now this when I click and drag it into my graph

**18:45** · and get it remember if the pin is on the right side it means it's providing me the information so in this case here if I ever ask what this float value is it will always give me its default value so instead of it saying jetpack press for example I'm just going to click and drag my output into my print string and it will convert my float into a string which is a word that you can read and now if I click play and jump

**19:16** · you see it says five so I know that this was my total duration it's five um I'm good to go the other thing I need though is how long have I currently been flying for so if I click on this you see my current duration zero because I've I'm not driving this anyway the default value is zero as far as the game is concerned I haven't flown yet so if I click and drag this into my graph and get that I can do something like this

**19:47** · I'm going to get the total duration and type in greater or equal I'm going to do greater and that's going to give me this node here so the top input is my total duration the bottom input is my currents and it's going to do that math is my first input greater than my second input

**20:06** · is 5 greater than zero it spits me out a Boolean so true or false and I'm just going to plug that into my print string node and show you what that's going to give me so if I jump and click space true so my

**20:21** · it's true because let me move this character over here my total duration is five my current duration is zero I'm asking it is my total greater than my currents and it gives me true because of course it is but what happens if I take my current duration and I'm going to set its default value to 6 for example

**20:43** · now when I click jump it says false because total is five current is six this gives me false so that's good logic I can use this to drive how long I stay in the air for so the next thing I want to do is make sure that I'm only allowed to use my Jetpack if I'm in the air and I have more duration left

**21:09** · to do this I can click and drag off of my original Boolean and if you type end you get this little comparison or this little node and I'm going to plug that into there what this does is it checks this

**21:26** · and this and if they are both true then this is true if neither of them are true or only one of them are true it will always go at the false so if I plug this into there now you're going to see if I jump when I'm in the air it comes a true but if I put my current duration back to six only this would come false this is true if I click jump in the error but it's going to give me a false answer

**21:56** · see I can't even go to the print stream because it's always coming out of the thoughts so the first part of my logic is done and this was easy to do because I followed my notepad here my jump is pressed five second duration and now let's do the hold button to thrust so right now I can trigger a true or false what I need to do now is have something that happens uh for a duration once I've

**22:26** · pressed my Jetpack button and all of my conditions are true one of the things I can use um and it's a very handy node called a timeline so if I click off of my true and type in timeline at the very bottom I have an add timeline option so if I click this it gives me this note here and I'll call this jetpack thrust so timelines are very good ways to for a preset or infinite duration constantly

**22:58** · fire out of my update so if I type print here and I'll put this to thrusting so we can see it obviously working and I go back into game and click jump you see it's printing infinitely

**23:20** · um actually I'm wrong it's not infinite if you double click on the timeline you see the default is five seconds but if you open it up and click the loop button now it's infinite so I'm going to go ahead and add another layer of logic to stop it so if I'm in the air and I'm

**23:43** · pressing my jet pack and then for some reason I want to stop Flying I can release the jet pack and I'll stop printing this so I'm going to take off of my release and go to stop so timelines are very powerful I would another thing I would recommend is get used to using them so in this case here my true is going to play the timeline so just go through it when I release my jump button it's going

**24:09** · to stop I'm not going to put the release through the same logic gate here because whether I'm on the ground or in the air it doesn't matter if I release the button I shouldn't be doing the the jetpack timeline regardless so it's just a safety net to make sure that no matter what happens if I'm not pressing jump the timeline is not going so I'm going to click play and you'll

**24:31** · see I'm going to hold and now I'm going to release and then after a couple of seconds all of the print strings go away because they stay on screen for a couple seconds but I can also show you this visually if you want to see something

**24:48** · happen in a graph you can actually debug it in real time so I have my character down here in My Graph if you see at the top here you've got no debug object selected click that drop down to your character there and now you're going to see the logic happen real time so if I go back and click jump you see I tapped it it went through the

**25:11** · press and release States so I'm going to hold it and if I release again good now I'm going to click it when I'm in the air and now I'm going to release it and there we go that logic makes sense it's working the way I expect it to so now we've got a press and hold and release and during those two events with the right condition I'm going to be constantly outputting an event here

**25:38** · so the next thing I want to do is add some thrusts to my character so as long as I'm coming coming out of this timeline here I want to fly so remember I had mentioned that the character movement component handles everything movement related um I'm going to use that so if I click and drag this into my graph I know I already know because I've done this before that my character moving component has a node called impulse

**26:08** · and I'm going to be using this for my Jetpack you notice it's in the pawn components character movement the like I know where impulse is but if you wanted to you can try to find it yourself and go through all the different nodes here and that will give you an idea of things that you can do with your character so I'm going to use impulse I'm going to put it through my update here so it's only going to give me an Impulse when I come out of my timeline I'm going to also check velocity change

**26:37** · so the impulse has two ways it can handle things it can either add velocity to the current character so if the weight of the character versus the gravity of the the map that you're in and already how fast they're falling down or jumping up these will all be

**26:53** · factors if you have this unchecked if you do velocity change you're going to say I don't care how heavy you are what the gravity is I'm going to force my my velocity up or in any other direction if you so choose I'm going to force that velocity so in Z I'm just going to put a 20 for now compile and save and if I click jump and hold it and release it it works

**27:22** · so that's pretty good I can move around but so far I can fly infinitely so the next thing I need to do is come up with logic that would kick me out of my Jetpack event so this will be pretty easy I'm just going to pause the video here real quick so the next step I'm going to want to do is store how long I'm flying for so that

**27:50** · I can compare the current versus the total duration and kick me out of the jet pack so one way I could do this is if I grab the current drag it so far I've been using the gets function I'm going to do a set this time so a set will be uh it's a way for me to

**28:10** · tell this variable what it is by default this variable is whatever it is you had set in the default value but if at any point in your blueprint or out or outside of the blueprint you do a set function on that particular variable

**28:27** · whatever you set it to Here Is Now the default so it does this is only for the start of the game or start of the level uh you can change this actively throughout the blueprint however or wherever you need to so in my case what I'm going to do is plug this into my update and just to show how it works I'm going to do another print string but I'm going to plug my variable directly into here

**28:59** · so now if I compile and click jump you'll see it says zero the whole time because it is actually zero um but if I were to put 10 in here and jump it says 10.

**29:17** · the reason it worked is because when I did my first button press current duration was technically still zero that's that's why I was allowed to go through the timeline after the timeline it's set to 10 which now if I wanted to go back and jump again like this I can't so jump press and hold if I try to jump again I can't go through my my Jetpack function anymore so let me show the blueprint happening

**29:48** · so the first jump I can go through because at that point my current duration is still set at the default which is zero but once I've gone through the timeline I set my D my current duration to 10 and now if I jump I can't go through because the logic is working as intended so for example if I go over here and right click on a variable or even Mouse over it you'll see current duration 10.

**30:19** · total duration five if I stop and click play again and mouse over it current duration zero so until I've gone through this set my current duration node this will always be zero so this is a good way for you to understand that defaults and settings

**30:38** · are things you have to remember and manage properly because you can accidentally break things very easily if you're not aware of what you're doing so now that I know I can set this here the next thing I want to do is find a way to have this count up so I want it to add time as long as my my Jetpack thrust timeline is active so one way you can do this is to get

**31:02** · current duration again so I'm asking it what it is click and drag off of that and type in Plus and now we've got a little add function and I'm going to right click and type in Delta time so get World Delta seconds this is a very handy Universal function that gives

**31:28** · me a time frame between the current frame and the previous frame this is a good way to keep things stable so if for example I'm running at 120 FPS and you're playing it and you're running at 30 FPS this will spit out a smaller number for me and a larger number for you so that no matter what your frame rate is this will be an accurate depiction of time

**31:51** · passing so we're not frame rate dependent anymore it's good practice to get used to using this so I'm going to click and drag this and then if I plug that into my set function NOW Watch What Happens

**32:10** · I'm counting up so what's happening here is every time I render a frame an event goes through this line and sets my current duration variable so every time the line goes through here I'm going to ask my current duration what it is I'm going to ask the engine how much time has passed between my frame and the previous one and I'm going to add those together

**32:41** · and reset my current duration so every time this is set as something the next time an event goes through here which is the next frame I'm going to get the previous frames value of my current duration and add my Delta to it and keep

**32:58** · ticking up so this is a good way for you to see that you can actually take a variable ask that variable what it is and then change that variable based on that answer so now if I click play

**33:13** · I can hold this and it's going to keep counting up and then once I hit five seconds again nothing happens because I haven't built the logic yet to kick me out so the next thing I want to do is make sure that I'm only using my timeline as long as this logic is true so my current duration has to be less my total so I'm going to copy paste this

**33:36** · and bring it over here and I'm going to add another branch so hold B left click branch and then my total duration is bigger than my current so as long as this is true I can jetpack but if this is not true anymore I'm going to come out of my false output

**34:03** · and in that case I want to go all the way over here and stop my timeline so you can go back your your graphs as long as you're putting an output into an input you can you can do whatever you need to to achieve the expected results something you can do also to clean things up is anywhere on a line it doesn't matter if it's a white line a green line whatever if you double click on there you can add a reroute node so

**34:28** · this is a good way to keep your graphs clean which is extremely important so I'm going to add two there and I'm going to draw a a more obvious shape so that it would be easier to debug and also cleaner to see so now what happens is I'm constantly adding to my current duration and constantly checking if this condition is true the second I hit 5 on my current duration this will no longer be true which will put me out of the false set and I'm going to stop my timeline so now I'm going to see this

**35:06** · and there you go so that kicked me out of the timeline and I can never jetpack again because the only place I'm setting my current duration is here and I'm always adding time to it so the next thing I want to do is make sure that it resets properly if I go back to my

**35:27** · rules here so far I've got if pressed while Airborne I can fly if I hold it on thrusting a five second duration now I need to add this logic here refuels when grounded so again unreal is very powerful and user friendly it has an event here that I can already use so if I right click and type in event on landed you'll see I've got a a pre-made event I didn't add this input anywhere this was a it came with the character component

**36:00** · and this here if I click if I type in a print string it will trigger when I land so you see every time I land it says hello so I know that this is reliable what I'm going to do with this is when I land I'm going to do two things

**36:21** · I'm going to stop my timeline because if I'm actually no I'm not going to stop the timeline on land because if I if I'm flying somewhere and I bounce off the ground I don't want to stop the jet so all I'm going to do with this is reset my current duration to zero so I'm

**36:40** · going to grab this set it to zero so now you notice I have a set variable in two different places in my graph this is fine because a variable it's just a little pocket of information that you can store read and write I guess store and write are the same thing but it's basically this is their intended use over here whenever I'm dealing with my current duration I'm adding to it but when I land I'm

**37:10** · setting it back to zero over here when I'm asking current duration I'm checking what it currently is So reading what it is increasing its value setting it back to zero and you can do this with any number of variables um depends on the feature that you're making so now if I go back in and click play I'm flying and you notice when I hit the ground it resets to zero

**37:42** · so let me just add a bit of thrust to this because I'm I don't like that I'm bouncing so I'm going to stay up in the air until I can't so it kicked me out and when I landed it refreshed and now I can jetpack again

**38:02** · so as long as I touch the ground at one point I'm going to be resetting my current duration back to zero which allows me to go through the whole process of flying again so I think that's actually the expected functionality everything in the rules is there it makes sense I could still potentially tweak how much my Jetpack is you can change the total duration so if

**38:28** · I go to my total duration here and set the default to three now it's going to kick me out after three seconds instead of five so this might be a bit more reasonable so that you don't end up flying to the Moon um maybe your character can level up as you play and at that point you can tell your total duration to increase in value over time you know whatever you need to do you can do it so next I'm going to show you

**38:53** · um some organization first I'm going to delete all my print string nodes because we don't need those anymore and if you right click and type in comment you can add a comment um common boxes are awesome for organization so for example I'll bring this over here and I'm gonna make it big enough to contain the entire jetpack graph

**39:22** · or if I were to have selected it first and just click C I get a comment box as well so as long as something's in a comment box if you move the entire box it moves the entire graph and in the comment box you can add a comment so jetpack logic

**39:39** · so if you're working on something and you want to make sure that if somebody else is opening your graphs after you they have all the information you need so you can get as detailed as you want so I like doing stuff like this explaining why I've done certain things so this this branch checks if I am falling and

**40:00** · have uh duration lefts for example so you can change the color of a comment box sometimes they uh

**40:17** · not easy to click so you can change the color so maybe you can get used to using like blue as a helpful tip maybe if you're working in a graph and there's a part that is not working currently and you have to go you know close the project do something else you can make a red comment box to to let you know that you have to deal with that next time you log in you know be as clean as you can it's always better so that's uh over years of messing up I

**40:45** · find cleanliness is probably the best thing you can learn so now that the functionality is there let's add some of the um visuals to it so let's put in an animation and I think I will end up putting a jetpack mesh there so that we can see things um active and inactive

**41:07** · we don't have any particle effects in this project so I'm not going to do anything fancy it'll just be a texture swap from red TO gray or whatever just to show us that we are in fact flying one thing I forgot to add is I need to set is Jetpack to true and false and we're going to use this in the animation blueprint so I keep this variable inside of the character blueprint because you never know when in the future you're going to need this information so technically this would just be a um a

**41:34** · visual thing to let my animation know it should play a jetpack animation but maybe in the future your character when jetpack is active it has to trigger a a number of things in another graph so it's good to keep this information together so I'm just going to go to my Jetpack thrust and I'm going to set this to true when my thrust is on and I'm going to set it to false

**42:00** · when my thrust is off and I'm also going to put my Branch coming out of here through this as well so they both deactivate that and then stop the the graph

**42:16** · so that said the true and false when I need it to be everything in here is good so let's go over to the animation blueprints and make ourselves a state where we can put whatever animations we need to to represent jetpack in there so if I go over to my content drawer

**42:35** · in character mannequins animation you've got two blueprints in here Manny and Quinn so the character in here is Quinn the female version of the default mannequin character the male version is Manny so we're going to be changing the Manny animation blueprint because if you notice when I Mouse over the female version it has a parent class of many

**43:00** · so if I open up the female version Quinn's animation blueprint you'll see here they've left a comment box for us so this is a child animation blueprint so this this animation blueprint here derives from the male version so any change in the logic we do

**43:17** · in the mail version will propagate down to the female version which is the one that we see in game so I'm going to open up the male version and I'm going to add my logic there so there's a they're doing a couple of things in the animation blueprint I'm going to walk through them real quick we don't have to do anything with this but I'll explain why they've done it so it's got two events right here you notice the red node event means something fires off and then logic happens so on blueprint initialize animation essentially when the blueprint is

**43:49** · built so at runtime when you click play it it's going to go through get owning actor so who owns this animation blueprint if I go back to my character blueprint here you'll see when I when I select the skeletal mesh component in the details of that component I have an atom class slot so Quinn C So Adam BP Quinn that means that the owner of the

**44:18** · animation blueprint here is whatever skeletal mesh um whatever actor owns the skeletal mesh should I have it plugged in so in this case here Quinn in my third person character owns this blueprint so the event fires I get my owning actor

**44:36** · so third person character I cast to character so a cast node is a way for me to say I've got a a vague idea of who who owns me and I'm going to specifically choose this type of character to ask it what it

**44:53** · is so it's like I'm pointing at a direction and the cast node is identifying exactly what I'm pointing at so this is a vague node it's not a hard reference this is a cast of character which further defines what my vague node

**45:11** · is giving back so you need to you need to get used to Casting to gather the information that you need to drive certain actions in this case here I'm going to cast my owner I'm going to save it as a variable locally so if you see under my variables tab here I've got my character as a variable so you remember variables are little chunks of information I can store change

**45:35** · read in this case I'm only ever going to be reading from this because I don't need to change who owns me it wouldn't make sense for that to happen anyway so I'm storing this as my information and furthermore I'm asking that character what is character movement component is and I'm storing that as a variable too

**45:56** · so in my references here I've got character and movement component so these two little variables here are just pieces of information that I that are relevant to what I'm trying to do so that in the future I can point directly to this and say hey what is your speed what is your are you Airborne or not what is your skeletal mesh otherwise I would have to get my owner

**46:18** · and cast to character every single time I wanted to check something on that character so once this is done I got my character and I have my movement component down here the update animation event you'll notice fires off every single tick so the first thing it does when it fires is it gets the character so it it's equivalent to doing this

**46:42** · and you'll notice that this note here has a is valid and is not valid output so this is called a validated get so if I right click on my character variable and go down to convert to validated get that's how I get this node so this is a safety net it's basically saying as long as this character is valid do the logic but if for some reason I

**47:09** · did this process here and it didn't give me anything useful technically the variable in my animation blueprint would be empty so if you if you see when I select my character variable the default value is none so until my animation blueprint initializes and actually sets this as my owning character the default value of this variable is none so if for some reason this breaks

**47:37** · I'm not going to let any logic come out here and work because that's going to give me errors and potentially crashes and stuff so this is a safety net to say only do the logic following this node if this is a valid character for me to do the logic with so validated gets are very useful get used to using them you want to make sure in as many places as you can to not be able to break your

**48:04** · logic so it's just it's safe I could technically just leave it like this and it'd be fine because there's nothing that's preventing me from doing this when the the animation blueprint initializes but there are ways for events where you might need to make sure that you have the proper variable so next is a sequence node this is a flow control node like a branch but instead of a true and false output it's got a then output so it will input one event and then

**48:34** · output at zero then output at one then output at two and and so on so you can add as many as you want and it's basically a way to make a list of things that happen in order so if you right click you can remove the pin that you've added but so in this case here my output goes through I enter my sequence the zero happens first

**49:00** · so they've added some nice comments here this comment box says set velocity and ground speed from the movement component velocity ground speed is calculated from only the X and Y so moving up or down is not affected what this means is I'm getting my character movement component which I had set up here I'm going to ask that component what my velocity is so how fast am I moving through World space I'm going to store that as a variable

**49:28** · and there's a function here that they use called Vector length x y and this is going to get the length of that vector and only the X and Y position so the up and down is z they ignore that completely and a vector length is basically saying how much am I moving um in one frame and that's going to tell me my current ground speed so if I click and drag and type prints

**49:55** · and then plug my ground speed into this you'll see what it's going to spit up so when I'm not moving it's zero I start moving 500.

**50:06** · so this is a great way and you notice when I jump it's nothing but if I'm jetpack flying you'll see I still have my speed so this is a great way to get the speed another way you could achieve this though if you didn't want to use the vector length is you can actually break this is actually it's probably a little more complicated but it's another way you can do it I drag off I make this

**50:36** · so make vector so what this does is a vector is just a three float variable XYZ so three numbers I can break it down into its individual number so X and Y and Z and I can make that number back into a vector so you see a yellow input

**50:56** · is Vector green is float I can turn a yellow to a green and because a vector is three greens you'll see it's got three outputs and then I could just add the X and the Y together but leave the zero and then if I get type in length this is going to spit out exactly the same number if I were to print string that so you see I'm still getting 500.

**51:32** · so this long or this annoying process is the same thing as this so I could delete that that right click to recombine put it through this and I'm getting exactly the same result so this is how I'm getting my speed if I wanted to in the future to add a animation layer on the jetpack itself for an up and down I could just break this open again grab the Zed only and save that as a variable called the up and down speed for example

**52:05** · the next thing is set should move to True only if ground speed is above a small threshold to prevent incredibly small velocities from triggering animations so this is a safety net again so if my current acceleration is uh so if my current acceleration does not equal zero so if this is a number that's not zero it means my acceleration is actually something and if my ground speed is greater than

**52:36** · three so my ground speed here if these are both true I should move so judging by the comment here this was just a way to make sure that even if the slightest movement is on the character I'm only going to start playing a move animation if it's past a certain threshold so it's a maybe not necessary for this case but it's again good to have these safety

**53:02** · nets because you want to make sure that things are behaving the way you expect it to because for some reason you could have a very small acceleration maybe your character sliding on something you don't notice it but your character could start running because the acceleration is technically slightly true so that's interesting maybe not relevant to what we're doing and then over here we have scent is falling from the movement component so they actually did what we did but in the animation blueprint instead of the character blueprint so we built this uh actually no we didn't save that

**53:34** · as a variable so right here so is falling we did not save this as a variable for us to use but in the animation blueprint here they had already done that so in here we know for fallen which is uh how they played the animation of the character falling so this is all good stuff if I go into the animation graph I did that by double clicking on Adam graph here you'll notice my setup or the setup of

**54:04** · the default character we have the output pose this is the final result of what we see on the character and you'll see that in the top left window here um we've got a control rig node which we don't need to know this is for animating your character or adjusting it at runtime you've got a slot which is a way to play a full body animation and force it on the character again we don't need to know these right now and then you have a state machine so a state machine is where we choose

**54:36** · the final animation to play or we choose the pose to Output from this state machine so if I double click on this and go inside you'll see I have my entry point here when I enter the state what is the first thing that plays my locomotion and then based on certain conditions we

**54:55** · have a bunch of things that can happen so to show you this if I have this open and click play like in our character blueprint we can actually in the drop down here select our character and see it happening in real time so if I go back here and click jump you'll see it go through each of the different states it needs to to play the proper animation

**55:18** · so by default when I enter the states I'm in The Locomotion and if I double click on that you'll see it's using a cached pose a cash pose is a way for me to store the final pose of a state so if I go up here you'll see my final pose of this state is coming out through here and that and that goes through this and this and the final result is the output in fact I'm going to delete these to avoid confusion we don't need those right now so if I plug that in compile and Save

**55:50** · you'll see I have the same results so the final output of this state is played here in my state in The Locomotion State machine you'll see I have my cache pose locomotion if I go back to the top I have a separate stakehold Locomotion and it's plugged into a cash pose node

**56:13** · so a cache pose is a way for me to store the pose of this state and I can use it in any number of places as long as I call this function here so if I copy this and go back to the top and paste it I'm going to have the same results oh I should have done that I was still playing so I put my cash pose there and I have the same result of me running around the only thing is if I click jump

**56:43** · there's no jump animation that's because I'm not going through my main states like I was before I'm using the cache pose of my base locomotion so it's just going from the output here caching itself and I'm calling that cache over here and that's the X the uh the final result so they in their default Pro projects

**57:05** · they've got The Locomotion they have a jump animation and they have a falling Loop and then they have a land animation so their Locomotion was cached but everything else is a flat animation so my land animation is there my jump animation is here and my falling Loop is here

**57:33** · um we don't really need to go over too much of that it's I'm not entirely sure why they only cached the base Locomotion and nothing else um I like to Cache every single unique state that they get the character can be in so I would do something like

**57:53** · um right click and add a States and I would call this Airborne for example and I would cache this and I would call this Meyer

**58:08** · therefore oh if I were to spell properly so I would I would put all my major States here and my main states State machine would just direct from one cached pose to another but anyway it's it's how they had set it up here but what we can do is make a jetpack

**58:27** · state and I'll call this jetpack and for now oh okay let me spell that properly finally so jetpack and for now I'm just gonna go make a random animation for me to know that my Jetpack is playing properly

**58:47** · so a quick way to do this would be to open up my Manny character I'm gonna grab his Idol I'm going to right click and duplicate this and call this my jet pack I don't and then in my Jetpack state I'm gonna go inside open up my content drawer click and drag that and you see it made me a blend tree

**59:16** · and if I go inside here this is my Jetpack idle so the first thing I'm going to do is make it looping so that when I get to this animation here and it plays all the way through it will loop again so I'm going to go back to the very top and if I compile you'll see now everything is fine so again I've got my cache Locomotion this is the ground moving around I've created a new state machine that contains my Jetpack animation or it will

**59:42** · so the next thing I want to do is make sure that this animation here looks like a jet pack so I'm just going to open this up and there's a very quick and dirty way to add or modify poses in animation so the first step of making a feature is prototyping it and building the functionality so I'm just going to make a rough animation I don't care really how it looks I just want to make sure it looks different so if I grab the upper arm L I'm just

**1:00:10** · gonna okay let me put that up there and like that so with those two selected I've added a rotation and because the pose is different now you'll see this button here is active so if I click key now I've got a a layer track on my animation and if I click play you'll see it's going through so I'm going to do the same thing for my rights put that up

**1:00:41** · and then key and I'm just going to put the legs together so that it looks like the characters in here so that key and that's key all right so that's my Jetpack idle so now if I go and open this up

**1:01:05** · you'll see this is my Jetpack thing so I'm gonna go back and actually just to test I'm gonna right click and do type in Jetpack and that's going to give me my cash pose jetpack plug that in there compile and save and now this is my character so if I click play you'll notice my character is using it I can still move around because the character doesn't care what animation is playing it's just cosmetic but this is what I'm expecting to see when I'm actually using my Jetpack properly

**1:01:36** · so the next thing I want to do is on my top layer and this is something you can put wherever you need to where wherever it makes sense I'm just going to put it at the very top I'm going to drag off my main stances and type blend by Bool so this node here will allow me to blend between two output poses so I'm going to type my Jetpack and get my cached pose

**1:02:06** · uh and put that in the true and that in the false and finally I'm going to drag off of here and type um sorry I'll redo that so you can see what I'm doing I'm actually making a variable from the animation graph or from the

**1:02:24** · graph in general so the way I had done it before was in the variables tab I click plus and add a new variable and set it from there but in a case like this I can actually just drag off of here and if you release you see you have the promote to variable option I'm going to click that and I'm going to type as jetpack and now I've created my own variable from here and it will always use the variable type that you've dragged off of so in this case it gave me a a Boolean if I were to click and drag off here called whatever you notice it's a float

**1:02:56** · by default so this is another quick way to generate your variables as you need them so what this is going to do now is if is Jetpack is true it's going to go through the jetpack cache pose which will be coming from my Jetpack State machine if it's false it's going to use the main states which if I'm running around we'll go through locomotion which will be using The Locomotion calf

**1:03:22** · pose so the next thing I need to do is drive is Jetpack and we're going to do that in the next video so now that we have the States built in the animation blueprint I'm going to show you how to take information from the character in this case the is Jetpack Boolean that we made and tell the animation blueprint what that variable is set to so I'm going to go back into the event graph of the animation blueprint

**1:03:49** · and because they had already done this setup here where they can reference the character all I need to do is add a new PIN here I'm going to click and drag my character variable so I'm asking my owner information and in this case if I click and drag off of that type is Jetpack

**1:04:10** · if that's what I called it let me double check is Jetpack yes so that should be the name so go here is jet pack oh what did they do okay

**1:04:25** · perfect so this is a good example of how casting works so I'm getting my owner and I'm casting a character but if you notice my actual gameplay character is called third person character but if I click on it and open it up in the top right you see I've got parent class parent class is character so in fact my animation blueprint is saying get my owner and get its its root

**1:04:51** · class which is character and in this class I've got all the information I need so by default a character comes with all this information here but I'm working in third person character and in third person character I've added my own information so is Jetpack total duration current duration so in this case here my owning actor the cast of character will not have this information because I've added it to a child of my character I can't read a child from a parent but I

**1:05:22** · can read a parent from a child I'll show you how that's done so what I want to do is click and drag off my owning actor and I can cast to third person character and if I go over here and store that as a variable

**1:05:43** · I can call that third person character and I will for cleanliness move that up to references and now if I compile and go down here instead of get character I'm going to get third person character and if I type in is Jetpack you'll see I now have access to my variables jetpack because that's the that's the um category that I added and

**1:06:10** · now I have access to read and write what my is Jetpack Boolean is set to so the cool thing is I also have off of here access to everything that's character has access to because my uh child's character third person

**1:06:29** · character inherits all of the things that its parent has and then adds whatever modifications you make to it which is why on my third person I I have access to a jetpack but on the base character I don't so this is the parent this is the child it's only in the child that I added this Boolean so I would after the facts go ahead and clean this up by removing my reference my cast 2 character and instead set it a

**1:07:00** · cast to my third person character specifically but it's not a big deal in this case so that's that's the next step after the feature is built is I would go through my Blueprints and clean things like this up so I've got my is jet pack and because I had created my my Bool earlier so if I go back to my animation graph here I had dragged off of and set as

**1:07:23** · variable my my Boolean I call it is Jetpack so I'm going to go to my event graph and I'm going to grab this and set it and then out of my new sequence pin I'm going to grab that and then I'm going to do this so now what this is going to do is every single tick it's going to check is my character valid go through all the processes of figuring out what my variables are and eventually go through here and say hey owner what is your is Jetpack Boolean

**1:07:53** · set to I want to have it set to that as well so now if I go and click play when I start flying you see I've got my animation but if my character Falls or touches the

**1:08:09** · ground well as long as my is jet pack is true based on the logic I set up in my character here so as long as this is set to true and false as it should be my animation blueprint will be up to speed as well and now I'm just going to play that animation as needed so I can add layers to this and have a blend space that will adjust the animations at runtime based on how fast forward left right whatever

**1:08:40** · um but these videos are already getting long so I'm just gonna I'm gonna do one more quick thing I'm gonna add a character a jet pack on the back of this character so we can see one more visual cue that the jetpack is actually active so a quick way to do that again this is rough we're prototyping so

**1:08:59** · we can see the feature so I'm going to select the skeletal mesh of the character I'm going to add a component and type in q so this is going to give me just a generic gray box Cube but because I added it underneath the character it's a child of that component

**1:09:17** · so one thing I can do of a child of a component is with the cube selected I've got a sockets tab if I click this button here it will give me a list of every joint on my character because it knows its owner is a character and I'm going to take spine four select that and I'm going to scale my Cube down I'm going to turn off snapping so that it can be adjusted better

**1:09:53** · and I'm just going to move it roughly where the jet pack should be and the next thing I want to do is make sure that with my Cube selected all of its collisions are turned off I don't want anything colliding with this it's visual only compile and Save so now if I click play I've got a little box here and if I fly

**1:10:15** · it's there the next thing I'm going to do is duplicate this and I'm going to move this duplicate down slightly where you go here so I'm going to set all of its values to zero and I'm also going to make this a child of spine 4.

**1:10:37** · move it back I'm going to scale this down a little bit and then finally I'm going to call this my jetpack Trail

**1:10:54** · and then the the main Cube I'll call it jetpack just for clarity so those two things done I want to turn this Cube red when my Jetpack is active just so that we can visually see that it's active other than the animation so we're going to do it this way but eventually if you have VFX or something you can trigger it the same way so I'm going to go over here I'm going to take my Jetpack Trail I'm going to get a reference to it and because this component is a static

**1:11:26** · mesh you see if I Mouse over it in Brackets static mesh component if I drag off of the variable when it's in the graph I have static mesh specific functionalities so in this case I'm going to type in material and it gives me a set material option so I'm going to do that and if I click and drag and add this to my line of logic here so all these things happen when my Jetpack is active

**1:11:55** · and then I'm going to copy paste these two here and I'm going to move everything over and plug that into there so by default if I select that jetpack Trail you'll see the material is basic shape material um I can either click in the drop down and type in basic shape I I may not even have access to it through here because it is a

**1:12:27** · basic thing so I can I can also just click on find in content browser so it's right there with it selected in my content browser if I click this little arrow I can plug it in there so this node here will set it back to basic shape when I stop my Jetpack and this note here I'm gonna see what uh

**1:12:47** · what do we have available to us there we go basic asset red compile and save and now if I go and click play when I'm flying because it was the first time I was using that uh that material it had to compile but now it should be good so now it turns red when my Jetpack is active

**1:13:11** · so the next steps would be to go in and figure out how we can improve this does it feel good if it is a production you would talk to the designers and see if they're happy with the results um I would definitely go and clean up a lot of the stuff like I said the third person character should be the reference not the parent class of character

**1:13:32** · um I would comment this a bit more maybe even move this functionality here to a custom event so keep it in a self-contained graph so we can clean this up a bit but this is all the next steps what's important is that we're building the future and we're happy with it and we're anticipating issues in the future and already working to solve those issues so that was essentially I'd say like 80 of all you need to know to get

**1:14:02** · your features out the door and start exploring and experimenting inside of the engine nothing I did was too complex it's just a bunch of small easy to use features and nodes used in the right combination to achieve the results right so keep breaking things if you have

**1:14:21** · ideas it's not hard to test them just I would recommend going through the process of breaking it down in notepad explore the engine you know right click on the graph see all the contextual nodes um play around with them but that's essentially it there's nothing too complex about it right so good luck