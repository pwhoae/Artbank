---
title: "Learn Unity - Beginner's Game Development Tutorial"
source: "https://www.youtube.com/watch?v=gB1F9G0JXOo"
author:
  - "[[freeCodeCamp.org]]"
published: 2021-04-15
created: 2026-07-04
description: "Learn to develop games using the Unity game engine in this complete course for beginners. This course will get you up and running with Unity. Free game assets included!✏️ Course developed by Fahir f"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=gB1F9G0JXOo)

Learn to develop games using the Unity game engine in this complete course for beginners. This course will get you up and running with Unity. Free game assets included!  
  
✏️ Course developed by Fahir from Awesome Tuts. Check out his channel: https://www.youtube.com/channel/UC5c-DuzPdH9iaWYdI0v0uzw  
  
⭐️ Resources ⭐️  
(To download assets you may have to right click the link, copy it, and then paste it into a new tab.)  
🔗 Unity Introduction Project Assets: http://cdn.freecodecamp.org/youtube/unity-course/Unity%20Introduction%20Project%20Assets.zip  
🔗 Unity Introduction Project: http://cdn.freecodecamp.org/youtube/unity-course/Unity%20Introduction%20Project.zip  
🔗 Monster Chase Game Assets: http://cdn.freecodecamp.org/youtube/unity-course/Monster%20Chase%20Assets.zip  
🔗 Complete Monster Chase Game: http://cdn.freecodecamp.org/youtube/unity-course/Monster%20Chase.zip  
  
⭐️ Course Contents ⭐️  
⌨️ (0:00:00)​ Introduction  
⌨️ (0:00:48)​ Downloading Unity And Unity Hub  
⌨️ (0:05:20)​ About Unity Versions And Creating A New Project  
⌨️ (0:09:07)​ Introduction To Unity's Interface  
⌨️ (0:22:10)​ Starting With Unity's Basics  
⌨️ (0:29:47)​ Rigid Bodies And Colliders  
⌨️ (0:38:19)​ Audio Source And UI Elements  
⌨️ (0:45:47)​ Moving Our Character With Code  
⌨️ (0:54:22)​ Introduction To Variables  
⌨️ (1:06:14)​ Operations With Variables  
⌨️ (1:19:01)​ Functions  
⌨️ (1:34:22)​ Conditional Statements  
⌨️ (1:49:29)​ Loops  
⌨️ (1:58:41)​ Coroutines  
⌨️ (2:04:39)​ Classes  
⌨️ (2:16:46)​ Accessibility Modifiers(Data Encapsulation)  
⌨️ (2:26:54)​ Inheritance  
⌨️ (2:43:35)​ Getting Components  
⌨️ (2:52:32)​ Monster Chase Game Intro  
⌨️ (2:53:55)​ Importing Assets  
⌨️ (3:02:22)​ Creating Player Animations  
⌨️ (3:17:36)​ Sorting Layers And Order In Layer  
⌨️ (3:24:04)​ Creating The Game Background  
⌨️ (3:33:03)​ Player Movement  
⌨️ (3:50:26)​ Animating The Player Via Code  
⌨️ (4:03:34)​ Player Jumping  
⌨️ (4:19:03)​ Camera Follow Player  
⌨️ (4:30:42)​ Enemy Animations  
⌨️ (4:39:40)​ Enemy Script  
⌨️ (4:51:15)​ Enemy Spawner  
⌨️ (5:15:15)​ Enemy Collision  
⌨️ (5:31:55)​ The Collector Script  
⌨️ (5:40:32)​ Unity's UI System  
⌨️ (5:53:06)​ Creating Main Menu  
⌨️ (6:02:34)​ Navigating Between Scenes  
⌨️ (6:13:04)​ Selecting A Character  
⌨️ (6:20:50)​ Static Variables  
⌨️ (6:30:23)​ Singleton Pattern  
⌨️ (6:41:35)​ Events And Delegates  
⌨️ (7:13:11)​ Instantiating The Selected Character  
⌨️ (7:17:59)​ Finishing Our Game  
  
🎉 Thanks to our Champion supporters:  
👾 Otis Morgan  
👾 DeezMaster  
👾 Katia Moran  
  
\--  
  
Learn to code for free and get a developer job: https://www.freecodecamp.org  
  
Read hundreds of articles on programming: https://freecodecamp.org/news  
  
❤️ Support for this channel comes from our friends at Scrimba – the coding platform that's reinvented interactive learning: https://scrimba.com/freecodecamp

## Transcript

### Introduction

**0:00** · What is up guys and welcome to a new mini course while a mini course It's seven hours where you will learn a lot of cool things now This is going to go from the very basics from downloading unity to you know Learning the basics of C# and then slowly progressing with a few examples how unity works How unity interface works what are the main things that we need to know and then jumping in and creating a game?

**0:22** · So if you are a complete beginner This is the exact course for you because it will teach you a lot of things to get you started with unity Game development, I'm going to say everything because in seven hours you cannot become a pro game developer That's a fact And but it can get you up to start to what you need to start creating games and yada yada all of the good stuff

**0:42** · I'm just going to stop talking and uh, yeah, let the games begin Starting from the very basics the first thing that we are going to do is download unity hub And I'm not going directly to download unity editors different versions of it Because we are going to control all of that from the unity hub application And simply type on google download unity hub and then go on this link download unity hub

### Downloading Unity And Unity Hub

**1:05** · Now if you see something different in terms of ui of the website Here that you see on unity, maybe they redesign things Don't worry about that just find the download unity hub button Click on it and download it when you download it This is what you will see but before you actually see this you will need to Log in or create an account and that's simple same as creating an account on facebook on whatever

**1:30** · But that is what you need to do now of course for the projects over here You will not see anything because if it's your first time opening unity hub you don't have any projects Now from here how you can install different versions of unity Well, simply you're going to go here under installs tab and from there you are going to see which version versions

**1:51** · You currently have and how or download the new ones How you can do that simply click here on add and then here you will be prompted to download the Versions that they give you such as 2020 2020.1 and so on and so forth But if you want to download later versions Basically, you know versions before this you can simply click here on visit our download archive

**2:17** · So when you click on that it will take you over here or simply type unity download archive on google And you will find it and from here you have versions dating from version 3 up to version 2020 And this is very important for you to do so pay attention now when you want to download a specific version Let's say you want to download unity version 2022.2 Then from here you're going to click on unity hub.

**2:42** · So this green button downloaded from unity hub Don't download it here from windows or mac basically the installer Don't do that The reason for that is because when you click here download from unity hub and i'm going to click on open application unity hub Open the link and it is going to open the link right here. You will see it in a few moments.

**3:01** · There you go So now we are prompted to download things such as android build support ios build support tvos build support sun and so forth now of course you are prompted to download these

**3:19** · Same way over here if you were to download the installer, but the difference is Later on if for example, you're developing your game for android You will download android sdk and ndk tools and open gdk tools as well

**3:35** · So you don't have to download that separately and install them on your own And all of the you know tds stuff So it's done for you and plus when you install unity this way Then you will have it over here in your installs And you can of course choose later on when you open a game or create a game with which version you want to download it or actually create it

**3:58** · And so on and so forth now over here if I click on to download it and choose application Same as what we did before you are going to select all the tools you need So here you can select android build support ios build support if you need I don't know when those build support click on that as well And then from there you're going to click on install and proceed to install The requirements or unity editor and everything that comes with it

**4:26** · Now one thing that I want to show you right now before I end this video and you install unity What i'm talking about when I say you can you know have better control with unity hub is for example over here for my 2020 version I didn't download the windows build support So if I want to do that i'm going to click on three dots And i'm going to click here on add modules and from here I am simply going to click on windows build support click done and it will download it and there you go

**4:54** · Whereas if you have downloaded over here the unity installer and installed it You don't have that option in unity hub So when you come later on no matter if you add it here your unity version if you click here You will not see this add modules option So that's why I said that you should download it with unity hub anyways Download and install unity and we will continue from the next video Before we proceed further on I want to explain one thing that I want you to understand because I think it's very crucial

### About Unity Versions And Creating A New Project

**5:25** · And I've been doing this for a few years now And I see that a lot of beginners and even people who are beyond beginner level have an issue with this As you can see here we have multiple unity versions from unity version three up to 2020 now Don't think that if you are watching a tutorial that is using unity version 2018 then well you're lost if you don't use unity 2020 if 2020 version is out

**5:50** · Why I say this because a lot of people are like oh, I especially see this on my youtube channel Oh, but this is not 2020 version or x version whatever The point is that the fundamental things that I'm going to teach you are never changing So they will never change I am using unity since version four and I think it was version

**6:12** · 4.55 or even I believe it was 5.1 So it's June from 2014 more than six years So this year it's going to be my seventh year using unity And the things I learned using this version 4.5.1 I'm still using in the version 2020 so the fundamental things don't change they add new features But most of the time your game can go out with those features except only if you want to add them for whatever reason

**6:42** · And even I currently I'm developing two games that I'm going to publish and they're probably published From the time you're watching this video and I am using unity version 2019 and not 2020 even though it is out So don't worry about that So don't worry about that And I need to emphasize this because later on when you go on youtube and you want to see a quick tutorial How to do this and that What if the person is using unity version 5 and you're like going to panic or stuff?

**7:10** · No, just follow along if there are some differences They're going to be small differences But when you learn the concepts and how to use it then you will not have an issue with that So that being said what I want to show you now is here you have installed unity You have your versions over here Multiple ones if you're installed multiple and only one if you install one from the previous video If you want to create a new project you're going to go here into the project tab And simply over here you're going to click on new if you have a project That you downloaded from online or maybe you removed this project from unity hub

**7:46** · And you do that by clicking on three dots removed from list in order to locate it You're going to click on add and then find it again But if you have a new project or you want to create a new one click here on new And then there you go From here you are going to select if it's a 2d or a 3d project And even though if you select 2d for a 3d project and vice versa, you can change that in unity

**8:10** · So don't worry about that Here is the location where you want to store your unity save file That is your preference you can save it wherever you want to save it And this right here is the name of your project or your game that you are going to create So these are basic simple things that you can do on your own I don't have to guide you through how you can do this Then you click on create wait for unity to you know do its thing

**8:33** · One thing that I am going to show you is Depending on how many versions you have over here And if you want to create the new project with a specific version You're going to click on the drop down list over here So on new click on the drop down list And from here choose the version with which you want to create your new project

**8:52** · And that is basically all you need to know So remember when you learn the basics, when you learn the fundamentals It's like driving a car, when you learn how to drive a car No matter in which car you sit or drive The driving is the same So keep that in mind So this is what you see when you create a project in unity

### Introduction To Unity's Interface

**9:11** · It's an empty field space or workspace where you have these tabs And I'm going to go through these tabs one by one Explain what they are And we're going to move from there First here you will see the hierarchy tab Which is at the left side Now this is by default And when I say by default, I mean this over here, this layer

**9:31** · You will see default over here And you can rearrange these however you want So for example, I can take the hierarchy and I can put it over here Or I can take the project and I can put it over here This is your preference And later on when you get used to working in unity You will then see which tabs you use more than the others

**9:50** · And you will dock them and you will rearrange them However you want to rearrange them If you want to see my rearrangement, it's over here I'm going to click here on default Or actually on this drop-down list And I'm going to click here on my layout As I said, you can save this So you can rearrange them However you want to rearrange them And then from here, you can go and click on this layout So if you don't see But why shouldn't you?

**10:13** · You probably see it And I'm going to drive it over here So this right here, you can click on it And then you can see or click here Save Layout Then you can give it a name and then click on Save And there you go So the first thing that we have over here Is the hierarchy tab Inside of the hierarchy tab, you have all the game objects

**10:33** · That form your game So every part of your game Inside of unity is called the game object And on that game object, you put components That will make them do stuff In order to form your game So while I'm in the hierarchy panel, I can right-click And from here, I can click on Create Empty Of course, you can create a 2D object 3D object effects But we will come to that later on When I click on Create Empty This is the game object I'm talking about

**11:03** · And this can be your player This can be your enemy This can be whatever you want it to be Now when you select the player You will notice here at my right side I have the inspector panel If you are on the default layer You will also see on your right side The inspector panel But from now on, I'm going to switch to my layout And I'm going to use all these tabs from my layout But they are the same tabs Just on different positions So when I click the game object player

**11:32** · You will see the inspector panel Or tab on my right side Here, you will see Every component that is attached On that game object Since I have created an empty game object Which is a default one You will only see Transform But later on in the game We will see sprites Which are representing 2D game objects

**11:50** · Which are basically Image renderers So sprites are Or sprite renderer Are image renderers So if you have a character That sprite render Will render it Basically draw it on screen Same as from the image You will also see rigid bodies Which simulate physics You will see colliders Which helps us collide Or help two game objects collide with each other

**12:15** · You will see audio components Which will allow us to play sound And so on and so forth But that will come later on And basically you simply click on add component And filter for it For example, if you want the rigid body Here it is If you want a sprite component Here it is You simply type sprite And here it is Spriting renderer And so on And so forth So all of the information About the game object And its component You will see in the inspector panel And you will also see scripts That are attached On the game object Because scripts are also components

**12:47** · Moving forward Here you will see the project tab And this is at my bottom left corner So the project tab Will show you All the folders and files You have in your game Currently by default We have this scene folder But we can right click We can create a new folder Over here And I can name it For example, scripts folder I can name it prefabs Prefabs are saved game objects We will come to that Don't worry about that We can save audio files

**13:18** · Fonts UI images And all of the good stuff Everything will be available Here in the project tab Now one thing about the project tab Is remember to keep it organized You will saw me Create a folder for scripts Same way you will see me Create a folder for my images For my sounds For my fonts For my prefabs For everything I love to group it So that I know where it is When the time comes

**13:43** · Moving forward Here at the top left corner I have the scene tab So the scene tab Which is this Right here Is basically The game In Unity Editor That means Every game object I put inside I will see it In the scene tab For example, here is The player game object And I can click here On the player game object And in the inspector panel I can click on this cube Over here And I can give him an icon

**14:11** · And there you go So now he has an icon And this is In the scene tab Is where you are Going to Position your game objects Your UI elements And so on and so forth So for example, if your game Or our game is going to be Within this bounds Or these bounds That you see over here So this rectangle Which represents the camera By the way Then if I want to position A game object here I'm simply going to move it In the scene tab And this is where he is Going to be located

**14:43** · So the scene tab Is for that Rearranging game objects Within your game Now the game tab Over here Is how your game Is going to be displayed On an actual device Be that computer device Desktop device Laptop device Mobile device And so on and so forth So all devices That you can imagine Inside of this game tab You can do one important thing Over here You will see this free aspect

**15:13** · Here you can Add a desired resolution For your game So when I click here Full HD And for some reason I have it Fill HD It is going to change The scene over here How we see it As you can see And as well over here The shape of the camera Now what do I mean by that?

**15:32** · Well if I go back over here In Full HD or Fill HD I'm going to click on the plus Sign to add my own Resolution And over here I'm going to say Full HD Portrait And I'm going to say 1080 by 1920

**15:48** · Which is the portrait mode You will see now That we are in the portrait Or we see the game in portrait Same over here We go back in the scene We see the camera In Portrait mode There you go So this is how you Basically develop games For mobile devices In Portrait or Landscape mode I can go back over here And select the full HD 1920 by 1080 So vice versa And now I see it in portrait mode

**16:15** · So this is how that is done But of course This doesn't mean If you set here The resolution to Full HD And design your game For mobile devices And this is referring To mobile devices mostly This doesn't mean that your game Will look the same on every device We'll talk about that later On and I've talked about that On my YouTube channel You can check out the videos for that But this is just to show you For what is the game tab

**16:38** · Now the resolution is over here That you see Will depend on From file And then build settings From the platform Your game is selected for So currently it's our PC, Mac And Linux stand alone If you want for Android You're going to click on Android over here And click on Switch platform It is going to take a few moments Depending on also how large your project is

**17:01** · So if you have a lot of assets And game objects You progress a lot In your project And for some reason You need to switch platform This happens when you develop for Android and iOS as well Then you will wait a moment or two For all of this to compile And you know Yeah, yeah, yeah So that's basically it There is no way to speed it up

**17:24** · Except for you to have a You know, a good computer So now if I go over here I have more options For these resolutions And of course You can do the same thing I did You can click on the drop-down list Over here When it says You know, landscape in this 1920 You can click on the plus button You can give it your own name over here Name of your resolution Here is the width and the height And there you go Moving forward

**17:51** · We have the console tab Which I'm going to move over here The console tab is basically used For debugging So you will see any errors That your project has Well, they will be displayed here In the console tab Also your own debugging So when you add debug.log Or print statements Or so on and so forth You will see all that Being displayed Right here Inside of the console tab And you will mostly

**18:19** · Use it as I said For debugging Now this console tab is pretty good But there are also better ones On the asset store Which give you more information But I will talk about that later And I will also talk about that On my YouTube channel This is for your own development To speed up your development process But you know, as time goes That will come so don't worry about that Currently we don't see anything Later on I will show you When we create a simple script

**18:43** · And we type debug.log I will show you how that is displayed Over here in the console And we will explore it The asset store over here As you can see It is moved Now this is moved from As you can see You can visit the asset store website From 2020 version onwards And also import Your purchase from the package manager Basically the asset store Before Unity version 2020 Was a tab

**19:08** · Where you import the assets That you get On the asset store Either paid Or free assets But now that is moved to window And then package manager So here is the new asset store So any new asset We can close this tab And any new asset That you purchase They will be available here When you click on the packages And here my assets They will be available From these tabs You can see these are all the assets That I purchased

**19:37** · And got for free On the Unity asset store And a lot of these are really amazing assets That help you Develop your games faster And so on and so forth As you can see over here I have 120 I have 126 currently And I will have more Because they really help you Develop your games faster Next over here We have the animation tab Or actually the animator But the animation over here Is where we create animations

**20:02** · In our example project That will come A few videos from this one We will see how we can create Simple animations Don't worry about that But later on When we start creating real world games We will see how we can Create more complex animations Use them in our code And all of the good stuff Now this is where we create the animations And display them And also set the frame rate And the other stuff related to animations And over here into the animator Tab Is where we connect those animations together

**20:34** · And later on Don't worry about that We will see that So we will have one animation here Another animation here We will create connections For example We go from this animation to this And from this animation to this And so on and so forth And we will see How we can create parameters From this tab over here The parameter tab To help us navigate from this animation

**20:55** · And from this animation And vice versa So we will see all of that Don't worry about that So these are The basic Most used tabs When you develop your games Of course Other tabs are located under window

**21:13** · And then you have over here So you have Under generally you have You know Seeing, game, inspector, project, console Services When we later on Want to implement ads In our game or in app purchase Rendering for lights in our game Or you know, lighting And animations here Here are the animation tabs The animator and the animation That we saw Audio is, you know, for audio mixer

**21:36** · Analysis for the profiler When we want to profile And analyze our game Debug it and so on and so forth But that will all come Later on in your development What is important now To, you know, learn Which we did About these basic tabs That are used all the time

**21:55** · So this is Or, you know, just memorize these You can go through the video again To know these basic tabs And from there on When you get used to, you know Using unity Other tabs will come And we will then mention them On the go Let's get into the juicy stuff Over here I have a game character And if I double click it This is what you see And this is a nice little one I, I don't know, fluffy thing Which is a character For my game called gravity control And this right here is called a sprite sheet Why?

### Starting With Unity's Basics

**22:27** · Well, because we have multiple Multiple characters Basically multiple images Inside of one image And this will form a blink animation Inside of the game Which we will see in a moment But on its own This is the character And you can either import him like this Or you can import him like a sprite sheet Why do I import him as a sprite sheet?

**22:49** · Well, because this is more efficient Memory wise And performance wise Because you have all of the characters Inside of one image And then you import them in your game And you slice them up That means choppa choppa choppa So let's see how that works First things first over here in the assets Remember by the organization I'm going to right click And create a new folder And I'm going to call it Sprites folder Of course, further on in the assets You can sub-categorize So over here you are going to right click And you're going to create a folder for characters

**23:22** · Or UI elements Or enemies Or so on and so forth You get the point And inside of here Is where I am going to import my character How does that work?

**23:31** · Simply, you know, drag it with your left mouse click You see the plus sign Or the plus button And now you release the mouse And there you go This is your character And voila Here is our character inside of the game Now I can, as I said

**23:47** · I can simply drag him like this Inside of the scene Remember the scene is where you form your game Or you arrange elements And characters And all of the good stuff So I can put him over here And that's it I can go here in the game tab And remember, game tab shows you How your game looks like And if I were to hit the play button over here And the middle or the, you know, top middle Not corner, but top middle This is what we have in our game

**24:16** · Of course, this is not something That you want to have in your game Except if you're creating some weird game So I can, you know, right click on The character game object in the hierarchy And I can click here delete Or I can command delete Or delete button on windows

**24:34** · Now one thing I'm going to explain Before we go Notice over here we have A sprite render component Attached on that game object In order for Unity to render this image We need a sprite render component And over here we provide the sprite

**24:49** · That we want to render Which in this case is this character So this is one component that I talked about And this is how it works So I'm going to delete it now And I'm going to click it Because you're probably wondering Okay teacher, you are crazy I'm not going to use this in my game And I know, I am crazy And I know you're not going to use it In your game like this You want to use every different element Of the sprite in your game How can you do that?

**25:14** · When you are in the sprites folder You are going to select your character From there When you select it Over here in the inspector You will see the properties of that sprite And you will see something called sprite mode Which is currently set at single

**25:31** · What you can do is You can click on that drop down list And change it to multiple And then hit this apply button Over here at the bottom right corner For the inspector of your sprite When you click apply It applies that change And then you can click on this button here Called sprite editor When you do that Now you see your sprite over here

**25:53** · And what you can do is You can slice it up As I said, you can chop a chop a chop So we can, you know, slice it into parts Like this And then we can use every individual part From this sprite And in order to do that I click the slice button over here

**26:11** · There you go And click on it And over here we have the type of Slice that we want to do We can do an automatic Which will allow unity to Automatically slice all of these sprites Which unity does a really good job Add by the way And we can also Click on the drop down list And we can, you know, do it by You can, we can do it grid by cell size Which basically means We are going to set our own pixels

**26:34** · And offsetting And so on and so forth Don't worry about that now That will come later on This is basically for images That have the same width and height For example Five, 12 by five, 12 Or, I don't know One, 60 One, 16, 20 by 16, 20

**26:52** · Or, you know, 10, 80 by 10, 80 I mean the resolution Of the image in sizes And then you can specify These grids That you will use to slice it As I said Later on about that But when you set on automatic Unity does a pretty good job And I'm going to click on slice And there you go This is everything we need to do You will notice a little Cubes Around our character So over here You can see it over here Over here And so on and so forth These are indicating How these sprites are sliced

**27:24** · And if I click on Each and one of those You can rename it over here So you see over here We have character 1 Underscore 0 Then character 1 Underscore 1 And so on and so forth And you know You can rename these Especially if you have You know A sprite sheet of UI elements Where you have multiple buttons You definitely want to Rename your buttons to know Which is the play button Which is the level button So that you can locate it More quickly When you are using it In your game That's the wisdom behind the

**27:56** · Renaming Over here we don't have to do Anything Because you know It's a character It's simply slice it in part So we can Probably say character 1, 2, 3, 4, 5 And yada yada yada But we don't have to do that When we are done You can also by the way If for some reason And sometimes Unity does this Because as I said It does a pretty good job At slicing all of these But sometimes it will miss And maybe you will see this over here

**28:20** · So it's not On your game object Holy So it's not circling your game object But you can do simply You know Change these You can move them And you can you know Position them over here You can zoom in To see where you're going to position them So that you position them correctly There you go And over here as well We can do that So on and so forth So you can you know You can correct the errors

**28:45** · That Unity has done But that rarely happens It depends on your image Most of the times But as I said That rarely happens So simply slice and slice And there you go And then click on the apply button Which is right here Here is the apply button So over here Click on it And there you go Which means now I can go back over here And I can use

**29:07** · All of these characters On their own So now you will see When I go in the game tab We have a single character As opposed to having All of those characters At once In our game Same as we had You know A moment ago So this is how we can separate

**29:23** · Individual sprites From a sprite sheet And use them In our game Of course If this is a game We are creating Not an example That we are currently going through We will add A rigid body We will add all of those components Don't worry about that That will come And that will form A game object Or that will form Your character In the game

**29:46** · One thing that I want to point out Before we continue Is that you can have All of these images Separated So this can be image on its own This one can be an image on its own And you can import them As Three, six, eight So we have eight Images over here You can import them As eight different images

### Rigid Bodies And Colliders

**30:04** · But as I said When you put them here In a sprite sheet That is more efficient When it comes to Memory In your game When it comes to performance And all of the other stuff So it's a lot better To do it like this But I'm just going to You know I had to say this Just so that you don't think That this is the only way To import images Inside of Unity And then you would also Create animations By dragging all those images And we will see that In a moment But first Before we do that I want to Show a couple of components

**30:33** · That we have That I briefly mentioned Such as a rigid body So in our game We will want to simulate physics And physics I don't have to explain it It gives You know Physics to our game objects It applies gravity to it Forces can affect it You can interact with it

**30:50** · And all of the good stuff And in order to do that As I already said You simply go here Select the game object Inside of the hierarchy panel Because if you remember When we introduce the hierarchy panel It represents All the game objects in your game When you select the game object That is in the hierarchy Here in the inspector panel You will see All of the component And properties That are attached to it

**31:13** · Currently we only have the transform Which is the default one We saw that And now we have the sprite render And we already explained that So next you are going to click Here on add component And here In here in this little search bar You can filter for rigid body But you can also do this You can go over here And you can filter for these Options that you have

**31:34** · So over here we have physics 2D You can click on that And here you see all of the things That we have But usually You are going to type here In the search bar Because it's a lot faster So simply going to type rigid body Now one thing that I want to point out That is You will see over here And well it went away Since I took my annotation Anyways You will see here We have a rigid body And rigid body 2D That rigid body 2D

**31:58** · Is self-explanatory But rigid body is for 3D I don't know why that Input rigid body 3D And rigid body 2D But anyways 2D is for 2D games 3D is for 3D games So if you're creating a 2D game Don't confuse And put a rigid body Which is for 3D On your game object So I'm going to select Bridget body 2D And that's all there is to it Over here you will see On the rigid body We have a few options So we have the body type Which is dynamic Kinematic and static I will talk about that in a moment We also have over here

**32:28** · For the mass Sure We set the auto mass We can set it on our own So currently it's one Or by default It's one we can set it in 1000 Whichever number we want Linear drag Endered angular drag Gravity scale Basically gravity scale is You know How much gravity is applied On our player If we set that to negative size Or negative value It will draw the player up So it will move him up And not down Because we know gravity pulls you down So over here we also have constraints

**32:58** · If we want to freeze the position For x and y And freeze the rotation for a disease So that will not allow our Character to rotate And move And so on and so forth We will explore this Don't worry about that But I want to show you one thing If I hit the play button now We will notice that There you go You see That our game object fell And it's over here See it's falling down And why is that?

**33:20** · Well Because we applied a rigid body on it It pulls him down It's gravity as I already said Now in order for us To land on something We need to have a collider And for that I'm going to right click over here And create an empty game object Which I'm going to call I don't know Ground Collider And even though it's an empty game object

**33:42** · We can still attach a collider on it So we can select it And we can go here in the inspector And we can filter for collider And I'm going to select box collider 2D So you can see the shape is a box If I select it It's a box And over here Inside of the inspector You have options So we have the offset You see This is offsetting the box Even though it's not moving the game object From its own position You have the size So if I resize it You will notice now The box collider is bigger One thing that I want to point out

**34:12** · Is that in the scene view Because we are laying out our game objects We can see this box Visually But in the game We don't see it You see in the game We don't see it If I hit the play button We will notice now That again Our character fell down And now you're going to think that I'm crazy And you're going to be like "Teacher, but you said it's not going to fall down"

**34:35** · Listen I know I'm crazy But that's another story But as I said We need a collider And we need a collider For our own game object as well So no matter if it has a rigid body If it doesn't have a collider It will not collide With a collider So even though this ground Is right below our character This fluffy thing We also need to select it And go over here And we can filter for colliders And we have something called A circle collider 2D Which is going to You see Be a circle Or circle it around

**35:07** · Now Which colliders you want to apply Will depend on The shape of your game object So if you have a cube Or something that is similar to a cube You're going to add a box collider If you have A circular game object Like this one over here You're going to apply A circle collider So over here I'm also going to Change the radius Because we have a lot of options here That I encourage you to play Inside of the inspector panel

**35:33** · And that way you will learn Faster and more efficient and better I'm just showing examples over here But when you play with these You will notice What is going to happen So now if I hit the play button That we have attached the collider On our character Bam You see now They are standing on each other And here is our character And if you look at here He is standing on an invisible ground If I select the ground Collider over here You will notice And for some reason It is not showing up Here is the ground Where is the ground collider?

**36:03** · Here it is For some reason It didn't show it right away But anyways You can see that he is standing Right on the collider Of this game object And if I select the character As well You will notice How their two colliders Are overlapping

**36:19** · With each other Of course in the game It will not look like this You will probably have a ground So it will similarly Look something like this So he will be standing On some type of ground Which is also a sprite component As well Now I want to show you another thing And that is When I select the character Over here Inside of the collider You will notice one thing We have something over here Called Is trigger And it's a checkbox What will happen If I check that checkbox

**36:46** · Well let's find out I'm going to hit the play button And now again You will see That my character Fell through The ground collider Even though It has a collider So what's going on?

**36:58** · Teacher again Use it Don't cry Don't panic I'm going to uncheck That it's trigger Basically Later on in the code We are going to see How we are going to detect These collisions Between game objects Because this is currently a ground But imagine it to be A collectible item A coin Or a health item Or whatever We need to know When these two Touch each other Inside of our game

**37:24** · And in order to do that We are going to go Or we are going to use code Now one of the ways To know that Is by checking this Is trigger checkbox Which is over here And later on in the code We are going to use something Like on trigger enter It's a function That's called On trigger enter That allows us to detect Which game objects Have collided with With which game objects And a trigger collider Is not a solid collider As you saw a moment ago It can pass Through other colliders But still detect collision

**37:56** · Why am I showing you And telling you this Well because Imagine you have a collectible item You want it Not to be a solid collider You just want to Collect it And there you go You don't want to hit it And be bounced off it Or something like that So for that We are going to use Trigger colliders But don't worry about that We will see it with real World examples later on What it comes in the game

**38:18** · Next on the menu We have the audio source And I removed all the components That we used previously And if you're wondering How you can remove a component So for example If I have a box collider Over here You are simply going to Click here Where are these three dots On the component itself As you can see over here These three dots When you click on them You will see this Remove component And voila That's all there is to it Next I'm going to click on here Add component And I'm going to filter For audio source

### Audio Source And UI Elements

**38:46** · And this is a component That will allow us To play music in our game Sound effects And all of the other stuff Of course Now as you can see over here We have one thing Which is audio clip And it says none Because we didn't attach any The audio clip is your mp3 file

**39:05** · WAV file Whatever file That plays audio sounds And you attach it over here And then this audio source Will play it You have other options Over here of course To mute You have options to play on Awake Which means as soon as we run The game it will start playing We have loop To loop it over and over again You have over here the volume The pitch And so on and so forth You can play with these And these all Are accessible via code And most of the time We will play these via code

**39:33** · Now as an example I have one sound effect Over here And I'm going to select the character And by the way I have attached this Audio source on the character But you can attach it On whatever you want You can attach it On your grandma If you want that Okay Just kidding But anyways You can attach it Wherever you want to attach it You will have probably

**39:52** · a game object Called BG music Sound effects Or whatever And you will attach The audio source components On them And if I drag now this Piano audio clip And I put it over here If I run the game But before that Let me just lower the volume A little bit So that we don't you know Go that Here we go So this is

**40:13** · Playing audio in our game And this is also If the game is run On a device Mobile desktop No matter what Or which device It will be Played the same way Of course as I said This can be Controlled vi code Where we write code Audio source dot play Stop And so on and so forth And it will play And stop This audio sound

**40:36** · As well So I'm going to remove This component And before we You know Go into the nuts and bits Of coding And all of the good stuff I want to show you Another common component That is used all the time Which is UI elements And if I right-click over here

**40:51** · You will go under UI And then over here You have the UI elements You have the text You have the text max Mesh pro I cannot pronounce I don't know how to speak We have the button We have the image So let's start with the image I'm going to click here Now one thing you will notice Is You see this big thing now

**41:08** · Over here This big Rectangle Whatever is called That's the canvas And the canvas has Its own options You can see over here When I clicked on the image It automatically created a canvas Because every UI element Needs to be a child of a canvas And it also created an event system Which is responsible For detecting input On UI elements Now the canvas has a few options over here

**41:32** · For simplicity Because we will talk about that later On for simplicity I'm going to select the canvas And change this screen space Overlay to screen space camera And I'm going to attach The main camera over here Just so that we can You know Make it a little bit You know Smaller Because it's easier to interact

**41:49** · With a smaller canvas Just because of the visuals Anyways This is our image And you will notice it If I select the image And I can move it Left and right If I can select first I can move it Left and right Up and down And you will notice it Wherever I move it It will be present here Inside of the game Of course We can select the image And over here We can attach a sprite So let's go Over here Inside of our sprites

**42:16** · And over here I'm going to drag I don't know Let's say character one The same one we have over here And I can click this set native size Which will set The native size With and height Which you can see over here Width is 150 Height is 119

**42:32** · And you will notice it This right here Is our UI element On the left side And on the right side Is our game character And of course This is our own character You can use it for example We can position him over here At the top left corner And he will be used to represent

**42:49** · Health status Or whatever Same way this can be a coin Representing how many coins we picked up And so on and so forth You get the point We can also create a button I can right click over here And we can go under UI And we can create a button And voila There is our button Our button can be also resized So we can do something like this We can resize it We can select the text Which is inside of the button We can say for example Play game Or something like that And I can resize it over here

**43:19** · There you go If I hit the play button We can press the button If I hit the play button We can press And you will notice It is blinking Which is indicating That we are pressing it And I'm currently pressing it And I'm pressing it with the mouse button But same way You can press it with your finger On mobile devices And it will work the same Of course later on We will see how we can execute Functions and code When we press a button Now another UI element

**43:46** · And that is going to be the last one That I'm going to introduce over here Is a text Now we have a text We have text mesh pro We will talk about both But currently I'm just going to show you the text one Which is a simple text You can move it Left and right We can resize it Like this There you go We can over here Inside of the inspector We can type whatever we want Whatever I want

**44:08** · And I can change The color The font over here You see We have some fonts Actually we don't For some reason Yeah We have only the default aerial one But we can import our own fonts Whichever font you find online Of course that is permitted to be used

**44:25** · Commercially Or if you buy it And over here you can set it to be normal Bold italic You know If you use any text Editor You know what I'm talking about You know what this is And since you're on a computer You're probably used one Over here you can change the color of the text So for example We have it to red one And you see whatever I want And this is how we are going to represent

**44:48** · Text in our game For example How many lives we have How many coins we picked up What is the current score Sun and so forth So these are the three Most common used UI elements Of course we have many others So over here in the UI You see we have raw image Button, toggle, slider Dropdown, input field And all of the good stuff But I wanted to cover the most used components

**45:15** · In these two or three videos Which are rigid bodies Sprite components Or sprite renders Audio sources And these UI elements So these are the most used ones Basically the components You cannot create a game without So yeah This was a brief introduction To those components Later on in our game When we start creating things Make it interact with each other We will you know Introduce them in more depth Use them via code And all of the good stuff

### Moving Our Character With Code

**45:47** · Ok so now we're going to get into the scary part And create a full game in two minutes And I'm just kidding Of course we're just going to go briefly And see what scripting is But before that When you download Unity You also downloaded Visual Studio with it So just make sure over here Under Unity and Preferences This is for Mac For Windows it's Edit And Preferences are somewhere over here But you are going to go under Preferences And let me just open this window nicely

**46:12** · So there you go Here you have External Tools Here it is Visual Studio for Mac So there you go And if you do not see it By any means over here You can click on Browse And you can locate your app And just you know Select that for example I can go in Applications And from here You know I can find Visual Studio or whatever

**46:33** · So here it is And click on it And there you go So do the same thing for Windows Just make sure that external Scripting Or script editor Is your Visual Studio You can also use Visual Studio Code But that is your own preference So going back over here Inside of my Script folder I already created a player movement script And before you start judging me And tell them me I'm crazy Which is something we already know Just right click over here And go on Create And click on see Sharp Script And when you click on that Just give it the name So Script Name

**47:05** · There you go And then simply double click it And it will open in Visual Studio I am going to delete this Because I have the player movement And I have created it In the exact same way I just showed you So I am going to double click it And it is going to open over here So what do we have here?

**47:24** · Now don't worry If you don't understand all of these things Do if you don't understand what it is And over here I just wrote class Do not worry about that All of this here Is not important That you understand it right away Because after this We are going to go into C# And learn it step by step But what I'm going to do Is I am going to create a public float Speed variable And I'm going to say That is equal to 5 by default Why?

**47:51** · Well because we are going to go Inside of Unity And I am going to select the character Remember I told you that here When you select an in inspector You see all of the components Attached on that game object While our script is also a component So I can attach it over here And there we go We have it And we also see this speed variable Which has a value 5 Which is the one that I created A moment ago This over here So what do I want to do Inside of this script?

**48:23** · I am simply going to move the character And we are going to move it By using a float Which I am going to say H is equal to input So input If I can you know Type it correctly Get access horizontal There you go And I am also going to say Float V is equal to input That get access vertical What is this?

