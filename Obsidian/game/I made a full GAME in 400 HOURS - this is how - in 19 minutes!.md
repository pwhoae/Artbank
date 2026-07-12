---
title: "I made a full GAME in 400 HOURS - this is how - in 19 minutes!"
source: "https://www.youtube.com/watch?v=6L3Z3JI1HvE"
author:
  - "[[Imphenzia]]"
published: 2024-09-21
created: 2026-07-11
description: "GET UNFAIR RAMPAGE: KNIGHTFALL: https://store.steampowered.com/app/3187470/Unfair_Rampage_Knightfall/ Sentry Application Monitoring: https://bit.ly/3UiIvfnI made a game in 400 hours and in this vi"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=6L3Z3JI1HvE)

GET UNFAIR RAMPAGE: KNIGHTFALL: https://store.steampowered.com/app/3187470/Unfair\_Rampage\_Knightfall/  
  
Sentry Application Monitoring: https://bit.ly/3UiIvfn  
  
I made a game in 400 hours and in this video, I take you through every 10 hours of progress in 19 minutes.  
  
You can support me on Patreon:  
https://www.patreon.com/imphenzia  
  
The palette texture used in this video is public domain and can be downloaded from https://www.imphenzia.com - look for the ImphenziaPixPal texture in the asset section.  
  
FlowEnt Animation/Tweening library (Free!): https://flowent.friedsynapse.com/  
  
Fluffy Stylized Trees Tutorial, using quadmesh-to-billboards shader in Unity: https://www.youtube.com/watch?v=iASMFba7GeI  
  
My AI tutorial video Breadcrum AI / Bloodhound AI: https://youtu.be/Bm17ijSiCQg  
  
LEARN LOW POLY Character Modeling - Blender 3.5 Full Course: https://youtu.be/PTWV67qUX2k  
Watch this video to learn every step of the way to create your very own characters!  
  
My website:  
https://www.imphenzia.com  
  
Universal Sound FX:  
https://www.imphenzia.com/universal-sound-fx  
  
Imphenzia Discord server invite:  
https://discord.gg/sR7pZ4B  
  
My Instagram:  
https://www.instagram.com/imphenzia/  
  
Twitter:  
https://twitter.com/imphenzia  
  
My Itch.Io page with all my Ludum Dare games:  
https://imphenzia.itch.io/  
  
Imphenzia Merch:  
https://teespring.com/stores/imphenzia  
  
My Twitch Channel:  
https://twitch.tv/imphenzia  
  
In-depth learn how Low Poly Modeling in Blender:  
https://www.youtube.com/watch?v=1jHUY3qoBu8  
  
I use a Sony FX3 camera with a Sony FE 2.8/24-70mm GM lens. My primary microphone is now the Shure SM7B, and I use a Rode NTG3 shotgun mic if I need it to be out of view. I downgraded to a Focusrite Solo from my wonderful RME Fireface UFX II that I had to sell when I moved from Sweden to Australia.  
  
Thanks a lot for watching and sharing my videos :)

## Transcript

**0:00** · I made this game in unity in 400 hours and I recorded every minute of it in this video I will show you what it looked like after 10 minutes 1 Hour 2 hours 5 hours and then every 10 hours until the game was finished after 10 minutes I just mocked up primitive cubes as a platform level I created a capsule

**0:18** · to represent the player after 1 hour the character could jump with simple input I used the new Unity input system which is slower to implement at first but you will be rewarded later when you add support for multiple controllers and input remapping 2 hours in I had a scriptable object with parameters for custom gravity jump height movement speed and quality of life features for players such as a Grace timer to allow jumping off platforms even when you're a few milliseconds late I've been prototyping Platformers for years and

**0:47** · I've watched countless talks on platformer physics dating back to Super Mario which led me to take a custom approach instead of using the unity character controller and standard Unity physics I also knew that I wanted to reuse this Logic for NPCs which is why I need my script character movement instead of player movement after 5 hours I had dashing to but I still needed more hours to improve the feel of jumping falling dashing and double jumping physics if you use normal 9.81 m/s

**1:13** · Square as gravity for a platformer it will feel slow and floaty which is why I use a much higher value let's check the progress every 10 hours but first thanks to Sentry for sponsoring this video Sentry provides application monitoring with a plugin that integrates with unity and you can capture except ctions and crashes when your game is out in the wild running on a wide range of computer hardware and operating systems you'll get notified through a NE dashboard with detailed information logs stack traces

**1:41** · so you can troubleshoot and take actions without players having to send any bug reports check out the link to Sentry in the description I'll be running Sentry to monitor this game when it releases on Steam on the second day 10 hours into development I created the first 3D mesh by fracturing a cube into segments that I had subdivided when I imported the mesh into Unity it looked messy and cluttered and it lost the low polythetic

