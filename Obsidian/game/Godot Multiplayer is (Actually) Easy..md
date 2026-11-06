---
title: "Godot Multiplayer is (Actually) Easy."
source: "https://www.youtube.com/watch?v=eqH_2QdHQgQ"
author:
  - "[[Salodo]]"
published: 2026-11-05
created: 2026-11-05
description: "Try Brilliant's tutor for free: https://brilliant.org/Salodo/ .You’ll also get 20% off an annual Premium subscription.This video was sponsored by BrilliantGodot Multiplayer - the chaotic, 20% goo"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=eqH_2QdHQgQ)

Try Brilliant's tutor for free: https://brilliant.org/Salodo/ .  
You’ll also get 20% off an annual Premium subscription.  
  
This video was sponsored by Brilliant  
  
Godot Multiplayer - the chaotic, 20% good Godot tutorial where we learn how to create servers, connect clients, use RPCs, spawn players, sync movement, and disco disco good good.  
  
\================================================  
DISCORD - https://discord.gg/Gu3ydayFaa  
\================================================  
  
Learn how to play with friends without port forwarding using netfox.noray - https://www.youtube.com/watch?v=vcL9e1EzbnE  
  
\================================================  
royalty free Music produced by Giorgio Di Campo for FreeSound Music  
http://freesoundmusic.eu  
https://www.facebook.com/freemusicforyoutube/  
https://youtube.com/freesoundmusic  
original video: https://youtu.be/BTOOBIeH1IM  
download links:  
mp3 with melody: https://link-to.net/49870/BellaCiaoMelodyMp3  
mp3 without melody: https://link-to.net/49870/BellaCiaoNoMelodyMp3  
\================================================  
  
#godot #godot4 #GodotTutorial #GameDev #IndieDev #GameDevelopment #GodotProgramming #GodotTips #GodotMultiplayer #MultiplayerTutorial #RPC #ENet #GodotEngine #Multiplayer

## Transcript

**0:00** · Making multiplayer games is really hard, but it actually isn't if you learn it the right way, that is. That's why Rubs and I spent the last 40 hours crafting the ultimate grow tutorial, which is easy to follow along and is shockingly even better than our previous one.

**0:14** · Yeah, a lot of people didn't find that one quite to their taste, including the Stellar Jay. Don't worry, this time I got you. So, let's remote procedure call right into it, haha.

**0:24** · It is important to understand the first part of multiplayer, which is the server and the client. One person's game should be the server, then every other friend should be a client. We create a server using this code. Let's add a button that creates the server and put our code under the button pressed function. The create server function has two parameters. Max clients is how many friends you want. The port is the important part.

**0:48** · The port can be any number between 0 and 65535. Also, ports 0 to 1024 are reserved for privileged, spoiled, important scallywags like HTTP and the Windows crime service, I mean time service. So, we lummies shouldn't use them.

**1:05** · For this tutorial, I chose port 2 because I'm a cool Linux user, but you have to choose another one. The port is a way for the PC to know which program wants what. So, if information comes through on port 2, the PC will know that's for my game and not for Zoom. This is also where the dreaded port forwarding comes in.

**1:23** · Port forwarding, for me it's more like port backwarding because I'm always going backwards every time I try to do something.

**1:31** · You see, it wouldn't be very fun if everyone on the internet could access all my ports at once. So, port forwarding is the step of telling the router, "Hey, open this port on the internet and then forward all the info it receives from people online to my PC." Then the PC will go, "Hey, some info is coming in from this port. Let me send it to your program." Port forwarding is scary, so for now we'll ignore it and only test our program by connecting on the same Wi-Fi network.

**1:56** · Since we created the server earlier in the video, now we should create the line. Create another button called the mouse key, Oh, or in other words, the join server button and put these lines under the pressed signal. We first type the IP address. Just for testing purposes, the server will be on the same device as the client. So, both are now on my computer. What would the address be in this situation? Well, we have some options. Either 127.0.0.1 or localhost, or if you're feeling extra adventurous, your PC's local IPv4 address.

**2:26** · And then put your chosen port number in here.

**2:30** · Now that we have created a client and the server, let's test if it works. Let's create a function called on connected. This function will run on your client when it connects to the server. So, for now, it just prints connected successfully out when the client joins. And now that we have this function, let's connect it to a signal.

**2:46** · Under your underscore ready function, add this line. Now, we need to test it, but in order to test it, we need to run our game twice. You know, like one server and one client. Yes, you know. Very good. So, in the top left, press debug, customize run instances. Then enable multiplayer instances. Change this number from one to well, two.

**3:06** · For the moment of truth, press play.

**3:09** · In your one instance, press create server.

**3:13** · And the other join server. If your console just said connected successfully, then good for you. Next, create a function called on player connected. It has one parameter, which is the unique network ID of the player connecting. So, this function will run on the client and the server. So, it can then, for example, add a new player scene to the game with that player's unique ID. But for now, let's just print player connected with ID when someone joins. Then in underscore ready, add this. Now, run the game again.

**3:40** · If your console just said player connected with ID, you've successfully graduated to chapter two. If not, then you have to find your error or ask the experts on the Discord.

**3:51** · And if you're stuck, the worst part is not having someone to help you understand. That's why there's no better way to build the coding and logic skills you need in Brilliant. Currently, I'm I'm to learn how to use classes. They're kind of used everywhere in game dev, and if I don't know what's going on, engine.premium.

**4:08** · The program is not can ask Koji, which doesn't just instantly give me the answer, but points me in the right direction.

**4:15** · says new agents should start on the free, non-premium tier.

**4:19** · Ah.

**4:20** · So, Koji also helps you by interacting with the problems you're facing.