**48:46** · Again, do not worry It's not important that you understand Everything right away what it is But basically with input We get the input from the user Get access and passing horizontal That means we will get input For the A key So I am going to go over here For the A key And I am going to put them in a comment A key D key Left arrow and right arrow That is the horizontal input Basically moving left and right

**49:11** · And the V key is Exactly that Up and down Vertical is Up and down WNS key So now what we can do is We can get the position of our character We can say vector 3 Or vector 2 position Which is So I can say POS is equal to Transform that position Transform that position

**49:34** · Is basically And again It's not important that you understand Right away But I am just telling you How things are connected So if I go back over here Notice that we have our transform Which is our default We know that it's our default Component attached on our game object

**49:51** · On every game object that is So it has a property position Rotation and scale And we are using the position Which is going to tell us The position of our character Inside of the game So next what I am going to say I am going to say POS dot x So the x axis of the position Plus equals H multiplied with time dot delta time

**50:13** · And our position dot y Plus equals V multiplied with time dot delta time And then what I am simply going to do Is I am going to say transform That position is equal to POS And here it's not POCs It's POS So what is happening over here I am getting the input Should we go left Or right Up or down And I am multiplying that value With time dot delta time Which is basically A value

**50:44** · Or a time frame You see over here The completion time in seconds Since the last frame Basically time between every frame And you will notice here The update function is called Once per frame Which means If we have 60 frames in a second It will be called 60 times

**51:00** · So we are using this To smooth things out To smooth out the movement And we will see of course this later on In our game Do not worry about that I am just showing you basic things How it works So you don't get scared Because people are usually scared Because of the coding And all of the good stuff And how scary it is So if I hit the play button now

**51:22** · We will be able to move Our characters You can see left and right Up and down And also when I select him I can change the speed variable So I can change it to 10 from 5 And now he will move a little bit faster Let's change it to 50 And now he will move even faster

**51:41** · So this is how we can change And let's go over here Turn up the game And change it to 20 like this Because I think I was not Feeling the change in the speed Yeah, actually we need to just Simply put a higher value So there you go So now he is going to move Let's say a thousand So he will move faster Anyways This is how we can move a character

**52:06** · It's very simple You can see him He is moving inside of the game And this is how it would look like On a real mobile device Or on a real Desktop device and so on And so forth So let me just try it like this Private float instead of So I can say private When you set it to be private We will talk about this Then it is not visible anymore

**52:30** · In the inspector panel So over here, oh actually This is why it didn't work Because I am stupid We need to do this Over here 5 And then f I need to do it H multiplied with time That delta time But before that Multiply it with speed And then multiply it with time That delta time And same thing we need to do Over here So I forgot the speed variable That's why it was not affecting

**52:57** · The movement Or the speed of our character You see how This all of this is connected So this is how things work So now I'm going to set the speed back to 5 And go over here Now when we change it It will move You see now he is moving a lot faster And if I set the value to 10 There you go See he is moving a little bit faster I'm not even going to set it to 100 Because then it will move like crazy

**53:21** · But basically this is it This is You see a few lines of code 1, 2, 3, 4, 5 6 lines of code And we are already moving Our game character With only 6 of these lines As you can see over here And they are not large lines Like you see from the images And online And so on and so forth But again Don't be overwhelmed

**53:43** · Don't think that you need to understand All of this right away I'm just showing you how simple it is For us to perform A movement of our character The same way we would perform a jump Or a crouch Or a sprint Or whatever So this is how things work

**54:00** · Of course Now we're going to jump into C# And then we are going to learn How things work And all of the good stuff And we will go back and forth When we explain things What this here is How it works And so on and so forth So that way Everything will be clear Before we jump into the real world

**54:18** · Projects that we are going to create In this course Moving forward From the basic programming example We saw in the previous video We are going to dive into programming But before we do that I just want to emphasize I am going to use The same project we did so far But it is not mandatory For you to do the same thing I'm saying this because I did something similar In one of my other courses People got confused But anyways You can create a completely new project

### Introduction To Variables

**54:46** · From scratch Or you can use the one That I'm currently using To follow along What's important for you to do Is in the scripts folder You're going to create A script called Learning how to program And I've cleaned the script I've removed the two functions You can do the same thing And I will explain what Our functions later on But first We are going to talk about variables The variable Or a variable Is a foundation of programming In order for us to program at all

**55:12** · In order to represent anything We need variables And these variables Are numbers And characters And bullions So Which types of variables do we have?

**55:22** · We have a float variable So that is one Of the variables that we have And a float Is a decimal point number Which is If I go back over here I'm just going to use this as a reference The project we did We used a float To make a speed variable

**55:38** · Or we used float To create speed For our game For the movement of the player So floats Are decimal point numbers Now over here I set it to be equal to five But that's still A decimal point number So over here I can say for example Speed is equal to five And as I said That's still a decimal point number We can say five Point zero F like this For a float If you are adding These point or decimal numbers

**56:03** · You need to denote that It's F float Because we also have a double And I'm going to call it I don't know Health for example Which is equal to 100 Like this So for a double We don't have to add F at the end And they are both Decimal point numbers The only difference is That a double Can go up to I don't know Let's say Up to this many numbers In decimal points Something like that And a float can go up to this number

**56:31** · And this is just my rough guess I don't know 100% But in unity Most of the times We'll use floats Now before we proceed Let me just denote this Or break it down So over here We have a float And this is a type of variable So it's a type In order to declare a variable We first need to declare It's type Then give it a name And optionally Give it a value Why do I say optionally?

**57:00** · Well because We are not obligated To give a value To a variable right away We can simply say Float speed And there you go And we end the statement Of declaration By using the semicolon Over here at the end So this is a float Type of variable With the name speed And over here This is a float type Of variable name speed With a value of 1.4

**57:24** · So this is how We declare variables First the type of the variable Be that a float Or any other variable From the next variables That you are going to talk about And then we add Over here Speed Or give it a name It doesn't have to be speed It can be Power It can be mana It can be stamina It can be whatever But then you give it a name Because this is the name You're going to use To reference that variable

**57:51** · In your code Later on And over here you can give it a value And I said it can be optional Because Most of the times are a lot of the times You will have variables That you just declare And then later on In your game You assign it a value On the go Okay, so moving forward

**58:11** · The next one is a double And I don't know We can call it mana Which is equal to 15.4 Or 15.5 Basically the same concept Type of the variable Name of the variable value Which is again optional And we said Or I briefly talked about The difference between a float And a double A double is a little bit more precise

**58:33** · But you can research And I encourage you to do that On your own Just go Online type What is the difference Between a float And a double in programming And then you will see But In unity Most of the times We will use A float Variable Moving forward

**58:50** · The next one We have an integer Which is I-n-t So that is A shortcut For writing that type Or basically that's the name Of the type How we write it I-n-t We don't write it Into jr Like this Simply I-n-t And we give it a name For example Health Which is equal to 100 And an integer is A whole number It's not a decimal point Number It's a whole number So we cannot do this We cannot say 100.0

**59:18** · As you can see right away We have this error Over here Telling us that We cannot do that Because we declare an integer It is expecting a whole number Without decimal points So that's an integer And again Type Int And then name And then value Which again is optional The next variable That we have Is called a string And a string is a set of Character So over here we call Or type the type string And then I can say name For example, from our character name

**59:49** · And we use quotes So these two quotes Is where we put the value So for example, I can say Warrior Like this And there you go So this is how we create a string And it is used to represent Text in our game For example, here we Set Warrior And it can be the player name So I can say something like Over here Player name Which is referring to the player

**1:00:14** · Or the character In my game And again, we type the name Or the type Of the variable Which is string And then we type the name Give it a name That we are going to use later On to reference it In the code And then over here We give it a value Which again is optional And we will use strings To find game objects in the scene

**1:00:37** · By given name We will use it to compare tags Between game objects When we want to detect Collision between them And so on And so forth And the last variable That we are going to use Or introduce Is called a bool Variable or a boolean And for example, I'm going to call it like this

**1:00:55** · Is dead Which is equal to true Now a boolean Is a variable that only has One of two values It can either be true Or it can either be false As you can see over here And the name of the variable is boolean

**1:01:11** · But a shortcut Or how we declare it is bool So B-O-O-L And there you go So this is the type of the variable This is the name of the variable And this is the value Of that variable Of course As I said, we're declaring this on top So it can be optional But later on in the code

**1:01:33** · In our game we add values to it We will see examples of that We also have another Variable which is called char Which is a character And I can call it one char And basically a character And this one char is, for example, like this So it only stores one character But most of the times we will use strings And I say most of the times I'm using Unity for seven years And never once have I used a char variable

**1:01:58** · In my game Or in the tutorials that I'm doing But I'm just mentioning it here Because probably if you Went Or if you tried to program before You probably saw this variable Or maybe you saw it in another tutorial So I'm just going briefly To explain Or I just explained what it is It's basically a variable It can hold one character But we have a string that can hold multiple characters

**1:02:22** · It can also hold one character So w over here Is the same thing The only difference over here When we declare a char We only use one quote Instead of two quotes When we declare a string And notice also On the end of every one of these Variables declarations We are using these Or this semicolon To end the statement If you don't use it Then again You will see over here You will see an error Because it is not Detecting this as the end of the line In the declaration So basically these five variables

**1:02:54** · So we are not going to count in the char Because as I said I'm using Unity 7 years Not once have I used char In my projects So float, double, int, string, and boolean And most of the time It's going to be float, int, string, and boolean So these four variables Without bool And I can put Actually without the double And I can put the double here at the top So these four variables Are the ones that we are going to use

**1:03:17** · A lot And most of the times When we are developing Our games in Unity And again Float a decimal point number Double a decimal point number Integer a whole number String character Holding variable So variable can hold characters From one to more And a boolean Which is either true Or false Now before we end this video I also told you that We are going to talk about comments And what are comments?

**1:03:44** · Well, when you first created this Class or this script You saw those green letters With double backslashes Basically this over here I wrote class Comments are not compiled By the compiler Basically you can write there Whatever you want to write And it will just stay there As a reference And in programming people Use that to denote What that particular part

**1:04:09** · Of their code is doing So for example, over here I can backslash backslash If this is a backslash For those of you who are going to correct me I don't care I'm just kidding But anyways Over here Write anything You want There you go And this will not be compiled

**1:04:24** · By the compiler We would not have any errors for this And as I said You use it to Note down What a particular part Of your code is doing You can also write comments Like this with the backslash And then star And star and backslash again And now anything you type over here Anything So anything in between

**1:04:46** · Is a comment So you can also write a comment like that And you will notice When you first create Script in Unity You will see two functions One is start And another is update And you will see two comments Above them So a comment here

**1:05:02** · And you will also see a comment For update I cannot remember exactly what the comments say But they are comments And as I said Backslash So two backslashes And then you can write Anything what you want to write So for example Over here We can do something like Main variables

**1:05:21** · For class Something like that And then you know What they are And over here You can end them For example And End of Main variables For class Something like that I'm not saying you should do it Exactly like this You will see people Telling you their naming conventions There are other conventions How you use this in your code But what I learned during My own development Is that you develop your own way

**1:05:48** · Of using comments Your own way Of using things How you want to use them Of course If you work in a company You must follow Their own conventions Naming conventions Common conventions How they are using it But for yourself You can develop one Your own and use it However you want to use it Without any problems The main thing is that You understand what they are And you can program with them

**1:06:12** · So basically that's it Let's talk about The scariest part In-game development Which is math And this is something That a lot of people are asking Can I be a program If I'm not good at math Do I need to learn math?

### Operations With Variables

**1:06:25** · Physics on and so forth Listen, this video Is going to show you That everything you need to know About math In-game development Is plus minus Multiply and divide So let's get into it Over here I have my start function And if you don't have it Simply type start like this So it's start But Because I have it It's not going to give it to me So here it is Start and there you go Or you can simply type Voight start Later on we will explain What is private?

**1:06:52** · What is void?

**1:06:53** · What is start?

**1:06:54** · Don't worry about that But just know that Start function Is the first or actually The second function That will be executed When a program runs In unity Awake is the first one But we will talk about that as well What I want to show you over here Is first we need to go Inside of our unity editor And we can use our own character Over here It's not important So we can select a new character Or this one over here Or we can simply create an empty one And we can call it Learning how to program

**1:07:24** · There you go And now we can attach Our learning how to program script On him by simply dragging it Over here Inside of the inspector On the game object itself Why is this important?

**1:07:36** · Well in order for every script To run in unity It needs to be attached On a game object That is a script that inherits From random behavior We will talk about that as well But we need to attach it For this start over here In order to run If it's not attached on a game object Then it will not run So what I want to show you first

**1:07:55** · Before we dive into operations Is that we have two Functions that we can use To print in the console If you remember I talked about When we introduced Programming actually Unity's interface We talked about this console over here And I said that over here You will see errors That you have in your own project And also The debug.logs that you output

**1:08:18** · So there are two ways how we can do it We can use print over here Or we can use debug.log Both of these take a string Which is a double code That we learned in the previous video So in order for us to print We use a string And over here I'm going to say This is from print Like this And over here I'm going to say This is From debug.log

**1:08:42** · So that we know From which is printed So if I go back in unity In order for this to work We need to hit the play button When we run our game By clicking the play button There you go So we see here This is from print This is from debug.log So you can use either of these

**1:09:02** · It doesn't matter You can use both We will probably use debug.log Most of the time But from time to time You see print And vice versa Don't worry It's the exact same thing So now that we know How we can print out messages To the console Let's perform a few operations So over here I can declare an integer A And I can declare an integer B First A is equal to let's say 10 Int B is equal to 5 And we can have an integer C Now this integer C can be a product

**1:09:34** · Of these two It can be 10 It can be C is equal to A plus B For example It can be equal to C Is equal to A minus B Or A divided by B Or A multiplied by B That's all there is to it Basically, I can sum it up In this single sentence That's all there is to it For more complicated operations Like math Or actually sign And cosine And calculating angles

**1:10:02** · You have built in functions for that And you have Stack Overflow And Unity Answers For that as well So you don't have to worry about that And every single programmer In the world uses these resources So don't think Less of yourself That you're not a programmer If you use them So let's do it like this Over here we can say A plus B

**1:10:24** · Is equal to And notice now Because this is a string We cannot simply Add over here C So we cannot say it's equal to C And here I'm going to say A plus B like this We cannot say it's equal to C Because this will print out In the console It will simply print out A plus B is equal to C If I hit the play button We will see that now Inside of the console over here There you go A plus B is equal to C We don't want this What we want We want to display this result And how we can do that Is by using strain concatenation

**1:10:56** · That basically means We are adding to the string variable A variable that's not a string Or it can also be a string But we're adding to it Another variable In this case an integer So over here we can say A plus B is equal to C And now outside of these quotes So outside we can say plus

**1:11:14** · And then we can say C And there you go This is going to concatenate Or merge This string With this integer And it will merge it And create a new string Out of these two So if I go back now over here Notice the difference Currently we have A plus B is equal to C If I hit now the play button We will notice in the console A plus B is equal to 15

**1:11:41** · There you go And we can also do it like this So we can say something like I can remove this from here And I can say A Which is the integer plus And over here With a space In these quotes Because we want to separate them It's like writing So think of it like this If I say A plus B

**1:12:04** · I want to separate them So space here, space here In order to do that I'm adding space Between these two quotes So A plus And over here I'm going to add the plus sign So A plus And over here plus B And again plus And in quotes Again U space is equal to And then space And then plus C So essentially what we are doing

**1:12:29** · We are concatenating this integer And this string With the B integer With this string And lastly with C So now over here We can add Whichever numbers we want We don't have to type them over here As we type them a moment ago We don't have to say debug.log And over here We need to type 10 Plus So 10 plus 5

**1:12:54** · Is equal to Actually we typed A plus B But we don't have to type it like this 10 plus 5 And then it's equal to And then plus over here C Because now if we change the number Over here to 11 And over here we change it to 7 We need to do the same thing over here So 11 And then 7 There you go But if we're using this over here

**1:13:14** · We don't have to change These values There will be automatically change By changing them over here So I can remove this And now 11 plus 7 Is going to be 18 If I go back over here Let us just wait for unity to compile everything Hit the play button We will notice 11 plus 7 Is equal to 18 Same thing We can do For example 20 And over here I can say 5 And I can say C is divided

**1:13:41** · So A divided by B And over here I'm going to instead of plus Add the divide sign So if I go back Now we're going to calculate 20 Divided by 5 That is going to be equal to 4 There you go So 20 divided by 5 Is equal to 4 We can do the same thing with multiply So over here we can multiply Over here we can change that If I go back

**1:14:06** · Inside And I know this is a tedious process When it comes to going back and forth But this is how it works We cannot speed it up Except for us to have a faster computer And mine's pretty fast So be thankful Thank you teacher Anyways 20 multiplied by 5 Is 100 And we see all those results Inside of the console We can also use the minus So 20 minus 5 And again we can go back Inside of unity And I can hit the play button And we will notice 20 minus 5

**1:14:39** · Is 15 Now one thing that I want to notice Or emphasize For example If I have 7 over here And we use the divide Because this is not the decimal point Number then integers are whole numbers They will round up to a whole number Even though 20 divided by 7 It's less than 3 Because 21 divided by 7 is 3

**1:15:00** · But if I go back now It is going to round it To the closest number Of the decimal point number It is So over here 20 divided by 7 It's 2 Which brings me To the part of precision So if you want Precise calculations Decimal points You will use float So over here I'm going to use float And over here I'm going to use float And float And there you go So now instead of this calculation

**1:15:28** · Being equal to 2 So 20 divided by 7 It's 2 If I hit the play button Now it is going to calculate 20 divided by 7 It's equal to 2.85 And these other decimal point numbers But we are interested in the first two So 20 divided by 7 Is as you can see A decimal point number That's why now You understand Why we have decimal point numbers

**1:15:51** · Why we have integers And all the other variables So some variables are used For some things And others are not So for example over here In order to calculate A number A precise number that we need In this case we need to use a float Because an integer is a whole number It will round up To the Full number And it will not display the decimal pointed Numbers after it And same thing works for the multiply

**1:16:19** · And subscribe Subscribe Multiplication division And addition Not subscription Additions So if I hit the play button And over here it says 7 divided by 20 divided by 7 It's 140 I forgot to add over here The multiply But you get the point These are the basic calculations

**1:16:39** · Or operations Mathematical ones That you need to know In order to program In unity And generally in programming It's not the scary thing That a lot of people think And believe Oh you need to know this Or that Look at me I was one of the worst kids

**1:16:54** · In math And physics Overall in elementary In high school And even in college But I'm You know I'm living out of game development I'm earning money from this From my games From my YouTube channel From game development overall And I'm you know Supporting myself And I don't know math So you can do the same thing Same exact thing Anyways This is When it comes to Operations with variables Now you can And I encourage you To experiment on your own

**1:17:23** · Try these operations Also try these String concatenations In order for you To memorize them faster And be And be acquainted to them Or get used to them And again String concatenation Is by adding Or using + to add to a string I can do something like this I can also say string I don't know Let's say a is equal to

**1:17:46** · And over here I can say a And I can say + a Like this You see I can say a letter + a Which is a float variable Number 20 And it will add that And it will create a string From that So basically Think of string concatenation Just adding + In the string In order to append to it

**1:18:05** · Or merge two variables Into one variable It works with floats It works with integers With doubles It works also With other strings You can have over here String I don't know name Which is equal to Carl And you can have string Last name Which is equal to Florian And you can have a new string Out of these two So you can have a string Full name Is equal to name + last name

**1:18:34** · This also works So it doesn't have to be Only numbers In string concatenation Two strings Work with each other As well So just I encourage you To practice that A little bit Stop this video right now Don't move on to the next one Just practice this Write down Some basic operations Debug.log them Concatenate them with a string And that way you will learn And memorize them Much faster Using the example from the previous video Where we perform the operations

### Functions

**1:19:04** · With variables We are going to demonstrate A new concept Which is called a Function Or grouping a block of code What do I mean by that?

**1:19:13** · Well for example over here We have float A and B And we want to calculate float C By adding A and B And this can be a tedious process So for example We need to call this code In Let's say 10 places In our project Now it can be a tedious process For us to do all of that So instead What we would do We would group a code In a function So what is a function?

**1:19:37** · How do we declare a function?

**1:19:39** · Well over here You're exactly You're looking at a function So this void start Is a function This is a built-in function Basically inherited function We will talk about that When inheritance comes Don't worry about it But this is a function And in order to declare a function You type void Which means the function Doesn't return anything And we will get to that Don't worry about it So you type void Then name of the function We can say for example Over here Calculate numbers

**1:20:08** · Or two numbers Like this And then open close parenthesis Open close curly brackets This is a function This concept or this struct Over here that you see Is called a function Now any code that we put inside Will be executed What do I mean by that?

**1:20:27** · Well we can simply say Debug.log Just for the sake of it For the sake of the Example we can say printed from function From function And instead of us calling this over here

**1:20:43** · We simply need to call The name of the function I'm going to call it over here In the start method Because we know In order for the game to run Or start function Is the first function That will be called Awake is actually the first one But we will get to that Don't worry about it But for initialization You use start So go over here And hit the play button We will notice In the debug.log Printed or printay I didn't add D at the end And I don't want the D at the end

**1:21:09** · Okay, don't judge me Anyway he's moving forward We have over here Printed Now printed from function Which means When we call this Actually it will execute the code That we have over here So this is what is a function

**1:21:27** · Think of a function as a basket That holds your code So instead of us doing all of this over here We can simply add it Here inside of our function And there you go We can remove it from here And I can simply use the sum is And I can say the sum of A and B So removing this from here I can say the sum of A and B is

**1:21:53** · Call on and over here plus C So that is going to be the sum of A and B And we can go over here Inside of our Unity editor Let me clear the console So that we don't see anything Hit the play button And we will see the sum of A and B Is 22 We can also use the sum of

**1:22:13** · You know over here Add a Pand A Or candidate A and B To see the numbers But that's not important The important thing is Now we don't have to call These three lines of code Everywhere in our project Instead we can simply call Calculate to numbers Now this is a basic set up Of a function And this is called a normal Basically no name But I'm giving it like a name A normal function That means it doesn't return Anything which says here void And it doesn't take parameters What does that mean?

**1:22:45** · Well that means For the returning part We will come to it Just wait But for the parameters Let's say over here We have float A and float B Which have values 10 And what if we don't have to calculate We don't want to calculate 10 plus 12 Maybe I want to calculate 30 plus 2 Or 100 plus 3 And so on and so forth What can we do there?

**1:23:12** · Well over here I can say For example void Calculate So calculate two numbers And here inside of these parentheses Open closed parentheses And over here inside of the parentheses I can say float A And then I can say comma float B So now instead of me Calculating rough values

**1:23:39** · Or hard coded values From A and B A and B are here And I can say something like The about that log And I can say the sum of A and B Is over here plus And in parentheses I can say A plus B We don't have to create C In order to do this You can do the calculation right

**1:24:00** · Here in parentheses Because then it will calculate A plus B and it will append that Into this string So over here now I'm going to comment this out And by the way I You know Selected this line of code And command and backslash On windows it's probably Control backslash Or you can look it up on Google It's not important So now I can say Calculate two numbers Instead of using The default one Which is 10 and 12 I can say I don't know Let's say calculate 30 And 22 So now this will give me

**1:24:32** · A result of 52 If I go back Inside of Unity Wait for the painful compiler To compile And hit the play button We will notice now In the console The sum of A and B Is 52 So this is a function That takes parameters Over here I'm going to Add a comment of function That doesn't That doesn't Return a value And doesn't take parameters

**1:25:03** · Parameters Parameters There you go And over here This is a function That doesn't take So a function That doesn't Return a value But takes parameters Now one thing That I want to point out Over here is that I've used two floats As parameters You are not limited by that You can add whatever

**1:25:30** · Want from parameters It can be 10 floats 400 floats Whatever And they don't have to be floats It can be two integers It can be Booleans It can be strings Later on When we talk about objects They can be objects Just remember That parameters over here Can be whatever type You need it to be Maybe you don't need To calculate two floats Maybe you need to calculate Two doubles Or two integers You get the point Now let's talk about

**1:25:57** · The third type That I call a function That returns a value So over here I can say float And I can say return To numbers Numbers So numbers Like this And I can return a float And over here I'm going to Add a return statement Because a function That returns a value It needs to have a return statement So I can say For example 20+30 That can't do Notice the difference

**1:26:23** · The difference is Over here I've used void So far on these two That indicates The function doesn't return Anything Over here I'm using a float And I'm returning 20+30 And I can go over here I can come and this bad boy out And I can simply say debug.log And from here I can say

**1:26:44** · The sum is The sum is And over here I can say Plus return To numbers And I need to call it as a function So with parentheses And I am appending that Over here in a string And if you're wondering How can I append a function To a string?

**1:27:01** · Well because this function Is going to return a float So essentially This over here is going to be a float And if I go back And I will demonstrate that In a moment Because if I go back over here I'm going to clear everything I'm going to hit the play button You will notice That here it says The sum is 50 Which is 20+30

**1:27:18** · Which is basically what we did And going back to What I said This is a float We can do something like this We can say float Sum is equal to Return to numbers There you go And over here Instead of return this value I can say sum And the outcome Will be exactly the same So what does this mean?

**1:27:36** · This basically means That over here We are returning a float We can Return an integer A boolean A string An object Later on We will see that When we talk about objects We will see how we can also Add objects In these parameters So that can also work But I'm using float As an example And I need to mention this So that you don't think And somebody doesn't get Confused And things that only A float value Can be returned So that is not the case at all

**1:28:08** · So this is a function That returns a value And before somebody asks For what we can use these functions Don't worry about that for now For now just Remember What are functions And how you can create them And for what How they are structured

**1:28:26** · But later on when you create your game It will depend For example You will group all your code in functions When you move a character You will put the code That moves a character In a function called Move Character For example Or something like that You will have a function To attack The enemy

**1:28:42** · From the character So you will create the code for attacking And you will put it in Function called Attack And so on and so forth And the last Function that we have Returns a value So we are going to save float And let me check If I can actually reuse the same name Return to numbers Because I'm not sure If I can reuse the same name And over here I can save float A, float B, comma

**1:29:05** · There you go And now I cannot return I cannot use the same So what I can do Over here Calculate sum Calculate sum Actually No I didn't return it So I need to say return A plus B There you go And yes I can use it now Because you cannot have functions With the same name But over here They are different Because this doesn't take any parameters

**1:29:29** · And this one takes parameters So you can have multiple functions With same name But different parameter types Or different parameter numbers Now this is exactly the function That we would use For a case like this For something Where we need to calculate two numbers Instead of doing all of this What we did so far We can simply do it like this We can say debug.log So that log And over here We can say something like the sum of

**1:29:55** · Or simply sum Is Call on And over here plus So plus Come on It's plus Calculate two numbers And over here We can pass Let's say number 10 And number 20 And there you go Did I call it Actually Return two numbers Excuse me So over here We need to say Return two numbers This function Is not only going to Take these two parameters

**1:30:18** · 20 and 10 Or 10 and 20 It's also going to calculate The sum of these two numbers And return it to us So now I can go back over here And we will see That 10 plus 20 Is actually 30 Which you will be surprised to here And there you go Sum is 30 So A recap What is this?

**1:30:40** · This function returns a float And it takes two parameters Again You don't have to You're not limited by two parameters You can have 10 20 30 40 Gazillion parameters You can have floats Bullions Doubles And it doesn't have to be All floats Or all integers Or all bullions And doubles You can basically

**1:30:59** · Mix them up You can have a float Then an integer Then I don't know A boolean A string An object All that can be parameters On their own Within the same function So don't worry about that Quick recap again So this is a simple function That only groups A block of code For example, over here you can Instead of calculate two numbers You can name this function Player movement Or move the player And over here you will add the code To move the player And instead of typing Let's say you need 100 lines of code

**1:31:30** · For example To move the character Instead of using those 100 lines of code Over and over All over the place In your code You're going to Group all that code In a single function And then use that function To call it In your whole project And that way when you get an error You know that Inside of that function You don't have to go and inspect Thousands of lines of code

**1:31:52** · To find where your problem is Next we have a function That takes two parameters So for example We can have a function Let's say deal damage And over here we would have A damage amount An integer or a float Representing the damage amount To the player So we will call Deal damage Passing the parameter Same way as we did over here And then we will Subtract from the help And so on and so forth Next over here We have a function that returns a value

**1:32:19** · And we return a float Imagine in a real game Where you have a character And he has health stats So for example How high his health number is Stamina, mana, magic We can use the return function To get that value So we can say for example Return health status And there we can return The health value of the player And finally we have a function That returns a value And takes two parameters And over here We pass two floats Again it can be whatever you want it to be

**1:32:52** · So it can be a float It can be a bullet It can be whatever And at the top of my head I cannot think of a situation Practically like For what I can use it But probably You can use it for example I don't know If you Want to calculate Let's say Players stats Or progress Based on his health And mana Or magic or or For example if he can cast some power So you can over here Add a power type Which can be an integer for example And over here you can Check or add the mana of the player

**1:33:24** · And then compare the two So depending on the mana's value If the player can I don't know Cast that spell Or he cannot And this can be a boolean value That you return So it can either be true or false You can say If mana is greater than 50

**1:33:41** · Then he can cast this For example magic And then you can return either that true That is true or false And then you can use that in your code To check If it's true Cast it If it's not true Then don't Again Use this and practice So practice a little bit Create functions You see them over here I'm not going to delete them right now You can see them pause the video Practice Create your own functions

**1:34:04** · And try To understand How they are Basically functions Are just grouping of code Functions that return a value You need to have this return statement That's why they are called Return functions that return a value So you need to have a return And the value that you want to return

**1:34:21** · When you're playing a video game A lot of choices Are being done behind the scenes For example If the enemy is dead or not If the player held is below zero or not Does the player have enough mana To throw this magic or not And so on and so forth And in order to achieve that We use conditional statements So what are conditional statements?

### Conditional Statements

**1:34:41** · Well basically We use them And the most famous one is the if statement And it goes at the x if And open close parentheses And as I was saying We use them to test conditions And over here Open close curly brackets Now here we add conditions That we want to test For example Imagine that we have a float That is called health Which is equal to 100 And this is the health of our character We want to test If the player is dead Or should we kill the player So over here we're going to say If an inside of these parentheses

**1:35:14** · We are going to test If health is less than zero If health is less than zero Over here We can say player Is dead Do the appropriate things What you want to do When the player dies And this is called A conditional statement And we use them To make choices in our game What's important to know

**1:35:36** · Is inside of this conditional statement What you add The condition will either be true Or it will be false Meaning If And over here we're testing So think of it Like when you're coding Think of it like you're talking to the computer So over here you're asking the computer

**1:35:54** · If health is less than And this is the less than sign If you've been to school Even if you didn't If you know how to calculate numbers You know the Less than sign Greater than sign Less than or equal to Equal to sun and so forth These are basic things So if health is less than zero If that is true Code here will be executed So if health is less than zero

**1:36:20** · Then condition is true And then code Code will be code That is here Code that is here Will be executed There you go That's all there is to it So this is a conditional statement Now over here We can add whatever we want But I also want to talk about another thing That is What if this is not true?

**1:36:42** · Well we can continue To add more conditions So we can say If our health Or actually It goes else If our health Is let's say for example If it's less than 50 Maybe if the Health of the player Is less than 50 You want to give the player some boost Or maybe you give him Some weapon that he cannot use If he has full health Sun and so forth So over here Else if health is less than 50

**1:37:09** · Then what we are going to do You can add the code over here And you can go like this forever Else if else if else if And in the end if you want to have Sort of like a default value Then over here you can say else Which means If all of these conditions Here are not true Then else will be executed Of course if you don't want to use it Then you don't use it But if you want to execute something Then you can have a condition like this So basically over here we're testing If our health is greater than zero If or else if health is less than 50

**1:37:42** · Else if Sun and so forth Or else And then over here the code would be executed But one thing to remember is When you're using else That means If all conditions Before this else condition So if all other conditions Are not true And they don't get executed Then else over here Will be true And When I say all other conditions

**1:38:07** · It goes like this When the conditioning starts So when it starts executing It will test If this over here it's true If it's not true It will move to the else if If that is not true It will move to the next else if If you have it And so on and so forth And then at the end If you don't have any more Don't have any more else ifs It will go to the else condition

**1:38:29** · And it will test it Or actually it will not test it It will execute the code That's here right away So when it gets to else It will execute that code right away Now of course over here One thing to remember Is that you don't have to test If health is less than zero You can test if it's less than Or equal to Meaning if health gets to the value That's equal to zero Or below zero That means the player has died You can test if the health is Greater than zero You can test if it's equal to zero So this is how these are

**1:38:58** · The Special characters So how to say These are the characters That you use to test that I'm out of words Okay But you get my point Anyways If it's greater than or equal to So this is the test If it's greater than or equal to This is if it's greater than If it's less than If it's less than Or equal to And lastly If you want to test If it's equal to zero You don't use a single equal sign

**1:39:24** · Because a single equal sign Is used to assign values To variables For example over here We used health is equal to 100 Meaning we have assigned 100 to health And if you want to test If it's equal to So if health value of the health Is equal to zero You use the double equal sign There we go So if health is less than

**1:39:48** · Or actually over here If it's equal to And these over here They need to be true So these statements over here They need to be true In order for this To execute So this is when it comes to the If, else, if, else And you can have a gazillion These else if And so on and so forth Even inside Within an if statement Over here You can have another if And some condition Some condition to test

**1:40:16** · And then you can Perform actions Based on that condition So on and so forth So You can Or while You can nest If statements Inside of each other Don't over nest them So don't have like a gazillion Ifs inside of ifs Inside of ifs And so on And so forth Now another thing That I want to show you Is over here And basically I'm going to go below

**1:40:45** · I said that If, for example, health Is less than zero That needs to be true In order for something To happen over here But we can have Multiple conditions Inside of a single If statement So for example, over here We can test If health is greater than zero And over here we can test Or if health

**1:41:06** · Is, I don't know Let's say Actually over here If it's less than I don't know Let's say 20 And over here Or if health is less than 30 For example Just imagine this is an Example because you would Not test it like this You can just test it If it's less than 30 But of course if you want to Do something For this specific range When the health is At that value Then you will test it like this So these double pipe signs Mean or

**1:41:34** · Which means If this is true Or if this is true So if either of these Conditions are true Then execute the code In here Basically this is a shortcut Instead of typing If health is less than 20 Or actually first If health is less than 30 And then inside We would add another If health is less than 20

**1:41:57** · And so on and so forth You get the point So over here Instead of testing it like that We can do it In a single statement Which means If this is true Or if this is true Then the whole condition is true Only if both of these are false

**1:42:13** · Then this over here Will not be true And the code inside Will not get executed I'm saying this That both conditions Over here need to be true Because We also have the And parameter So over here Actually the operator And which is at the double And sign Which means If health is less than 20 And health is less than 30

**1:42:39** · Basically you would test it If health is less than 30 And health is less than 20 In this case Both of these conditions They need to be true In order for the whole Statement over here For the whole condition To be true If this is true And this is false For example If health is 25 And you will get to the point And over here you will see Health is less than 30 And if health is less than 20 If health is 25 This will not get executed

**1:43:08** · And of course you can use Debug.logs over here I'm just Trying to spare the time Because over here And I want to assign that to you Because I want you to practice And I want you to put this Into good use I'm going to show one example At the end of course But then you will practice on your own

**1:43:27** · But basically in this case Both of these conditions They need to be true In order for this whole statement To be true So when you use the double and sign This means And so if health is less than 30 And health is less than 20 That's what you have over here And over here we can Use a simple debug.log So we can say As I said as an example Health is zero

**1:43:51** · Player has died If health is less than 50 Then for example We can say over here Health is 50 Or less than 50 Unlock some power For a player Something like that And over here else Then the player has Health greater than 50 For example We can say that like that So over here I can say something like Player has health

**1:44:17** · Greater than 50 For example And of course If we go inside of Unity We can see this in action But as I said Then I want you to practice I want you to practice And CLWC player Has health greater than 50

**1:44:33** · And which means This over here has been executed As I said If neither of these conditions Are not executed Or not true Then else will be called by default Which means over here I want you to change the value Of 100 of the health And test out these conditions But that is on you I want you to do that Because that's how you will practice

**1:44:52** · Before I go And I don't mean go away forever Except if I die after this video You'll probably be glad Maybe not Maybe you love me But you know Thank you for that Anyways Here We have another conditional statement Which is called a switch And it goes like this We called switch Open closed parentheses Open closed curly brackets Inside of this switch

**1:45:16** · We add a condition For example The condition can be held So now In order for us to Execute the code We need to have cases And over here We can have a case For example I don't know Let's say case 100 And call on And then break And then we can have A case of Let's say 50 And then break And we can then have A case of 0 And then break What does this mean?

**1:45:43** · Since this is a Float variable We are adding it to the Statement Basically me We are testing the value Of the health Inside of this switch And case Which means in the switch Over here we add the value We want to test Which is health And now we are testing its values Case 100 Meaning The value of the health is 100 What then?

**1:46:07** · Well we are going to say Debug Dot log And over here we can say Health is 100 So health is 100 Case 50 That means the value of the health Is 50 We can say health is 50 And then case 0 And over here we are going to say Health is 0 Because the value of the health Is currently 100 You can imagine What's going to happen When I go back over here Let me just clear the console And hit the play button We will see now Health is 100

**1:46:40** · That's all there is to it So this is switching case Instead of So over here Imagine it to convert it To translate it into if statements We are testing if health Is equal to 100 So this is what we are doing Else if Health is equal to 50 And then over here Else if Health is equal to 0 What about the else The default one Over here When it comes to the switch in case Well the default one Is the default We simply type default And over here break But what is this break?

