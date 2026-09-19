---
title: "Why Your Godot Code Isn't Actually Broken (Keyboard Ghosting)"
source: "https://www.youtube.com/watch?v=qA3dnGGC3ow"
author:
  - "[[DeeRaghooGames]]"
published: 2026-06-30
created: 2026-09-19
description: "Have you ever had a game mechanic randomly stop working, even though your code looked perfectly fine?In this video, I investigate a strange bug in one of my Godot projects where a super jump would w"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=qA3dnGGC3ow)

Have you ever had a game mechanic randomly stop working, even though your code looked perfectly fine?  
  
In this video, I investigate a strange bug in one of my Godot projects where a super jump would work when moving right, but fail when moving left. Using a custom input visualizer and a simple demo project, we track the problem down to an unexpected culprit: keyboard ghosting.  
  
We'll look at how keyboard matrices work, why certain key combinations fail on some membrane keyboards, the difference between ghosting and key jamming, and what game developers can do to avoid these issues in their own projects.  
  
If you're making games with Godot or any game engine this is a hardware limitation worth understanding.  
  
  
subscribe -https://www.youtube.com/channel/UC-KLgU0nzoCCEU6W16CS3vQ?sub\_confirmation=1  
want to learn more click here: https://www.youtube.com/playlist?list=PLeD1LY8foaKA2wOGhFtZs1gt91lbZmhCS  
  
Timestamps:  
0:00 intro  
2:15 What is ghosting  
3:16 scripts  
5:01 demo project  
6:04 explanation  
9:12 tips  
10:31 Question  
  
  
I used Ziva AI assistant for the fast prototyping of parts of this Video.  
Ziva.sh  
  
WHAT TO WATCH NEXT :  
Beginner Game Dev? Don’t Make Small Games || Do This Instead  
https://youtu.be/rd1HzPy3fP4  
  
Beginner Game Dev? Stop Making Basic Enemies || Build Enemy Systems Instead  
https://youtu.be/QXbgOX5Wl9E  
  
Finite State Machine in Godot 4.3 Made easy "From Idle to Dashing"  
https://youtu.be/yAMgT28kYsc  
  
Godot 4: Build Flexible Abilities with Composition | The Secret to Modular  
https://youtu.be/TyZsfKaIfHE  
  
How to Build a Scalable Player in Godot 4 - No State Machine  
https://youtu.be/PUcUhoV4S7A  
  
Create a Signal-Based Game in Godot 4 | Clean Architecture Tips  
https://youtu.be/lNgq1OXbUkQ  
  
Demystify Signals and Autoloads in godot 4.3 Part 1  
https://youtu.be/V35SgGAdzNE  
  
Demystify Signals and Autoloads in godot 4.3 Part 2  
https://youtu.be/kXAXHKklAX4  
  
Relationships are tricky, but with the Signal Hub, Game Manager, and Autoload, things are just fine!  
https://youtu.be/Yo7ebpOJYm8  
  
Wait what ? Vibe coding SUCKS for beginners!  
https://youtu.be/7rfG9K2a3WQ  
  
More stuff about game dev- https://www.youtube.com/playlist?list=PLeD1LY8foaKBUgilTuyp2FHOn3GacQket  
  
Please feel free to share your toughs in the comments.  
Ziva AI Assistant was used, for faster prototyping of certain parts of this video.  
  
fixed project on itch  
https://deeraghoogames.itch.io/2d-player-controlle-ladders-super-jump-hide  
  
  
#Godot #GodotEngine #KeyboardGhosting #InputHandling #IndieGameDev

## Transcript

### intro

**0:00** · \[music\] I once spent 3 hours trying to find a bug in one of my Godot projects, but I was so very \[music\] wrong. Let me explain. A buddy of mine, the flow, is really into retro games, and he came up with the idea of making an old-school ninja game inspired by the classics. The plan was simple. He would handle art, music, and sound effects, and I would handle the programming in Godot. And we'll both work on level design. There was just one catch. He was very peculiar about controls.