**2:03** · that I was going for but these Stone fragments are still used today but only when the blocks are destroyed after 20 hours on the third day I tackled AI controls for NPCs I created a script to shoot Ray casts in front of the character so I could detect if the ground disappeared as the NPC approached an edge the NPCs run the same character movement script as the player but with different scriptable object containing different speeds and jump properties we're now 30 hours in on day four and AI kept me busy I separated the logic into

**2:33** · an AI knowledge script that only keeps sensory data and perform the raycasts I made the script draw a lot of debug lines with colors to show me if the sensors were working as intended I knew that there would be many raycasts that could affect performance so from the start I designed the AI knowledge script to gather data over multiple frames so it could be spread out between multiple NPCs on day five 40 hours in I was still

**2:57** · doing AI programming plenty of troubl shooting and more sensors to add and creating an AI answer script that could answer questions based on information that AI knowledge had gathered like am I at a ledge can I land on the other side if I jump now is there something over my head right now if I fall down here is it

**3:15** · too high for me to jump up again I had also implemented the ability to shoot at Tiles and break them into rock debris after 50 hours on day six the main character capsule was replaced by hero with a Run and Jump animation it's always fun when you begin to replace the Primitive object I modeled the main character in blender with some inspiration from turken and Fallout I stuck to my trusted low poly style and I used my single pallet texture to colorize everything I had to rig and animate the character and model our rifle from previous lessons learned with ultranova the rifle was kept short

**3:46** · to not poke through walls and enemies on day seven after 60 hours of development the environment started to take shape I had model some grass and low poly trees but I remembered a tutorial on YouTube to create fluffy trees so I followed that to make the trees more interesting check out the link in the description to ponus Carlson's fluffy stylized trees tutorial using quad mesh to Billboard's Shader in unity I recreated the tree Shader in unity's Shader graph 8 days

**4:11** · and 70 hours in I added Logic for the MPCs to follow me more on this topic soon because the idea was scrapped for a number of very good reasons I also added a trail render to show jumping and dashing and a melee system was implemented so the player could kick opponents if they got too close to use the rifle needless to say the physics was a bit boogy at this stage AG after 9 days we're 80 hours in and the first enemy NPC capsule was replaced by a knight the Knight was model in blender using the same low poly style and then animated with walk and attack animations

**4:41** · after 90 hours on day 10 testing and tuning began to take more time the melee combat ragd dooll effects bullet time slow motion effects and Camera logic needs testing and tuning I also had box colliders on Rock debris so the player was obstructed by the debris which made sense but later on I replaced them with sphere colliders so so the players could carve a path more easily on day 11 100

**5:03** · hours had passed and a basic UI was added to keep track of score and show health and resource bars I animated the score using tweening to do a little punch animation each time the score was added small effects like this makes it gratifying for the player and it reminds me of a ball hitting the bumper in a pinball machine I emphasized this effect even further later on May 24th 2024 day

**5:23** · 12 110 hours in sound effects and the effect to crumble the level behind the player started to turn this into an enjoyable game you were sent back in time and I imagine the level falling apart being time catching up with you and it added a stress element that urges the player to keep moving forward I also decided to add some more visual detail to the main character with some glowing elements and a backpack or if it's a rocket pack I don't know May 25th was a Saturday and 120 hours into development I thought it would be nice to add a soundtrack I had played music while play

**5:54** · testing the game and I realized how much it was adding to the feeling of power control and being in the zone in the early days of infancia before Games music is what I was making now I don't do it as often but I wanted to create Retros sounding music as a tribute to Tarkin and all the beautiful Melodies of Chris HCK I mixed the Retro sounds with modern sounds and I needed to make the song at least 10 minutes long because when the player reached further into the game new elements of Music could be discovered as well now this was starting to feel rewarding to play

**6:40** · I took the Sunday off but on Monday the 27th of May after 130 hours of development I Revisited the music and loaded up my studio one project and added some flare to ramp up the music the further you got I layered The Melodies with electric guitars and I spent a couple of hours to play the game

**7:01** · \[Music\] around the 140 hour mark I began to model a villager the idea was that villagers would follow the player and cheer at the might of such a hero so I animated bowing and cheerful jumping animations this turned out to be a bad idea the AI was not good enough to keep up with a player and the little villagers just looked out of place and it took away the fast-paced action of the game instead 150 hours in I added

**7:29** · hazards and obstacles like a giant blade and a massive mace these hazards Spin and swing and it added new challenging elements to the game the mace is animated with a tween animation and the blade just uses a hinge joint with a motor that switches Direction 160 hours