**1:47:10** · Well break Breaks out of the switch And case Meaning If health is 100 It will go into this case It will test If health is equal to 100 It will execute the code That we add over here It can be You can have 100 lines of code Over here You can have a function That has 100 lines of code So there is no limit to that After all the code is executed

**1:47:33** · That we have The break statement Will be hit in execution And then it will break out Of the switch in case And it will not test Other cases Down below So that it doesn't risk Of executing those Because we already executed One of these cases So the default one We can say Over here Not the default I Was going to type default

**1:47:56** · Over here we can say Health Is Neither Neither of the Values Above Not subbots It's above Which means If I set over here The value to be 101 And I go over here Inside of my

**1:48:14** · Editor And I hit the play button We will see that Health is neither Of the value above Basically values But not value Plural not singular But anyways It's not important You get the point So this is how we can use Switch in case I want you to practice Switch in case And if statements I want you to practice these On your own Use the debug.log Use these statements Change the values over here

**1:48:42** · I've gave enough examples And explain it Please rewatch the video If there is a need to do that And ask questions If you don't understand So that I can explain it But I believe that These conditionals are Easy to understand Because there is not much to them

**1:48:59** · And you can also test the Or And So if Health is less than 20 Or Health is less than 30 And Health is less than sun And so forth You get the points But you change these values By changing these values You will see the output For every of these cases And all these conditions And that way You will understand

**1:49:23** · Much much better So this is what I emphasize So please practice And yeah These were conditional statements One of the things In programming That you will do a lot Is repeat yourself Repeat yourself Repeat yourself See what I did there I'm very funny Anyways But that is true You will repeat A lot of the code That you have in your game And instead of you Retiping it Every single time you want to repeat it For example, over here If we have a debug.log

### Loops

**1:49:52** · And it's dot log Like this If I can type it correctly And over here I want to type something So type Something I want to repeat this 10 times I would do this This and this and this And this and this And this and this And this You get the point Now Just by looking at it You see it's tedious You see it's not practical And you see That you will probably go insane And kill me For showing you this So what is the better solution?

**1:50:18** · Well, a better solution Is something called a loop And a loop Goes like this You type 4 And inside of parentheses You type in i Which is equal to 0 And i is less than Let's say you want to repeat This 10 times I'm going to say less than 10 And over here I'm going to say i plus plus And there you go Now before we all go In the panic mode Let us explain what This over here is That's why I'm going to be a good teacher And I'm going to take the annotate screen

**1:50:49** · And I'm going to draw it for you So you first start with the 4 Which is a 4 loop So this is called a 4 loop Because well You can see over here We have the 4 Now int i Is basically a loop Or a variable Excuse me It's a variable that we are going to use Inside of this loop So this i Which is a type of integer We can use this variable

**1:51:16** · Inside of the loop over here So between This curly bracket And this curly bracket It's going to be the code That we are going to execute Inside of that loop And as I said We can use this i Inside of that loop The current value of the i Is set to 0 Now this is the condition Of the loop So the loop has A declaration A condition and iteration

**1:51:40** · So this is the condition The condition is As long as i Is less than number 10 We are going to loop that number of times In this For loop And every iteration We are going to increment i By one Now if you're wondering i++ What the hell is that teacher?

**1:52:00** · Confuse me I never saw that in math Well i++ is a shortcut So for example If I have for example over here Int i is equal to 0 And I want to increase it by one I can say i Is equal to i plus one That is totally legit It will increase it by one So it will take the current value of a

**1:52:19** · And I said previously i I know that Don't judge me Plus one But a shortcut for that Is simply saying a++ And there you go So now This variable Is increased by one It says plus plus Which means add one To that variable So add one To that variable And we can test it out So I can use the same things I can say debug.log As we did a moment ago And I can say this The value of i

**1:52:48** · Call on And space Plus And I can add over here i Which is this one over here And we can see this in action So if I go back over here In my Unity editor I can go into the console And hit the play button So that we can see What is going on over here And there you go So you see the value of i is 0 Then 1, then 2, then 3 And it finishes at number 9 Now before you say But teacher You said over here As long as less than 10 Yeah, but it started from number 0

**1:53:16** · So it goes 0 1, 2, 3, 4 Up to number 9 If it goes from 1 That it will be 1, 2, 3, 4, 5, 6, 7 And I can't count I know that But if it starts from 0 It goes from 0 1, 2, 3 Up to number 9 Which in total And you can count this In total over here We have 10 iterations So this is a for loop

**1:53:39** · Now for what we are using a for loop As I said When we have a code that we want to repeat When we have arrays That we want to iterate In the next video We will see what arrays are Don't worry about that And things are going to start to click And you will see How we can implement All of these things That we are using Now another Type of iteration That we have So a loop Basically is called a while loop

**1:54:07** · And don't worry I will recap this But I believe it is Crystal clear There is not much For a for loop For example Over here I use the hard coded value of 10 You can have a value over here For example Int iteration Time Is equal to 10 And over here I can use instead of 10 Iteration time Which means It will iterate This many times And I can just change this number If I say here Number is 100 This means that this loop Will iterate 100 times And the code between these two

**1:54:38** · Curly brackets Will execute 100 times Basically how many times The loop will iterate Depends on the condition That you have over here It can be less than Or equal to as well It doesn't have to be less than It can be less than or equal to As well So this is basically The condition set up That you can set up The condition set up That you can set up I mean For your iteration

**1:55:05** · This is for the for loop Now going back over here We have also another type Which is called a while loop And it goes like this While in curly brackets Actually in parentheses Then in curly brackets So over here The condition that we add In a while loop It needs to be true For the While loop to execute So over here If I want to do the same thing I'm going to take this And I am going to paste it over here Except I need to remove The value of i And now If I were to run my game

**1:55:36** · This will probably crash My computer Why?

**1:55:39** · Well because This is a while loop That will never end Its condition is forever true And yeah We will execute this A gazillion Gazillion Gazillion times Until my computer explodes I don't want that Neither do you So how can we set up A condition that will Actually expire?

**1:55:56** · Well we can do it like this We can say Int i is equal to zero And over here We can say As long as i Is less than 10 For example We can debug that log The value of i Plus i But over here Inside of the while loop We need to make sure That this condition will Eventually Get to be false Otherwise again This will be an infinite while loop So over here I'm going to say i plus plus So this is the equivalent

**1:56:25** · For this over here It's going to Spit out the exact code Not going to spit it actually It's going to write it down But you know I'm slanging over here If i hit the play button You will notice That the same values are printed You see From zero, one, two, three, four, five, six, seven, eight, nine So the same values are printed But it's a different loop

**1:56:49** · And again When we are using while loops We will see a lot of examples For that Do not worry about it We will see it We will cover it We will go through it But one thing to Remember When it comes to a while loop Is that Make sure that this condition No matter what it is That you have over here Make sure that this condition Will eventually get To be false Otherwise you will have an infinite while loop

**1:57:12** · And that's when your programs Are going to crash Or in this case games So the condition over here For me to Eventually get to this condition To be false Is i plus plus So i is zero As long as i is less than 10 Go into the while loop Execute the code At the end increment i So that eventually gets to the value That is You know Greater or equal to 10 Because when i Gets to the value That is equal to 10 Then this will not be true We are testing if i is less than 10

**1:57:42** · And how this iteration works Same applies for this over here This iteration now That i'm going to demonstrate Applies for the for loop As well as for the while loop So in the first iteration i has a value of zero In the second iteration i has a value of one In the third iteration i has a value of two And it goes like that So then three, four, five, six, seven, eight, and nine

**1:58:06** · So this is how it goes So over here Like this Like this Like this Like this And what did i do It goes like this Yeah Did i skip a number?

**1:58:15** · It's not important Yeah I did skip a number But yeah Anyways You get the point This is how it works So every iteration And what does that mean?

**1:58:23** · Iteration is Going inside of the while loop And executing everything That's inside once In this case over here For the for loop Same thing Going inside of the for loop Executing everything That's inside of these parentheses Once That's one iteration So this is how While and for loop works

### Coroutines

**1:58:41** · Continuing on the road Of often used stuff In game development We have a delayed behavior Because a lot of the times When something happens In your game You want to delay An event that will follow it up For example If you enter the chamber Of the boss In your game You don't want the boss To appear right away But you will register In your game When the user goes Through that chamber And then maybe after Two or three or four seconds The boss will appear

**1:59:09** · Well for unity Or in order to Make that happen in unity We use something Called a coroutine And a coroutine is also Function So we know that we have a Function over here That i'm going to call void And let's say Perform or execute something Execute something Like this And we can Add over here for example Debug.log You know the usual Because i cannot write You know the next grant Have to auto right away It will take time for you To learn that And something is executed

**1:59:40** · If i were to call this From the start function Over here We will know That this will be printed In the console Just for the sake of examples So you don't think That i am lying to you And you don't accuse me Because people accuse me For a lot of things Lying is probably one of them Anyways Something is executed There you go So if i go back over here How can we make this Into a coroutine?

**2:00:04** · A coroutine's Sign or signature So to say Is not void But over here We need to say ienumerator And over here As you can see I have typed ienum And we have Enumerator Blah blah blah blah We want this one Enumerator Now you will notice Over here ienumerator Learning how to code Not all called Pad returns a value This is because We said That we are going to return An ienumerator But we are not returning And in order to do that We simply need to say Return new Actually yield return

**2:00:35** · Excuse me for that So yield return New wait for seconds And you can assume over here The number that we typed out Is going to be How many seconds We need to wait In order to execute the code That's over here So instead of calling A coroutine like this Which is not going to work We need to do something like this We need to say Start coroutine And inside of these parentheses We need to pass the coroutine With parentheses So the coroutine name Along with the parentheses

**2:01:04** · In order to call it So if i were to go back now In my unity editor now And if i hit the play button You will notice That not right away But after 1 2 There you go Something is executed Is printed in the console This is called A coroutine As i already explained Now we can also call a coroutine Like this We can say Start coroutine So coroutine And over here

**2:01:32** · As quotes So as a string name We can pass Execute something What is the difference between These two?

**2:01:39** · Well the difference is When you call a coroutine Like this with a string Then you can call Stop coroutine With strings like this In order to stop the execution If for whatever reason You need to stop execution Of your coroutine Doing your game That's the difference Now It's not only once that we can use this yield return

**2:01:58** · We can use it over here And then over here We can use it And then we can have more code here So more code Then again But you get the point This can go forever It's not You're not Bound By only using this once

**2:02:14** · And then Having some line of code And then over here And all of the good stuff You get the point Also Coroutines can take parameters They are like Regular function Except they have this Returning type of Ionumerator And they need to have this Yield return Don't even ask me What this Yield is I don't know You can look it up online

**2:02:34** · But it's not important Because it will not Improve your knowledge About coroutines Know that you need to Type Yield return And then you wait for seconds And you have More of these So what I say more You can have Yield return New And over here Wait for the end of the frame Wait for fixed update Wait for seconds Wait for seconds Real time Wait until While sun and so forth And don't worry We will cover a lot of these When we start developing our game

**2:03:01** · And coroutines You can practice And I am advising You to start practicing them Right away So that you can again Follow my philosophy That I already talked about So many times During these video series That the more you practice The better you will be And the more you will learn But what I'm also going to do Because I have a Detailed video About coroutines On my YouTube channel Maybe 30 minutes

**2:03:25** · When I say detailed I use a lot of examples Out of the bat You know Not in game But I show you how That can be used Potentially in games When we start developing our games In the course Don't worry We will use coroutines a lot But if you want to examine them Even in more depth I will put a link to that video Below this video as well This is it This is everything I can say About coroutines Because they are relatively simple They are like a function

**2:03:50** · Except over here Your return on your numerator And you have this statement That's all there is to it As I said You can have here Int I don't know Int B So on and so forth Over here You can pass 2 and 3/8 Then you see Coroutines are like Regular functions Then for example Over here You can use Float time So it can be like this Float time Or wait time That's how you can specify it

**2:04:14** · And over here I can say 2 And there you go Then you can Have a flexible coroutine With not fixed time So you will pass the time on your own Anyways As I said This is About coroutines Start practicing them Right away And watch the video For in more depth About coroutines Which will be below This one And of course If something is not clear Make sure that you also ask Below this video Now we are getting into the Serious stuff Because so far You are probably wondering What is this public?

### Classes

**2:04:44** · What is this class?

**2:04:45** · What is this amount of behavior And how can I put all of that together?

**2:04:49** · Well now we are going to dive Into those things Because The basis of all bases Or basics Or whatever In object oriented programming Is a class And you can take of a class As a blueprint for creating objects What do I mean by that?

**2:05:02** · Well first let's go over here Into the scripts folder And create a new C# class That I am going to call player Because in your game You are going to have a player class And I am going to double click it And open it over here Hoping that Visual Studio will See mercy upon me And there you go We have mercy I am going to add a comment Over here at the end So that we know that the class ends Here I am going to remove the functions That we get by default I am also going to move This amount of behavior Now don't panic This will not break anything We will go through it together

**2:05:32** · I will hold your hand And you are in the good You are in the right place So as I said You can take of a class As a blueprint for creating objects And in a game You can have as you see Over here we have a player And think of as that blueprint So we use the class And this is the blueprint That can create objects Imagine that You have some sort of game

**2:05:55** · Where you have multiple characters And you have a base class Player Or a character No matter what Our name you give it And we can create multiple of these So we can create one So one is over here We can create another one It's over here And another one It's over here Basically this is What a class is doing And in order for that to work Let's imagine that your player Has three variables It has a health variable It has a power variable

**2:06:22** · And it has a string variable For his name Now you can understand Or slowly see Why I first introduce variables to you Then functions And then we went through All of the things that we went through Before we introduced classes Because the classes as I said Are the bases They are the base of everything That we will do Inside of object oriented programming So why did I explain that first?

**2:06:45** · Well as you can see The parts of a class Or what creates a class Are its variables Its functions And so on And so forth Now one thing That is important to know When it comes to a class In order to create an object That you just saw So creating a player That's called Actually creating an object From a class Remember blueprint For creating objects In order to create an object

**2:07:09** · We need to have a constructor And a constructor Is basically the same name Of the class So over here we will Type public player Open close parentheses Open close curly brackets This is called a constructor As you can see It has the same Signature as a function Because you create a function By using a name Open close parentheses Except over here We don't have void Or a returning statement Because this is a constructor

**2:07:36** · You see the name The same name of the class Is the name of the constructor And now what we can do is We can add Or we can initialize these Health power and name Inside of the constructor We can do that over here We can say something like Health is equal to 100 Power is equal to 50 For example And the name can be For example warrior Name is warrior

**2:08:00** · Like that And over here in the constructor We can say debug.log And we can type over here So we can do something like Parentheses Health is and here Plus health Not jet brains We actually want health There you go Copy paste Copy paste Over here We're going to save power Is passing Over here the power And the name is And passing Over here the name So how can we create an object From a constructor?

**2:08:31** · That's very simple to do We can go over here In our function Learning how to program And in the start We can say for example Player And I can say warrior Is equal to new Player There you go So we saw this new When we were creating arrays I didn't explain it then But what is this new?

**2:08:51** · New is used when you are Creating new objects From a class So as you can see This is the blueprint The blueprint is Basically the player Which means the player Has a health Power and name And now we can create As many objects As we want From that single blueprint Think of it as a recipe For a cake You have one recipe But you can create multiple cakes From that recipe Simple And if I go inside of my editor

**2:09:19** · And wait for it For unity to have mercy upon me If I hit the play button You will notice That in the console Held over here So you can see Health is 100 Power is 50 Name is warrior Same thing that we typed Out over here Now this is

**2:09:38** · Or we set those variables Up over here If I were to remove the default values I'm going to remove them like this Now they have 00 For health and For our power And the name is an empty string So how can we Declare these From within the constructor So over here I can say Int And I can call Health over here Int I can say Power And string I can say name Same way As functions Constructors Can also take parameters

**2:10:07** · As you can see over here Now the name of our own variable Is health And the name of this Is health as well Now in order to differentiate them Now when we assign them You can use This.health And this.health Is referring to this health over here And we can say It's equal to health Now in order for you Not to get confused I'm going to Explain like this This keyword Is referring to the class name itself

**2:10:32** · So it is referring to the class Where we are using this keyword .health Or this dot And any variable that we use Is referring to the class variable That we have declared over here Is equal to over here Health Now this health Is referring to this health over here

**2:10:50** · You're using this Or we use this When we want to differentiate these Like in this case But you can also Do something like this You can say Underscore health over here And instead of using this You can simply say Underscore health Is equal to health That can work as well But for this example I'm going to use this And over here I'm going to remove the Underscore This dot power Is equal to power And this dot name Is equal to name Now of course since we Change the constructor's

**2:11:19** · Signature Over here we will have an error Which means we need to Give it Health power and name So let's say health is one Power is two Name is lizard For example If I were to go back In Unity's editor We will see All of these things over here So if I go back Hit the play button You will notice Health One Power two Name is lizard And this way we can create Multiple characters As I said So over here we can say player

**2:11:49** · I don't know Let's say Archer is equal to new player And over here He can have 20 for the health 30 for the power His name is Archer There you go So now we have different players We can also do it over And over again I'm not going to create multiple These you get the point You can practice that on your own You will see multiple things Here being printed In the console So you will see The first one has a health One Power two Name is lizard Next one Health 20 Power 30 Name Archer So this is how things work

**2:12:18** · With program Actually with classes And this is what I meant When I said That And I'm throwing bars This is what I meant When I said That Enough Anyways This is what I meant When I said that You can create multiple

**2:12:35** · Objects From a single Blueprint Or class You can also declare These variables Over here At the top So you can do something like this You can say Warrior Over here There you go And over here It can be Archer Like this Because they are now Variables They are Same as if you were Declaring an integer Because now When you declare them Over here You can use them Across the whole class We can have a function

**2:13:01** · Inside of this learning How to program Where we can use it To call Warrior Or Archer And perform Whatever we want to perform And we are not bound By this over here as well We can do something like Public Void Info And we can Put all of these over here

**2:13:20** · Like this And instead of having them In the constructor Now If I go back over here This will not be printed out If I go back Just to show you That it will not be printed out I don't want you Accuse me and everything I don't want you to sue me For something I didn't say Or say You see nothing is printed But if I go now Over here And if I say Warrior That info There you go And Archer That info Not comma But that info This is how we get

**2:13:51** · The execution This is how we call Functions From objects We say Dot and the function name If I hit the play But now you will see The same info We had A moment Uh Go Now of course Now Now of course I'm not going to repeat Now of course Now of course Anyways Over here Is how you can have Functions Saying everything that we Talked about so far Now applies to these classes

**2:14:15** · Don't worry about this public We will talk about that Starting from the next video We will discuss public We will discuss private What that is How we can use it And all of the good stuff So do not worry about that At all you will understand What this public means And over here We can also declare variables As private and public We will talk about that But over here Is how we can declare Functions inside of the class

**2:14:39** · And just imagine This is your game You can have a function Because this is a player class You can have a function Attack Which means Now the player can attack And over here Of course We need to say void Because it doesn't return anything Debug log And over here I can say something like Player Or we can even say name So we can say The name of the player So name Plus Is attacking And we can call it Over here For example For the warrior.attack

**2:15:09** · And if I were to go back Inside of my editor Let's clear everything From the console Hit the play button We will notice that At the end Lizard Is attacking Is being printed in the console So this is how You can then have functionality

**2:15:27** · Within your game This is where you Create functions This is where you Declare the behavior Of your class Of your player And we are going to use All of this We are going to use All of this Inside of our games That we are creating And I encourage you To practice a little bit more Creating More variables over here More functions That you can call And then creating over here Objects from those classes

**2:15:55** · And this is Again how you can create Multiple of these Because there is no limit now We have a blueprint over here We have a recipe for our Kate There is no limit How many cakes We can create Or we will create So I encourage you To practice

**2:16:10** · Try to create multiple functions Over here Inside of the player class For attacking For healing And just use debug.log And call them over here And that way you will See the pattern How everything works If something is not clear Please make sure That you ask in the comment below I believe There is no complexity

**2:16:28** · When it comes over here To classes Just understand There are blueprints That you can use To create Objects from And that's all there is to it And this is how The structure Or how the workflow goes Again Make sure that you practice Something not clear Ask down below the video And that's it about classes

### Accessibility Modifiers(Data Encapsulation)

**2:16:46** · Before we proceed To go in more depth With classes And programming And game development I want to talk about This public little thing That you see over here That we have On our functions And on the constructor So if I go back over here We see that the attack is public And over here Inside of this Function We can call attack And I am going to remove these

**2:17:08** · Because we have the warrior And when we attack We display this warrior Or the name Of the character or the player And then Is attacking What will happen If I go over here And instead of public I say private And now Going back over here There you go We see over here Player attack Is inaccessible Due to its protection level Basically these public And private Keywords Are called Accessibility modifiers We have some code

**2:17:39** · In our game That's only going to be available Within the class itself And we are not going to Allow it to go Outside of that class Which is usually done For variables Because if we try to Access one of these variables If I go over here And instead of calling attack If I try to say warrior That held You see it's not even printing it out

**2:18:00** · If I say info It prints it out right away If I call held Like this And we know that We have a held variable Inside of our player You see here is the held If I try to access it It will say It's inaccessible Due to its protection level If I were to go back over here And if I say public Then it will be accessible

**2:18:21** · And this error from here Will go away Let me just try it over here Public in held There you go And over here we can say For example is equal to two And now the error will go away Now you're wondering How was this?

**2:18:35** · How was this inaccessible When we didn't have public We didn't even have private So it's only in held But it's still inaccessible Well by default If you don't declare a variable To be public By default The variable is going to be private So essentially Typing out in held Or int held It's the same as if you typed Private int It's exactly the same You cannot access it So this is really important to

**2:19:01** · Understand Because now when we start To talk about inheritance We will go And see How we can extend these classes Over here How we can extend the player class To make it To suit it for example For a higher player What do I mean by that?

**2:19:18** · Let's imagine you have A character Or multiple characters in your game You have a base class Every character can run He can jump, he can attack But what if when you power up With your character Then the next character Can have some special attacks So he can have special attack One maybe special attack too Son and so forth You get the point We create a base class

**2:19:40** · For all players With similar or with the exact Same behavior Functionality Such as walking Attacking Jumping Picking up items on and so forth But then For characters that are upgraded The ones that are higher levels We create another class We extend the current class that we have And we add to it We will see that Don't worry about that But that's why these Excessory variables

**2:20:13** · Or parameters You get the point I have blocked over here But this is why they are important So if we have some variables That we don't want them to be accessible In any other class Except here That we will make them private Such as our power, health And names So we want them only to be accessible Over here Within this same class

**2:20:40** · Now you might be wondering Okay We have the health Which is only accessible over here How can we How can we get that health value If we want to check how Or the current status of the player's health Because if the player's health Gets to zero How can we get that value If we don't have access to it Because currently If I try to do something like this If our warrior.health I cannot even do that If I say health is equal to zero

**2:21:09** · To test if the player has died You see No It will not happen Well for that We create getters and setters And they go like this For example I'm going to use the health one You can say public void set health Which takes I and T health as a parameter And over here You're going to say this That health is equal to health There you go This is how you set the value So if you deal damage to the player You can say For example warrior.sethealth

**2:21:39** · And over here You can set the new value Which is equal to 20 And there you go It's going to call this function Take this parameter And it is going to set that parameter To that this health We talked about that Which is the private health Of the class How can we get the value?

**2:21:54** · I'm going to give you Just a few seconds For your pause The very yet pause the video And try to figure out How we can get it You see How we can get it And I'm going to continue now Over here we can say Public I and T Get health So we can say get Health like this

**2:22:13** · And over here Simply we're going to say return Health That's all there is to it And if I go back over here now We can say something like this Debug.log And the health

**2:22:29** · Of the warrior Is colon + warrior Get health That's all there is to it If I were to go back In unity editor We will notice now Let me just wait for it to finish And compile And all of the good stuff Hit the play button You will notice over here What's being printed out The health Of the warrior Is 20 So this is how we can access

**2:22:54** · These variables Even though they are private Now there is another way How we can access them Even though they are private Not using functions So what I'm going to do Is I'm going to Comment these out Maybe you want to Write them down In your own script But what I'm going to do over here Is I'm going to create a private

**2:23:13** · Underscore health like this And I will need to change it over here And over here So I have the private health What I'm going to do now Is I'm going to create Accessibility modifiers Which means I'm going to create a Public INT That I'm going to call health With capital H Open close You see open close curly brackets

**2:23:32** · So over here I'm going to say get Open close curly brackets And I'm going to say Return Health Or actually Underscore health And over here I'm going to say Set And I'm going to say Underscore health Is equal to value And in most cases We're probably going to use it like this Sometimes we're going to use getters and setters But now over here I am going to change this From this dot health To simply health over here Over here also health And there you go So it's the exact same thing

**2:24:03** · What I can do now I can say Warrior dot health Is equal to 20 And I can say again Debug dot log And over here I can say the health Is colon plus Warrior dot health There you go Now if you're confused by one thing That we typed over here We use set And we set underscore health Is equal to value Value this is How can I explain?

**2:24:27** · It's a parameter that goes Simply over here When we pass As we said over here Health is equal to 20 This value becomes 20 So the number that we say Equal to and that number Is actually the value And this is the signature How we can create These accessibility modifiers So we create public In health And then here we have A getter and a setter As opposed to over here

**2:24:51** · We have the getter and a setter As a function Over here we have it As a variable So now we simply say get And here we return Underscore health Which will give us The information The value The current amount Or whatever Of this variable Set and health Is equal to value Basically when we say It's equal to The number that we pass That is equal to the value Over here So if I go back now Inside of the editor We will see the same result

**2:25:23** · If I hit the play button We will notice over here The exact same result Health is 20 And if you think that I staged this Because I used health Is equal to 22 times So I'm going to go over here And say health is 50 Just for the sake of example I don't want to be accused I don't know what's my What's my team with being accused?

**2:25:41** · Nobody accused me of anything But I don't know man Anyways over here Health is equal to 50 There you go So we see how And what are public and private And for most cases What I do Is I declare my functions Either public or private I rarely declare functions Like just void For example Or something like that I usually use Either private or public In order to declare my functions

**2:26:09** · Even my variables In most cases I don't type just In health I type private in To know that is a private one And then I use either accessibility modifiers Or I use Getters and Setters As we did over here Now your assignment Is to do the exact same thing For the power and the name Use them as accessibility modifiers

**2:26:30** · And use them as functions over here And print it out in the console And see the result But again This is not hard This is just using either private Or public You can go through the video again To see the examples They are all over here Again As I said Your assignment Do that for the power and the name That way you will Practice And you will understand this much better

**2:26:51** · And something is not clear Just ask in the comment below Now that we understand What are classes And how we can use them We are going to introduce A new concept Which is called inheritance And in order to do that I'm going to go back here In the editor And right-click in the scripts folder And I'm going to create a new C# Script that I'm going to call Warrior And of course Double-click that bad boy To open it over here And for some reason It was lightning fast I am surprised Anyways So What I'm going to do Is I'm going to remove all of this From here So the start And the update function

### Inheritance

**2:27:22** · And instead of over here Mona behavior I'm going to type player Not player It's player So what the hell Did you do teacher?

**2:27:31** · I'm confused I'm going to kill you Just don't Okay So don't kill me What is wrong over here?

**2:27:39** · First things first We have over here a problem You see There is no argument A blah blah blah blah blah blah This column over here Is informing us That the warrior class Is inheriting from the player Chloro Player class And the issue that you see here The red line is Because Over here in the player class We need to implement

**2:28:01** · A constructor Same as the one you have here But with no argument So we need to type over here Public player Like this Open closed Parenthesis Open closed curly brackets If I go back over here Now that air goes away So if you are first Inheriting From one class So you're inheriting another class The inherited class

**2:28:22** · So the class that is being Inherited In this case player Needs to implement The public constructor Like this Even though if you don't use it Even though if you don't plan To put anything inside You still need To implement it Or otherwise you will have Issues over here So what's the deal With the warrior over here What is the issue?

**2:28:42** · Well now that we have Inherited The player class The warrior class Can access All the public Variables and functions Inside of the player class So it can access the Attack Well actually not Attack is private But it can access the public info And I can show that I can go over here And I can Instead of creating warrior As the player What I can do now I can remove this And I can say warrior Is or W is equal to new warrior

**2:29:12** · Simple as that There you go I have created it And I can say W dot info And call the info functional But here I'm going to say Warrior with lower case Just so that it is You know Better for the Used for the example So if I go back over here In the editor And in the console If I hit the play button You will notice that In the console Health is zero Power is zero Name is We don't have the name The reason for that is Because we created the default

**2:29:40** · Or the warrior Creating the default constructor Which in terms So this constructor The default one The nor arguments one In terms It will call this bad boy Over here This constructor Which basically Has nothing inside That's why you saw Over here Zero for health Zero for power And name is zero Now you were to think

**2:29:57** · That if I go And implement these In the warrior So if I create it For your passing over here Three for the health Five for the power And warrior for the name That it will work Because it is Inheriting the constructor But actually no In order for this to work As you can see we have an error We need to go over here And create a constructor For public warrior And over here It will take And health And in power

**2:30:25** · And string name So now this Over here will work But still when we use the print It will not print anything Because we're not changing The variables If I hit the play button You will notice here In the console health Zero power Zero name Is empty The reason for that Is because If we go back in the player Remember In the previous video We talked about Private and public Currently only The health variable Is public And we can access it So if I do something like this

**2:30:53** · After I create my warrior I can say warrior So warrior That health Is equal to 20 For example Now When I Call info It will print that the health Is equal to 20 But the power And the name will still stay empty Actually zero and empty But health is equal to 20 And this is what I am talking about So this is called inheritance And again What is it?

**2:31:20** · Notice over here In the warrior I'm calling warrior.health To set the health Even though over here In the warrior We didn't declare Health variable anywhere You don't see the health Variable over here Inside of the script But you see it over here In the player Here it is And since we have inherited And that is done By using these call on And then The name of the class We want to inherit Going back to the previous lecture

**2:31:47** · Where we talked about Private and public And only public variables And public functions Can be accessed Inside of this class Or the child class So the class that is Inheriting Is also called A child class And the class that is Being inherited In this case the player class Is called the parent class So the child class Can only access public And private Actually excuse me Only public methods And variables From the parent

**2:32:17** · Game or actually class If I change Attack from private to public We will be able to access it But currently If I try to do that So I'm going to remove this here And if I say warrior.attack We don't even get it You see In the auto complete We don't get it And over here it's throwing The error player Attack is accessible Due to its protection level Which means If I go back over here And I set it to be public

**2:32:40** · Now this error over here Is going to go away And this is what I was talking about You model The behavior of your objects Within a single class And then you Extend it further on Notice over here Is attacking The issue here We see the empty string Is attacking Is because if I go in the player We are using name Plus is attacking Since we are not setting the name Over here Due to its protection level Then we cannot do anything But if I do Something like this So over here we have power And if I do the exact same thing

**2:33:12** · Over here For my power So over here Underscore power And over here Capital power And there you go So over here Power power There you go Power power Actually I'm going to remove this from here And simply Call the capital power

**2:33:30** · And over here we also need To call capital power Do the same exact thing For our health Or actually excuse me For the string And over here I'm going to quickly copy it And over here It's a string And it's a name There you go Over here we have The underscore name And voila We are done So just change the name over here In the code Where we used it previously That's all there is to it

**2:33:58** · So now we have Public accessors For all of our private variables Which means Now over here I can do something like this When we create our constructor That has health, power, and name I can say "Health" With the capital "H" Is equal to "Health" With lowercase Meaning We are setting the "Health" Which is this one over here So the main "Health"

**2:34:23** · Variable This one over here From the parent class To the one that is being passed As the parameter We can do the same thing With the power So capital "P" And that is equal to lowercase "P" Power And Uppercase "N" Is equal to lowercase And for the name And if I were to go over here now Since we pass the warrior for the name We will see Finally Inside of our editor If I close it Or actually clear it Hit the play button You will notice that The warrior is attacking Even if I go and do this If I say warrior.info

**2:34:55** · It will still work And now it will display Three, five, and warrior So hit the play button Again, we will notice "Health" is three "Power" is five "Name" is warrior And the warrior is attacking This is called inheritance So this is called inheritance And this is again What I meant When I said I'm throwing bars At your Mars I'm just going to stop

**2:35:20** · Going Moving from where I left off This is what I meant When I said that When you model a base class In your game You have a character And you're going to have multiple characters That you can choose from In your game Which means Every single character Character can move He can attack He can jump He can pick up items You model all that Common Or actually same Behavior That all classes Or all players have And then You can create separate classes

**2:35:51** · For specific types Of your characters Such as the warrior The archer The wizard The lizard The swordsman Whatever You get the point And you model those classes To add some extra To add some extra functionality

**2:36:07** · That the previous Class doesn't have As I said For example Over here the player The main players Can only attack What if the warrior can throw an axe An archer cannot do that A swordsman cannot do that The wizard Cannot do that That is only specific to the warrior So over here You would create public void Public void Throw axe One thing that I want to

**2:36:36** · Mention and point out Is that Inheritance doesn't go backwards It goes forwards Meaning The player Cannot access the throw axe It cannot access the throw axe function From If you just create a player class So that cannot happen But If you have The throw axe function Over here Inside of the player Then the warrior Will be able to Access it That's the main philosophy Over here Now also one thing That I want to point out Is something called Override Now what is that?

**2:37:08** · Currently over here We see the Main plus Is attacking What if I don't want that?

**2:37:14** · Let's say over here I'm going to remove this And I'm simply going to Say a generic one Player is Attacking With I don't know With fire For example This is the generic attack If I work to go back now And hit the play button We will notice that In the console Player is attacking with fire Now that is the generic attack

**2:37:38** · Of every player What if I do not want that And I want to remove the info I want the attack of the warrior To be attack with an axe So if we say something Like Public Void Attack Like this There you go If I hover over

**2:37:54** · You see warrior attack Hides Inherited member From player attack But basically What we can do Is we can say Public Override So override Void And now We can override The attack Function C Warrior attack Cannot override Hand and player attack Because it's not Mark and virtual Abstract Or override So let me just go over here

**2:38:14** · Public Virtual Void And now We will be able to Inherit Or actually override it What is Override Again going back over here The function that you want to overwrite Meaning Change its signature It needs to go public Virtual Void So that's how you add it Actually it can be a void Or a function that returns a value That depends on your needs But you need to have this keyword virtual Which means now over here I can have my own attack function

**2:38:44** · Inside of the warrior Child class And instead of having here Player is attacking with fire I can have something like Warrior So Warrior is attacking with Axe Like this And if I were to go Inside of Unity We will not see player is attacking with fire You see if I hit the play button You will notice Warrior is attacking With Axe With an axe Actually but I don't care about grammar Do you?

**2:39:12** · I guess so so yeah Anyways This is how we can change The signature Of the main function Inside of the parent class But in a lot of the cases

**2:39:27** · You will not use this I'm just showing you as an example Maybe you will Have a good use of it But I'm developing games for 6-7 years I didn't use some of these things So I'm just throwing this out there Because a lot of people think That you need to implement Every single aspect of object-oriented Programming Every single aspect of inheritance And polymorphism And whatnot And so on and so forth You don't have to do that You're not obligated You will develop your own coding style During time

**2:39:55** · While you're creating your games I'm not saying That it should be something Out of this world Because when you Start working a company You will need to follow Their own coding style But for yourself You will have your own coding style That is totally normal And I'm telling you again This because a lot of people are Oh this is how you need to follow it And no you don't No you don't So yeah This is how we can Overwrite an existing function Why is this inheritance Important at all?

**2:40:26** · Why are we talking about this?

**2:40:28** · Why?

**2:40:28** · Well because If I go back over here You see that Every class that we create Inunity has this Call on Mono Behavior This means that Every class that we create Inunity by default It will inherit from Mono Behavior That's why You see the start function Here it is Private void start That's why you see The update function Which is this one over here So update When you create your functions

**2:40:55** · These are all inherited From Mono Behavior All Or classes Along the inheritance hierarchy Because Multiple classes Or you can inherit From multiple classes A class can inherit from a class It can then inherit from a class It can then inherit from a class So on and so forth So you can have over here A player class Then a warrior extends the player Then you can have some power up warrior Extending the warrior So on and so forth That can go forever So The start

**2:41:25** · And update Are functions that are inherited From Mono Behavior Or some classes In the hierarchy And now I can also introduce you To the awake function And talk about the execution order So when you first run your game And I mentioned this In previous videos Update Or actually awake Is the first function That is called When your game starts After that You have on and able This is the second one That is called Second Function Called And start Is the third function called

**2:41:56** · When your game So third Function Called Of course In a lot of cases You will only use awake And start What I love to do Is only use awake To initialize the variables That I need to initialize And then in start I'm using functions That require those variables

**2:42:13** · That are going to be Initialized So awake Is the first function In every script That is being called When your game runs So just make sure That you Remember that And even if you don't Don't worry We will When we create our games I will show a lot of examples So you will definitely understand Now this is Everything I have to say About inheritance I encourage you to Practice a little bit more Create more variables Over here Try to access them From more here Try to use private And public And see what is going to happen Try to use a little bit More of these public virtual voids

**2:42:45** · Like model your base class For a player So the generic Functionality of every player In your game Model it in a player class And extend it with one class That will inherit all of those And implement a few of its own features

**2:43:01** · Something similar As I did over here That will be your assignment And you can submit it to me Via the comments Down below So just make sure that you do that If something is not clear Just make sure you also Ask in the comment below But I believe everything is covered When it comes to inheritance Because it's not that hard You just, you know, use the call on Inherit the class name Then you can access all public functions

**2:43:23** · And variables that are inside Of the parent class Or the class that is being inherited Again, make sure you practice all of that And ask below if something is not clear And submit the assignments down below Now that we understand the concept of classes And objects We can dive into explanations Such as Over here What is this?