**4:23** · But wait, it gets better. Brilliant also focuses on practical skills like deciding what to build, designing solutions, and proving they work. Brilliant has tons of practical examples and problem-solving that will teach you how to read code, understand the structure of programs, and debugging. Click the link below or scan the QR code to get started with Brilliant for free.

**4:43** · You can upgrade to premium for full tutoring support and unlimited access to everything on Brilliant. And right now, Solodev viewers can save 20% off annual subscription at brilliant.org/solodev.

**4:56** · Also, this line with the ideas one was printed by the client as the peer that connected to it was the server. And this one with the long ass ID was printed by the server as the peer that connected to it was outlined. The connect to server and peer connected functions are the important ones, but you should also connect the others, which should be pretty self-explanatory. But you can pause to read. Okay, now that the server and the client have successfully hooked up with each other, let's send some juicy data between them. Haha. Unlike you, because you've never hooked up with someone who's given you phone number data before. Don't worry, I'm I'm also \[music\] alone.

**5:29** · Anyhow, Godot has a high-level multiplayer API. The way it works is by using a remote procedure calls complexly. Imagine it like running a function on another person's PC with arguments. But isn't this unsafe, you might ask?

**5:42** · Um, no. Now, it is important to understand all the aspects of RPC. So, for this example, I'm going to make the server send a message ping to the client and then print it in the client's console. Then the client will send pong back to the server. Firstly, I'm going to create a function. In order to make this function remote callable, I should add @RPC above it. Let me add another button called send information. When this is pressed, I will check if this instance of the game is currently running the server and if it is, I will call the remote function by typing the function name dot RPC.

**6:12** · In this scenario, the server will execute the print function on every connected client. If I add call local in the RPC arguments, the function will call on every client including the server itself. By default, this function can only be called by the authority of the node which by default will be the server, but can be changed if needed for every node. For example, I can add another function pong. If I put any peer in the arguments, then this function can be called by any peer on any peer. Finally, I can type pong.rpc id one inside ping.

**6:44** · Now after the client prints ping, it will call the pong function on the server only. This is because RPC ID only calls a function on the peer with this ID and one is defaultly the ID of the server. Lastly, RPC calls are by default reliable, meaning the packets will always come in in the order which they were called. And when a packet gets lost, it will be sent again.

**7:02** · Most of the time, this is okay, but sometimes you don't care if the packets are ordered or reliable, like when syncing positions of players as we just send the new position continuously and don't care if one gets lost because it will be replaced by a new position in a short time. The last nugget of information you need to know is that Well, I guess we'll never know what it was.

**7:25** · As I was saying, the last nugget of information is that If you press run and do everything right, we should see this in the console. If not, you should recheck the section or join the Discord.

**7:43** · \[music\] Now we're going to make a player scene and make the one player join the other. First, we create a player scene using a character body 3D called player with a mesh instance, collision shape, and camera as its children. Add a player script and use the default code for now.

**7:57** · Since this isn't a 3D tutorial, you can watch our other video to figure out how to add camera movement. Drag the player into your file system to make it a sub scene. Now set up your game scene like this. The important parts are the floor, obviously, and a node called players, which will kind of act as a container for all our players. Delete the player scene in our scene tree as we want to create it from code. Under our peer connected function, add these lines.

**8:20** · This part basically just exists if we are a client. The next part creates a player and sets its name to the ID of the person that just connected. It also gives the multiplayer authority of that player node to the person that joined. Remember that multiplayer authority is used If we don't put any peer, then only the authority can call the RPC functions.

**8:40** · Basically, so far, this code just creates a player on the server when someone joins. Now, we can use a handy node called the multiplayer spawner, which can replicate this change to all the clients. Add the multiplayer spawner and make it spawn path the players node.

**8:55** · Now, under the auto spawn list, add a new element and drag our player scene from the file system into here. Now, this node will replicate all of the players put under this node to our clients. The idea is that every person in the game will have a player of himself and every other person. So, you can control your own player and then the position changes will also be replicated to your dummy players for other clients.

**9:17** · One last thing, we need to create a player for the server since this only calls when someone joins. So, under the create server, add this. Awesome sauce. So, now we can finally play. And if you did it correctly, they should all party together. Damn, look at those moves. It's almost as if they're perfectly in tune.

**9:46** · \[music\] I don't know about you, but sometimes I don't really want my friends to be able to control \[music\] my player. So, try to keep up because it's really complicated.

**10:05** · In our player script, add this massive two-line paragraph. To put it simple, when we know authority of this code, we know do movement. Next, we need to add these four lines to the top. This line sets the authority of the player. Since multiplayer spawner replicates node names and we set the name of the player equal to its ID, we can just pull the owner of the player directly from its name. This line just selects the camera of the player you own. Lastly, the authority needs to send its position to all the other players. So, at the end here, put this function.

**10:34** · Each frame, for example, player A calls this function on, let's say, player B and C. Players B and C then set the position of their dummy for player A equal to the position that player A sent to them. Remember, RPC works with scene tree paths. So, if a script under game/players/1 calls an RPC, Godot will search for the node game/players/1 on the other clients in order to find the RPC function.

**10:59** · And now, when we press join, if you see one bean walking around from the other beans' eyes, congratulations, you did it.

**11:11** · Oh, jump scare. You can even test this with more players. If this doesn't work, then sadly restart chapter four. Lastly, I need to talk about port forwarding. If you want friends to join, you need to give them your global IP and also forward this port. You can Google how to do this, but we shouldn't expect every player that joins our game to have to port forward. So, you have two options.

**11:32** · If you ever release a game on Steam, you can use their services, or you can watch this video on netfox.no, which is a service that allows you to only have to send a code to your friends and allow them to join without port forwarding. Note, this video is all in SaaS. Like, subscribe, bow, and