**7:45** · had passed and I continued with hazards by adding a giant hammer I modeled it in blender using the same pallet texture of course and I implemented it in unity the Hammers were ruthless and instantly killed you oh and as with nearly everything implementing hazards was not without bugs sites such as this one were common we're now 170 hours in and I repurposed the Villager to become the Archer enemy the Archer draws his bow and shoots to become the ranged enemy not the ranged enemy the ranged enemy

**8:14** · they will get you a lot in this game the draw poses were created in blender and I used script logic in unity to lur between the drawing of the bow and releasing the arrows I probably went into too much detail having arrows accurately being drawn from the quiver after 180 hours I added screaming sound effects for both enemy and

**8:35** · player I also added a medkit because you felt discouraged as you lost Health knowing that you got one step closer to death the medkit added hope and boosted morale when you were playing I also added a lot of dynamically selected commentary vocals for the hero to give feedback to the player about health progress and Hazards that's just not fair HP is%

**9:01** · \[Music\] 190 hours in I kept polishing the so-called hurt indicator which is a triangulated mesh spread across the screen that flashes in red as the player gets injured it helps the player keep track of Health on my birthday the 11th of June I hit the 200h hour mark and I

**9:19** · modeled some Siege weapons I started with a Ballista and I followed up with a catapult it would still be a few days before they would get introduced to the game I also modeled a bridge when the player reaches a bridge the game slows down and gives you a quick breather and it fully heals the character think of it as crossing the Fountain of Youth you get rewarded with a higher bonus if you cross the bridge with higher Health the waterfall behind the bridge was modeled in blender and the UVS were laid out so I could pan a texture to animate the flowing water in unity I created a custom Shader in Shader graph that pans

**9:50** · not only the colors but also vertex offsets to make the water come alive some particles were also added to create a foam effect 2110 hours in it was still my birthday but I love doing this so it didn't really feel like work I updated the menu UI and I had to change my implementation of the unity so-called new input system so it would work with remapping keys and the GamePad buttons

**10:11** · the new UI look feels fresher with vibrant colors and buttons with headers and Sliders that followed the same style after 220 hours I was still doing UI stuff now I moved on to settings and never underestimate the time it will require to implement a setting system that allows you to load and save settings it's especially tricky to implement the changing graphic settings that have different resolutions and refresh rates on different computers the

**10:35** · settings load save functionality and the reusable logic to present settings buttons and Sliders required a fair bit of C programming at the 230 hour mark I had gotten to the point where I could Implement Gamepad and keyboard controller remapping this is pretty tricky and timec consuming and it requires programming and testing for a

**10:55** · platformer gamad support and controller remapping is highly recommended and should be seen as a requirement because the players will demand it or let you know in the review comments I was really happy with the look and feel of the UI and I took the time to animate the panels as they appear and disappear it adds to the Polish and it makes it feel like a proper game remember the ballista that I modeled on my birthday well now at 240 hours it was time to implement it in unity I had a separate test scene

**11:21** · where I could test the animation and then I brought it into the game I decided to make the ballista bolts not stick to the player in the end 250 hours in I added the Catapult in a similar way to how I added the ballista I tested it in my test scene and I created a fireball that was launched by unit physics the hinch joint with a motor I broke the Catapult into fragments too so I could break them apart on damage June 16th after 260 hours I tackled

**11:45** · statistics I wanted to keep track of everything all damage taken all the kills and even silly stats like the number of jumps and the number of dashes and the distance covered on ground and in the air for those who find the game too challenging to compete with in terms of height high score I wanted to implement steam achievements and stats so people could play the endurance race instead who would be first to cover the distance to the Moon who will Dash more times than Unity makes Bad Business decisions 8 hours later I was still doing statistics 2 hours after that I was still doing it 270 hours in total

**12:15** · and I was still doing more statistics at this point I could at least begin to present them to the player because uh the previous 10 hours was just groundwork to gather data and store it in a class and then serializing it 280 hours in and guess what still stats the

**12:32** · stats are serialized into a Json string saved to disk and every round it saves stats so it can be accumulated and keep track of your score and how it improves over time I started to get enough stats that I had to create tabs in the stats panel whether or not all of this stats Gathering will be worth it or not I'm not sure about but I have a feeling it will be a platformer without powerups would be strange and I'm surprised it took me 290 hours before I implemented

**12:57** · any now the powerups are colorful and and animated using popping tweening animations I have powerups such as Shields or scatter which spreads bullets into three different directions bigger bullets and Rapid Fire and maybe worst of them all the Hideous mortar more on the mortar in a minute here you can also see the difference it made with spear colliders for the debris and ignoring the debris collision with a player now this feels good scatter is probably my favorite PowerUp but it does break up the level a bit so I have to turn down the power on it a little bit 300 hours