### Getting Components

**2:43:44** · What is this learning how to program That I have created?

**2:43:47** · This is called a game object And any game object Or anything that you have in your scene Is a game object And that game object can have components Attached on it For example, I can right-click over here And I can click here Create empty And right away you see It has created An empty game object An empty game object Meaning it has no components By default So that you don't get confused By default Every game object Has this transform component Attached on it But when you create a new one As you just saw It only has the transform

**2:44:17** · And no other components Attached on it For our learning how to program It only has the transform And the learning how to program script In the beginning We saw an example of few components Such as the rigid body We mentioned animations And so on and so forth These are all components That you can attach On every game object in your scene But of course you will attach The appropriate components That you need For that particular thing

**2:44:46** · That you want to achieve Now over here inside of our ad component I can click over here And I can filter for for example Rigid body 2D If we're working on a 2D game We will use rigid body 2D Rigid body is A component that adds physics

**2:45:02** · To your game object Which means And we saw that example If I hit the play button Our little fluffy monster over here Is going to And for some reason it is not falling Yeah actually it is falling down But we don't see that Because of the camera So selecting the main character

**2:45:19** · Actually our learning How to program is falling down For some reason I thought that I have attached On this little character monster But anyways It's not important What I want to show you is For example I can also attach a box glider I can also attach an audio source I can also attach a animator

**2:45:40** · Now what can we do with all of these And why am I attaching these components Well simply because we can go back over here And I can declare all of these I can say for example Private rigid body 2D And I can call it my body I can also declare a private box Collider 2D And I can call it my collider I can also create here Private audio source And I can call it music Or audio source like this I can also get the private animator

**2:46:13** · Not animation Animator I can call him anim What I can do now Is I can get a reference To these components In my code I can say My body is equal to get component And I can pass over here A rigid body 2D component That I want to get There you go So this will get me a reference

**2:46:35** · And a reference Is a reference to that object Same as with our classes When you create an object And let's go over here To annotate the screen So imagine this is the player class Over here So we can say player like this So player Yup, yup, yup Now we can create multiple players As I already mentioned So this is one player This is the second This is the third This is the fourth For example So over here And over here And over here Now all four of these

**2:47:08** · They are objects And when you create For example player P So let's say P1 And you say it's equal to new And then you create a new player You know how it goes Then you have one reference The P1 is basically the reference To the player class What do I mean by that?

**2:47:29** · Let's quickly do that over here So over here I can say player So player P is equal to new Player There you go So this P variable Is a reference It is referencing a player class

**2:47:45** · Which has its own functions Own variables And so on and so forth But this is a reference Referencing that in memory So you can imagine This is a computer This is a computer memory And here is the player P So this P Is referencing that part In the memory And this is what we are doing Over here So now we are instead

**2:48:06** · So instead of creating new Rigid body We are simply saying Get component This is the same Because we don't have to create a new one We already have one attached On it So here it is We have one attached On our learning how to program So it is attached We have We have an object So this object is created We don't have to say It's equal to new Rigid body 2D In order to create it We simply use Get component

**2:48:31** · And there you go So now we can perform Anything that this Rigid body has We can say add force And over here we can pass the force That we want to add So on and so forth We can do a lot of the things And of course here we can We need to pride multiple parameters But that's not important at the moment

**2:48:48** · What I want to show you Is how we can access All of its Public variables And all of its public functions Same thing with the audio source So I can say audio source And it's lowercase a And I can say it's equal to Get component Audio source Like this And now I can call my audio source And I can say dot play And it will start to play

**2:49:10** · The audio sound That I have attached on it Don't worry that will come But I'm just showing you How this object Oriented programming Works back and forth Because now that we have a reference We have created a variable Out of that class Or basically the class was already The object was already created We just simply got a reference to it Now we can access All of its public variables And functions And manipulate with it So that we can Perform certain actions in our game

**2:49:39** · Same as here If I want to get the reference To this transform I can say like this I can say transform Because we can get it right away Or we can also create here I can say private Transform my transform So my transform

**2:49:55** · There you go And I can simply say My transform is equal To now we can say Here get component And we can get the transform component This will also work Or we can simply Say over here transform Because this is the Inherited component You see here The transform attached to the game object Because we are inheriting amount of behavior

**2:50:15** · We have access from it We have access to the transform And we can access it right away And from here I can say My transform Dot And I can say dot position And now I can change the positions On new vector 3 And now I can change Change the position to you For example 10, 20, 30 For example Now for that I will have to deactivate

**2:50:36** · The rigid body component Or simply Set over here to kinematics So that gravity doesn't affect it Just so that I can show you that this works Because if you pay attention When I select the learning how to program And if you pay attention The position is at 0.7 Minus 1.2 Or basically I can set it 000 That will be easier But when I hit the play button Now it will get The rigid body component And notice where its Position is now 10, 20, 30

**2:51:04** · Which is exact position That we set over here 10, 20, 30 Now I am not going to go into detail For every one of these components Such as the animator We can simply say Get component animator And this is how you get the component You type Get component And then in these Greater than and less than sign Or between Or in between them You type the name of the component That you want to get

**2:51:27** · In our case Or the type of the component The name but the type Which is basically the name So we want to get the animator As I said I am not going to go into high detail From every single one of these components Because we will start creating games And then we are going to go

**2:51:42** · And dive deeper and deeper and deeper Into every single one of these components And again we will revisit All of this what is happening Why we are using it How we are using it And I am going to connect the dots Okay this is that object And this is how we use it And this is that lecture that we did About You know Data encapsulation And or basically Public and private variables

**2:52:05** · And so on and so forth And you get the point So this is how we can get components And I just wanted to show you this Before we start creating our games So that you know Or have a clear picture How Unity works Everything that we covered so far

**2:52:20** · Is what you need to know As a beginner to start working with Unity And of course When we start to create our games We are going to take off From there If something is not clear Just make sure that you ask In the comment below What is cracking game dev gangster So now that we went through the basics of Unity We downloaded Unity We saw some basics of programming Let us create our first game Where we are going to implement Everything what we learned And some extra things And we are going to see it in action

### Monster Chase Game Intro

**2:52:46** · So let me first preview the game That we are going to create It's a game I call monster chase And it's a remake of my old tutorial That I did probably six years ago But in more depth In a lot more depth So basically what I have over here Is my main menu and I went from it But here I have my main menu And I can select one of the two characters Left one or the right one So if I select for example the right one There you go Now I have a character I go over here I can jump You see that is the point of the game And we jump over monsters

**2:53:15** · So yeah But basically no monsters Currently in the game Just kidding But they are coming from the left and right side And you saw how one of the monsters Just tried to kill me And I was so smart And you know But I'm not so oh you can't Oh okay It's intense You can't see that And when they kill me Bam I die Nothing happens I can restart the game Play it again I can go back here in the home Select the other character And voila There you go So that is the point of the game Even though it looks like a simple game

**2:53:44** · We're going to cover a lot of cool things A lot of cool features We're going to implement everything What we learned Everything we talked about And yeah, yeah, yeah I'm going to stop talking Let us get into the game And create it Let us now put everything That we learned in previous videos Into use By creating an MMO Online RPG game And I'm just kidding

### Importing Assets

**2:54:03** · We're going to create a simple 2D game And yes, we are going to implement A lot of the things that we learned In the previous videos But don't worry I'm going to explain in detail What is going on I'm going to go and reference back things So everything will be crystal clear First others create a normal Or actually a new project Not a normal But a new project Every project is normal And it's going to be a 2D project And what I'm going to do Is change the name of the scene So here in the scenes folder Change the sample scene to gameplay Because this is where the gameplay is going to happen Why shouldn't I not name it gameplay?

**2:54:36** · Next what I'm going to do Is in the game mode Over here I'm going to click on this tab Or it says free aspect Then I'm going to change that to full HD Because our game is going to be full HD Every game is a full HD Everybody loves full HD So the next thing is Over here in the assets folder We have the fonts and the sprites We are going to import these Because we cannot work with an empty project And they will be provided Link will be in the description below So you can download these assets To follow along with the course And you can also download the complete project

**2:55:06** · For your own reference To compare with my code And inspect it And practice and so on and so forth So simply select both of these files And drag them over here And voila There you go That's everything we need to do Actually I drag them in the scenes folder Because I am stupid So simply going to put them in the assets folder Over here So they are in my top or main project

**2:55:30** · So assets And then we have old folders So don't put them in the scenes folder Like I did Anyways Moving forward What we need to do is select And by the way How Unity project tab works Is like any other file manager

**2:55:45** · On your computer You can drag this asset Or actually you can drag this file Or folder in another folder And subgroup folders You can for example go here And just take this You know the enemy's image And you can put it in another folder It works like that So it's basic thing Next what I'm going to introduce to you

**2:56:05** · Is something called a sprite sheet Now if I were to select The player's image over here If I double click it This is what we have You see This is the image of the players And as you can see It's an image Where we Basically Have two players On a single image And how can we use this?

**2:56:24** · Because if I take the image And I put it over here in the game This is what we see in the game This is the game window And if I move it You see the blue thing now This is the game window And if we try to move them like this You know Our players would go like this We players we we we we we we This is not a game that Anyone wants to play So How can we fix this?

**2:56:45** · First I'm going to remove this From the hierarchy Next I'm going to select the player image And let me just annotate this So selecting the image And over here now Into the inspector tab We have something called A sprite mode Now for the sprite mode Which is a drop down list Over here We need to click on it And we are going to change it From single to multiple So click on it And change it to multiple And then hit the apply button Over here at the bottom right corner In the inspector tab Now when we have done that

**2:57:16** · We are going to click here On the sprite editor button So click on it And here it is This is our sprite sheet And now we need to Separate every individual image On its own And in order to do that There are two ways The first one is the hard one So I'm going to show you that one And how we can do it Is simply by dragging with our mouse

**2:57:38** · So left click And draw a rectangle Around our sprite And there you go So over here I'm going to position it Something like this That we draw it nicely There you go Yara yara yara yara But this can get tedious As you already see Because we have 1, 2, 3, 4, 5, 6, 7, 8 images

**2:57:59** · Multiply by 2, 16 images I'm very good at math So we have 16 images In this sprite sheet alone Imagine you having a sprite sheet Where you have 100 icons 200 icons And all of the good stuff That would be tedious to do So there must be a better way Teacher Yes Yes there is a better way Now a better way is to actually

**2:58:19** · Select this slice over here Button that we have So actually click on it And then the type will be set To automatic So automatic And then we click on slice And there you go Now unity is pretty good At doing its job So in 99.99 times Percent of the times It will slice your images correctly

**2:58:40** · Now Before you start the panic teacher But you say it's going to work Yes I said 99% of the times it will work But sometimes you will have to manually Change these So what you can do for example You can go over here You can change them Something like this You can move them over here And if you don't like how You know the way how they are sliced Or sometimes especially If you have multiple letters Unity will slice in between letters So it will not slice The complete title on its own It will slice the letters on their own

**2:59:10** · So if you have a title From 5 characters for example It will not slice it into a one slice Containing all 5 letters It will slice it letter by letter So sometimes you need to correct things But this is totally fine for me And in order for this to you know work We need to hit this apply button At the top bottom corner So click on the apply button And there you go Now we have every individual image on its own

**2:59:38** · So what I can do now Is go in the scenes And I can drag the player One So one image of the player And I can go now into the game tab And this is now what we see We have a single player As opposed You know a gazillion players That we had in the previous In the previous Attempt Also what I'm going to do

**3:00:00** · Is or show you one more thing Is that you can see That we have names For these individual sprite pieces So we have player underscore one And underscore zero one two three Yara yara yara You see All of that I don't have to you know Resite it to you So I'm going to select the players And again over here We're going to set to sprite editor And what you can do is You can select every individual So you can click on Every individual image over here And then here at the bottom right corner

**3:00:26** · You have the name you see here We have players underscore zero And sun and so forth You get the points You can change this name But if you change the name So you can say for example Player one dash one And for this one It can be you know Player two dash two And all of the good stuff This can be player three dash three

**3:00:45** · Sun and so forth When you change all of that What you can do is Hit apply So now those changes Will be applied And there you go You see we have player one dash one Two dash two Yara yara yara yara You see all of the good stuff

**3:01:01** · Now for you You can rename All of this on your own So you can rename All the players Or basically frames Of the players or Image parts So this is going to be player one This is going to be player two We will need that later on Because we're going to create Player one separately And player two separately

**3:01:18** · So again Just briefly When you select a sprite sheet Click over here And change it from single to multiple This single doesn't mean That the sprite sheet is single It cannot find the girlfriend Or whatever Means it's a single image So don't get those two confused Anyways This is how we can work with sprite sheets And why what is the benefit?

**3:01:39** · Before I go What is the benefit Of a sprite sheet Well the benefit is This will save a draw time Or draw calls It will save draw calls Which will make your game more optimized No matter if it's desktop Console or mobile And especially on mobile This is very useful Because it will save you draw calls It will optimize your game even more

**3:01:57** · So it's better to have This single image Containing all of these players Then to have these players Separated From each other As an individual image Of course There will be times Where you need to separate them This is not like a general rule That you always need to follow But often

**3:02:16** · You will put all your images Into a single sprite sheet And this is How you can work with sprite sheets In unity The next step is to create The animations for the player And for that I'm going to take the player one And I renamed all of this As you should have done in the previous video I mean it's a mandatory But you can do it And I'm going to take player one I'm going to put him over here

### Creating Player Animations

**3:02:37** · This is our player one Look at the chill dude Look at the chill face And all the good stuff I'm going to change the name here In the hierarchy From player one dash one To simply player That's all there is to it Or maybe player one Because we have player two The other player So what I'm going to do now Is since we have over here our player

**3:02:55** · I'm going to go in the assets And right click And create a new folder I'm going to call it And for some reason Didn't create it So going back Call it animations Did I create a new folder Somewhere here By accident I'm not sure No I didn't Anyways In the animations folder I'm going to right click And create another folder That I'm going to call player Or player animations

**3:03:19** · And inside of it We're going to create another folder And I am going to call This one player one Animations And inside of this folder We're going to create another folder And until the end of this video We're only going to create folders And I'm just kidding So I'm going to right click And create And we want to create This animator controller You see this?

**3:03:38** · Animator animator Animator controller And I'm going To call this bad boy player One animator Okay, player one animator Now what I'm going to do Is select the player Here in the hierarchy And I am going to click

**3:03:54** · Here on add component And we're not going to attach The player one animator Component on him Instead here in the search box We're going to filter for Animator Here it is Animator And I'm going to click on it So you can see over here now That we have this component That is called animator It has a property Over here called controller Which currently has none Meaning empty field This player one animator Is going to be dragged and dropped

**3:04:20** · Over there Because he is the animator controller That allows us to actually Control the animations That we are going to create for Our player So what we need to do Is drag and drop the animator one Or player one animator There you go Or we can simply call it player One controller Because it's an animator controller And I'm calling it controller So we drag and drop player One controller on him What is the next step?

**3:04:49** · The next step is to create The animations And for that We're going to select the player Go into the animation tab So not the animator But the animation tab If you don't have them It's under window Animation Here is the animation And animate tour So in the animation tab While we have the player selected Over here See to begin animating player one

**3:05:14** · Create an animation clip So simply click here to create And selecting player one animations Over here Before we press save I am going to change the name To idle And I'm going to press save So now we have the idle animation On the player Now the idle animation Doesn't have any

**3:05:36** · Animation parts Any animation frames And we can see that Because this timeline over here Is empty And if you worked in any timeline On any video editing software Or whatever It's basically the same It's a timeline Where you drag and drop frames So before I try Or I Not try but I actually do So before I drag the frames here

**3:05:59** · I'm going to click here Where it says idle So now when you are inside Of the animation tab And you see over here We have this Where it says below preview We have the idle So what we are going to do now Is click on this idle Which is basically the name of The animation that we are currently in But when you click on it You will see here create new clip Because we already have one clip We don't have that create button That we had a moment ago over here

**3:06:26** · So I'm going to click here Create new clip And I am going to create The walk animation as well So I'm going to say here walk And there you go That's all there is to it So now we have the idle And now we have the walk animation Which means now We can go back into the assets And sprites And for the idle animation

**3:06:46** · I'm going to drag and drop Player one dash one So this is for the idle animation So drag, Drag, Drag, Player one dash one When you want to switch animations Again clicking over here Where it says idle And by the way Now we see that we have frames Now our timeline Over here is not empty anymore We have these frames Which is basically the sprite From the player And if I click the drop down list You see This is the animation Right there So now again where it says idle

**3:07:16** · Click there and select walk And for the walk I am going to choose So I'm not going to choose The player one dash eight Because that is the player's Jump animation So this one over here We don't want that I don't want the jump animation So I want All frames from Player dash seven Or one dash seven Up to player one dash one

**3:07:37** · And I'm going to drag All those frames Over here And voila There you go These are the The frames that we see For the animation Here they are One frame, two frame, three frame You get the point So these are the frames And we can preview this as well What I can do is I can put my animation window

**3:07:57** · Over here And I can go and select the player And now I have the walk animation I can click here The play button And it will preview it You see And he's You know Running like crazy You look at that Like a speedy Gonzalez Look at that R R R R R R R R R R R R R R R R R R R R R R R R I don't know what that sound was But What we can do over here For this bad boy Is we can click on this Or these three dots So while he is inside Of the animation These three dots over here

**3:08:27** · We can click on them And we can go over here From set sample rate From 60 frames To 24 frames This will make him A little bit slower As you can see He is a little bit slower But still he is too fast Of course We will see later on In our game Don't worry about that How we can change this But for now We are satisfied With this result And for the idle animation It's simple I can just go over here Select the idle It doesn't play anything Basically just The basic animation Here it is You know Nothing happens on the screen It's just one frame

**3:08:58** · So nothing will happen Nothing will change In terms of shape of the player And so on and so forth You get the point Now This is for the animation Of the player Inside of the animator Controller You see We have these two animations So we have the idle We have the walk animation And later on We will also see How we can Use transitions

**3:09:23** · Inside of code In order to do In order to do that Actually You see here We have this inside And this is again In the animator tab Not the animation The animation we create Animations In the animator tab We control the animations Now in order for us To go from idle to walk We need to right click On the idle animation And we need to click This make transition And now you will have this Actually for some reason I don't see it But you can see a little Small line over here I can point my mouse

**3:09:52** · On the walk animation I can left click on it And there you go Automatically this line Is now attached on him And you will notice the arrow It is pointing downwards Which means we are going from idle To walk animation Now we need to do the same thing We need to go from walk To idle animation In order to do that Right click on the walk Click here Make transition And click on the idle And there you go So you see these animations now

**3:10:19** · Are you know Pointing to each other Which means we can go from idle to walk And back from walk to idle Now in order for this to happen We need to do this in the code But before that We need to set parameters Or conditions So conditions how these So now these lines that you see This white one And this white one They are transitions And in order for transitions to happen Some condition needs to be met And I can click on one of these transitions

**3:10:50** · And you will see over here That the conditions Are empty You see list is empty We don't have any Conditions to go From one animation to another So how can we do that?

**3:11:00** · It's simple We go here where it says parameters Now maybe for you This tab layers will be You know Open So click on the parameters tab So simply click on it And over here on this plus sign You can click it And it will open this drop Down list Over here you see a float Into your boolean a trigger Now these are familiar things So we are going to select a boolean And I'm going to call the bool walk

**3:11:27** · So you can name it You see over here we can give it a name And I'm going to call it walk And what I'm going to do Is I'm going to select this transition So from idle To walk And now for the conditions over here Click on the plus button You see this plus button over here I'm going to click on that And automatically we have the walk condition If we have more conditions over here If I add another float Or an integer or whatnot It would be visible over here When we click on the drop down list For this condition

**3:11:57** · So the condition is When walk Has a value of true As you can see over here When walk Has a value of true We are going to go from idle To walk animation On the opposite side Clicking the transition from walk to idle Clicking on the plus button To add a condition When walk Has a value of false

**3:12:18** · Then we are going to go back From walk To idle animation Now for now Do not worry about this We will see in the code Later on When we start coding the player To move him left and right And so on and so forth We will see how we can use this in the code But just know that we set up conditions In order for these transitions To be performed Or to actually execute That's all there is to it So going back over here to the player

**3:12:49** · Before we wrap this up I'm also going to select the player And I'm going to go over here And attach a component So first things first I'm going to attach a box Collider 2D component on the player Now one thing that you will notice Is that the collider is circling the player

**3:13:04** · I don't want the collider To fill up this empty space That means when a monster touches The player outside of his body So when he touches this empty space In the code we will detect That the monster has touched the player But because we slice the player In this way because of his hair He is sliced in that way That the collider Tinks that this is also a body part

**3:13:27** · So what we can do is Select the player Go over here for the box collider 2D And click on this edit collider button You see we have this edit collider We have these three dots Button click on that And now we can select these dots over here And I can move the collider up to here And I can move this collider up to here

**3:13:47** · Maybe if you want You can also set the collider Somewhere around here on his feet And I don't know for the hair It can stay as is Because the monsters can only touch the player On his body And I'm going to kit again The edit collider button So that you know We don't edit it anymore Now the last step for the player

**3:14:08** · Is click on the edit And I'm going to attach a rigid body 2D Now don't get confused And attach a rigid body Or a box collider 2D Attach a rigid body 2D Or a box collider 2D Don't attach just box collider Or rigid body Because rigid body is for 3D Rigid body 2D Is for 2D So now We are basically done And before I wrap it up

**3:14:33** · One thing that I want to show That is pretty useful Let's say for example I have and I have duplicated the player So this is the copy of the player game object Control D Or command D on Mac Control D on Windows To duplicate game objects And there you go So I have a player If I select him He has an animator controller Or actual animator component With the controller Box collider rigid body If I were to delete player 1 In parentheses 1 So player 1 clone That's how I'm going to call it If I were to delete player 1 clone

**3:15:04** · So controller command delete He is gone Now I need him back Well In order to do that Again what I need to do Is create the player And go through all the things That we did just now Attach an animator controller On him or actually a component Then the controller Then the box collider Then the rigid body And all of that process As you can hear Not see It's tedious So there must be a better way teacher

**3:15:33** · Well of course The wise master teacher To the rescue What we can do Is we can create prefabs Out of our game objects So right click here in the assets And go to create and folder And I'm going to call this bad boy prefabs A prefab is basically

**3:15:49** · A reusable game object So I'm going to drag and drop player 1 over here And voila That's all there is to it We created a prefab If you take a look at the player over here He is blue His icon is now blue And we created a prefab out of him Over here also in the hierarchy He is a prefab His icon is blue That means I can take him now And delete him from the game And before you start to panic teacher We need to go through it again

**3:16:12** · No we don't Because now I can simply drag the player Over here in the hierarchy And there you go He has all of his components The animator The box collider The rigid body And all of those components He has on him So basically we don't have to do anything More than what we did so far One assignment that I have for you

**3:16:33** · Is Don't forget player 2 Because we have player 1 And we have player 2 Do the exact same things That we did for player 1 Do them for player 2 Try to pause the video And Redo Redo the things on your own Because that's the best way to learn That is how you will memorize All of the things that we're doing faster And more efficiently Of course If you are lost Just rewind the video Rewatch it Do the same steps for player 2 But instead of dragging player 1 animations

**3:17:05** · You're going to drag player 2 animation Just remember Don't drag the last animation And for some reason Over here I have this last I didn't rename it correctly But anyways Don't drag this animation We don't want this one To be for the player 2 We don't want the jump So these are All of these are the walk animations And this one is the idle animation So make sure that you also

**3:17:29** · Do everything what we did For player 1 Do it for player 2 And save him As a prefab as well So now we have the player And he has all of his components And if I were to hit the play button We will notice one thing The player is simply going to go down Weeee There's the player weee And you know the player is having a time But we are not Because we cannot play the game without the player So in order to fix this What we need to do is go over here And inside of our sprites folder

### Sorting Layers And Order In Layer

**3:17:57** · We have our background We have the ground And we have the mood Before we start to add everything Inside of the scene I'm going to right click over here And create an empty game object And I'm going to call this bad boy Game BG And of course set the position to 0, 0, 0

**3:18:15** · You can do this So select x, then y, then z And set them to 0, 0, 0 You can also right click on the transform And click reset And it will reset to default values Which are the values that you see over here So inside of this bad boy I'm going to right click And create another empty game object That I am going to call background

**3:18:35** · So background Holder It is going to hold the background image Now here is the background image I'm going to simply drag it There it is And I'm going to put it here Under the background holder One thing to notice right away The player is not visible The player is in the scene So we can see Actually we cannot If I turn off the background We can see the player But like this we cannot You see the player is over here Here is the player But we don't see him What is the issue?

**3:19:07** · Well you will notice That all game objects That have A sprite render component on it Such as a player And every game object That renders an image On the screen Has a sprite render component So you will notice In the sprite render This additional settings It says Sorting layer And order in layer So what is a sorting layer?

**3:19:30** · What is order in layer?

**3:19:31** · You see Sorting layer is the default So we only have the default sorting layer Order in layer Is basically the order By which game objects Or sprites are drawn Within this layer So in the default layer We have the player On order in layer zero We have the background On order in layer zero If I were to go here And select the player And set the order in layer one Automatically we see the player

**3:20:00** · Right here in front Of the background image being rendered So the order in layer Is basically The order by which sprites Are rendered Within that same layer So within the default layer But sorting layers on their own We can create the new sorting layer So you can click here Add sorting layer And then I can click on the plus button And I can create a new layer For background So I can say this Background for example And I can select the background

**3:20:31** · And I can put it on the background layer Automatically again The player is not visible Why?

**3:20:36** · Well because within these sorting layers If I click here Add sorting layers You will notice that they are You know Put in an order The first layer is the default one We cannot change that The second layer is the background layer The layer That has a higher order In this case the background It will be rendered On top of layers that are behind it So currently the layers default

**3:21:02** · Are behind the background Which means Everything that's on the default layer Will be rendered Behind the background layer No matter if we have order in layer Set to one in the default We said that that's the order Within the layer itself So that is the order within the layer itself But For a higher sorting layer

**3:21:27** · That doesn't count Because we would need to set the player On the background layer And then set the order in layer to one For him to be able to be rendered On top of the background But what we can do also Is we can go over here And we can click on the plus button And we can add a player Sorting layer Player layer Player layer Now what we can do Is select the player And go over here from the default Change him to player And automatically You will notice that the player

**3:21:57** · Is being rendered In front of the background Now because the player is a prefab One thing that I want to mention Is when you make a change on a prefab In the hierarchy This is really important to remember So in the hierarchy When you make a change To a prefab You need to click here Where it says "overwrights" And when you click on that

**3:22:21** · Over here you will see Apply all So apply all changes This is only If you want those changes To be applied to the original prefab Over here That's inside of the prefabs folder Because now that we have created a prefab

**3:22:37** · The original prefab Is the one that is here in the folder If you want To make a change to it While he is in the hierarchy And you want those changes To apply to the original prefab Because if I select the player prefab here You will notice that he is still on the default layer

**3:22:55** · He is not on the player layer So if you want those changes to apply Click here "overwrights" Hit apply all So now this player over here Will also be on sorting Sorting layer player Now select the player 2 as well And go over here And set him on the player layer But you can also use the order in layer

**3:23:16** · To achieve this as well So you can use the order in layer To achieve it You can put everything on the default background And the sprites That have a higher order In layer Will be rendered on top Of the sprites that have a lower order in layer

**3:23:35** · It's simple as that Now since this video turned into Talk about sorting layers And order in layer I'm going to cut it out here And in the next video We're going to continue to put our backgrounds So you'll see how that goes as well But again I encourage you to practice So please make sure that you practice And that way you will see the effects of sorting layers And order in layers The best way possible Now that we know how we can sort the order of the renders

### Creating The Game Background

**3:24:07** · Let us create our backgrounds Over here we have our background The default one The one that we have imported And I'm going to name it "background1" I'm going to duplicate it And it's going to be "background2" Now what I'm going to do for the "background2" Is drag it And I want to align it over here Exactly to be in the line With this one So they are going to be like connected

**3:24:30** · And for that I am going to move this over here And voila There you go But this can sometimes be Unprecise Because we don't know exactly How we can you know Put them together on each other But there is always a better way And a solution So what you can do is

**3:24:48** · While you select the background That you want to move So in our case "background2" I can zoom in over here And I can hold the "v" key Not the "w" but the "v" key And as you can see Let me just go over here Holding the "v" key And when I move my mouse To the corners It will move You see it is moving these arrows In those corners as well Meaning I can take that part of the background

**3:25:14** · And I can snap it To another part over here In our case to the other background So I'm going to take or hold the "v" key It's important to hold it So press it and hold it And now I'm going to select this Or click it with my mouse And just move it over here And voila There you go It has snapped So it has snapped exactly On that background And now I know 100% They are put together

**3:25:41** · On each other I'm going to duplicate these two And move them like this So duplicate and move them like this This one is going to be "background3" This one is going to be "background4" Now this is not mandatory For you to rename them I'm just re-enaming them You know Just so But it's not mandatory It will not make you a better game developer

**3:26:03** · You will not follow the course better And so on and so forth So now selecting these two So I have selected these two Backgrounds Going over here Holding the "v" key Snapping it There you go So again Duplicating them Moving them over here Zooming in a little bit Holding the "v" key And snapping them There you go So this one is going to be "background5"

**3:26:30** · And "background6" And "not 7" but "6" And last but not least What I'm going to do is I am going to duplicate all of these And I'm going to move them down Like this over here And then I am going to snap them And there you go Voila!

**3:26:49** · Actually I can I believe I can remove the down ones I don't think I need them Yeah I don't need the down ones So this is basically What we need In order to form our background So "7" over here "8" over here And "9" And there you go This is our background Of course we are not finished So what I'm going to do Is duplicate this And control "D" And move it over here And let me just Connect all of this

**3:27:17** · There you go Let me just see one thing We need to take the camera Move it over here So this is at 47 I believe I can Take two more So this one and this one And I can duplicate them And actually it needs to be This one this one It needs to be three of these

**3:27:37** · But you can see it can get Sometimes tedious Depending on But I'm going to do it like this Duplicate them And move them over here And I'm going to snap them There you go Duplicate one more And put it over here And snap it Voila There you go So these Or these are my backgrounds Again from here to here I'm going to duplicate them Move them over here Snap them one more time Duplicate this one Actually this one And this one Duplicate it Did I duplicate it?

**3:28:07** · Yes I did There you go They are duplicated Move them over here And snap them And duplicating one more And snapping it over here See this is not hard at all Of course you can As I said rename this But you don't have to do it It's not mandatory Now these are the backgrounds

**3:28:30** · The next what we are going to do Is go back the next Or next thing that we're going to Do in sprites And I'm going to take the moon And I'm going to put it over here In my scene Of course we don't see it I'm going to put it here In the game BG game object But we don't see it Because it's on the sorting Layer defaults I'm going to put it on the background

**3:28:48** · And because we want this moon To always be rendered On top of the backgrounds I'm going to set his order In layer to be one Because the backgrounds are On order in layer two Or actually excuse me zero That's why The moon is going to be On order in layer one And I'm going to position him Somewhere around here So here and here

**3:29:11** · This is where the moon Is going to be Next I'm going to right-click On the game BG And I'm going to create an empty And I'm going to call this one Groundholder Because we are going to hold grounds And we are going to select

**3:29:27** · Or take the ground And put it over here Well there you go We don't see it Because again Set it on background layer And of course Set it over here On order in layer one Because we always always always Want it to be rendered On top of the background And I'm going to move it down here So for example at negative You know Minus 5.78

**3:29:52** · For example I believe this is Totally fine Now I'm going to duplicate it And again do the same thing So over here And voila And duplicate this one And move it over here And voila There you go So we have the ground I can hit the play button And everything is going to be fine And no it's not The player still is falling down He is having fun We and all the good stuff But we are not So what we need to do with the ground

**3:30:24** · Is we forgot the most important ingredient Which is selecting all the three grounds That we created And attaching a box collider To the on them So make sure that you attach a box collider As you can see So now you see the green things Circling them or Surrounding them If I hit the play button now You will notice that the player now Is finally standing on the ground

**3:30:49** · So there you go Now I encourage you I'm going to finish this rapid up I encourage you to pause the video And sort the grounds on your own Till one end and the other end So pause the video Try to do it on your own That's the best way to learn Hear my advice I'm here to tell you Do things the right way So pause the video and try to do it But I'm going to continue And sort them right now So from here There you go Now I'm going to duplicate these bad boys

**3:31:21** · And I am going to zoom in And I am going to set them over here So I'm going to duplicate all of them now And move them over here And come on What did I do?

**3:31:36** · Let me see if I selected all of them Yes I did So going over here No this is not what I want to do You see sometimes you need to Zoom in closer For them to actually

**3:31:53** · For them to actually Snap correctly There you go Finally Finally Finally So selecting one and two Actually this one and this one And duplicating them one more time Going over here Voila there you go So now what I'm going to do is

**3:32:15** · From ground here All the copied ones Duplicate them And move them over here And let's zoom in Just a little bit more Move them closer to the edge Where I want to snap them Come on Snap there you go So Voila These are the Or this is going to be our play field

**3:32:37** · In the game where we can move Where the enemies are going to attack us And all of the good stuff And yeah, yeah, yeah, yeah Now again Something is not clear Make sure that you ask in the comment down below But just make sure that you You know set all of this Make sure that you practice How to snap things And yeah again Renaming these is not mandatory You can do it You're not obligated It's your own will And that's it for me Okay let's get into the juicy stuff

### Player Movement

**3:33:06** · So now we're going to program the player's movement I'm going to right click over here And create a folder That I'm going to call scripts And inside of that folder Right click And we are going to create a C# script I am of course going to call it The play-up Play-up Play-up Play-up And I am going to attach it

**3:33:23** · On the player game object But of course first We do need to wait For the compiler And all the good stuff And anyways We have attached a component Which means we made a change On a prefab So what we need to do Is go over here Click on overrides And apply all So now our copy Or the original prefab in the folder Has this change Let's double click this bad boy And open it here In my visual studio

**3:33:49** · So over here I'm going to take class So now we're going to apply everything What we learned so far Now What do we need In order to move Our game object Or the player So if you remember In the lecture about Variables

**3:34:06** · I said that The mandatory part Of every program Are variable So over here As well So what we can do Is we can say public float And I can say Move force Which is the value Or actually the variable That we are going to use To move the player I'm going to say by default It's equal to 10 And now you will see Why I say by default So next what we can do Is I can say public float This one's going to be The jump force By default is equal to 11f And last but not least Public float Maximum velocity

**3:34:37** · Is going to be equal to 22f Now What Why am I saying By default What is the value by default Well by default If I go back over here Inside of my unity editor

**3:34:55** · And if I select the player You will notice one thing So selecting the player If I scroll down Where the class Are the player classes Which basically is a component That is attached You will notice three variables We have the move force The jump force And the maximum velocity

**3:35:15** · So they are here And why are they here How can we see them Why is that possible Well the reason for that is simple Because we made them public Now We will not need this Maximum velocity I was experimenting something with it But we don't need it So we can remove it safely But what I want to show you over here Is we set this to be public

**3:35:37** · If you remember in the lecture About public and private variables Which is basically called data encapsulation We set that variables That you are going to set variables to be public Or private And so on and so forth Depending on your needs And again I said As a general rule You will make your variables private And create accessors And so on and so forth But as I said That's a general rule But doesn't apply to every situation So over here We need these variables to be public We can make them private as well And I will show you that So we set them over here to be public

**3:36:09** · And now They are also visible Inside of the inspector panel So any variable that you make public It will be visible here in the inspector panel You can edit these changes So I can change this value from 10 to 20 And that new change That I made over here In the inspector panel Will be the value That will be used for that variable So if I set here the value to be 20 Then that value Will be the current value of the move force

**3:36:40** · Same thing for the jump force Now we can make them private So if I say this private Over here And private over here And go back In my editor And if I select the player now You will notice that These variables are missing So they are missing And we cannot use them If you want to encapsulate your value

**3:37:01** · So you don't want the move force And jump force to be accessible In any other script So you want to make them private But you still want to edit these values In the inspector panel Because it's pretty useful You don't have to go into your script Change the code Save the code Wait for it to compile Then use it You can directly change it over here In the inspector And the changes apply automatically So what is the solution over here If we want them to be private?

**3:37:28** · Well, there is one thing that we can do In open close square brackets Above the variable That we have declared So above it We can type serialize field And over here I can type as well Serialize field And I can go back So now These variables again Are going to be visible In the inspector panel Which means they are private They cannot be accessed by other classes

**3:37:57** · But they are visible In the inspector panel We can edit them here And that change will apply So yeah, that's some knowledge Right there Off the bat Next what I'm going to do Is we are going to create a private float Movement X So I'm going to call it Movement X And now we need To get our components

**3:38:19** · Which are the rigid body The animator And so on and so forth So we need to say Private rigid body 2D I'm going to call it my body We are also going to get The private animator That I'm going to call Anim And we are going to have a private string

**3:38:35** · Which is going to be walk Animation by default Or actually The value is going to be walk We will see later on For what we are going to use these Do not worry about that But just now know That we have these components And last but not least We are also going to get A private sprite render SR I'm going to call it like that Because we want to access the Sprite component And we will see Why don't worry about that

**3:39:01** · What I want to talk Next is We need to get these components Simply here We have declared them So they are declared Over here How can we get them How can we get a reference to them So that we can Access them BI code And use them in the code Because now If I try to do anything And I'm going to use Awake for this If I try for example My body Add force new vector 3 Or 2, 2, 2 like this