**0:29** · And the first ability we planned to give the player was \[music\] a super jump. To activate it, the player would hold the up arrow and press space.

**0:39** · Simply enough, right? \[music\] Well, that's where the trouble started. So, he gave me the art, and I was off. I started coding, \[music\] and in no time my player could move left and right. My player could jump, and my player could super jump. But for some reason, whenever I pressed the left, up, and space key at the same time, the jump and super jump just stopped working. So, naturally, I assumed the problem was in my code. So, I got to work and started debugging.

**1:06** · I checked my input actions, I checked my movement code, I added debug prints, and I even rewrote parts of the controller just to be safe. And you know what? It took me nearly 3 hours to figure it out. The bug wasn't in Godot.

**1:21** · \[music\] It wasn't in my code. It wasn't even in the game. The problem was my keyboard. I know, that's probably not the answer you're expecting. But once I finally tracked down the problem, I started digging deeper and discovered that this wasn't \[music\] just some weird one-off issue. There are actually several keyboard-related quirks and hardware limitations that can make perfectly good game code look completely broken.

**1:47** · So, in this video, we're going to look at the keyboard bug that wasted \[music\] 3 hours of my life, how I figured it out, and how you can test for it yourself, and some of the other keyboard quirks that every game developer should know about before spending hours debugging code that was never the problem in the first place. If you want to test the player controller with \[music\] the fix, I will leave a link to it in the description. I'm D, and this is D Ragu Games. Let's get started.

### What is ghosting

**2:19** · \[music\] Keyboard ghosting happens when a player presses multiple keys, but the keyboard fails to report all of them to the computer. As game developers, that means our code can be 100% correct, and players can still experience missing inputs. It usually happens with cheaper membrane keyboards, and the button combinations where this happens can vary between brands. Let's break down what is happening in my project by using this simple example.

**2:48** · I have set up a simple demo project with a canvas layer that holds the UI for displaying the button presses, a Sprite 2D to hold the background texture, a StaticBody 2D for the ground, and a really simple player character using a CharacterBody 2D. I have attached a script to the keyboard UI node to be able to visualize the button presses, and another script to the player to control the player movement.

### scripts

**3:22** · Let's take a closer look at the player controller script. I made this simple Godot player controller based on Godot's basic movement template. The player can move left and right using the arrow keys, and jump using the space bar. For the super jump ability, I check if the player is holding the up arrow while pressing space. The player performs a much higher jump using a separate super jump velocity variable. Otherwise, it just triggers a normal jump. So, the logic here is really straightforward.

**3:50** · When space is pressed, the script checks if the up arrow is also being held down. If it is, we apply the super jump. If not, we just start doing a regular jump. So, naturally, if the super jump stops working, you'd assume the bug is in the code. But, as we're about to see, the real problem isn't the script at all.

**4:09** · It's the keyboard. To visualize the button presses, I used a canvas layer with a control node as the main container, which I called keyboard UI, and attached the script to it. Inside that, I added a text rect to display an image of a keyboard. Then, I placed color rect nodes on top of the relevant keys, up, left, right, and space, so that they line up with the physical layout. The idea is simple. Each color rect acts as a highlight that turns on when the corresponding key is pressed.

**4:38** · In the script, I store references to each color rect using at on ready. Then, every frame in process, I check the input actions using input.is\_action\_pressed. Since this returns either true or false, I simply assign the result to the visible property of each color rect. So, the key highlight appears when pressed and disappears when released.

### demo project

**5:04** · \[music\] As we can see in this demo project, I was able to recreate the exact same issue that was happening in the original game. The player can move left and right and perform a normal jump. If I hold the up key and press the jump button, the player correctly performs the super jump. We can also see this reflected on the on-screen keyboard. But, here's where things get interesting. Just like in the original project, if the player is moving to the right, holds the up arrow, and presses space, the super jump works exactly as expected.