**13:26** · in and this was a proper game I spent about 10 hours is just play testing the game and it felt good the controls felt good the sound felt good the hazard felt good the powerups felt good well except the mortar the crumbling of level pushing you forward felt good destroying blocks and carving your own path felt good melee attacking some enemies felt good I started to want to beat my own high score this is a game now okay I

**13:51** · mentioned the mortar right it feels like a cool PowerUp but it's been nothing but trouble at the 310 hour mark I had implemented a mortar trajectory feature and it was terrible I thought it made sense but nobody in the right mind would be using this PowerUp if anything it makes playing more difficult so I'll have to replace the mortar at some point if the game is released with it it's because it's reached some sort of a meme status I also modeled a flying enemy and

**14:15** · along the lines of the mortar it's kind of silly first it had big blades that it would kick the play with but it looked ridiculous so I swapped them for spiky shoes no matter what you do with this character it'll still look silly so think of them as less intelligent being that are trying out their flying Contraptions like those imagined back in the Leonardo daav Vinci days 320 hours

**14:34** · in it was boss time first I modeled the boss in blender and since the boss would be much bigger on the screen than the enemies I had to add more polygons and a beard and more detailed armor I still use the same low poly technique and the same pet texture of course which you can download for free and Link in the description and I also modeled weapons like the big spy club and an axe as well as a shield rigging and weight painting took longer because I had SE separate bones for cloth and beard after 330

**15:02** · hours it was time to animate the boss I made key frame animations in blender and I imported the animations into Unity I created an animator State machine so the boss could switch between attack patterns first I implemented root motion for the boss but I scrapped that due to complications so I control the positions through scripting instead the boss's Shield can be broken so he can grab his axe and this felt like a nice addition to the game every platformer needs a boss 340 hours the boss greeted the

**15:30** · player but he had nothing to say when defeating the player so I added some voice lines when the boss eliminates you a vant effort but ultimately a pointless one your defeat was inevitable now you're nothing your strength has failed you now

**15:48** · you fall 350 hours and when you defeat the boss I animated a death sequence that was a waste of key frames though because I went back to the rag doll that I first had troubles spit for the boss it turned out to be the better solution in the end I also configured My Level spawner to only spawn boss segments so I could test out ragd doll after rag doll obviously the boss won't die this easily in the game 360 hours and the hit boxes

**16:12** · used for the boss turned out to be frame ratees dependent it worked in the editor which was running at 300 frames per second but in a vsync restricted build running at 60 frames per second the weapon could pass through the player I had to change my Approach and use sphar casts instead that swept the areas of the weapon between each frame and it worked perfectly remember the flying enemy it was finally implemented too

**16:35** · they Ed different AI logic to navigate and I made a video about bread Chrome AI or I called it Blood Hound AI back then but check out the link in the description to that AI video we're getting close and at 370 hours I focused on making more levels improving spawning of enemies and level segments and the game over UI 380 hours into development

**16:55** · my son tested out the game and gave me some very valuable feedback I wrote down the feedback in a list and prioritized fixes in addition to my son testing the game Rick from gamedev TV along with a few other people have helped to test the game to identify some of the bugs but also come with some good suggestions for improvements it's very important to get feedback from other players because when you play the game you'll notice that you get pretty good at it so your own feedback is going to be pretty skewed the game was first designed to end when you passed five Bridges chased away the boss and ultimately eliminating the boss

**17:27** · but Rick came up with an idea to instead Loop the game and make it more challenging so people that beat the odds and defeat the boss can get a higher score so at 390 hours in I created a new set of materials for the trees so when you defeat the boss the level starts over with new visual appearance the score goes up faster with each kill and the speed of the world crumbling picks up if you succeed again you now reach the snow visuals and the rate picks up again if you reach round six you would have to dash the entire way to just make it finally at hour 400 I implemented a

**17:58** · simple tutorial to teach the player how to play the game the controls are pretty simple move jump Dash double jump shoot aim up and down and use powerups to fight your way and beat your high score at this point I had played the game about 20 hours already and it's always

**18:13** · difficult to know if you hit The Sweet Spot between it being too easy or too hard this is a tough game but it's designed so you die and restart quickly and the semi- random procedural assembly of the world will make each round different but at the same time feel recognizable the game will be released soon and you can wish list it on Steam now it's a simple game and it will be priced accordingly but it was designed to still offer replayability and I enjoy

**18:36** · playing the game 40 hours in I have reached the snow level myself and I can't wait to see other players play the game all right folks I hope you found this video interesting and useful and give it a thumbs up if you did and don't forget to subscribe if you haven't already and also a huge thank you to my patreons on now