**3:39:28** · So I'm just adding force To demonstrate my point If I go back over here And if I go in the console Clear everything Hit the play button Notice what is going to happen We have a null reference exception It says Object reference Not or not set to an instance On an object What does that mean?

**3:39:49** · That means that Our rigid body And it's pointing over here See it is telling you It's on in the player class On line 25 And this is the line 25 Meaning we are trying to Modify Or access properties From the rigid body But we don't have a reference Remember When we create a class And then we create an object

**3:40:09** · From that class That object is a reference So that object is a reference And we don't have We only have here A declaration of it That we don't have a reference So the solution can be We can either make it public So if we make it public

**3:40:24** · And then we go over here Inside of the inspector panel You will notice that The body So you see my body now It's currently set to none So it's empty But we have it It's visible over here We can take the rigid body component That's attached on our player And we can drag it over here That will work You see we have attached it We can also drag the player himself Over here And that will work Because he has a rigid body component

**3:40:50** · And that works fine And now we don't have that Null reference exception So this is one of the ways How we can do it Another way We can create it to be private And we can set the serialized field And do the exact same process So we can repeat what we just did So we can go back over here It is set to be private And now I can drag the player over here

**3:41:14** · And voila There you go Because the field is visible Over here In the inspector panel Meaning we can Attach a component directly on it So this is the second way Which is basically the same As the first way But our variable is private Instead of public Last but not least We can go here In the awake And if you remember the lectures We use get component So we can say My body is equal to get component

**3:41:40** · Rigid body 2D And this is how we get that component From code So this right here that we are doing Is equivalent to what we did now By dragging and dropping This same component in the field In the inspector panel So this is how we do it via code

**3:41:59** · Now we are going to get the body We are going to get the animator So over here Not animation But actually animator Here it is This is what we want Last but not least SR is equal to get component And we want to get the sprite Renderer component And voila There you go So this is what we need For now In order to move the player

**3:42:25** · Well actually we only We don't need any of these to move the player Because we are going to move it via Transform But yeah we will need it later So don't worry about that So now below the update I'm going to create void And I'm going to call this function PlayerMoveKeyboard Because we are going to use the keyboard To move the player And as I said Below update But inside update We are going to call this function So what's going to happen Over here What's going to happen is

**3:42:54** · That we are going to get the MovementX Which is the variable That we have created over here So we're going to get the MovementX And that's going to be equal to InputGetAxisRaw And then I'm going to say horizontal And voila

**3:43:10** · That's all there is to it What the hell is this GetAxisRawTeacher I don't know I am going to start the panic You are a crazy teacher You're on some kind of weird Things that you're smoking I'm not saying that's not true I'm just kidding I don't encourage anything Just kidding But yeah, anyways GetAxisRaw

**3:43:32** · You see returns the value Of the virtual axis Identified by the axis name We set horizontal to be that name That means we are going to get the input When we press the left or right arrow key Or A and D key And this value is going to be Either negative one When we press the A key or left arrow Positive one If we press the D key or right arrow

**3:43:54** · And zero if we don't press any keys Now we also have over here GetAxis So that's also what we can do But GetAxis The value goes from zero Slowly up to negative one So it goes 0.01 0.02 And so on and so forth Up to negative one And the same way it goes from the positive

**3:44:14** · To the, you know, from zero To positive one And to show you that I'm going to simply say Debug.log And from here I'm going to say MoveX Value is CallOn+MovementX And Why is it it?

**3:44:33** · It's over here. Plus.

**3:44:35** · Oh yeah.

**3:44:36** · I added CallOn instead of a semi-callon So let's go back over here And let's try it out This is GetAxis Not GetAxisRot Notice in the console I'm not pressing anything The value is zero I'm going to press the A key So Now I'm pressing the A key Pay attention down with For some reason the console didn't do it Okay, let's try to press the A key

**3:44:59** · There you go You see now the console It's showing one And I'm pressing the D key And there you go But one thing that you notice Is pay attention You see what I said It goes from slower Or it goes It doesn't go directly to one Or negative one You see it goes from zero Then 0.03 0.04 You get the point up to one For the negative It does the same thing Except it goes Into the negative side

**3:45:26** · This is If you press the A or the D key Left arrow or right arrow If I use GetAxisRot We're going to see the same thing Except we don't see the 0.01 And two And then three Here we see zero And I'm going to press the D key Automatically we see one I release it we see zero I'm going to press the A key Automatically we see negative one There you go Now you Are probably asking me What is the wisdom If we press those keys And we know the value is minus one or one

**3:45:58** · Well the wisdom is that This is the coordination system This is X And this is Y And down there is also Y And over here is also X The left side is the negative side The right side is the positive Up is positive Down is negative This is on the vertical We're not going to use vertical Now we're using horizontal But you know The same explanation For horizontal applies to vertical So if we press the left arrow key Or the A key The value is going to be minus one

**3:46:30** · Which means we're going to the left side If we press the D key Or the right arrow key The value is going to be positive Which means we're going to the right side That's how we know Where we are going left Or right So next what we are going to do Is we're going to use the transform That position Is going to be plus equal to And we're going to say new vector three And two, I'm going to apply the movement X

**3:46:53** · And zero for the X, zero for the Y Actually Y and the Z And then I'm going to multiply that with time That delta time And then I'm going to multiply that With the move force So what is this plus equals?

**3:47:09** · Well, we explained it Plus equals Is same as if we type transform that position Is equal to Transform that position And then plus all of this over here So instead of typing all of that Which you see It's much more in code We are simply typing plus equals That's a shortcut to add this value

**3:47:34** · To this value over here And we're adding a new vector three And only adding here the movement X Y movement X Because we're only moving on the left And the right side We're multiplying that With time that delta time and move force Before you ask why we multiply like this I will show you right now Let's go over here just to test it out If this actually works We are calling it in the update I'm going to hit the play button So now you see We are moving left and right So what is this?

**3:48:06** · Well, naturally You want to move your character So you're going to multiply it With a certain value If you don't multiply it So if we don't multiply with the click character We only set here the movement X That is the value It will either be zero Minus one or one So if I go over here And if I hit the play button You will notice You see how he's moving He's moving like crazy You see he's moving pretty fast He's moving one unit per frame So we don't want that What we want is to multiply it

**3:48:35** · So that's why we are multiplying With the move force But move force on its own Is a high value It has a value of 10 And I'm not even going to try this Because you saw Just by adding one Or minus one How fast the player was moving If I multiply that With this value It's going to move like crazy But I'm multiplying that

**3:48:54** · With multiply time That delta time And if I hover over You will see that Time that delta time Is the completion time in seconds Since the last frame Basically Time that delta time Is the time Between each frame So if we have 60 frames In a single second You can assume that This is a very low number But in order to smooth

**3:49:17** · Out the movement In unity When you're moving Game objects like this Using the transform component Then you multiply it With time that delta time So now Look at this Look at how The player is moving You see how his movement is smooth

**3:49:32** · It is very smooth It's not He's not moving like crazy And so on and so forth And you get the point So your assignment is Try to move the player Without using multiply Time that delta time So just multiply it with Move force And then Multiply with time that delta time And see the difference Also you can use debug.lock To print out Time that delta time That's on you I want you to do that That's way That is how you will understand These things Much much better So use debug.lock

**3:50:02** · To multiply that And also multiply these values Or just multiply the movement With the move force You get the point And then you will see the difference And then you will see What does it mean When we say Or in another tutorial When somebody is You know explaining What does it say What does it mean That you smooth out The movement with time That delta time So yeah Just test it out And you will see For yourself Alrighty then my little

### Animating The Player Via Code

**3:50:28** · Game developer elves Now that we are moving the player With these two simple lines of code Let us now animate the player So for that Right below this function I'm going to create a new one Void And I'm going to call it Animate player And notice how I am creating functions If you remember The lecture About functions Is that we have functions That don't return anything Denoted by void And we put lines of code inside That we want to execute over and over

**3:50:54** · So you can see now And get an idea How you can create your own functions For example Over here we have the player move keyboard Instead of putting this Or these two lines of code in the update We put them in a function And then we put them inside of update Same thing with the animate player So below the player move keyboard I'm going to call Animate player function And inside of the animate player function We're going to Take advantage Of our movement X variable

**3:51:21** · Variable If you remember All the talk I did about get access raw How it will return Either minus one Zero or one Depending on If I'm pressing Or not pressing the keyboard Keys On my keyboard Keyboard keys on the keyboard Yeah I mean What else is on the keyboard So if I press A Or left arrow We will get minus one Because we're going to the left side If I press D Or right arrow We are going to get one

**3:51:50** · Because we're going to the right side And if I don't press anything We're going to get zero We can use that information Because now I can say If the movement X But first things first In order to animate the player We're going to call Anem Set bool And we are going to call The walk animation And over here I'm going to set it To be equal to true

**3:52:14** · And this is how we are going to Animate the player Now before we proceed to do all of this That I just wanted to do Let me just show you the animation And what will happen When we animate the player So going back here Inside of my game Hit the clear Over here for the console Hit the play button Now when we animate the player I see what happens Well basically The player is animating This whole time Even when we are studying He is running like crazy You see the crazy player Crazy crazy

**3:52:42** · The issue here is If we just call this Anem To set the bool animation Or to set that transition Then you see what happens And I will get to this set bool And what this over here Is don't worry about that Going back to what I was talking about Now we can use the movement X And we can say If movement X Is greater than zero

**3:53:03** · So if it's greater than zero We know That the value is equal to One and we know That we are going to the right side We are going to the right side And you will see in a moment Why this is important Else if our movement X Is less than zero We know that we are going To the left side So over here we can say We are going to the left side Else If movement X is not minus one

**3:53:30** · Or actually it's not If it's not greater than Or if it's not equal to zero That means it is equal to zero So what's going to happen?

**3:53:39** · Well over here we are going to call the animation To play it And over here we are going to call the animation To stop it Don't worry about that I will explain everything What is going on In a moment So when the value is greater than zero Or when it's lower than zero Zero That means we are moving either to the left Or to the right side And we are going to animate the movement Else If that value is not greater than zero

**3:54:02** · Or equal to zero Excuse me Greater than or less than zero Then we are going to Set this to false Because then we are not going to animate the character And let me show you that So when I go back over here And hit the clear button Now when I run the game You will see that the player Is not being animated But if I try to walk He's being animated If I go over here He is being animated And again if I move left All right Left and right left and right He is being animated When I don't press anything He stops moving

**3:54:34** · So that is why I've explained all of that What we are doing with the get access raw And this is how we can use that information For our own benefit Now one thing that you probably saw Is that our player Is not being He is not facing the direction Where he is going So if I hit the play button again

**3:54:54** · If I move him to the right side He is facing the direction That is correct If I move him to the left side However he is moving backwards This is not something that we want And there are two ways How we can fix that First way is for us To use the Transform property

**3:55:10** · Of the player Of the game object And its scale To be more precise We have the scale That basically Determines the size of the player And notice over here What I mean If the scale for x, y, and z Is currently set to 1 If I set it for example to 3 You see how the player Is being enlarged

**3:55:29** · So the scale Will make the player larger Or smaller Now you're asking But to you true you're crazy And while making the player smaller When not animated You are correct I am crazy But you're not correct On the other assumption Because I can use the scale x And instead of using 1 I can say negative 1 And automatically You can see He is facing the opposite side

**3:55:51** · That is one of the ways How we can fix it Another way How we can fix it Is over here In the sprite render itself For the flip property Of the sprite We have the flip x and flip y So if I check the checkbox For flip x There you go He is facing the side

**3:56:08** · The different side You see that If I flip him on the y You also see what's happening But we don't need the y But basically it works the same way That is the reason why I got a reference To the sprite render over here So the sprite render component Has the flip Property over here That we can use To change the direction Where the player is looking So over here When we are looking Or going in the right side We are going to say S.R. sprite renderer

**3:56:37** · Flip x Is going to be equal to false Why false?

**3:56:41** · Well because over here We are going to the right side If I go back You see by default The player is rotated To the right side And when he is rotated To the right side You will notice over here The flip x value Is not being checked So it's not true It's actually false So that's why over here I'm also setting it to be equal to false But when we are going to the right side Then I am going to Set that value to be equal to true Which means now If I go back You will notice So if I hit the play button

**3:57:14** · You will notice That when I go to the right side He is animated correctly If I go to the left side He is also animated correctly And there you go You see the player is being animated And yada yada yada So he's The side where he is going Is being animated Now one thing that I want to show you Is regarding animation What is the set bool?

**3:57:36** · What is this walk animation?

**3:57:37** · True or false?

**3:57:38** · If you remember Inside of the Animator panel We created a parameter called walk If you remember over here Then we used it For these transitions That are going from idle to walk And from walk to idle And vice versa So we are using the walk parameter To control those transitions If it's equal to true That means we are going from idle to walk

**3:58:01** · If it's equal to false That means we are going to From walk to idle And if I select these transitions You will notice that is true And in order to do this in the code Why I'm calling set bool?

**3:58:12** · Because if you remember This parameter that we created It's a boolean It's a bool So boolean or bool Is shortcut for boolean That means this walk Is a boolean And if I want to call it in The code I need to call it set bool Provide the name of that parameter Which in our case is walk So the name over here walk Needs to match up with the name That you pass over here I'm passing my local variable Called walk animation Or class variable that is Walk animation over here That I said it has a value walk What is the wisdom behind this?

**3:58:45** · Well instead of us doing this So instead of you doing This over here and this over here And this over here On three places You hard coded a string Which means it can happen That you make a mistake How you are asking Well because this name over here walk Needs to exactly match with the name you type here

**3:59:05** · If you type here lowercase walk Or with lowercase w And go back And you try to move your character So if I hit the play button And let me go here Inside of the console If I move into the right side It works If I move into the left side You see it doesn't work You see parameter walk Doesn't exist The player is not animating On the left side There you go Because the parameter doesn't exist The name Capitalization And everything needs to match up With the name we use here So instead of Us using a string every single time

**3:59:36** · Over here Which will You know open the opportunity For us to make a bug Because we can easily make a mistake Like this Or like this Or something like that Instead of that I put it in one place So walk animation over here And I just do this And I put the walk animation Here I put the walk animation Here and I put the walk animation over here Because now If I have a problem in any of these I know that I only need to fix it over here And it will apply That fix Everywhere where I'm using the walk animation variable

**4:00:08** · So going back over here When we said that to be equal to true As in these two cases We are moving And that means we need to animate the movement And if I set it to false That means we're standing And we don't have to animate the movement One last thing that I want to talk about When it comes to the animation You will see now That when we are moving Pay attention You see the animation is playing You see the blue thing It is playing And now when I start to move You will notice That these transitions are working

**4:00:39** · And one thing that you will probably notice Is that If I try to stop You see I'm stopping And then I try to move The player is not animating right away You can see like he's sliding a little bit I don't know if you can see that exactly But I'm sure that you notice that bug How you can fix that Is you can select the transition That you have over here And in the inspector You have the settings drop down list And you can click on the settings For the drop down list Now over here we have a few parameters We have the exit time Fix duration Transition duration So on and so forth Basically this time

**4:01:11** · Over here these parameters Will tell us how much to delay the transition Or how long the transition From one animation to another Will be Now in our case we don't need it to be long We want them to be instant So instantly go from idle to walk And instantly go back from walk to idle That's why I'm going to use the transition duration Over here and set that value to zero Because I don't want the transition to last Even a half a second Even 0.01 of a second

**4:01:40** · I don't want that Because it Will make my player slide He will appear like he is sliding a little bit So I'm going to select the walk Or the transition from walk to idle And also set the duration back to zero There you go And if I hit the play button You will notice now How the transition is instant If I stop Right away the player stops If I move Right away the player starts walking You see There you go Now one more thing that we can do If you find the walk animation too fast

**4:02:11** · We already changed it over here So we set the sample rate to 24 Actually we didn't but now I did So actually this is for the idle Excuse me for that one So let's go back over here We set the sample rate Two So it's over here Come on There we go to 24 If you think the animation is still too fast What you can do is you can select Or click here in the animator tab The walk animation You can click on that And over here in the inspector You will notice that we have motion And we have speed The speed is how fast the animation is

**4:02:43** · One is basically the normal speed of the animation If I say over here 0.5 That is half time slower So twice as slow as normal time And if I hit the play button now Let me just move my Unity Editor up And if I try to move You see how the animation is a lot slower So I'm probably going to set that at 0.7, 0.8

**4:03:06** · Whatever you can experiment with that That's up to you It's not mandatory to have the exact same settings That I have So yeah Don't worry about that Experiment it I encourage you to do that And also don't forget Everything we're doing for player one You also need to do for player two So make sure you take the player two And you open the 3.5 folder Put him over here Attach the script on him And apply everything that we did So far for player one That is your assignment to do

### Player Jumping

**4:03:34** · Moving forward with the player The next thing that we are going to do Is make the player jump So inside of my script Over here Right below the animate player What I'm going to do Is I'm going to create void Player jump There you go And over here what's going to happen Is that I am going to test If the input that get button down

**4:03:57** · So before I explain this Let me just write it So get button down And I'm over here going to say jump Now this jump is predefined by unity And it is Basically for every platform But depending on the platform It will utilize It will utilize the keys For that platform For example If we are on computer When we press jump That will count the space If you are on console When you press jump That will be maybe x Or whatever button is assigned to that

**4:04:27** · If you are on mobile Then you know It will be attached But basically for mobile We use other things But anyways This is platform neutral Basically for which platform We are creating Or using this code It will use the default button That is used on that platform To perform a jump Now what is this get button down

**4:04:47** · Let me explain that So I'm going to go over here in the update And I'm going to call here Play your jump Like this Just so that we can see what is going on Get button down You see Returns true During the frame The user pressed down The virtual button Identified by a button name This is going to tell us So debug.log This is going to return true During the frame Where we press down the button

**4:05:14** · So let me just show you that And I'm going to say Jump pressed And let's go back here In my Unity editor Just so that I can show you this Because we have three things That I need to show you So that you can understand When it comes to buttons So going back over here In the play When I press So I have pressed The button Which is the space On my keyboard And you see here Jump pressed Has been printed in the console Now I have released the button Again I'm going to press it

**4:05:43** · And I'm currently holding it This is important to notice I'm currently holding it I have pressed it And I'm holding it But only once We see jump Is pressed You see only once And again I have pressed it And you get the point Why is this important?

**4:05:59** · Well we also have over here Get button So get button up What is this?

**4:06:05** · Well let me show you now If I go back And if I hit the play button Now I am going to press the button The space button And I have pressed it So I'm holding my finger On the space button And I'm not releasing it Notice what happens in the console When I release it Bam You see I have released it It says Jump pressed Again I have pressed it And I am still pressing it And I have released it Now we see jumped Or jump pressed And we have a third thing

**4:06:35** · Which is only get button So let me show you the difference Between them So going back over here Let me clear it Hit the play button Notice now I am going to Press and release You see it is pressed Basically two times I just pressed it and released it How come?

**4:06:51** · Well again I'm going to press and hold You see what happens when I press and hold It is called all the time So basically When we call get button This will return true While the virtual button Identified by button name is held down

**4:07:07** · When we use get button down It will return true When we press down the button And when we use get button up It will return true When we release the button So we press it And then we release it This is important to know And this is not only for jump This is for any key Be that if you're using A, B, E, C The any key on the keyboard And so on and so forth So the same principles apply So this is important to know Now I'm not going to call this In the update function Instead I'm going to call this

**4:07:38** · In fixed updates So it's basically void Fixed update There you go And this is where I'm going to call My jump button Or actually jump Player jump Why in fixed update?

**4:07:51** · And what is fixed update?

**4:07:52** · And update?

**4:07:53** · What is the difference?

**4:07:54** · Well if I hover over the update It will say update is called every frame If mana behavior is enabled Basically meaning if this script is enabled So if the script is enabled On the player Then it will be called every frame If I hover over a fixed update You see this function is called Every fixed frame rate If the mana behavior is enabled

**4:08:15** · Basically fixed update Is not called every frame It is called a fixed number of intervals So fixed number of rates And you can see that It is over here Let me just go I believe it is under edit And then project settings And I believe it's over here Is it under physics?

**4:08:34** · No, it's actually under time Yeah, here it is It's under time And this fixed time step It's currently 0.02 So fixed update will be called Every 0.02 seconds And why is that?

**4:08:45** · Well because in fixed update We use it usually Usually we use it To perform physics calculations Involving the physics system Such as the rigid body So over here If we get button down Is jump Then what we are going to do We are going to say My body that add force

**4:09:05** · Which is basically going to apply force You see It is going to apply force To the rigid body And the force is going to be new vector too Because we want to apply force On the y axis On x we don't want anything So 0 on y It's going to be jump force And over here I'm going to say Force mode impulse Now what the hell is this teacher?

**4:09:27** · I don't understand You're confusing me Is this some weird math?

**4:09:30** · No Same as how we can move our character By using the transform That position And adding to it This value over here This is how we can move a rigid body By adding force to it A new vector too Is denoting We are adding the force on x axis And we are adding the force on y axis Except for the x The value is 0 So no force on x axis And jump force value Which is this bad boy over here On y axis Which means we are pushing our player upwards

**4:10:01** · Force mode to the impulse Basically means Add an instant force Impulse to the rigid body Using its math Basically it's just going to push the player Right up It's just going to push him Move him upwards And that's all there is To it Now if I go back We are going to see What is going to happen So if I hit the play button Now when we jump You see There you go Weeeeee Weeeeee

**4:10:28** · Now the player is falling down a little bit slow I don't want that Because of that I'm going to select the player And here in the inspector On the rigid body You have something over here Called mass You see this mass Currently by default It is set to 1 That's basically the mass Of the player But we also have something over here We have gravity scale Which is currently set to 1 Meaning the gravity will affect

**4:10:53** · The player Normally So 100% If gravity is negative 9.81 or 82 I forgot the value of the gravity This one will denote that Multiply So gravity multiplied by 1 Will affect the player If I set here 2 That means now Gravity multiplied by 2 Will affect the player So he will fall twice as fast

**4:11:16** · Now take a look at this So if I go back now And if I hit the play Or actually If I hit the space button You see how He is You see now He is not falling slower And he is not jumping that high As he Jumped a moment before Now I'm not going to go again And show that You can test it on your own But I'm going to override this And make sure That you do the same thing For player 2 So over here Set the gravity scale to 2

**4:11:41** · Now one thing That we have an issue over here Is if I go now I only want to Allow the player to jump once Because now I can jump in infinity You see I'm just pressing space And the player Is jumping in infinity He is over there Now he will land There you go This is not something that I want So How can we fix this?

**4:12:02** · Well for this We need to improvise A little bit in our code What we are going to do Is we are going to create over here Private Bull Called is grounded So is grounded Now this is not like your parents Selling in your grounded You cannot go outside None of that So don't cry This is basically just a test If we are on the ground So over here If input get button Down is jump And is grounded

**4:12:33** · Is true So now going back to the lecture Of if statements Conditional statements Remember I've used this If to test two conditions So instead of me typing this If input get mouse button Down is jump Or get button down Excuse me, it's jump Then if is grounded And then we you know

**4:12:52** · Jump Instead of doing all that We can simply test that In a single if statement And passing it over here Which means Both of these So this needs to be true That we press the jump button And is grounded Needs also be true So we are on the ground So in this case When we jump We are going to say Is grounded is equal to false So this will not Allow us to jump two times now

**4:13:18** · So it will not allow us to jump Two times And this will fix our Problem So I'm just going to put it here By default to be equal to true So that we are able to jump once And let me show you What I actually mean So if I hit the play button now I'm going to jump once And try to jump again I jump once And I'm pressing the button And now nothing is happening So I'm trying to jump right now But again It is not allowing me

**4:13:42** · To jump again So what the hell is wrong teacher You said that this is going to help us But this is not helping us And I'm trying And I'm going to start to panic Because game dev is hard And I'm going No, no, no Game dev is not hard Let me show you Because Now we have jumped And is grounded is false Which means When we press this button Next time Is grounded will be false So this statement will be Not executed Basically it will be false How can we make the Is grounded back to true again?

**4:14:14** · Well for that we need to go over here Inside of our game And in the ground holder Selecting all of these grounds You see all of these grounds They We need to know When we land on the ground That we are actually on the ground And how can we do that?

**4:14:31** · Well first We are going to go here under tag Select any game object in the hierarchy And go under tag Click on the drop down button And click here add tag Next click on the plus button over here And create a tag called ground

**4:14:49** · And copy its name So make sure you copy its name And now press safe So now we have a tag called ground So I'm going to select now All 31 ground objects That I have in my scene And I'm going to click on the drop down list For the tag And I'm going to select the ground tag Which means now every ground In my game has a tag called ground So now I can go over here In my code And I can call on collision enter 2d

**4:15:22** · Which is a built-in function Into mono develop or mono behavior Which will allow us to detect collision Between two game objects This collision parameter Will be the second object We are colliding with And how it works Is basically the player Over here When he falls on one of the grounds

**4:15:44** · So when he touches them And lands on them He is landing on a collider Because you see We have a collider on the ground And in the code We can use on collision enter To test The collider That we have landed on So over here I can say something like If collision dot game object

**4:16:05** · Dot compare tag Now notice this over here What is this compare tag I'm going to add a string over here And if I hover over It will say Is this game object tag with the tag And over here We can say ground This is everything what we need to do

**4:16:21** · But of course If you remember What I said We are going to copy this We talked about the animation So we are going to do the same thing With the ground So we are going to say private string And I'm going to say Ground tag Is equal to And like this simple Simple as that Easy peasy So there you go We have the ground tag And instead of using the name Like this I'm simply going to pass it

**4:16:43** · Like this over here So essentially What we are asking Okay computer The game object That has a collider That we landed on Is the tag Of that game object Equal to the tag That we passed over here

**4:17:00** · Which in our case Is ground And again Same as with the animation The name That you added for your tag Over here Needs to match up So the name Added here Needs to match up With the name here If the G is capital G also needs to be capital over here

**4:17:16** · If it's not capital And over here It's capital It will not work So if we landed On a game object That has a tag Ground Then simply we are going to say Is grounded Is now equal to true And we can say that Because We know That only the ground game objects

**4:17:35** · Have the ground tag Because we set it up like that It's impossible For other game objects To have that tag So this is the function On collision enter 2D For 2D And simply On collision enter Like this for 3D So it's 2D Let me put that back So it will not work This is the function That we use to detect collisions Between game objects So now I can go back And I can hit the play button

**4:18:01** · And now when the player Falls on the ground We will notice Yeah we have collided Now I can jump There you go And again when I fall I can jump And just to illustrate that What I'm going to do Over here I'm going to say Debug That log And over here I'm going to say We landed on ground

**4:18:18** · Which means now We can Jump Grounded is true And let me just clear the console Hit the play button And let's try it out So now You see we have landed on ground Don't mind this Being printed 2 times Because you know When the player lands Because of the mass And the physics system He will jump off the ground A little bit Same as in real life When you throw a ball

**4:18:40** · And it starts jumping And you know That sort of thing So let's try it out There you go You see we landed on ground And again There you go We landed on ground And this is why And how We can utilize a boolean And collision In order to Allow the player to jump Only once And not allow him to jump

**4:19:01** · A gazillion times If I run the game now We can play the game With the character He can move And all of that But we have one problem That is The character Goes Out of bounds Of the camera And uh Yeah Simply That happens So we don't see the player What we need to do now Is make the camera Follow the player So let's go back Here inside of our scripts folder And right click And I am going to create a C# script

### Camera Follow Player

**4:19:25** · Call it Camera Follow And what I'm going to do now Is select the main camera And I am going to Attach the script On the camera Simple as that And double click it Open this bad boy In visual studio So over here Let me just tag the class And what we are going to do Is We are going to get A reference to the player's transform So we're going to say Over here Private transform And I'm going to call this player And we are also going to have

**4:19:57** · A private Vector 3 Which is the 10th position Of the camera Now in order to get the player's transform We are going to use Something called Find with tag And we saw the use of the tag Over here When we tried Or when we are comparing the tag Here with the ground tag To see if we are colliding with the ground tag Well for the player Select him And over here under tag

**4:20:25** · Simply select the player tag And make sure that you apply to all And make sure that you also do that For our second player So don't forget to do all the changes We do for player 1 Do those changes for player 2 So tag player 2 as well So what's going to happen now Is that here in the start function When we initialize the game We are going to say player Which is the transform property Is going to be equal to game object And its capital G So game object dot find with tag

**4:20:54** · So find me a game object With the tag that we specify here And the tag is player And I need to say dot transform Because we want to get the transform property From the player Now of course You can create the variable Separated over here But this is the only place Where we are going to use this So only place over here We are not going to use it anywhere else So it's totally fine to use it over here

**4:21:18** · Because even if we make a mistake We know where to look This is only Or we use these things over here Like this So we declared them just in case When we are using it in multiple places For the most part But again When you're using it only on one place You can do it like this Or you can create a variable It will make no difference Anyways So now This game object Find with tag And if I hover over You will see returns One active game object tagged

**4:21:46** · With the tag Returns null If no game object is found So this basically This function is built into game object And it will go inside of the scene And it will look for a game object That has a tag That we specify over here And it will get dot The transform position Or property Excuse me From that game object So going back over here In the update What I'm going to do is I'm going to use the temp position

**4:22:12** · So temp position And not this one So copy this Temp position is equal to Transform dot position Which is the current position Of the camera Next I'm going to say temp position x Is equal to player Dot position dot x And then simply We're going to say transform

**4:22:32** · Dot position of the camera Is equal to the temp position So what's happening over here Is that the temp position Of our Or basically the temp position We are storing that value over here So we are storing the current value

**4:22:48** · Of the position of the camera So this is The current position of the camera So x, y, and z Next take the temp position Which is storing The current position of the camera And the x of that position Set it to the player's Current x position And now assign that value Back to the current position of the camera And this will Basically what this will do is

**4:23:15** · The camera will have its own y and z position But the x position will be the one From the player So this is how the camera Will follow the player And we can test that right now So we can go back over here We have attached that On our main camera So it is attached If I hit the play button Now we will see that the camera Is following the player But you can see this glittering This glittering And what the hell is this teacher You know Why is this Some kind of recording issue?

**4:23:45** · No, it's not My recording is totally fine Don't worry about that But the issue here is We are calling this in update Because also here The player is being moved In the update function as well Now this is not a bad thing But sometimes It can cause problems Like the ones you see over here

**4:24:06** · So in cases Where you want the camera To follow the player Usually what you do Is you call that code In late update Now in the player We saw that we have update We saw that we have fixed update But what is late update?

**4:24:19** · Then I've explained what is update And what is fixed update But what is late update?

**4:24:24** · Well basically late update Is called every frame If the behavior is enabled Same as with update But what is the difference?

**4:24:32** · The difference is that The late update Is being called After all calculations In update are finished So after every calculation That is done in the update Such as moving the player That calculation is finished So we have a new and fresh player position Which is already calculated And done for us To use in late update

**4:24:57** · So now we will not have conflicts Because both functions are called In the update We will not have conflicts Because of that So we can go now Over here And if I hit the play button We will notice Now what is the difference?

**4:25:12** · You see now We don't have that jittering We don't have that glittering And all of the good stuff So yeah That is that But we do have one issue And that is I can walk with the player As you can see But what happens When we get till the end You see over here What happens When we get till the end of the level

**4:25:31** · Is this over here You see I don't want this I don't want the camera to follow the player up to here I want the camera to follow the player Up to here for example So up to We can see that The value for the position is negative 60 So what can we do In regards to that?

**4:25:50** · Well basically We need to go over here And right below our 10 position We need to create two serialized fields And they are going to be Private float So it's private float And one is going to be minimum X And another one is going to be maximum X Now you're going to be like teacher What you're doing?

**4:26:10** · You wrote two This is not what...

**4:26:12** · Calm No Do not worry about it Basically Instead of me typing it like this And then again Private float Then maximum X You get the point And another serialized field If we have two variables Of the same type Such as a float over here We can declare them on a single line

**4:26:33** · By using comma So I can say here comma And I can remove this from here And this is counted as Two float variables One is called minimum X Another one is called maximum X And that's all there is to it And I set them to be serialized fields

**4:26:49** · Because over here We can now edit them In the inspector tab So over here in the inspector So the minimum we said It was negative 60 So somewhere around here There you go Exactly here Negative 60 Is the minimum X Which means the maximum Is positive 60 Right away So right off the bat I can just go over here And I can say positive 60

**4:27:13** · And there you go So this is up to where We want the camera to follow the player And we don't want the camera To follow the player Outside of those bounds But okay How can we make that happen in the code Because at the moment Nothing is happening in the code Well basically What we need to do after We get the temp X From the player current position We need to test If temp position X Is less than the minimum X value

**4:27:42** · That means we are going Outside the minimum value So for that We are going to say temp position X Is equal to minimum X And if temp position That X is greater Than the maximum X value Than temp Position x is equal to the maximum value

**4:28:03** · Now in order for you to see this Visually In a better way I'm going to take the game tab And I am going to Instead of setting here negative 60 I'm going to say here negative 20 And positive 20 So only up to 20 Will my camera follow the player And you will notice that now So I can go over here And we can see the camera So you see I can move And pay attention The camera's value currently is at 4 When we get to number 20 Which is currently now You see pay attention over here The player now goes out of bounds

**4:28:35** · You see the player is again out of bounds He is here You can see him We don't see him in the game tab though We see him in the scene But the camera is not following him anymore Because now the player's You know the allowed maximum X Is greater So the temp The player's position X is greater Than the maximum allowed X Where the camera can be Which means now we are setting that Position of the camera To be to that maximum allowed position

**4:29:02** · Which basically means We are allowing the camera To go up to this point over here So if the player's position is over here Way off the point We are not going to allow that Instead we are going to set the camera's X to this position And not allow it to go Out of bounds So this is what we are doing

**4:29:23** · And we just need to go back And change the values again To the original ones Which is negative 60 And positive 60 So negative 60 And positive 60 Which means now I can run the game And again let me just Demonstrate that for testing purposes

**4:29:42** · Let's go into the positive side So that we can see it over here We will notice now When the player gets to that value You see the player now is moving The camera is not moving anymore You see the player can go He can go outside of bounds here But we are not going to do that In our gameplay But the camera will not follow him And this will not allow us You know to see the gray area Where our game is not played And yada yada yada And all of the good stuff If the player tries to go back Now the camera is following him back

**4:30:10** · Up to the negative Or the minimum In the negative side Or basically the maximum In the negative side So it will follow him Up to negative 60 You get the point And it will not go beyond that point again So this is how we can strict The movement of the camera Even though it is following the player And not allow it to go out of bounds If something was not clear In this lecture Please make sure that you ask in the comment below And I will explain everything What is up gamsters?

### Enemy Animations

**4:30:44** · See what I did there Gangster, gamester See what I...

**4:30:48** · Anyways, never mind Moving forward here In our sprites folder We have our monsters Our enemies basically So what we are going to do Is the good old sprite mode From single So the sprite mode Doesn't want to be single He doesn't want to have Be alone He wants a girlfriend So I'm going to give him a multiple Let's go over here Sprite editor And voila These are the monsters So we have the ghost We have You see the monsters that we have

**4:31:12** · So what I'm going to do Simply click on the slice And yeah There you go So here is the ghost I am Going to rename these bad boards So select the ghost And I'm going to say ghost And this is going to be ghost 1 And then ghost 2 And then ghost 3 Let's go over here 3 And then 4

**4:31:34** · And then I mean This is a little bit tedious So I am going to stop with the ghost I don't want you to You know like Watch me rename all of this Because well Yeah You don't want to watch that Simple So you can rename it If you want it on your own I'm satisfied with this Let's go and hit the apply button So now we need to

**4:31:54** · Create enemies From our From these sprite sheets Now what I'm going to do is Go over here into the animations And right click And create a folder To call it Enemy animations And inside of course We are going to create folder For every enemy So the first one is going to be the ghost

**4:32:13** · And it's not with double S It's a single S ghost And then we have enemy 1 And then we have Enemy 2 Simple stuff No need to explain what I'm doing It's pretty clear Right click over here Pretty clear Right click over here Throwing bars at you You know Moving forward Here this We are going to be ghost controller There you go And going back over here We are going to have the enemy controller Or enemy 1 controller Enemy 1 controller

**4:32:45** · And last but not least And this is by the way The animator controller Which you can see And you can assume Because we already did this So enemy 2 controller Now you can pause the video To do all of this Because you know This is not new stuff We did this for the player And I'm going to challenge you

**4:33:04** · Right here Just stop the video Pause it That is And try to create Animations for the enemy 1 2 and the ghost On your own before You continue watching this video And I'm going to continue And create it Right here So let's go into the sprites folder

**4:33:19** · I'm going to drag the ghost And I am going to name this bad by ghost Set here The order in layer 2 player And what I'm going to do Is set the player on order in layer 1 Or basically they can be on the same order in layer I don't think that matters Because we don't want You know When they collide with each other They are going to You know The player is going to disappear When he is touched by the enemy He's going to die So yeah I mean simple as that Next we have the enemy 1 So going to say here What did I write?

**4:33:52** · Enemy Enemy 1 And set him on the player layer Player layer No Going back over here There you go Come on Come on Finally Finally Finally And last but not least Let me just see this one Is at enemy 14 So yeah

**4:34:17** · Enemy 14 There you go Select him Player layer There you go And I'm going to call this bad boy Enemy 2 Not enemies but Enemy 2 There you go So What is the next step?

**4:34:36** · The next step is to select All three of these And attach an animator Controller on them For the ghost As we already know We are going to attach The ghost controller For the enemy 1 We are going to attach The enemy 1 controller And for enemy 2 We are going to attach The enemy 2 controller I am also going to