**5:36** · However, if I switch direction and move to the left, hold the up arrow, and press space, the super jump fails. And, as we can clearly see on the on-screen keyboard, the space input is never detected. This is a ghosting effect in action. And the important thing to understand is there's nothing wrong with the code. The keyboard simply isn't able to register that specific combination of inputs.

### explanation

**6:06** · \[music\] I found this really interesting article on Wikipedia, which explains how to understand keyboard ghosting. We first need to understand how most keyboards are built. Rather than having a separate wire for each key, most keyboards use what is called a matrix, a grid of rows and columns. When you press a key, the keyboard detects which row and column are connected and uses that information to determine which key was pressed.

**6:35** · The problem happens when multiple keys are pressed at the same time. In certain key combinations, the electrical signals can create an unexpected path through the matrix, making it look like an additional key has been pressed even though it hasn't. This false input is called ghosting because the key detects a ghost key that doesn't actually exist.

**6:58** · Modern keyboards usually prevent this by ignoring one of the inputs instead of reporting a false key. This behavior is known as key jamming. So, rather than detecting an extra key, the keyboard simply drops one of the keys you are pressing. This is exactly what happened in our example. When I press the left arrow, up arrow, and space key together, the keyboard chose not to report one of those inputs. As a result, Godot never received the complete key combination needed for the super jump.

**7:28** · Which key combinations fail depends on the specific keyboard. A combination that works perfectly on one keyboard may not work at all on another. Higher-end keyboards often include additional circuitry, such as isolation diodes that allow them to correctly detect many simultaneous key presses. That's why gaming keyboards often advertise these features like anti-ghosting or N-key rollover, which are designed to reduce or eliminate these input limitations.

**8:06** · Unfortunately, I haven't been able to find a way to force detection of this button combination. This isn't something you can fix with code. It's simply a hardware limitation of the keyboard. So, the simplest solution is to change the key combination used for the ability. In my case, the best solution was to move the movement and abilities over to the WASD layout instead. So, I added a new input actions in the project settings, updated both the movement logic and the on-screen keyboard visuals to match the new keyboard bindings.

**8:36** · And once we run the game again, we can see the issue is gone. The player is now able to perform the super jump to the left without any problems. In practice, keyboard ghosting shows up in very specific gameplay situations, especially when you're pressing movement, jump, and action keys all at the same time. The important thing to understand is these failures are not consistent across all devices.

**9:01** · Ghosting patterns vary by keyboard brand, model, and internal wiring. So, a combination that works perfectly on one keyboard might completely fail on another.

### tips

**9:15** · \[music\] What can we do as game developers to reduce problems caused by keyboard ghosting? First, always allow your players to rebind their controls.

**9:26** · Different keyboards fail on different key combinations. So, giving players the freedom to choose their own keys is one of the best solutions. Second, consider offering multiple default layouts such as WASD, arrow keys, or ESDF. If possible, support gamepads as well since they aren't affected by keyboard ghosting. It's also a great idea to avoid making critical gameplay actions depend on three or more keys being pressed at the same time. During testing, try your own game on an inexpensive membrane keyboard like mine.

**10:02** · You may discover input combinations that work perfectly on your development machine but feel for some players.

**10:07** · Finally, consider alternative control schemes. For example, instead of requiring players to hold a sprint key while jumping and moving, you could offer a toggle sprint option. The takeaway here is that keyboard ghosting isn't a bug in your game, but good control design can prevent it from becoming a problem for your players or for you spending three hours debugging perfectly good code. If this video made you stop and think about how you're learning the tool and not just what you're building, then you're exactly who this channel is for.

### Question

**10:38** · I make videos for developers who want to understand their code and have the discussions that tackle the difficult topics. So, if that sounds like you, hit subscribe. You'll feel right at home here. And before you go, answer this in the comments. Have you ever run into weird input issues like this in your own \[music\] games or did you just discover about keyboard ghosting today? Until next time, happy coding, keep experimenting, and I'll see you in the comments. This has been The Ragged Games.