**4:34:58** · Select the ghost And attach a box Collider 2D on the ghost So this is what we want Basically on both of these So attach a box Collider 2D And on all three of these We are going to attach A rigid body So rigid body 2D Now for the ghost Everything is cool We don't need to change anything But for these two enemies I do not want Their Collider to be over here Instead of the Collider Is going to be over here So select him

**4:35:29** · And here On edit collider We did this already There you go This is the Collider So do this And select or click on that button And simply just move the Collider Like this And I know I told you To pause the video And first do the animations But the animations Are going to come anyway So that was your assignment Hopefully you did it And I know I don't doubt That you did it Because you are a Phenomenal student I gave you a plus Right now There you go So let's go now

**4:35:59** · And create the animations Selecting the ghost And I'm going to move The animation tab over here Let me just select the ghost What is this?

**4:36:08** · Why is the player Not the player one But the ghost For some reason It is not giving me So ghost controller There you go Animation Why is it giving me the animation Of the player Let me just

**4:36:25** · Close the tab Close the Animator tab as well So go back over here Into animation And animation Okay Here we go So now when I For some reason It was showing me the player Over here So the player's animation I don't know why So let's go over here Into the ghost And I'm going to Simply call it ghost animation We are only going to have one So don't worry about having

**4:36:52** · You know Idle and so on And so forth That is only for the player Because the ghost Are going to be constantly moving Selecting enemy one I'm also going to create The animation for enemy one So over here Enemy one I'm going to say this Enemy one animation There you go And selecting enemy two Click on create And I am going to save this

**4:37:16** · Into the enemy two folder And this is going to be called Enemy two animation Simple Selecting the ghost And going over here Into the sprites I'm going to drag and drop All of the ghost Animations over here Voila There you go Now for our enemy one

**4:37:36** · We need to select This enemies From 13 to 7 Or from 7 to 13 This is for enemy one So make sure that you select Enemy one And it's from 7 Up to 13 And then simply drag And drop them over here And last but not least We have enemy two From 14 to 20 And simply drag And drop them over here So let's go now

**4:38:00** · Inside of our scene Just to preview Animations Here is the ghost I'm going to preview Animations See the ghost Is wobbling Like a crazy person See It's wobbling like he You know Has a seizure Or something We do not want that So over here We are going to Set the sample rate to 24 And Voila I believe this is okay

**4:38:23** · Yeah Enemy two Or actual enemy one Yeah He's running like crazy There you go Crazy crazy We don't want that So over here I'm going to set the sample rate to 24 And now he is running a little bit more normal

**4:38:38** · Which is what we want Last but not least Enemy two Again Let's see Yeah Crazy crazy Going back over here Sample rate 24 Hit here the play button Now he runs a little bit better If there is a need We will also open over here

**4:38:56** · Again window And any made Tor tab We will open it And then we will You know Slow down the animation By selecting it over here So you can select the animation Over here Click on it And then over here Inside of the inspector You have this speed So one is the normal speed of the animation

**4:39:15** · Point five For example It's half the speed of normal animation Point one Is like 10% of the speed of the normal animation You get the point You can experiment with that And see that on your own So going back here In the prefabs We just need to drag and drop them So ghost Enemy one And enemy two In order to save our Enemies as prefabs Moving forward My game dev gangsters Now we are going to move our enemies

### Enemy Script

**4:39:45** · So let's go over here Inside of the scripts folder And right click And create a new C# script And we are going to call it monster Because why not?

**4:39:53** · Let me just double click This bad boy Open it over here And what the hell Are we going to do Right now teacher Let me just Put this to be on the full screen Because you know Why not?

**4:40:04** · So what do we need Inside of our script?

**4:40:09** · We need a public float speed variable Which is going to be the speed Of the monster And I'm going to set it to be Hide in inspector The reason for that is Because we do need this to be public We need it to be accessible In other script We will see that Do not worry about it But I don't want it to be visible In the inspector tab I also want the private rigid body

**4:40:34** · 2D Which I'm going to call my body As you already know You know me You know me Your body My body Anyways My body is Equal to get component Rigid body 2D And not the question mark This is what we need So we need to get a reference To the rigid body And that's all there is to it Now instead of the update Inside of fixed update And we explained What is the difference?

**4:40:59** · Fixed update Update and late update So in fixed update We are going to use my body Dot velocity And that's going to be equal to New vector 2 Speed for the x My body dot velocity Dot y for the y What the hell is this teacher?

**4:41:16** · You're confusing me now I want to kill you I totally understand Don't kill me You will go with jail And you cannot learn game development But what I want to say over here is Instead of Such as what we did with the player So for the player jump We use the ad force So there is not only one way How we can alter the gravity Or forces affecting the rigid body One of the ways is using ad force Another way is to actually set the velocity

**4:41:46** · Now the velocity You see the It's a linear velocity of the rigid body In units per second Think of velocity as a force Or basically It pushes the player to move And let me just draw this again Basically velocity pushes the player to move Left, right, and up and down So this is what velocity will do And as you can see over here We have the velocity for the x And we have the velocity for the y In a 3D game We would have velocity for the z axis So over here What I'm doing is I'm adding speed value to the x velocity

**4:42:19** · Which will push the player to move Left and right And for the y velocity I'm just using the same value That it already has Because we do not want you Change the y velocity for the enemies They're just going to move On a horizontal line So either left or right Depending on where they are spawned

**4:42:42** · Within the game So that's why I only use the speed On the x value And apply the same value Of the current velocity that we have On the y axis So that's all there is to it This will move our enemy On this well straight line And I'm going to do this First of all I'm going to select all of the enemies And attach the actually the monster script

**4:43:08** · Monster, there you go And I am going to override all So apply this to the prefabs But I'm going to turn off Enemy 1 and 2 And what I want to do With the ghost is I want the ghost to be floating So the ghost is not going to go on the ground

**4:43:26** · So he's not going to go on the ground Like this and move and stuff like that Instead the ghost is going to be floating But before we proceed We do need to go back over here And inside of my awake Well we can delete this later on But the speed value is going to be equal to 20 So that we actually So that we actually are moving Or that we are actually going to start to move the ghost

**4:43:52** · I'm just going to set it Let's say it's 7 Just by default So that we can see that he is actually moving Because currently Over here it is set to be No value Which means the default value is 0 So it will not move the ghost

**4:44:08** · Let's just run the game And I want to show you something So going back over here As I said I want the ghost to float But the ghost As you can see He is moving He is animating And you see this Also the ghost flipped I wanted to show you this A little bit later on in the game But I guess Well now is a good time to do it And I'm going to use the player as an example And how I'm going to do that Is I'm going to take the ghost over here And I am going to put him over here

**4:44:35** · And I'm going to turn off the monster script So that you can see what's going to happen With our player As I said I wanted to show you this later on But you know The time is right now Because you saw it So let me explain it So you can see on the player as well So pay attention When the player falls on the ghost You see he fell down And now Look at what happened Look at what's happened The player is like swimming like a fish Look at that He's swimming forward Oh backwards What is happening over here

**4:45:02** · Is that In the rigid body And then over here We have these constraints So again Selecting the rigid body And then over here We have these constraints We have these freeze position And freeze rotation We need to freeze the zero rotation For the player And for the enemies So make sure that you freeze the zero rotation And now when you freeze the zero rotation When the player lands on the enemy As he did before You see he is not falling down Because you know His zero rotation is frozen

**4:45:32** · And he cannot fall down So we're going to do the same thing For the enemies So let me just turn them on Because I want to save this So first freeze the zero rotation For all enemies And then apply to all Before I forget So that we don't have any issues later On we're going to do this For the player too As well in the prefabs folder So now I can turn off enemy one and two again Because what I want to do Is as I said I want the ghost to be floating So this is how I want the ghost to be floating I don't want him to stand on the ground

**4:46:05** · So let's go over here and hit the play button And we see that the ghost again Is standing on the ground This is not something we want to do If I turn on the monster class You see He is moving I don't want this I do not want the ghost to do You see what he's doing

**4:46:21** · So what is the solution How can I make the ghost float And not fall down First things first Let me turn on his monster script That I turned off And by the way When I say turn off This is that button over here This check box You see the check box over here

**4:46:37** · Will determine if the component That we are currently working with If that component is Enabled Or not Now for the rigid body We don't have that option But over here For the box glider We have that option Which means This component can be attached

**4:46:53** · On this game object But it can be turned off So it will not have any effects Same as what you can see Over here with the monster It is turned It is attached But it's not turned on Which means It's not affecting The player Or in this case the enemy Now in order for us To actually have the enemy Or in this case the ghost to float What we need to do Is we need to Select here our rigid body And you see the first component Or actually the first How can I see this?

**4:47:22** · The first variable Or the first Whatever you get the point My brain is stuck So this body type Over here The first thing that you see Is it is set to dynamic What we can do Is we can set it or click on it And you see the drop down list We have static We have kinematic We can set it to kinematic Now what the hell is this kinematic?

**4:47:43** · Well kinematic It will allow forces To affect this rigid body So it will allow it And we can apply forces But it will not apply gravity to it Which means it will not start It will not start to fall down So if I hit the play button now And if I go into the scene You see it is floating Now it is not falling down The reason for that Is because gravity is not affecting

**4:48:09** · Our ghost anymore And he can you know Go like this forever Later on we will see How we can stop him from doing that Don't worry about that But the point is We have made him float So now we made him float And he is now floating And not falling down Like he used to do So this is how we can fix it

**4:48:28** · And if you are wondering What this static is Well static is basically For a game object That you want to have a rigid body For whatever reason But you don't want to apply forces And you don't want to apply Gravity on that game object Basically that game object Has a rigid body But it is not movable So that is what static is

**4:48:47** · Kinematic Forces can be applied to it But gravity is not applied to it And dynamic You know it has gravity And all of the other stuff So I'm going to click here Overrides We're only going to do this for the ghost We're not going to do this for the enemies Because the enemies Are going to walk So they are going to walk And that is totally fine The only thing that we are going to do now Is let me just turn off MonsterScript for the ghost Just so that I can see one thing And that is How high I want to set the ghost

**4:49:18** · So because we want our player To be able to jump over him And at the moment He is not able to jump over him So what we are going to do I'm going to lower him a little bit more Something like this And I believe this is Yeah So this is how we can make our ghost

**4:49:34** · Or how we can make the player Jump over the ghost So what we need to do Is we need to take the ghost And lower him a little bit So down something like this Because also One thing to notice Is that all the changes you apply During gameplay So when I press the play button And now it is applied Any change you apply Right now To any of these game objects They will not be valid When I turn off the gameplay

**4:50:00** · So for example I can take the ghost And I can remove his box collider Which if I go over here And select the ghost He doesn't have the box collider It is disabled As you can see But when I You know Unpause the game You can see It is enabled So any change you make During gameplay Will not be applied So you need to apply it Or change it again When you unpause The game Or basically stop it So I am going to lower him Just a little bit more Something like this I believe this is totally

**4:50:27** · This is enough Because the player can jump Over him We want to make him Or make the player jump Over the ghost Or otherwise He will kill him every single time When he passes by And also Don't forget To enable the monster script And also Hit apply So on overrides And hit apply To apply changes To all the prefabs Or Just to the prefab of the ghost So there you go And for the enemies They can stay as is Because we are going to spawn them

**4:50:55** · So we are going to spawn them And then when we spawn them They are going to land down They are going to fall down Because gravity is affecting them And you know You can lower them A little bit down if you want to But as I said Gravity is affecting him There is no need to do that We will spawn them And then they will fall down And start running left and right

### Enemy Spawner

**4:51:15** · In order to put these monsters In the game We need to create a spawner And this is what Every game does And a spawner is not something like You know A game object That can right click And create a spawner No It's called a spawner Because it spawns New game objects In our case enemies And we are going to create it With a simple script Now before we do that I'm going to right click over here And create an empty game object That I'm going to call spawner

**4:51:39** · Because this is the spawner And he is going to hold the script That we are going to use To spawn these enemies Now also I'm going to right click on the spawner And create another empty game object That I'm going to call left And another one that I'm going to call right Now what we are going to do with the left one

**4:51:57** · Is I'm going to take him And first I'm going to tag him So that I can see him here Inside of the game What do I mean by tagging them Well when you select the game object For example the left one What we can do is Over here at the top You see in the inspector We have this cube icon We can click on that And when we click on that We can choose one of these tags over here

**4:52:18** · I can click on this yellow one And there you go You see now I have the left tag It's being tagged And I can see it in my game Where it is Because when it doesn't have anything We cannot see it in the game And in the game I mean in the scene It's not going to be visible in the game anyways So over here I'm also going to tag the right one Let's put a red one on him It doesn't matter And I'm going to take the left bad boy And I'm going to position him over here So somewhere around over here Let's say negative 68

**4:52:49** · I believe that is enough So negative 68 And the right one is going to be at positive 68 And there you go Let me just see for the left one Yeah I set the position to negative Let's take the left The right one And there you go When I say position negative I mean on the y-axis So that we can bring him a little bit down Maybe a little bit more down Something like this So negative 2.73 So we can use this for our This is for the ghost

**4:53:20** · Because we want to spawn the ghost at that position Which is negative 9 So negative 2.95 This is going to be the position for the ghost Because we are going to use the left and the right As positions So these are the positions Basically where we are going to spawn our enemies

**4:53:36** · And we set them Approximately over here This is the right one And this is the left one So from here Is where the enemies are going to be spawned And the ones that are spawned here Are going to run towards this way The ones that are spawned here They're going to run this way And that way The player is going to jump Avoid them And yeah, yeah, yeah, yeah So let's go here inside Of the script folder Right click And create the new C# script And I'm going to call this bad boy monster spawner

**4:54:03** · And of course Wait for it to, you know, create And then select the spawner game object And attach the script on him And let me just double-click the script So that we can open it in Visual Studio I'm going to tag the class here at the bottom And I am going to give a little bit space over here So we can see what we are typing So the first thing that we need Are the enemies or the monsters that we are going to spawn So I am going to create the serialized field Because I want to create a private game object array

**4:54:36** · And this is going to be our monster reference Now why monster reference?

**4:54:40** · Because we are going to create copies We are going to create copies From these game objects over here that you see So enemy want to And ghost And I'm going to delete them from the hierarchy So we don't need them Instead I'm going to select the spawner And over here we have the monster reference Currently the list is empty I'm going to go into prefabs And select enemy want to And the ghost But before that Let me just select the spawner And you see We can drag them like this We can drag one enemy So we can drag it over here

**4:55:11** · Then we can drag this enemy over here But it can This can be tedious How?

**4:55:16** · Imagine that we have Imagine that we have Let's say an over here I'm going to say zero Imagine we have 100 monsters In our game And we need to drag them one by one That will not work as you see So what we are going to do is We are going to select the spawner You see select the spawner And when you select him Over here in the inspector tab At the top right You will see this small icon

**4:55:42** · That represents a lock Click on it What this will do is It will lock the inspector panel On the spawner game object Or any other game object That you have selected While you click the lock icon So now if I click on the right The inspector panel Will not show me the properties Of the right game object Or if I click on the player It will not show me the properties Of the player So I have locked it Which means now I can select The enemy one, two and the ghost

**4:56:10** · And simply selecting them Selecting them I can drop them over here And all three are dropped at once Inside of this array And now since I have done that I can simply Uncheck this lock icon Unclick it and there you go So now when I click on the player It will show me the properties of the player When I click the spawner It will show me the properties of the spawner You get the point Now We are also going to do the same thing For the positions So over here I am going to create a serialized field

**4:56:39** · For private transform And this is going to be left position And right position So let's go back and do this For both of them So we have left and right And here is left So here is the position And here is the other position And there you go So we have the left position We have the right position The next thing that we need

**4:57:03** · Is a reference to the spawn game object So I am going to say here Private game object Spawned monster And we will see What I am going to do for that And the last two things Are private int random index

**4:57:18** · And a private int random side Because we need to determine On which side We are going to spawn The enemies left or right And we also need to determine The index of the spawn monster And all of this is going to happen In a coroutine So I am going to create ion numerator And why a coroutine?

**4:57:39** · Well because we can call it Over an interval of time Which means That we can call it over and over again Every 5 to 10 seconds And so on and so forth We will see that in a moment So I am going to call this one spawn Monsters Like this There you go And what I am going to do In this coroutine Is first you are going to say Yield return new Wait for seconds And then we are going to set the seconds

**4:58:07** · To be random range So random range Between 1 and 5 So between 1 and 5 seconds Every single time We are going to spawn new monsters And over here I am going to say Start coroutine Passing this over here And there you go As I said We are going to Call this

**4:58:29** · In a random interval So between 1 and 5 So every time This random range is called It will give a number Random number Between 1 and 5 And this is how many Or how much time we are going to wait Until we spawn a new monster So in order to spawn a monster We are going to say random Index is equal to random range Between 0 and monster reference So monster reference dot linked

**4:58:57** · Because this is going to give me And we talked about this And we saw how we Used this in arrays So using arrays So we are using random range Which will give us a random number Between 0 and the arrays length minus 1 Which means the array will not go out of bounds So we will not try to access an element That doesn't on an index That doesn't exist And we will randomize Those enemies every single time Also our random side Is going to be equal to random dot range

**4:59:29** · And we are going to say between 0 and 2 So now what we are going to do Is I'm going to say spawn monster Is going to be equal to We are going to call a function That's going to create a copy Of our monster So we are going to call instantiate And we are going to pass the monster reference Which is this bad boy over here And we are going to pass the random index Inside of the square brackets

**4:59:56** · So every time we call instantiate It is going to create a copy And if I hover over you see Actually we don't see So we don't have an explanation But anyways The instantiate function We will create a copy Of a game object that we pass it here As a reference And we are passing it The monster reference array And the random index Meaning it will return either 0, 1, or 2

**5:00:22** · Because we have three enemies over here So three monsters So it will either return You know enemy 1, 2, or 3 Depending on the index If index, random range, or random index is 0 It will return the enemy Which is at index 0 and so on and so forth So now we have the monster And we have the random side So now we are going to test If our random side Is equal to 0 Because we are using here a random index

**5:00:49** · You see random range To determine the random side So if the random side is equal to 0 This is going to be our left side Else if So or simply else If it's not equal to 0 Then we are going to be on the right side This is how I'm going to determine If I'm going to spawn the enemies on the left Or on the right If we are on the right side

**5:01:12** · I'm simply going to say Spawn monster That transform that position Is equal to left position That position So remember in our game We set the left Game object to be over here So we are using its position Which is this one Or right here that you see it on screen And we are setting the spawned monster That we spawned over here If the monster Or if the random side is the left side

**5:01:39** · Then the position of that monster Needs to be on the left over here Which means the monster Is going to come from the left And go to the right side And next what we are going to do Over here in the monster We set the speed to be equal to 7 We are going to delete this We don't want it like this Instead here in the spawner game object

**5:02:00** · I'm going to say spawned monster dot Get component And we are going to get the monster component from it Dot speed And we are going to set that to be equal to random range Between 4 and 10

**5:02:16** · You see what I'm doing here This is why I set this float to be public Now of course The speed can be private And that we can use accessors But as I said That is a general rule in programming But it doesn't apply every single time There is no need for us to create a public

**5:02:33** · Or actually a private speed Underscore speed Or call it underscore speed Then create a public accessor Float speed Then create a getter and a setter We don't need to do that Simply we don't So this is also You know Sometimes you need to simplify code Even though It doesn't follow the official conventions

**5:02:52** · Of all programmers And true programmers Have died now For me saying this Anyways You get the point This is why I set the random speed Or speed to be public So now we are setting it To the random range Between 4 and 10 Else If we are on the right side Meaning the monster is spawned On the right side I am going to copy all of this

**5:03:14** · And I am going to set his position To the right position So this time he is not on the left position Because now he is spawned on the right side And I am going to set his speed To random range But I am going to set a minus in front of it Because it is going to be a negative number The reason for that is because If the value is positive It will push the monster to go from here

**5:03:38** · To here in this direction From left to right But when we spawn the monster on the right side We need him to go from right To left And we know in the coordinate system I have explained We have the x and the y So this is the x coordinate This is the y coordinate On the right side is the plus Which means the positive On the left side is the negative Similarly for the y

**5:04:02** · Up is positive Down is negative Which means If we want our monster To go from right to left Meaning going to the negative side We need to set over here Minus in order to Make him go to the left side The last thing over here that we need to do Is we need to Set the rotation

**5:04:25** · Or the monster needs to face the direction Where it is going Because if I spawn the monster Any monster, if I spawn this one On the right side And he needs to go to the left This is how it will look like I am not going to demonstrate that Because the default orientation of the monster

**5:04:41** · Is right Or looking to the right side So if he spawn to the right side And going here He needs to look at that He needs to look left So instead of We saw the example with the player We used the flip And we flipped it like this So for the player That is what we are going to do But for the monster I am not going to flip it Instead I am going to use the scale And set it to -1 You see now And when I set the scale to -1

**5:05:10** · Then it is going to flip that So it is going to flip the monster So I am going to say spawn monster That transform that local scale Not local, ill or angles But local scale Is equal to new vector 3 -1 f 1 f 1 f So -1 for the x to flip him And 1 and 1 for the z and the y

**5:05:33** · Okay, we have everything We are calling start coroutine In the start function Let's test it out We have the monsters Here is our spawner We have the monsters attached on it There you go We have everything And if I hit the play button

**5:05:48** · And go inside of the scene We will see one of the monsters Soon being spawned There is it There is it One monster is being spawned Which is the ghost And there you go So now he is going to come over here Here he is And we need to jump over him And there you go And all of the good stuff And yada yada yada But we have one issue

**5:06:08** · Let's try it again And you will see what the issue is So let's try it over here Let's see the monster That's being spawned There you go Another monster is being spawned And also look at the monster It has So we have two issues That we will fix Do not worry about that But Notice We only have One monster There is no other monster being spawned What is the issue?

**5:06:28** · First I'm going to clear that issue Then we're going to clear The issue of the monster Getting stuck over here And why he is not moving Well, the issue is that We're calling the coroutine Only once You see the coroutine is being called Only once And when that is the case Well, you know, what we can do So what is the solution?

**5:06:49** · Well, we can Do this So we can go over here And I can I can select Everything that I have over here So I can copy all of the code Inside of the coroutine And I can put all that code In a while loop So while true So while true

**5:07:07** · We are going to put All that code Over here Inside of that loop What this will do Is it will basically run forever And I know That I said When we talked about loops Especially while loop And I said that the while loop Needs to have a condition That sometimes Will, you know That eventually Will come to be false Or otherwise this will run forever And it can Block or Crash your computer But in this case Because we're calling it in a coroutine And we have the yield return statement

**5:07:38** · Every single time the while loop Is being called And let me just See where the while loop So here I'm going to say while So while loop So that we know where the while loop is Let me explain How the while loop actually works So when the execution Enter the while loop So it enters It will execute all the code

**5:07:56** · That's in the while loop And when it reaches the end So when it reaches here The end of the while loop It will then revert And go back over here And again Execute all the code That's inside That's why it's important As I said When we talked about it That's why it's important To have a condition That will eventually Come to be false Because The while loop is very fast

**5:08:20** · It runs very quickly And quickly and runs You know If you put it in In an update Or basically When you start it In the start function It will run forever Update function Runs on a while loop You know Every update function In every program It runs on a while loop So it runs forever And it runs pretty fast So if you don't have a condition That will eventually Come to be false Then You can have issues But why am I putting this now In a coroutine?

**5:08:48** · You're going to say Teacher, you're crazy Listen to yourself Do you hear what you're talking?

**5:08:51** · I hear myself No, I'm crazy But that's another topic What is the catchover here Is we have this Yield return statement Which is a coroutine So we are in a coroutine This means that Every time the while loop Goes back So it reverts back To execute all of the code

**5:09:09** · The first line That it will execute Will be this Yield return And it will wait It will not continue To execute the code That's down below Before the return Before this wait Is over So and the wait Is either one Or five Or in between So it basically The wait second Is either one second Two three or four Or five seconds So we will wait that time Before all of this code

**5:09:35** · Gets executed And that's why this while function Will not be heavy It will not crash your computer Because it is not executing This whole code Every second Every frame No It is waiting This many seconds That we specified And then it is Executing this code But if we didn't have this statement If you just create a function Which is not a coroutine And you don't have the Yield return And you just put this code In a while loop Then it will crash your computer So that is the difference

**5:10:05** · That is the difference Because A coroutine needs to wait So now we have a while loop That is set to true Which means infinity It will run over and over and over again We can go back In our Unity Editor So let me just go back And wait for it to compile And all of the good stuff There you go So when I hit the play button So when I hit the play button

**5:10:27** · We will see the monsters Being spawned And over and over again You see they are being spawned And again one of the monsters is stuck I will talk about that You see the other monster pushed him And yeah there you go You see the other one is stuck again And why don't we have a monster Being spawned from the right side For some reason For some reason every single monster There you go One is spawned on the right side Now before I You know Wrap this up What is the issue over here Why are the monsters being stuck?

**5:10:57** · Well if we go over here For our grounds We set all of the grounds To have a collider So they have a box collider And also the monsters They have a box collider What is wrong?

**5:11:08** · So when I select enemies They have a box collider Well the issue over here is That sometimes you can see That these box colliders Can get stuck on each other I don't know what is the reason Don't even ask me So what we need to do Is instead of having box colliders On the enemies I'm going to click the enemy The prefab one So we have the prefab I'm going to click on it And then I'm going to click here Open prefab So open prefab Now I can edit this prefab

**5:11:34** · Instead of having a box collider Which I'm going to remove I'm going to attach a capsule collider 2d So search here for the component capsule collider 2d There you go Of course we're going to resize it So I'm going to click First I'm going to Click here on these three dots You see here these three dots That you have on the component You can click on those three dots And you can rearrange Where the components are In the hierarchy So I don't want the capsule collider

**5:12:01** · To be below the monster script I wanted to move it up So it's above it And yeah it can be below the rigid body I'm going to click on edit collider For this capsule And I am going to move it here And here And here Something like this I don't care about the top And this is This is that So now that we have a capsule collider Monsters will not be stuck anymore

**5:12:25** · We're going to do the exact same thing For enemy 2 or monster 2 So select it Remove the box collider And then attach a capsule collider 2d And click on the three dots Move it up Click on the edit collider And move it over here There you go Move it over here There you go Move this a little bit here There you go And click on the edit button again

**5:12:50** · And voila it's finished Also do this for both players Because they can get stuck as well So I'm going to remove the Box collider from the player And I'm going to click on open prefab first And go over here And select it And click on the edit And let's go and edit the player's collider

**5:13:09** · There you go For defeat Just move it a little bit here Click on the edit button And voila And do the same thing for player 1 So now we are going to avoid player 1 Getting stuck in any of the players Actually getting stuck Again capsule collider Again move the component up

**5:13:27** · So move it up There you go Click on the edit button This is perfectly arranged on this one So I'm just going to move the One for defeat a little bit up And that's all there is too It's there you go So now the enemies will never get stuck

**5:13:42** · So even if I hit the play button Even if I hit like it's you know That's important to even Even if I hit You see now Every single time they are spawned They will never ever get stuck now Because they have a capsule collider Which is a bit different And don't worry about this You see enemies colliding with each other And having the player here This is going to you know When the enemy starts a player

**5:14:03** · They are just going to you know Destroy him Don't worry about that But the issue that I want to show you now Or actually the issue that we fix Is that the enemies Are not getting stuck anymore What is you being cracking my gangster Now going back What we need to do is We have a few issues So let's hit the play button And see those issues that we have The first and obvious one Is that when the player Is colliding with the enemies You know Basically nothing is happening You know The player is not being destroyed

**5:14:34** · He is not being killed As you can see Bam bam bam You know They are hugging now the player Gets into a weird twist I don't know some kind of you know I don't want to say what is going to happen But you get the point So we do not want that In order to fix that

**5:14:52** · What we need to do Is we need to go inside Of our script for the player So let's go into the player script And here we have on collision Enter 2D What we need to do is We are simply going to test If our collision That game object That has this collision So basically collision 2D Is details returned about

### Enemy Collision

**5:15:15** · By 2D physics About the collision callback This is basically it So we talked about this function And we told Or we said that here Is the information About the other game object We have collided with Now from the collision We can access that game object And then we can say again Compare tag And this time what I'm going to do Is at the top We are going to create another tag So currently we have ground But now I'm going to say Private string Enemy tag

**5:15:42** · Which is going to be equal to Enemy Like this I mean it's simple How else I'm going to call it So over here I'm going to put that tag And I am going to compare it So if the game object We have collided with Has a tag enemy Then what?

**5:15:57** · What we are going to do We are going to destroy the game object Which is The current game object Who is the current?

**5:16:04** · This is the Player game object So this game object See the game object This component is attached to You see when I hover over It says the game object This component is attached to And this script Or component is attached On the player game object

**5:16:19** · Now we're going to have one more Issue when this happens And you're going to see What that issue is And then I'm going to show you Another way How we can detect collision And we're going to implement that On the ghost So let's go over here Into the scene And yeah By the way The tag enemy is not You know Defined It's a good thing to define the tag So there you go Let's go over here And make sure that you type Enemy

**5:16:42** · And there you go Also, because I'm stupid We need to go and select The enemies and the ghost And tag them over here With the Enemy tag Otherwise, as you can see Right away, inside of the console We got an error Because the enemy tag Which is the one over here Which is this bad boy over here Was not defined And the same rules apply So this You know The signature Capital E Enemy and everything So we need to match up With the enemy tag That we added over here Or otherwise No, no works So let's see the first issue

**5:17:14** · That we have Let's wait For the enemies to spawn There is one enemy He is going towards the player He is rushing And come on And the other one Has reached him Notice now When he touches the player The player is going to be straight BAM And voila You see We have a problem Now, what is this problem?

**5:17:34** · It says over here The type Or the object of type transform Has been destroyed But you're still trying to access it Where does this happen?

**5:17:43** · Notice here And you need to learn How to use the console In the assets Or there are also more powerful consoles Than this one But this one is also pretty good But you need to learn How to use them So basically, it says here When I click on it It points over here Where the error is And the error is in the assets

**5:18:00** · Scripts Camera Follow Script Online 26 So we need to go back Into the Camera Follow script Which is this one And Online 26 Which is this over here It's trying to access The player position But we have destroyed the player Because over here When he collides with the enemy We have destroyed him And that is the issue So how can we fix that?

**5:18:24** · Now, this is going back to classes And objects And again, let me just explain So you have a class over here And you create an object From this class And you can create another object From this class Now, these two Are references They are references So here you have For example, variable P1 Which is pointing to this reference And you have variable P2 Which is pointing to this reference When you destroy one of these references So you destroyed this one P1 So P1 now is equal to null

**5:18:54** · It is not pointing anywhere So it's not pointing anywhere To no reference And this is what happens This exactly The error that you just saw Happens because we don't We are not pointing Or this For example, in this case Which is this player transform

**5:19:12** · It gets destroyed So this player variable Is left without a reference It's null It's empty That's why you get an error here So how can you fix this Is you can test over here If And over here, I'm going to use an exclamation mark And I'm going to say player And then I'm going to say return Now, what the hell is this teacher?

**5:19:32** · You are confusing me How can you use an if statement?

**5:19:35** · Well, basically what I'm asking over here Is if player is not equal to null To demonstrate that I'm asking here If player is not equal to null Or actually, if player is equal to null Excuse me, then return This means if the player reference Which is this one over here If it's pointing to null Which will happen When it gets destroyed over here That means return What does happen with return?

**5:20:02** · Teacher, you said that only function That return a value Can have a return statement But over here, you have void Let me explain what will happen In a void function When you use a return statement What will happen is When the code enters in this function And it starts executing It will first execute this line of code And because this is an if statement It will test the condition So it will test if the player is equal to null If it's true, it will hit this line

**5:20:31** · If it's not true, it will continue to execute this line Then this line, then this line, then this line Then this line, this line And at the end this line But if this is true So this turns out to be true And it hits this line Automatically, it will skip all other lines

**5:20:49** · It will go till the end And it will exit outside of this function And then of course, it will return again And repeat the same process So in a void function In a void function When you use return statement It will simply not execute any code

**5:21:07** · That's below the return statement So any code below The return statement Will not get executed If return statement is executed In a void function This is in a void function And also in a function that returns a value

**5:21:25** · For example, if you test for something And that is true And then you return the value here Even if you have more lines of code below They will not be executed So this is what the return statement does And over here, instead of me typing If player is equal to null We can simply add an exclamation mark In front of it The exclamation mark Will make what's after it The opposite So essentially what we're testing here Again, even if we don't use

**5:21:56** · Pay attention over here Here we're testing if we have a player Meaning if we just leave it like this If player, it's the same as if we were Have typed if player is not equal to null So basically, these two statements Are exactly the same So here we're testing if player Is not equal to null Meaning player has a reference So this player variable has a reference If we add an exclamation mark in front of it

**5:22:21** · Then we're asking If the player is null Meaning the player doesn't have a reference Because it will test if player Doesn't have a reference And if that is true Then there you go It will, you know, hit the return statement Basically, again Essentially what we're asking over here With the exclamation mark Because it will make what's after the opposite We are asking If the player Is equal to null

**5:22:50** · And if that is true There you go It will hit the return statement Now if we are asking If we say here If exclamation mark true Now this will be false Because exclamation mark Makes what's after it the opposite If we say exclamation mark false Then this will forever be true And there you go So this is what we are doing here

**5:23:13** · Again, if something is not clear Just ask in the comment below But don't worry Many other examples of this will come So Now if I go back into unity We will not have this null reference exception When the player gets destroyed Because now we are asking Is player null?

**5:23:27** · If that is true We will hit the return statement And you know We will not execute anything That is below it Now what I also want to show you Is pay attention now When the ghost touches the player There you go Player has died And notice We don't have the null reference exception anymore But what I want to do Is with the ghost Because the ghost is floating There is no need for the ghost To have a solid body Meaning I'm going to select the ghost

**5:23:57** · Over here in the prefabs And for Higgs box collider I'm going to check this Is trigger checkbox So make sure this is checked So I'm going to check it And what's going to happen now Is that we need to go in the player class And right below on collision enter And this is another way How we can test for collisions Over here I'm going to check On trigger enter 2d

**5:24:21** · It also has a collision Basically it's a collider 2d But also named collision as a parameter And we can do the same thing We can call over here We can say If collision.gameobject.compare tag To the enemy tag And then we can do the exact same thing We can call destroy Our game object Now the collision tag Or the collider tag Parameter Or the collision Collider 2d game object It can access compare tag right away

**5:24:54** · So we can simply call Compare tag on collision itself Whereas we cannot do it on collision 2d But on collider 2d We can do that Now also one thing that I want to show you Is inside of an if statement If after it We only have a single line of code You see over here We have an if statement like this And then we only have one single line of code We can omit curly brackets So we can omit them And this is totally fine It will work If however we have one more statement

**5:25:25** · Below it For example game object.attack And we are going to change the tag to W E This right here is not part of this If statement Instead we would have to put it Inside of these curly brackets Like this And now this will be part of the if statement

**5:25:42** · So if after the if statement We only have one line of code We can omit curly brackets And only put one single line of code Below it And then it will execute So we can do the same thing over here And we can do the exact same thing over here So now we have on trigger enter

**5:26:01** · And in order for this to work So in order for on trigger enter to work And for us to detect collision in it One of the colliders We are colliding with Needs to have this trigger checked So let me just scroll down a little bit So is trigger You see it needs to be checked So again let me just get it Not not highlighting the mouse So is trigger check box Needs to be checked In order for us in the code

**5:26:32** · For this on trigger enter to be executed One other thing that I'm also going to tell you Is in order for us to detect collision in unity One of the game objects needs to have a rigid body Try Try making two game objects Without a rigid body collide with each other And see if these you know If the collision will be called Anyways now let me go over here And hit the play button We will notice That now when the When the ghost touches

**5:27:00** · And I'm going to delete the enemies Who are not the ghost Hoping that the ghost will soon turn out Just so we can see Come on Where is the ghost?

**5:27:11** · Where is the ghosty ghosty ghost?

**5:27:14** · Come on I hate it you know When I want to try it out It never happens You see when I Where is the ghost?

**5:27:23** · Still no ghost Finally there is the ghost Come on So now you will see That when the ghost Touches the player And here is the ghost Pay attention now Bam Same exact effect The effect is exactly the same But the only difference is That the ghost collider Ghosts collider with an S Denoting that the collider Is you know From the ghost Is a trigger That's all there is to it And a trigger Is not a solid collider

**5:27:55** · So things can pass through it So even if we don't use this line of code Now the Ghost game object Will simply pass through the player But we have one issue We have an issue now With other enemies Pay attention over here Other enemies can Obscure each other When they collide Or when they You know Clash with each other When they touch each other You will see that So just wait for Another enemy to be spun on the right

**5:28:24** · Because now you will notice That my ghost Is a solid game object And it simply Went through It went through the enemy But these two enemies They are solid Notice now They are solid They cannot pass through each other And look what is happening You see So now they have an issue They are not passing through each other And this is the difference Between Between a trigger And a solid Game object You see solid It's like a wall But notice now the trigger one You see The trigger is not solid And he passes through

**5:28:56** · Solid game objects How can we fix this issue With a solid game object?

**5:29:01** · Well for that We need to go under edit So click on edit And then project settings And then go into physics 2D And next we need to scroll Over here Where we have the layers And what are these layers?

**5:29:13** · Well basically They are the collision layers That we have over here You see this one layer And it says the currently We have a default But when we click on it You see we have transparent Raycast Blah blah blah But we can also click on add layer And we can also click here

**5:29:30** · To create a new layer That I'm going to call enemy And I'm going to hit the enter button And let me just go back over here And refresh now The physics 2D So now you will notice That inside a physics 2D We have an enemy layer An extra layer Created Over here So what's the deal with this layer?

**5:29:50** · The deal is That here Inside of this Physics 2D Over here for the layers We can specify Which layers Can collide With each other You see the checkbox Is checked on every layer Which means every layer Can collide with every layer But over here If I hover over on this one You see now You will notice that It will say Enemy slash enemy meaning This layer With the enemy layer

**5:30:14** · See here is the enemy layer And here is the other enemy layer So it is basically Telling us The checkbox is telling us That the enemy layer Can collide with itself It can collide with the enemy layer Well I'm going to uncheck that checkbox Which means Now every game object That is put on this enemy layer Will not collide With another game object Who is on that same layer?

**5:30:40** · So now I can simply take the enemy 2 and 1 And even the ghost And I'm going to set them From default layer To the enemy layer So simply change their layer From default to enemy And now look what is going to happen So I'm going to hit the play button And now when two enemies

**5:31:00** · Collide with each other You will notice And you saw that We saw a moment ago Pay attention This one is going to pass You see he passed through him Of course the ghost Is going to pass through Every game object Because he is not solid He is a trigger But now these game objects For example Look at these two They just pass through each other Now look at these two They are going to pass through each other And the red one is going to pass Through both of these green ones And over here See Simply they are now passing through Each other Because we have denoted Over here in the physics system

**5:31:32** · Okay The enemy layer Should not collide With enemy layer So the physics calculation Between them is totally ignored And we cannot Even if we have any code That will detect that It will not run Because they are on the layer That is set to not collide

**5:31:48** · You know With itself And this is how we fix this issue Of course if something is not clear Make sure that you ask in the comment below Moving forward With the issues that we have This one is an interesting one And that is What happens with The Monsters Who The player jumps over So for example Now we see the ghost Is coming over here And the player will jump

### The Collector Script

**5:32:09** · Well I didn't get to jump But you get the point Anyways What I want to say Is when he goes Out of bounds Say it Let's pretend that I jumped over him So he goes out of bounds Over here And same as these That will go out of bounds Over here You see And forever They will go out of bounds Notice And even these players Or actually these enemies The zombies They will start to fall down Notice now They will start to fall down Because They Have gravity affecting them You see they are falling down

**5:32:38** · And You get the point What's up with them What can we do?

**5:32:42** · We don't want to keep them in the game Because now they are out of bounds Out of the reach of the game Even they are inside We cannot reach them Because you know The camera will follow the player Up to here Approximately It will not follow him outside of that So what we can do Is we can create an empty game object

**5:32:59** · That I'm going to call Collector Collector Holder With capital C And I'm going to right click And reset his position And I am going to create Another empty game object This one is going to be Left Collector And you can assume That I'm going to position The left collector Over here What the hell is this teacher?

**5:33:19** · Well, I'm going to attach a box Collider on the left collector And here is my box collider Now what we can do with a box collider That you already know Is we can click on this edit button And we can resize it Like this As you can see And there you go And yada yada yada But we can also resize him Over here So we can set offset And everything Should be okay So 1-1-1 But what I can do Is I can resize him over here See like this I can resize him on the On the size property

**5:33:50** · That we have over here There you go So I can simply take his y And I can resize it And maybe just a little bit lower The x Something like this And there you go And I am going to position him

**5:34:05** · Somewhere around here There you go So this is where I want to position him This is the left collector And I'm also going to make sure To check the Is trigger check box And I'm going to Duplicate it With command D Or control D on windows And this one Is going to be the right collector So right And I'm simply going to Instead of minus So negative 72.7 I'm simply going to remove the minus Which will simply bring him over here

**5:34:33** · And voila That's all there is to it Now let me just see The left one is I think is a little bit closer I don't think so Maybe we can move in a little bit Here Just a little bit closer Maybe negative Negative 72 exactly There you go Negative 72 exactly And this one is going to be at 72 Exactly So the right one There you go So What are we going to do with them?

**5:34:59** · Why is this important?

**5:35:00** · Well let's go now Inside of the scripts And right click And create a new C# script I'm going to call this one Collector You saw the movie The Collector This is not that guy He's not going to you know Steal your ribs in You know Put some deadly traps Not that collector But this collector over here What we are going to do with this one Is that we are simply going to Say void on trigger enter 2d

**5:35:26** · Because we check the check box To be a trigger And simply we are going to say If collision.compare tag Not composite So collision.compare What did I type?

**5:35:39** · Compare tag Here it is And I can put here the enemy tag There you go And again We can either create the variable over here Which we will do Because we are also going to have Or if you have the On Collision enter Instead of on trigger enter So if you have on trigger enter You would put Private string

**5:36:01** · Enemy tag And all of the good stuff We already discussed this But over here I'm going to leave it as is And then if that is true I'm simply going to say destroy The collision.game object Now this time I'm not going to destroy The game object itself So I'm not going to destroy the game object Meaning simply game object like this Which is referring to the game object

**5:36:23** · This component is attached On which in our case is the collector No Instead I want to destroy The Collision.game object Meaning the game object I have collided with Which in this case is the enemy Because we are comparing the tag With the enemy tag That means we want to destroy the enemy Now we can do the same thing with the player Because the player can also go out of bounds

**5:36:45** · But let me just show you for this So if I go back now Inside of my editor And wait for the scripts you compile You will notice now When the enemies reach the collisions Or the collision game objects

**5:37:00** · So they are spawned As you can see There are the enemies They are going And yah, yah, yah, yah, yah All of the good stuff Maybe we can take the right one And position in a little bit You know The collector is for some reason Not The collector holder For some reason not positioned correctly But anyways It's not important Notice now Bam, you see He is out of bounds And he is destroyed And all of these over here You see now Look at that Bam, he is destroyed And there you go Let me just see The collector for some reason Is he positioned correctly?

**5:37:33** · Yeah, yes he is But yeah, it doesn't matter Anyways, what we can do Is we can take the right one And maybe position a little bit closer That's all there is to it Nothing else So anyways, you saw that When the enemies Reach the collector game object

**5:37:49** · They are automatically destroyed And they are no longer Inside of our game Because you know It's only logic We do not need them In the game Since they are going out of bounds Because beyond this point They will be out of bounds Out of reach We cannot reach them And so on And so forth So just as a One more reference

**5:38:12** · I will show you that So there you go You see when this one reaches The collector, there you go The green line Bam, he is destroyed Again, destroyed So there you go Now, as I said We can do the same thing with the player Because essentially The player can go out of bounds If I go back over here And if I try to run You know If I try to jump Let's try to jump And avoid

**5:38:38** · The enemies And yeah, I cannot avoid them But anyways You get the point If I try to jump And reach this end Over here I can potentially go out of bounds And we can Let me just take the spawner And turn him off So that we don't have enemies Because for some reason I'm not that good at this game So I can potentially reach Even though the camera Will stop following me But I can reach out of bounds You see, I can reach these bounds You see where I am Look at where the player is And I can If I go over here See, I am out of bounds And the player is

**5:39:22** · If you want And as I said That will work as well You can also Over here You can add another Line of code And I'm going to do that Just to demonstrate The use of ore Remember the ore pipes That we used And they are over here Or if collision compare tag Is player tag So if we collide with the enemy tag

**5:39:42** · Or the player tag We are going to destroy the game object This is a shortcut Instead of us typing over here If collision compare game Compare tag Is colliding with the enemy Just imagine that we don't have this And then over here We would use You know Collision compare tag with the player Instead of typing all of this We can type it in a single line of code Like this And remember this was A lecture about if statements

**5:40:07** · And this is the reason Why I implemented Just to show you That implementation And explanation So if we collide With the enemy tag Or the game object That has the enemy tag Or the game object That has the player tag We are going to destroy them Even though for the player It's not mandatory I've explained why But you can do it like this And it will work the same

**5:40:29** · Way as it did For the enemies Yo yo yo Game dev gangster So the next step Since we have everything working Basically We are now going to create a main menu And in order to do that We are going to go here in the scene Staff You see we have one scene Which is called Gameplay Where all of the cool action Everything what we did so far Is happening Now we want to go into the boring part Where we have the menu So under file I'm going to create new scene So again it's under file And then click on new scene And we want You see this one Basic 2D built in

### Unity's UI System

**5:41:01** · So this is what we want Contains an autographic camera Set up for 2D games That's all there is to it So simply double click on that And this is what we want Now this is an Untitled Basically we still didn't save it In order to give it a title So I'm going to control Or command s on mac And it's control s on windows

**5:41:20** · If you used any basic program You know how to save Anything in that program So in the scenes folder I'm going to save it And I'm going to call this bad boy Main menu Now before we can proceed And do all of the good stuff First I'm going to introduce you To Unity's UI system

**5:41:36** · Now in order to create any UI element in Unity You are going to right click And go under UI And when I say right click I mean in the hierarchy And then go into the UI And here are Different UI elements That you can have So text, text match Text, mesh, pro Image, raw image Button, blah, blah, blah, blah I'm going to show this example

**5:42:01** · With the image And when I click on image To create it You can see this gigantic thing Is created over here Which is basically the canvas Because every UI element That you create Must be a child of a canvas Because Pay attention over here I clicked to create an image But actually A canvas was created An image was created And this event system was created So what the hell is this?

**5:42:24** · Don't get confused As I said Every UI element Needs to be a child of a canvas And since we didn't have a canvas Didn't, yeah, didn't have It's not didn't have It's didn't have So there you go I'm also an English teacher So We didn't have a canvas Previously in the game Or in the scene That's why it created a canvas If I were to go right click Right now and create for example Another image It's simply going to add it As a child of the existing canvas

**5:42:53** · That's all there is to it And this event system Is basically A game object Containing all of these scripts That allow us to detect Input on the UI system When we touch a button Even when we touch an image When we touch a text object So on and so forth So they are created automatically Now what's important over here Before we dive into the image And some, you know, UI examples The canvas game object controls How the UI elements, you know, look like

**5:43:23** · What's important to know When it comes to the canvas game object When you select it Is this canvas Over here that you have The canvas component Now over here we have something Called render mode Which currently is set to screen space

**5:43:38** · Over lay This means that it will overlay the screen No matter the size You see where the image is The image is at the bottom left corner It's a simple white image And I'm going to take it And I'm simply going to put it At the center by using 0, 0, 0 So now no matter as I said You know which resolution we use It will fill out that resolution As you can see I'm changing the resolutions Full HD Even in portrait mode If I go into full HD It's still going to, you know, fill out that It's going to fill out the whole screen

**5:44:10** · So this is when it comes to screen space overlay When I say overlay, I mean It's going to overlay the screen And what is weird Or what somebody or most beginners will find weird Is that this is the main camera So this right here is the camera Of the, you know, of the gameplay And when we add the player This is where we see it But this huge big thing over here

**5:44:35** · The other big rectangle This is the canvas So notice over here This whole thing is the canvas And this small thing over here Is the camera And yet when you go into the game view This is what you see It's not like, you know, huge So I'm not sure how this works

**5:44:54** · Behind the scene But basically This is, you know, screen space overlay It overlays the screen Now one thing that is also important When it comes to the When it comes to the canvas Is this over here The canvas scaler See here we have something called Scale mode Which is currently set to Constant pixel size What I usually do is I change that And I set it to scale with screen size And then I enter my reference resolution

**5:45:22** · That I use to create my game Which in most cases is 1920 By 1080 Which is the full HD resolution And I set here to match with And height to 0.5 Which is equally So basically what this means When I create my assets I create them Like I'm creating a game

**5:45:42** · For this full HD resolution And I set the canvas scaler To this option So scale with screen size And then I put here 1920 by 1080 And match the width and height equally Why is this important?

**5:45:56** · Well this is important Because later on When you ship your game on different devices It will use this reference resolution When I say on different devices Most of this is concerning mobile And I assume a lot of you guys Want to, you know, create mobile games So when you ship your game on mobile devices

**5:46:14** · There are different screens Different resolution Different sizes Well when you create your game like this It will try Or unity will try To scale your UI assets To constantly fit Your reference resolution And yet look very good

**5:46:29** · On any other resolution Where your game is being played This is basically what it is doing So next over here We have something called Screen Space Camera Which is the same exact thing As with Screen Space Overlay Except now we attach the main camera Here as the render camera And notice here in the scene How the canvas is going to get small There you go We don't see the huge thing That we had so far Instead It is small Or basically It is the same as the shape of the camera

**5:46:59** · So if I select the camera And I select the canvas There are basically the same shape Same width, same height Because now The canvas is set to Screen Space Camera Meaning The camera will be the main thing That the Canvas is using And it will, you know, draw all of its element Within that camera area And last but not And everything that I talked about The reference resolution 19, 20, 10, 80 Applies to the, you know, Screen Space Camera as well

**5:47:27** · And the last thing is over here World Space Which basically we don't need it In a 2D game Maybe you need it But this is mostly for 3D games And one On top of my head example Is if you see a player or an enemy And you see a health status Above him, for example Well, that's, you know If the game is created in Unity Then this is what it's used So the canvas is used with render mode World Space

**5:47:52** · And then you can basically have your canvas Within the game's World Space And the World Space is this in the scene That you see But as I already said You don't need this for a 2D game I mean, maybe Someone will, you know, say Well, teacher, you can actually I don't know I never use it in a 2D game But usually in 3D games Where you have a 3D space You can utilize this But anyways, yeah, that's why I cannot show you this directly How to use it But anyways, what I usually do Is I use screen space camera And then I attach the main camera

**5:48:24** · By simply dragging it So selecting the camera And simply dragging it here To be the main camera And that's all there is to it And then I set the reference resolution 1920, 1080 match with And height and voila There you go So now we can go over here And finally talk about our image So when it comes to the image

**5:48:45** · If I go over here The first thing that you will see And let me just You see When sometimes happen This happens You don't see the grid layers What I do is I change the layer Of the default And then I go back to my layer And let me just change it For the aspect of full HD And voila But again, we don't have it Anyways, it's not important

**5:49:04** · Let me just talk about So over here Canvas And image So what's important to know About the image Is when you select it You will notice one thing That is It doesn't have A regular transform component It actually has a wrecked transform And this wrecked transform Has here anchors pivot And yah, yah, yah, yah It has other things As the normal transform It has the position x, y, and z It has a width and height Instead of the scale But it also has a scale Right here So you can change the width

**5:49:35** · And the height of the image For example, we can make it 500 By 500 And when we go here You see how large it is But one thing Or the most important thing That I want to show you Is this over here This anchor preset So when you click on this little Whatever This is called this You know Rectangle or cube You have these anchor presets Which basically Will allow you to Define The center Of your UI element What do I mean by center?

**5:50:07** · Well, for example, currently You see it's set here At the middle center If I set it at the top left corner And if I position the image At zero, zero for the x Notice it is using the Top left corner As the center position For, you know, for itself So this is what I mean Why is this important?

**5:50:26** · Well, imagine that this image Is basically I don't know Let's say A health indicator So it indicates How much health we have And we want to position it over here And we want it to be At the top left corner All the time, no matter Which resolution we have Well, then you simply Select the anchor You select the top left corner Then, of course, you move it Where you want to move it But, you know It will use the top left corner

**5:50:52** · As its origin position To position itself So notice now Even if I move This, you see When I move the tab Resize it And so on and so forth It is still sticking At the top left corner Even if I change the resolution

**5:51:07** · There you go Another resolution Changing over here No matter which resolution I change Even if I change it to portrait mode You see, it's still sticking At the top left corner Because we told it By using these options By simply setting this At the top left corner Setting the anchor The same way

**5:51:25** · Top right Middle Top I don't know Left middle Middle center Right middle Bottom left The same way They work in that same way So even if you want to set it Over here, for example Just set the anchor And then move it Where you want it to be For example over here And look at this So now if I change it to full HD Again, it is Repositioning itself To the anchor or closest To the anchor That we have specified Over here So these are the main points

**5:51:57** · When it comes to UI elements And of course Later on Don't worry I'm not going to introduce Every UI element right now Because we will use them In our games And don't worry about that We will mostly introduce Buttons In this part We will use Images We will use text We will use what not But what's important to know is this The anchor is the most important thing

**5:52:17** · When it comes to laying it out Because Prior to new Unity UI system I say new This UI system came out In Unity version 4.6 But before that You had to Code The behavior of your UI elements So that they stick At a certain position But now with this It's all about anchors So that's why this is important

**5:52:37** · Of course This same thing applies To any UI element Be that a text An image Dry image Button Slider Toggle Scrollbar Blah blah blah blah You get the point So you get the point It's the exact same thing So don't worry This is everything we need to know For now When it comes to canvases Images working with UI elements Because We will explore The more In our games And so on And so forth And uh Yeah If something is not clear Make sure that you ask In the comment below Okay, my game dev gangsters

### Creating Main Menu

**5:53:08** · Moving forward In the main menu We now know What is a canvas And how can we use it?

**5:53:12** · So we are going to reuse The canvas from the previous video If you don't have it Just create a new one Right click And go over here Under UI And create a simple image Because we will need it For the background And here you go So then set the Screen space To screen space camera Or the render mode To screen space camera Drag and drop The main camera Over here And set the Scale mode To scale with screen Size 19 20 1080 And that is that

**5:53:40** · So now what I'm going to do Is take this image And from the previous video My anchor is about At the bottom left I want to set it at the Center And I'm going to call this one BG Because you know Why?

**5:53:52** · Why not?

**5:53:53** · Why not?

**5:53:53** · I'm not going to call it Call it Kenny Okay So let me go here Inside of the sprites folder And I am going to take The background Which is this bad boy And I'm simply going to Drag and drop it here In the source image And this is how you can So simply select here So take the background And drag it over here In the source image That's all there is to it Now of course It is too small We can resize it So I can do something like this

**5:54:21** · To resize it And something like this To resize it And there you go But what you can also do When you want an image In most cases a background To cover the whole space Of the camera You want to set here The anchor to stretch Which is Which is this right here At the bottom right corner So when you click on stretched And you set everything here

**5:54:44** · To 0 0 0 So this is for the left Right top and the bottom And for some reason It's giving me this number Over here I don't know why Let's try over here There you go So now everything is at 0 0 0 It is always going to stretch On the full You see even on free aspect It is going to stretch Even if I change over here To whatever You know Let's see over here Portrait It is always going to stretch And fill out the And fill out the screen That it is currently on

**5:55:15** · Of course You should be careful Which backgrounds you You know Set like that Because you know Some backgrounds Might look really stretched On some you know Resolutions But of course that is all testing So next what I'm going to do

**5:55:30** · Is right click over here And I am going to create Another UI image And this one Is going to be the moon And I am simply going to drag And drop the moon over here As that image And click here Set native size So from the image component Over here You have this set native size Which will set the size Of the image To the size Of the sprite

**5:55:55** · That I am using To represent that image So when I click on that You can see the moon Has resized And I am going to Set the moon over here At the top Left corner And set his anchor At the top left corner As well Now of course Where you position him Doesn't matter In terms of That will not affect the game You see Right here It's enough I love it And you should love it Everybody should love it And there you go Next what I am going to do

**5:56:22** · Is go over here And right click and create A UI text And this is going to be Our game logo So this I am going to call it The game logo And this is a new component That we didn't talk so far But basically If you worked with any text component

**5:56:38** · Then you know how to work With the text component in Unity Because it has everything Same as any text component So over here If you pay attention You see this new text It's the default text That you can put in Of course Inside of the code We can also change the text We will not need to do that For this game But we will do for other games Do not worry about that Over here You have the font That you can select Which means you can Import your own default font

**5:57:03** · And then use it in your game Over here you have the font style Which is that thing You see bold Normal, italic Blah blah blah Here you have the font size Line spacing Alignment of the paragraph You see over here You can align it Wherever you want to align it You also have You know A color property That you can use to change The color of the text Basically as I said Like any other text editor

**5:57:31** · So over here I'm going to Say monster chase Because that is the name Of our game And I am going to click here And choose the font So when I click here I can choose the fonts One of the fonts That I have imported And they are imported Over here in the assets And then fonts So these two I have imported them So what you can do is As I said You can either click on This little circle icon

**5:57:54** · And if you didn't see it Where it is It's right here On the fonts This little circle icon There you go And by the way This little circle icon Is also here for the image So you can click on that And then search from all the Images That are available In your project Or in the scene So you can do that as well

**5:58:13** · And what I'm going to do Is I can also drag and drop Here the font That also works I'm going to set here The font style to be bold And change the color to white And that's all there is to it Of course we do need to align it Over here There you go Set the alignment I'm going to set the position x To 73 Position y To 307

**5:58:38** · The width of the text Is going to be 1 5 1 1 And the height is going to be 4 3 3 Because I want to Make the font size To 300 Or 230 So this is what we see This is our monster chase logo And again You can experiment And I encourage you to do that Because this is what I have been Encouraging you to do so far Make sure that you experiment So experiment With the Experiment with these options

**5:59:08** · Over here Try to change the font size See what happens Try to change the line spacing See what happens Of course Some things might have An effect Others don't Depending on Other options that you set over here But try You know Change the color Do this Do that That is the best way to learn But these are the basic things As I said If you work With any text editor Then the options are the same

**5:59:31** · They are not You know Not different Then the last few things That I am going to do Is Set our button So right clicking on the canvas I am going to go under UI And create a button And what is Or the button component consists

**5:59:48** · You know the default button component It has an image That we can use You know to represent The image How the button is going to look like It has a button component That will allow us to click on it And it also has a text The text Because if I zoom in This is the default button As I said already So I can resize it Like this You see And I can take the text And I can you know Resize the text as well

**6:00:15** · And there you go You see now I have a button If I go over here You can change the text To you know Play game for example So play game Or simply play Or whatever So you can also do that But for our case I'm not going to use the text I'm going to remove it I am going to set the value Or the name of this button to zero And I am going to position him

**6:00:36** · At negative Three, two, six On the x-axis And negative One, five, zero on the y And the width is going to be Three, four, one And the height is going to be Three, four, one Now before We you know Do anything else I'm going to go into The sprites folder And we have this player select Which are the buttons Of the players?

**6:00:59** · See over here These are Or this is the player select This bad boy We are going to use them As you know Buttons So select them And go over here to single And change it to multiple So give him a girlfriend Click on the sprite editor Solize the bad boy Click on the slice And there you go So here I'm going to say Player one select So select And from here I am going to say

**6:01:25** · Player two select There you go And hit apply And voila So now taking this button We can simply click On the drop down list For the player select And I can drag player one select As an image Over here And now what I can do Is I can duplicate this bad boy And change his name from zero to one And simply change his position

**6:01:50** · From negative Three, two, six To positive Three, two, six And drag and drop the other image For the player two And voila So this is what we have Even now I can press on the play button Even now like we can do it before And now I can see click on the buttons You can see probably that the buttons

**6:02:10** · Are like you know Flingering How this is called This is because This is the effect of the button This means we are pressing them So we are pressing the buttons As you can see There you go This is totally fine This works Yada yada yada You see Anyways The point is that this actually works And we have created our main menu

**6:02:33** · Now that we have a working main menu How can we actually navigate through it How can we you know Go from main menu To our gameplay Same as any other game Well for that As you can assume We need to create a script So let's go over here Into the scripts And right click And create a C# script And I'm going to call this Bad boy main menu Controller Because he controls the main menu Now inside of our main menu

### Navigating Between Scenes

**6:03:00** · I am going to right click And create an empty game object That I'm also going to call Main menu controller And you're going to see In a second why we need A game object So I'm going to drag and drop The main menu controller over here And double click it And open it over here So here is my main menu controller Let me just tag the class

**6:03:20** · And how do we How do we execute You know a touch of a button So when we press a button In Unity How do we execute You know something Well let's see that In order for us To be able to execute Code When we press a button We need to create a function That needs to be public void

**6:03:45** · So the function needs to be public void And then you can name it So I can say play game The function can only have one parameter If you need it So if you need it And that parameter can be A boolean integer of float And I believe I believe a string And an object But for this example We don't need that So don't worry We will cover it In some other examples But I'm just mentioning that out there If you want to add a parameter It can only have one parameter It cannot have more parameters

**6:04:15** · So the signature of the function Needs to be public void play game So public void And then I said play game But actually the name of the function And in order for this to work How can we attach it to the button

**6:04:31** · Will you select the button For example my zero button When I select it And scroll down Inside of the inspector panel You will see this It says on click And it says list is empty Now what we need to do Is we need to press this plus button Over here at the corner And when you press that plus button

**6:04:50** · You will see now that you have Over here a field Where you can drag an object And that object Is going to be main menu controller So I'm going to drag it over here And place it But we're still not done Because what we need to do now Is the main menu controller is here

**6:05:08** · We have dragged it from here That is totally fine But now we need to click here Where it says no function Because now we need to select a function From the main menu controller And when I click here You will see the scripts That are attached On that game object Now you see game object And you see transform These are by default inherited But you also see main menu controller And inside the main menu controller You will see this play game as well So there you go This is how we can How we can select the play game function

**6:05:41** · So that now when we press this button Over here This function will be executed Of course nothing is inside of this function So I'm simply going to say debug.log And I am going to say something like So over here I'm going to say Button is pressed

**6:05:57** · There you go So button is pressed And if I go back now And hit the play button So when I click here To play the game And go inside my console And click over here You will notice BAM Button is pressed BAM Button is pressed If I press this one over here It's not working Because we didn't attach the function On this button So if I click here BAM Button is pressed again BAM Button is pressed So there you go There you go This is how we can execute a function

**6:06:27** · When we press a button Now one thing to notice Is that we can have multiple Scripts attached on the main menu That's why over here When you click on the drop down list You see different scripts that are attached Among them you see main menu controller If you have more scripts I don't know whichever they are Maybe you know level menu controller Maybe character menu controller Whatever Then you will see those scripts over here And when you click on them Another drop down list will be opened

**6:06:56** · And from there you will search For the function that you have defined So the function name That you have defined In our case play game That you can see over here Which is this function over here And then you select that function To be the function That is going to be executed When the button is pressed And how you will know Which function will be executed You will see over here So we are using main menu controller And it's a function called play game

**6:07:22** · So this is the function That will be executed When this button is pressed Now for the second button We are going to do the same things I'm going to click here plus And I am going to drag This main menu controller And then from here I am again going to select main menu controller And I'm going to select play game So now when I press both of these buttons Or any of these You will see now BAM Button is pressed BAM Button is pressed There you go Now one thing that you are probably wondering

**6:07:53** · Is How are we going to know Which character we have selected To play the game And you already assumed That when we press this button over here The left arm We are going to select the left character When we press the right button We are going to select the right character But how do we know that Because we attached one function On both buttons If I were to do something like

**6:08:15** · Public void Select character one And this is the function And then I attach it to button one And then here select character two And attach it to function two So this one is attached on this one This one is attached on that one You will know how we do it There is no issue But how can we do that with a single function?

**6:08:35** · Well that is the reason why I have named these buttons Zero and one Because we are going to use an array Same way as we used an array over here For our monster spawner And we are using random range To randomize the index To get the monster from the array That is how We are going to get the player from that array So over here we have zero and we have one But before we actually do that How can we navigate from one level

**6:09:05** · To another level How is it done?

**6:09:08** · In order for that to work Because we need to go from main menu Then we need to go Into the gameplay And inside of gameplay Is where we will play the game with the selected player But how is it done?

**6:09:21** · Well on top over here We need to say using unityengine.scene management So unityengine scene management And now when I press the play button Or play game excuse me We are going to say scene manager

**6:09:37** · That load scene And then inside We are going to pass the scene name Same as the name We gave it over here Inside of our scenes folder So if I go into the project assets And then scenes We want to play the gameplay scene So if I click here You know Enter Just to you know Copy the name And paste the name over here Because the name over here Needs to match

**6:10:01** · With the name of the scene Over here If they don't match This will not work So if it's capital G Then over here It needs to be capital G So now If I go and hit the play button You will notice that When we press either of these buttons We should go into the gameplay Scene And voila There you go So now we are in the gameplay scene

**6:10:24** · Now we have our player 1 So over here we have player 1 He selected but Don't get fooled by that If I go over here And if I press this one You see again player 1 is selected The reason for that Is because If I go here Into the gameplay Player 1 is by default in the game If I remove him From the game So let's go Quickly to remove him Come on There you go If I go and remove him And go back over here And hit the play button And I press over here

**6:10:53** · There you go We do not have our player You see We do not have And we have also No reference subsection For the camera Do not worry about that But we will cover it One thing that I want to point out Is if you cannot load these scenes So when you press the button You cannot load the gameplay scene What you need to do Is go under file And then build settings And this scene needs to be added

**6:11:17** · Over here That is the reason why I can load it But by default When you create a game Then this scene Is automatically added to the build If I remove it from the build Now that you see I have pressed the delete button And hit the play button Now if I try to go to gameplay scene You see The scene gameplay could not be loaded Because it has not been Added to the build settings Or the asset bundle What the hell does this mean teacher?

**6:11:42** · As I said by default When we create a game The first scene that is created Will be added to the build On its own by default Which was the gameplay scene But If we need to add them on our own You need to go over here under file And then click on build settings And while you are in the current scene

**6:12:01** · That you want to add So you want to add main menu And we also want to add gameplay You're simply going to click here Add open scenes You see now it added main menu And now I'm going to go here And open gameplay And again open my build settings

**6:12:16** · And click here add open scenes So now I have added main menu And I have added gameplay Into the build settings So now Because they are in the build settings I can load them I can load them both So I can go from main menu to gameplay

**6:12:32** · And I can also go back From gameplay to main menu Again ignore this for the camera follow We will cover it Do not worry about that But this is important to know That under file and build settings Any scene that you want in your game And also when you're shipping your game Any scene you want to be in your game You need to add it here in the build So that is what you need to know

**6:12:54** · And you add them By being in that current scene And clicking here add open scenes And that's all there is to it If something is not clear Make sure that you ask in the comment below Now that we know How can we navigate from one scene to another We are going to select our character Go from main menu Into the gameplay And then you know Spawn the selected character But first How are we going to know Which character we have spawned

### Selecting A Character

**6:13:19** · Well in order to Pay in the picture What we're going to do with that I'm going to go into the scripts folder And I'm going to right click And I'm going to create a C# script And I'm going to call this on game manager Now I'm going to right click inside the hierarchy And create an empty game object That is also going to be called game manager And for this game manager I'm going to attach the game manager script on him Because inside of this bad boy We are going to have And where is my game manager?

**6:13:50** · Some reason we do not See the game manager Here he is There you go Because inside of this script We are going to have an array Of our two characters That we are going to spawn So here at the top We are going to have a serialized field A private game Object array And it's going to be our players Or characters However you want to call them

**6:14:16** · So you can call them characters For example, characters There you go And yada yada yada So before we proceed We are going to go back And now here in the inspector panel For our game manager We can attach the two characters So we can take the two characters Select the game manager Lock the inspector on him And take the player one and player two And simply drag and drop them right here

**6:14:43** · And for some reason Come on There you go Now it's working So we have our game characters How are we going to know Which game character we have selected?

**6:14:55** · This is where the zero name And one name comes up Now going back inside of our script In the main menu controller Here I'm going to come And this line of code out And I am going to get the button That I have pressed And in order to get the button That I have pressed We are going to call unity engine

**6:15:17** · That event systems That event system That current That current selected game Object That name Now I see Or I understand that this looks Large But this is how we can get the name

**6:15:35** · Of the button That is pressed Or basically the UI element That is pressed So we call unity engine And this is because We don't want to import that over here So we can import unity engine event systems And then we will call event system current So this can be done like this as well So we can say using unity engine So come on over here Using unity engine event systems

**6:15:59** · We can do it like this Then we can call event system current Current selected game object name We can do it like that as well There is no issue with it But because we don't want to import a whole library Just for this one thing That we are going to use So we are going to call it here Unity engine event systems That event system And these are all classes A class in a class in a class In inheritance And all of the good stuff You get the point This is where all the inheritance comes from

**6:16:26** · And now you see why It was important for me to talk about it So anyways This is going to get us the name Of that game object And I can also do this I can say string Clicked O.B.J. is equal to And there you go You see I have stored it in a string And I can say debug.log And I can say over here

**6:16:48** · Index, call on And then I can say plus Clicked O.B.J And this is going to print us In the console You know what we clicked Or the button that is clicked And I can go back over here Since the names are 0 and 1 So I'm going to click over here Or hit the play button Since the names are 0 and 1 Notice what is going to happen When I click this here Index 0 Click on this one Index 1 There you go Weeeeeee Yeeeeee I know you're happy with the countdown So what does this mean?

**6:17:20** · Why are we doing this?

**6:17:22** · Well because Inside of this array For the game manager For the character We have one character Two character They are At index You see index And what is this?

**6:17:33** · For some reason It added this as an element So I'm going to remove it There you go And actually it has two elements So over here We are going to have our player 1 Assets So player 1 And over here We're going to have our player 2 For some reason It attached Three game objects Not important Anyways So the first element

**6:17:55** · Is at index 0 The second element Is at index 1 That's why we can use this You know 0 Which is the 0 index And we can get that Element Or that player N1 Which is 1 In the array Or actually the second place In the array Because we talked about arrays They are 0 based So first element Is it index 0 Second is it index 1 So on and so forth Last element Is at the length Of the array Minus 1 So L Minus 1 And that is how

**6:18:24** · We are going to get That element But we also have one issue If we try to get that element By using a string over here It is not going to work And We need to Convert A string into an integer

**6:18:43** · Because again We cannot say Inside of an integer array So int array For example Int array A is equal to You know new Int array Like this So new int array With let's say Tell elements We cannot say A And then we use Clicked OBJ Pass it as an index And that is equal to 10 You see this doesn't work You cannot Implicity Convert type string Into an integer So what is the solution?

**6:19:11** · The solution is We are going to take this And I'm going to say Int selected character Is going to be equal to And on the second line I'm going to say Int dot parse Like this So int parse And inside I'm going to paste All of this And now I'm going I can do this And it works Now before you panic Teacher did this too quickly I don't understand What the hell is wrong I'm confused Just a second Just a second

**6:19:42** · Int dot parse You see converts The string representation Of a number To an integer So this will convert a string Which represents numbers Into an integer Now when you are doing Int dot parse So we are When you are converting A string into an integer You need to make sure That that string Has only numbers in it It cannot have letters If it has letters This will not work So what you need to do

**6:20:12** · Is again Call int dot parse And now It is going to parse And create that Into an integer And notice now When I use Select a character Here as an index It works So now we need to inform Our game manager That We need to inform the game Manager Which index is selected But before we do that We need to Know what our static classes

**6:20:39** · So we'll first take a look at that Then we will take a look at Another concept called Singletons And then we can continue With our Or loading the characters When the scene is loaded We saw that In order to access variables From a class And over here I have a public Warrior class As an example So to access the name And the power We need to go over here And we need to say Something like Warrior W is equal to new

### Static Variables

**6:21:05** · Warrior And then from there If it has You know Parameters in the constructor Then we can pass it If not We can create it like this Then we can say From here We can say Something like V dot name Is equal to Warrior We can say V dot power Is equal to 10 And there you go And we talked about this And these are regular classes And we know also That this means That We are creating A new object With the name W Which is a type

**6:21:35** · Of Warrior So this right here Is creating a new object Type of Warrior By using the new Warrior And then we can use That object Or the name Of the variable That we passed it Which in this case Is W So we can use that name In order to access Its variables The public ones Of course And public functions

**6:21:57** · And we know also That this has a reference In the memory Of the computer So this is a computer Right here This is the memory In the computer And this is pointing To this reference In that memory What we don't know Is that there is another way How we can Access variables

**6:22:17** · That are in a class Without the need of us To create Without the need of us To actually create Object Or an object From that class And that way Is using static variables So over here We can simply say Public static string

**6:22:38** · Instead of Simply string And again we can say Public static Int And there you go That's all there is to it This is everything we need to do So now over here Instead of using W warrior W is equal to new warrior And all of the good stuff That we did So far we can simply Say warrior.name And we can say That is equal to warrior

**6:23:01** · Like this And we can say Warrior.power That is equal to 100 And it works So it works If we print this now In the console It will totally work And it works Simply is that So this is called A static variable A static variable Is a class variable So you simply denote it And also Functions can be static as well Don't worry about that For this example We are not going to dive You know Into it But know that You know Also Functions

**6:23:34** · And I block there for a second Functions can also Be static So you denote Or you declare A static variable By simply typing public And then you have Over here Static After it Which means now Over here As we saw This example That we can access Those variables By simply Calling the class name In this case warrior Because you see Public class warrior Simply call the class Name warrior And there you go And this is how we can Access How we can access Their variables Why is this important?

**6:24:08** · This is important Because now For our game manager We are going to do That same thing But we are going to create An instance From that game manager So over here I'm going to Close the warrior class And inside of our game manager We are going to create A variable That's called Public Static And it's going to be Game Manager Instance An instance Instance There you go I cannot spell Sometimes Now what the hell is this teacher?

**6:24:37** · What is this instance?

**6:24:38** · Well as opposed To creating Our private string Or actually private integer Which is going to be private As you can see over here I&amp;T underscore Char index Like this And here I'm going to create A public int Char index Like this And what we are going to do Here is that We are going to create a get That is going to return

**6:25:02** · Underscore Char index So Char index There you go And we are also going to create A set That is going to say Char index is equal to the value Why is this important?

**6:25:18** · Now what is this instance?

**6:25:19** · Well notice over here The instance Is the Game Manager Why?

**6:25:25** · Well because now We can create that instance From itself Meaning This class itself Will have access To an object from this class Which is called an instance And from that instance We can access All of these public variables And public functions That are inside And in order to create an instance

**6:25:49** · We do this In awake We say If Instance is equal to null Meaning instance Is not initialized Then we are going to say Instance is equal to this Remember when we talked about Data encapsulation We said that this So this keyword Is referring to the class Where it is used So referring to the class itself

**6:26:14** · So instance Setting this object instance Is equal to this Meaning it is equal to an instance Of this class So over here Now inside of our main Manual Controller We can say After we get a reference To the selected character As you can see over here So we got a reference To the selected character We can say GameManager.instance.charindex

**6:26:41** · Is equal to selected character There you go You see This is what we are doing And this is what I meant When I said That I'm throwing bars At the smarts And moving forward So this is what I meant When I said that We can use the class variable Or class name To call a static variable from it

**6:27:01** · In this case the static variable Is the instance of that class Meaning an object from this class Is actually a variable of the class Which means When we use That way When we use that approach We can access all of its Public variables And public functions And we can access them like this So over here

**6:27:24** · As you can see We set an instance To be equal to this If it's equal to null now It is equal to this And After that We can call it over here And set the character index And it will be stored So the selection that we make Depending on which character We have pressed That will be stored over here

**6:27:44** · So that when we go in the next level We can use that Data Charindex To know which Character we should spawn And this is basically What we need to do But we will have one issue And that is I am going to go back In my Unity Editor And Inside

**6:28:06** · Of our So after We load our level This is where we are going To spawn our character But we have one issue And that is I'm going to hit the play button We will see that issue Inside of our You know Game Main menu We have the game manager And everything works perfectly And yada yada yada If I click here to load the level I'm loading the level But one issue that we have Over here Is inside of our game Play, you see We do not have the game manager Notice We don't have the game manager

**6:28:36** · In here As you can see Main menu Game BG Spawner Collector Enemies We do not have The game manager Who is responsible now To spawn Who is responsible To actually spawn the character What is the issue?

**6:28:50** · The issue is the following Imagine we have one scene Which is our main menu scene So we have one scene And imagine this scene So this square now that I've drawn That is the scene And here these lines Are game objects That we have In that scene And maybe you don't see it here

**6:29:09** · Clearly so I'm going to draw it Over here So this is one scene That we have Main menu And it has These objects Let's say it has four objects Inside When we press a button In this case this one When we press a button To go from this scene To this scene Over here

**6:29:28** · All objects And everything that was In the previous scene Will get destroyed When Unity moves From one scene To another scene It will destroy All game objects That were in the previous scene So all game objects That are inside The main menu scene They will get destroyed And move them Into the gameplay scene Which has its own objects As you can see So it has its own objects And it doesn't have The game manager object Which holds the information

**6:30:00** · That we need To spawn the character And that is the issue That we are facing And don't worry There is a fix That is called a singleton pattern But Well we're going to see That in the next video How we can You know Utilize the singleton pattern And use it to Spawn our character So going back to our issue

### Singleton Pattern

**6:30:26** · How can we transfer Game manager From this scene To our gameplay scene How is that possible?

**6:30:34** · Well as I said We need to use a singleton pattern What is a singleton pattern?

**6:30:39** · Well over here We are just creating an instance Out of this class Or out of the game manager In order to create A singleton pattern from him We need to do it like this Over here we have If instance is equal to null Then over here else What's going to happen over here

**6:30:57** · A singleton pattern Is before we proceed A singleton pattern Will allow us to only have One copy Of a game object In this case Of the game manager So in order for us to have One copy First we need to test If our instance If the game manager instance Is equal to null Then we are going to set

**6:31:21** · The instance is equal to this Meaning we have created A copy of it It's equal to this Else over here If it's not equal to null We are going to call Destroy on the duplicate So else if it's not equal to null Destroy the duplicate Meaning the already created Instance that we had But we also need to do

**6:31:42** · One more thing If we want to make this game object Move from one scene To another scene We need to call over here Don't destroy unload Game object If I hover over It says Do not destroy the target game object When loading a new scene A perfect explanation I couldn't have said that better myself So This will make sure That the game object That is holding this script

**6:32:11** · Will not get destroyed When we load the new scene Let's test it out and see that So over here now We see that we have a game manager In our scene And just to You know Convince you that this works I'm going to go in the gameplay In gameplay We have main camera Or main camera excuse me Game BG, spawner And collector holder So you don't see a game manager Inside of the hierarchy Is that true?

**6:32:39** · That is true I know you answered that Because I'm reading your minds Anyways Let's go back here In the main menu If I hit the play button now Everything is like normal And over here We have something called Done destroy unload Which is like a grouping Game object Grouping parent Which has this game manager If I press a button over here

**6:33:00** · Notice now what happened I have moved In the gameplay scene And here is the gameplay scene It has its own game objects That we have over here So it has the main camera Game BG, spawner Collector and one enemy Is spawned But we also have now the game manager

**6:33:16** · We also have game manager Inside of our game And we can you know We can now Use that To load our character And I'm going to do that In the camera follow script Over here Just for a brief moment I'm going to you know Comment out this line of code And I'm going to say GameManager.instants.char Index But before that I'm going to say debug.log Just so that we can see Over here the selected index

**6:33:45** · And over here plus And I'm going to pass the GameManager instance Well I'm doing this in the main camera Because the main camera is inside The main camera is inside the gameplay It's not over here In the main menu

**6:34:01** · So it's in the gameplay Which means now when we load I'm going to hit the play button When we load our game I'm going to hit here Pay attention The selected index is zero You see what is happening there So now we have We know which character We are selecting So this is how we can transfer data From one scene To another scene Of course There are other ways But we are not going to talk about them right now This is one of the most common ways Because for example I in every single one of my games I have instances Or singletons

**6:34:33** · Like you see right here So I have one for my ads I have one for my save data I have one for my gameplay manager For a lot of things So this is a pretty common pattern In unity game development So this is how we can transfer data From one scene to another scene

**6:34:49** · And just to make sure That you know To actually convince you To believe If I press this one over here You see the selected index now Is one And you see where it is called It is called in the camera Follow script There you go Now going back to the singleton pattern Before we wrap this up I'm going to explain to you What the hell is a singleton pattern?

**6:35:13** · So a singleton pattern As I said Will allow you to only have one copy Of the game object Then it will destroy a duplicate You see If instance is null Set the instance to this And don't destroy a loud game object Else If the instance is not null Meaning we already have an instance Then destroy the duplicate How does that work?

**6:35:34** · How does that work?

**6:35:35** · Well, let's show you Or let me show you now We see now in the main menu We have a game manager But we don't have a game manager Inside of our gameplay Now in order for me To do that I'm simply going to create a prefab Out of the game manager Just so you can see How it works So I'm going to go here Into the scenes And in the gameplay And now I'm going to drag The game manager

**6:36:00** · Inside of our Inside of the gameplay If I go over here Into the scenes And from main menu If I hit the play button And if I select the character Press here You see I went over here We only have one You see We only have one game manager We don't have two game managers Only one And in order for me To paint the picture more clearly

**6:36:24** · I am going to do this I'm going to comment Out the else part I'm going to comment The else part And we have an instances Knowledge instance Is equal to this And don't destroy Unload game object And we are not going to destroy The duplicates I'm not going to use else To destroy the duplicate Let's go again Back over here We saw already That we have one game manager In the gameplay If I hit the play button

**6:36:49** · First thing That you are going to notice Is over here We see We have the Selected index is one And if I go back over here Pay attention What we have Notice We have two game managers So here is one Here is one game manager And here is another game manager What the hell is this teacher?

**6:37:08** · You are making me Is this magic?

**6:37:10** · No, it's not magic It's because we are not destroying You see It is because we are not destroying Over here the duplicate You see Destroy game object If instance is already You know If instance is not equal to null Destroy the duplicate You see If instance is equal to null Instance is equal to this Don't destroy unload Else If instance is not equal to null Destroy that duplicate game object That's all there is to it And since we are not Destroying that Here it is

**6:37:39** · Game manager Game manager There you go So that is the reason why We need to call this Else destroy So now it will destroy The duplicate game object And it will make sure That only one copy Of this game object Is inside the game Only one copy of this Instance game manager Is in the game And that will make sure that Why is this important?

**6:38:03** · This is important Because now it will make sure That when we call over here Inside of our main manual We call the game manager Instance and character index We set it to our value It will make sure that value is Unique We don't have two Instances of this game manager So the computer will get confused

**6:38:22** · Maybe it will call one instance Or it will call another instance It has another value And so on and so forth We have a unique game object With unique values With its variable and functions And all of the good stuff So this is what we are doing Over here Of course, if something is not true Not true Not clear Make sure that you ask But don't worry If If you don't understand

**6:38:44** · In depth Everything what is going on We are going to reuse this Over and over and over So this is just the first example That you see If you don't understand And right away from the very first Example in high depth And you don't understand Every single thing Don't worry about it Repeat the process Re-watch this video Ask me in the comments down below And I will answer and help you out Now one thing that is left for us to do And I'm going to remove this from here And uncomment this line of code One thing that is left for us to do Is to load the selected character

**6:39:17** · When we press You know When we go inside of our gameplay Because now when we go inside So let me just clear this When we go inside of the game If I click for example The second character We are not spawning that character He is not being spawned How are we going to do that?

**6:39:34** · Well for that We are going to use something Called events and delegation We are going to first Learn Or we are going to check When a scene has been loaded In order to do that So in order to check When a scene is loaded Over here Inside of the game manager I'm going to remove start and update And I'm going to create a function Void on level Finished So on level Finished loading Which takes a scene So over here

**6:40:04** · We first need to say Using So sorry for that one using Unity Engine scene management So this one takes a scene As a parameter I'm going to call scene comma It also takes load scene mode mode There you go And inside of our void

**6:40:25** · On enable I'm going to subscribe To that event So I'm going to say scene manager Dot scene loaded Plus equals on level On level Finished loading And I'm going to copy this And I am going to paste it So over here I'm going to say minus equals And this is instead of on enable This is going to be on this able

**6:40:49** · Now, before we proceed with this We first need to explain What are delegates and what are events I have a really cool video About that on my YouTube channel I'm going to point you over there Even though you can watch it over there But the next video is going to be about that So I'm not going to create a new one Because I explained Events, delegates In depth In a 30-minute video So I highly, highly encourage Even though it's a 30-minute video Please watch that video Till the end In order to understand What is going on And then we are going to go back

**6:41:20** · To this And we are going to, you know Load our character When the scene loads So watch the next video And then I will see you In the video after that I mean, I will see in the next video as well But I will see you also in the video after that Now, what I did is I've created a simple 2D project And as you can see I am in Unity 2018.1.1

### Events And Delegates

**6:41:43** · You can download any Unity Because we are going to go Directly into scripting And I have created two scripts One is called receiver Another is called sender Now, before we dive Into these scripts And start coding and explaining things I'm going to go in the hierarchy And I'm going to right click And create an empty game object And this one is going to be the sender I'm going to duplicate him And this one is going to be the receiver So attach the appropriate script

**6:42:11** · I'm going to attach the sender here And attach the receiver right here So if I go in Visual Studio Or amount of development Depending on which one you are using Here, I already gave a little bit of space You know what I'm doing And let us start doing things So what is delegation?

**6:42:31** · Well, delegation Is a form of It allows us to subscribe to an event Let's say we have Or you have a company And that company creates newspapers And it creates newspapers every week So every week you have a newspaper That is a new newspaper And you want to send that newspaper To all of your subscribers Well, your company is the delegate

**6:42:56** · And your newspaper is the event So the event that happens And when that event happens You want to inform all people Who have subscribed to receive your newsletter Or your newspaper So that they know there is a new edition And they need to come and get it Or you will send it to them So let's say here I'm going to create a public

**6:43:20** · Delegate void And I'm going to call this one For example, player died Now this is a delegate That I named player died And this is how we declare a delegate So we type public Delegate So we need to denote it is a delegate Void because it is like a function

**6:43:40** · It can return a value Or it can not return a value We will see that So don't worry about that And this is the name of that delegate Now this name depends on us You can give it a name Carl You can give it a name I don't know, whatever But I called it player died Because we know That we name our variables With meaningful names This player died What is it telling you?

**6:44:06** · It is telling you that we are going to use this delegate To inform The subscribers to the event That the player has died Now the delegate is only the declaration Think of the delegate As the company That makes newsletters Or newspapers But a public Static event Player died Which I'm going to call Let's say player died info

**6:44:30** · Or this is the dude Who is actually going to inform us That the player has died Now the event is the one to which we subscribe So that we know what is going on Now how does this work?

**6:44:47** · I'm also going to remove the update function Because we don't need it Let me go into the receiver Because the sender will send the information And I'm going to go inside of our receiver And get that information Now one thing to know Is in order to get This event Or to get to receive an event We need to create a function And that function needs to have the same signature As we declared our delegate What do I mean by that?

**6:45:14** · Well our delegate here is void So the function needs to be void So here we can say void Player died listener For example This is how I name the function That will be subscribed To this event right here In order to receive the information Now how can we subscribe to this event?

**6:45:37** · Well for example we can go Inside of the start function And we can call our sender Dot And since our player died Here player died info is a static variable We can call it Here sender player died info Plus equals to player died listener

**6:45:56** · Like this And this is how we subscribe To this event Now going back to our company And newsletter Or newspaper scenario So this is your company That creates those newspapers And this is the newspaper So we have subscribed To receive the newspaper

**6:46:15** · With this right here So plus equals And we subscribe with the function And notice here As I already said The function needs to have the same signature As the declared delegate So if the delegate here is void The function also needs to be void If the delegate here has a parameter The function also needs to have a parameter We will see those examples So don't worry about that Now that we have subscribed To this function What do we need to do?

**6:46:46** · How can we call this event To execute and inform us And here I'm going to use the print statement And I'm going to call Event has called this function To execute So when we call this function

**6:47:02** · We will execute the code that is here Currently I have the print code Which will only inform me That we will print in the console But we will know that this function Has been called The point here is that We need to see that this actually works Because in your real world project You will have some other code For example the code When the player dies You will do some things So on and so forth So how can we execute this code?

**6:47:29** · Well in order to execute the code We need to go here in the start function And we need to say If our player died info Is not equal to null And we will go back to this later Don't worry Then we will simply call player died info This is how we call This event to execute You see here This is that event Simply call it Player died info Same as if you are calling a function

**6:47:52** · So you call it with the name That you declared here Open close parentheses And end with a semicolon This right here When it's called It will call every function In every script That has used this signature That has subscribed To this event Now if we try to run this I'm going to go in the console Let us see if this actually works So if I hit the play button We see In the console event Has called this function to execute

**6:48:24** · Now this works But this is not what I recommend You to do And this is not how you will test things Or actually how you will do things In your real world project I'm going to remove this And for the receiver Inside our void

**6:48:40** · Unenable This is where I am going to Subscribe to events Because in Unity This is the recommended place Where you should subscribe To your events Simply in unenable Now there is another side of subscribing That is unsubscribing Why?

**6:49:02** · Well because We have subscribed to this event And this function is tied to this event So it will be called When the event executes Now We need to prevent memory leaking And in order to do that We need to unsubscribe From those events So here we are going to call void On this able Which is also a function built into Unity

**6:49:24** · And in on this able We are going to unsubscribe From this player dyed info So here I'm simply going to say Center that player dyed info Minus equals Player dyed listener Like this So plus equals Subscribes you To the event Minus equals unsubscribes

**6:49:48** · You from the event So think of this You have subscribed to receive Newspaper every week But now you don't want to do that Anymore you don't want to receive Those newspapers So you say Minus equals to unsubscribe yourself From that service Now inside of our center Here I'm going to create void Execute event function And here I'm simply going to say

**6:50:10** · Player dyed info And call it But before that I'm going to say If our player dyed info Is not equal to null And we will explain this in a second But I also want to Well test it out now And here I'm going to say Invoke And I'm going to Insay Insay I'm going to invoke This method name here So the method name is Execute event And I'm going to execute it after Five seconds Why am I doing this after five seconds?

**6:50:37** · Well first of all We are going to wait Five seconds before we call This function Now invoke We'll call the function With the name here In this given time manner If you don't know what invoke is So the name of the function Is the execute event And this function So execute event Will be called after five seconds

**6:50:57** · When this line of code Has been executed Now let's go And execute this And then I will explain What is going on So if I hit the play button Now we will wait five seconds So one, two, three, four, five And now we should see here Event has called This function to execute Why did I do it like this?

**6:51:20** · Because as I said You will not use these events And call them right away In the start function There is no scenario That I can think of In a real world project That you can do that For what are these events good?

**6:51:33** · Now I'm going to go through that And now And then we will break All of this line by line Let's say for example You have a gameplay controller Who controls the gameplay Of your game And you have a player And you have enemies That are attacking the player You need to have a way To know If your player has died And if he dies You need to inform the gameplay controller So that he knows that And then he will take the appropriate action

**6:52:00** · Such as Displaying game over panel Stopping the game time Stop counting the score So on and so forth Well let's say this is your gameplay controller Or actually this is your player class Because this is where we need to declare That the player has died So this is the player class

**6:52:18** · And we declare these Delegates here Player died And player died info And here For example We can test If player died For example Is not Or If this is a Boolean variable Let's say So if have Here private Bull Is Alive For example So here we are going to say If is alive For the player Is equal to false So player has died And player died info Is not equal to null Meaning somebody has subscribed

**6:52:48** · To that event Then we are going to inform That That class Or Whoever has subscribed To the event That it needs to execute Now we saw here in unenable And by the way The execution order Of functions in Unity Goes like this So first Awake is called So Awake is the first function That is called When Your Unity project runs

**6:53:14** · After awake Unenable Is the second function That is called After unenable Start Is called But usually We use Awake and start To initialize variables But you need to know this So the execution order Is the following First Awake is called Then Unenable And then Void Start Now Unenable And on this Able Have another feature And that is They are called Every single time

**6:53:43** · When a game object Is disabled Or Annabled And here I'm going to test that Out for you And display So here I'm going to save print And I'm going to say Game object Annabled And here I am going to say Game object Disabled So we can go In Unity now And I can clear the console

**6:54:06** · And I can click here The plus button Or actually the play button And take the receiver And you see Game object enabled Has been called If I turn it off Game object Disabled has been called If I turn it on again Game object enabled Has been called So every single time We on enable Or disable Or enable Our game object By using that check box Right next to the Cube icon To disable And enable the game object

**6:54:36** · On enable And on disable Will be called Which is the Exact same place Where we need to place these Why?

**6:54:42** · Because every time We enable the Game object We will subscribe to the Event that we need to Subscribe to And in order to Prevent memory leaks We unsubscribe In on disable So that is for Subscribing and unsubscribing Now going back here For our function Let's test it out Like this So if I simply call PlayerDiedInfo Like this Without testing If it's not equal to null

**6:55:07** · And I'm going to Comment this line of code Here so that we don't Subscribe To the event Notice what is going to happen I'm going to click Clear To clear the console I'm going to hit The Run button And we are going to wait Five seconds So one Two Three Four Five And BAM You see here Null Reference Exception If I click here It is pointing to This line of code

**6:55:33** · The reason for this Is because No one has Subscribed To this event No one has subscribed to the event Now We subscribed by using plus equals I have commented This line of code out So that is the reason Why we did not subscribe And I'm going to put This line of code back here Now is it clear Why are we testing If the PlayerDiedInfo Is not equal to null

**6:56:00** · Because we need to make sure That at least One function At least somebody Has subscribed To this event So if In one class If we have 1,000 classes In our game And only in one place We type this To subscribe to this event

**6:56:19** · This right here Will not be equal to null And it will execute the code As well as we If we type this on 1,000 places Again it will not be equal to null It will Call All of those 1,000 functions That are subscribed to this event When we execute the event Now one thing that I see that Confuses people Is that they don't know How this functions or Or this delegation and events How does this work?

**6:56:46** · Well think of it like this You have the delegate That you have subscribed to And the delegate You declare as you How you wish With meaningful names As I said This one will inform us When the player has died Now the event here Don't just ignore the delegate Let's say delegate We need it This is a company that prints Newspapers So we need the company To print the newspapers But the event Is the one who informs us

**6:57:14** · When the newspaper is ready When it is printed And we can start using it So we have the delegate declared An event needs to have the same signature So player died Is the name of the event Same as the delegate And you give it a name here How you want it And we put it to be static So that we can subscribe to it From any class By simply using the class name

**6:57:37** · And the name of the static variable Plus equals And subscribe to it Same way we unsubscribe With minus equals But think of the event like this The event Is simply Let's say this event Is your phone And you have a phone number From your friend So your friend gave you His phone number Which means He has subscribed To your phone event And when you need your friend You call him So here you're testing If you have your friend's number Call your friend

**6:58:08** · And that is that This is how you can think of the delegate To make it more clear Delegate an event that is In this case we are talking about event But when I say delegate an event I refer to the whole concept And again here I'm going to lower this to three So that we don't need to wait Five seconds to execute And why did I use invoke To wait five seconds Before in order to execute Well I wanted to show you that This whenever it is called It can be called after one hour

**6:58:38** · Playing your game Or three hours Or five hours Or ten hours Does not matter But you use this event To inform your classes About something that has happened And we are using here A key player died So if we have a player And we play We shoot We fight our zombies But eventually a zombie Kills us Then we can say If the player is not Dead or not alive anymore So if his alive is equal to false

**6:59:05** · And we have somebody subscribe To the event To know that the player has died Then bam Simply we are going to call that event Which we'll call every function That has subscribed to it Now you see here we have Player died listener We can also create void

**6:59:24** · Test like this And we can say print And we can say Called from test And we can go here And we can say sender dot player died Info plus equals to test Like this And here we need to unsubscribe

**6:59:40** · Just so that I want to show you That we can subscribe Multiple functions To a single event And if I go back here And if I hit The play button So clear the console Hit the play button We will wait Three seconds So want Want one two three And you see Event has been called Or event has called This function to execute And called from test

**7:00:04** · So we subscribe Two functions And we are calling them both But you will not do this From a single class You will do this From separate classes But I am showing you That you can use multiple Or you can use multiple events Or functions Excuse me To subscribe to an event Let's say you have another class Where you also need to inform

**7:00:26** · That the player has died You can do that By simply creating Function inside of that class Calling sender Player died info Plus equals to Player died listener So my whole point Is that you create here A delegate An event for that delegate And you create a function That will subscribe to that event And execute the code that's inside When this event is called

**7:00:52** · Now you can do this as well For example If you Let's say you are going Through your game And you touch Some trigger That will trigger a boss fight You can do that as well So you can Use delegates And events On that trigger class And you can detect When the player Passes that class Using on trigger enter Bam that happens You can say player If that Let's say The name of that event Is also player died info If it's not equal to null Inform the classes

**7:01:24** · That have subscribed to this event And then the boss will appear Because we have informed That the boss now Needs to appear Now I'm going to remove this Invoke and I'm going to go here And I'm going to create Public Delegate Avoid Let's say here I'm going to name it player died

**7:01:43** · But I'm going to Comment this out And I'm going to comment this out as well And let's say here I'm going to say It's not It can be void But player died And here I'm going to say It takes a bold parameter That is Well, let's say the name Of that bold parameter Is Is alive So this

**7:02:05** · Bull parameter Will also need to be Right here So now you see We cannot We cannot subscribe Let me just go back here And I'm going to declare Here a public Static event And player died And I'm going to call it Player died Like this Now the thing here Is that now we have

**7:02:27** · A parameter Inside of our delegate So the event is declared The same way As you see here But if we go here We cannot now Subscribe to that event Does not contain Definition player info Okay, it's not important At the moment I'm going to remove this From here But what is Important That we need To have the same signature

**7:02:49** · For the function And here I can say Player died Info And as I said We need to have the same Signature For the function As we had For the delegate Because the delegate here Has a parameter bool Now we need to have a function That has a parameter Or takes a parameter If we Do it like this So I'm going to do it like this Notice we cannot do it Because you see No overload Player died Matches delegate It does not match the delegate Why?

**7:03:17** · Because it Does not have This signature It does not have a bool Is alive So I can go here And I can say Bull And I can name it Is alive Or I can name it Alive The parameter name Can be Whatever you want And here I'm going to say Print And Player status

**7:03:38** · Comma Or dash Is alive Call on And I'm going to say Plus alive Which is This Parameter Right here Now we can go And we can Subscribe to this Delegate Or to the event From this Delegate And going back here Where we are calling

**7:03:59** · Now we need to call it With a parameter So now we don't call it Simply by Typing player died info We need to say here Either true Or false Because that's a boolean Parameter If here we have an integer We need to type Some name If we have a string We need to pass here A string And if I go here And if I Uncomment Invoke With execute event And if I go back here Let me just clear the console

**7:04:26** · I'm going to Hit the play button And now We're going to wait three seconds And we're going to say Player status Dash is alive True Because we called it here With true If I call it with false And go back here And if I hit the play button Notice what We are going to get Inside of the console So now Player status

**7:04:48** · Is alive Is false Because we called it Here When we called Our Player Died Info Simple Like that So this is How we can use delegates With parameters So this is how we use Delegates With parameters And you can The concept Of subscribing And creating this delegate Is the same Except that this delegate Now has a parameter So for example If you want to send out

**7:05:20** · To your gameplay controller That player has only 30% life Left You can test If player Helped Is less than or equal to 30 Then you can simply Test if player died info Is not equal to null Then you can call the event And pass here Number 30 This is a scenario Where you have Integer As a parameter Then you can call number 30

**7:05:44** · And then you can inform The gameplay controller And then he can, for example Display a pop-up Like Helped critical Or something like that This These are just some Ideas on top of my head For what you can use These delegates With parameters Now this all depends on you I get a lot of questions Okay, how can I use this?

**7:06:02** · And for what can I use this?

**7:06:03** · This depends on you And how you create your game So for example As I said If Let's say You have Some enemies That can only appear When your player has 50% of his life left You can use Delegation In the player class To declare delegate an event And then you can test If the player's health Is less than or equal to 50% You can call the event

**7:06:30** · That you created for that delegate In any class Any enemy class That has subscribed to that event It will be called So the function That has subscribed In every class It will be called And it will summon That monster When 50% of health Is for your player Or when your player drops To 50% of his health And these are just As I said Some scenarios On top of my head Now we can also

**7:06:59** · Have these events So I'm going to simply Copy this And I'm going to comment this out And I'm going to paste it here Instead of our Bull Alive parameter I'm going to see here It will return a bull Or it can return an integer For example Let's use an integer Because we already use a bull And now Since we don't have a parameter We cannot call it here With false So we need to remove this We are simply calling the event

**7:07:24** · As the name of the event But the function That is subscribed To that event Now it needs to return here An integer So here we need to say Int And here I simply need to say Or remove this parameter And what can we do with this?

**7:07:42** · Well the signature is the same Except here I can say return And I don't know Let's say return number five Now for what can we use this?

**7:07:49** · Well maybe there is a scenario In your game Where you need to Calculate the distance From your player And your enemy So here for example You can pass Vector three parameters You can have here So you can do something like Vector three Player And Vector three And here I can say target For example And here we need to pass A transform So let's say for example New Vector three I don't know Let's say one F one F and one F

**7:08:21** · And here new Vector three And let's say for example Two F two F and two F like this And we need to return This value as a distance from them And here instead of Int I'm going to use a float Because the distance is in float

**7:08:39** · And here I can say return And also here We need to have Those parameters So we need to say here Vector three target for example And Vector three player Or vice versa So here is player And here is target Now here we can Calculate the distance And we can return that distance So we can say something Like print And we can say function Is called That distance is

**7:09:10** · And here we can say Plus Vector three Distance from player And target But we also need to return this Because this function returns a float So we need to do that So we can say here return Vector three Distance from player And target Like this And now we are good to go If I go inside of unity here

**7:09:36** · And if I hit the clear To clear the console Hit the play button We will wait three seconds So one two three And we will see here in the console Distance is 1.73 Blah blah blah So this is also one of the ways How we can use these delegates We see that we are returning here A value Now you can use this value Where you need it If you don't need it If you only need the distance You can Amid returning So you can be Or you can use this as a void And also declare this as a void

**7:10:06** · I am just giving you here examples How these delegates can work So they can have parameters They can return values Same as a function So same as a normal function The only point is That when you subscribe to that event You need to have the same signature As the declared delegate So this delegate here returns a float And it takes two parameters Vector three And a vector three That means that a function That subscribes to the event

**7:10:36** · From this delegate Which is this event here Needs to have the same signature So this function needs to return a float And it needs to take a vector three And a vector three As a parameter So that is my whole point And when you need to call Or inform that function

**7:10:54** · To execute The function that has subscribed Use simply Test if it's not equal to null So if the event Is not equal to null Call the event With parameters If you have any without parameters If you don't have any And this is how it works

**7:11:11** · How will you use it depends on you And the logic of your game That you are creating I gave you already A couple of examples In this video For example If you want to inform If the player has died Or if the player health Is now equal to 30% Or whatever If the player has picked up

**7:11:29** · Some special pick up item Or special collectible item In your game You can do that as well So there are many scenarios For what you can use this If you are enrolled In my ultimate game development Academy Then you will see a lot of examples Like 100 examples Using delegation So on and so forth For different scenarios To inform when the boss should

**7:11:51** · Should appear To inform the enemies When they should chase the player And when they should Stop chasing the player A lot a lot of examples Are there This is just a Briefly Brief introduction To delegation Talking a little bit More in detail Then in some other videos That I did Now I said it's a brief introduction But actually I talked a little bit more In detail What they are For what you can use them Where should you subscribe And unsubscribe From them Sun and so forth So I hope this video will help you

**7:12:23** · Clear that Misunderstanding Or Non-understanding From these delegation And events And that they are nothing Complicated They are not complicated As some students Think they are pretty simple Once you get to know How they work of course I also was confused In the beginning Don't get me wrong But when I Understood Or when that Dot clicked How they work I see that How this concept is very simple

**7:12:52** · So you declare a delegate You declare an event For that delegate And the event is the main guy To which Functions are subscribing To be executed When the event is called Far here here From awesometues.com I will see you guys In the next video First of all Sorry for the previous video For the background to be white I try to use now dark In every single video But I didn't want to redo that video Because it's so well done

### Instantiating The Selected Character

**7:13:21** · And I'm not praising myself But I really got a lot of feedback From people who Could not understand Events and delegates in unity And what they are And how to use them That video Made it clear to them What are delegates So now going back to our issue Over here Now you understand What here Or what this is We are using this delegate This scene loaded We are subscribing to it

**7:13:45** · With our on level Finished loading function Over here And over here We are unsubscribing And also Which I hope That you watch that video Till the end and the full video You know that now The order of functions In unity When the game loads The awake Is the first function That's being called After that Unenable After that The start function Is being called So in unenable And on disable We subscribe And unsubscribe Respectively On or for events

**7:14:14** · So now what we simply need to do Is inside of our on level Finished function That we have subscribed To the event So we are now listening To the event When the event happens And we are going to Say here If the scene That name That is being loaded Is equal to gameplay And again You can create A separate string variable For this To have it named gameplay

**7:14:36** · And put it here Because we talked About this I don't want to repeat myself If the scene That is loaded Is equal to gameplay Then we can simply Call instantiate And over here We are going to call Our characters array

**7:14:52** · And inside of the square brackets We are going to call The char index Because we are Setting that value For the character index To be equal to here When we click On a button Be that the left one Or the right one We are parsing The name of that button Which is either 0 or 1 Which are the indexes Used Now to spawn A character And we can test this out Very easily So if I go back over here Inside of my Unity editor

**7:15:22** · And if I hit the play button Now if I select the character This one If I click There you go He is now being spawned And I can jump And I can move And all of the good stuff Let a lot of stats With the other character as well So if I hit the play button Go back over here Inside of the You know My main menu Click here There you go The other character Is being spawned He can jump He can move He can do He can kill He can kick And all of the good stuff

**7:15:49** · There you go So of course now We need to be careful To not You know We need to Jump over the enemies Otherwise This is not going to work You see Come on Oh no Well there you go Anyways You get the point I cannot play my own game So yeah

**7:16:05** · One other thing that I also want to show you Is over here If we go inside of our Camera follow In the start function We are calling The game object Find with tag To get a reference to the player Because we know we need a reference to the player In order to follow him And what is Cool is that Over here Inside of the game manager In unenable We are subscribing to the event

**7:16:28** · So as soon As the Level is loaded Unenable will be called This event will be called And the player will already be Instantiated So there will not Not be a null reference exception For the reason that There is no player Or No game object with the tag player That we saw previous If you noticed In the previous two or three videos Where we used Single tends to move left and right

**7:16:52** · Or actually from scene to scene So yeah That is the issue That we also fixed there Of course Is something is not clear What we did so far Just make sure you ask in the comment below But if you watch the previous video Till the end which I urge you to do If you didn't do Please watch it till the end Because it explains a lot of things That you will need now And later on Especially later on So all of this right here Will be clear what we are doing So we are using this function Which has subscribed to this event And as soon as a new scene is loaded

**7:17:22** · It will inform this function Because we have subscribed to that event It will inform that function Similarly like in the example That I use in the video So as soon as a new newspaper Comes out We will be informed In this function Because we have subscribed To the service to know When a new newspaper comes out

**7:17:44** · And this is essentially what we are doing And then inside of this function We can simply use this parameter scene To get the name of the scene That is being loaded And if it's equal to gameplay Then instantiate the character for us To play the game Okay my old game dev gangsters

### Finishing Our Game

**7:18:01** · The last step is before us And that is to have in our game A way to restart the game And go back to the main menu Select the other character Because currently we can only pay The game and see what one character But what if this character gets killed You see now I'm getting killed I killed, I died And all of the good stuff So you see now That basically I cannot do nothing

**7:18:22** · I cannot restart the game The game is playing without me So for that We are going to right click over here Go under UI And I am going to create A button There we go But before that select the canvas And it's going to be screen space Camera, attach The main camera Scale with screen size You know everything What we did so far What we talked about And explained And all of the good stuff Point 5 over here And yada yada yada Yada There we go So we are also going to go over here

**7:18:53** · For the canvas Because we need to use The sorting layer That we talked about For our sprites Also applied to the canvas Because currently it's set on the default For the canvas You see the sorting layer On the canvas It's on default It's not rendered We cannot see it because of our game elements So I'm going to add an extra sorting layer

**7:19:13** · That I'm going to call UI And I'm going to select the canvas And set him on that UI And pay attention now Voila There you see the button Right there At the bottom Left corner So I'm going to remove the text From the button And I am going to take the button And position him at the top left corner And I am going to go in my sprites folder

**7:19:37** · And for this button This one is going to be the restart So I'm going to drag and drop the restart And I'm going to hit the native size But this is too big I'm also going to set here The anchor at the top left corner So somewhere around here

**7:19:52** · But as I said, this is too big So it's 400 by 400 I'm going to say 250 by 250 I believe this is okay No, no, it's not So let's go over here Let's say 100 by 100 This is too small, I believe No It's enough for our game I mean, we can see it It's not a mobile even on mobile This would be visible Completely visible And yeah, you know the drill

**7:20:14** · So over here I'm going to use the restart button Maybe just reposition a little bit more Somewhere around here There you go And I'm going to copy this But before that I'm going to rename it to restart I'm going to duplicate it And this one is going to be home Or basically going back to the main menu And I'm just going to lower him a little bit here And there you go But for this one, I'm going to drag and drop the home

**7:20:37** · And voila, we have our icons Before we can do anything We know that we need to go inside of our scripts folder And create a new C# script I'm going to call this one Gameplay UI Controller And I am going to select home and restart But before I do that Pause the video And try to do this on your own So try to attach the script On the buttons And make Or try to create a function for both of these And then I will tell you how we can, you know, reload the scene

**7:21:10** · Basically using the scene manager So you can try that on your own And I'm going to continue right now So selecting both of these I'm going to hit the plus button And attach Basically, I didn't attach the gameplay UI controller I am going to attach it on the canvas game object itself And I am then going to drag the canvas over here There you go And let's go into the gameplay UI So here he is He is only going to have two functions One is going to be public void restart game

**7:21:43** · And another one is going to be public void home button Or simply going back to main menu In order to restart the game We need to Over here I'm going to say using unity engine That scene management And here I'm going to say scene manager

**7:22:00** · That load scene This is to reload the scene So in order to reload the scene We're simply going to add here gameplay Because that's the name of the scene we want to load Which is our current scene where we are Which is the gameplay This is one of the ways Another way I'm simply going to copy this And I'm going to comment it out and paste it below Another way is that we can use it like this

**7:22:23** · We can call the scene manager And we can say get active scene And we can say dot name So it will get us the current scene we are in And it will get the name of that scene And this is the beauty about programming This is what I love Because everything is named What do I mean by that?

**7:22:39** · You want to get an active scene You simply call scene manager Get active scene And there you go You get the scene that is currently active And then you simply type name of that scene And it will return You see returns the name of the scene That is currently active in the game Or app If we are in the gameplay It will return gameplay If we are in the main menu It will return main menu And so on and so forth And last but not least

**7:23:02** · Over here I'm simply going to paste this But instead of gameplay I'm going to say main menu Just make sure that The name is over here So this name Matches up with the name Of your scene That you have stored Inside of unity So over here You see it's main menu And there you go So for the restart I'm simply going to select the function

**7:23:24** · Gameplay UI Restart game For the home I am going to go over here And say home button And that's all there is to it So now we can go from our main menu And I can You know Hit the play button I can restart the game See it is restarting And it is reloading the game with the same player

**7:23:44** · If I go back to home And click here to reload with Or to play the game with the other player There you go You see now Now we can play the game Even if we die So even if I die And I'm waiting for You know One of the monsters to kill me But apparently No monsters are killing me Because I am so awesome Are there any monsters?

**7:24:02** · Yes, here it is Bam The monster has killed me I have died But now I can press the restart button And play the game again And so In infinity So there you go So now I can play this game In infinity But we are not going to live until infinity, okay And I can also go back And I can also hit the play button I mean, select another player And voila!

**7:24:27** · I mean, that's all there is to it What else can I say?

**7:24:30** · I have the ghost I can go over him And there you go So yeah This was Monster Chase Game