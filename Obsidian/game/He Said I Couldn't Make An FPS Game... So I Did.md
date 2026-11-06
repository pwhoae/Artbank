---
title: "He Said I Couldn't Make An FPS Game... So I Did"
source: "https://www.youtube.com/watch?v=-IBOz6cp3Qw"
author:
  - "[[Coal]]"
published: 2026-10-31
created: 2026-11-05
description: "Click this link: https://boot.dev/?promo=COAL and use my code COAL to get 25% off your first payment for boot.dev.I made an FPS game where you are in a 3D world, and getting chased by a garry and a"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=-IBOz6cp3Qw)

Click this link: https://boot.dev/?promo=COAL and use my code COAL to get 25% off your first payment for boot.dev.  
  
I made an FPS game where you are in a 3D world, and getting chased by a garry and a jerry. My friend will challenged me to make a game, this was difficult because I am a beginner coder and new to Godot and programming, as well as being a bad 3d modeler. The editing style and concept and everything is like Dani or DaniDev.  
  
DISCORD: https://discord.gg/mSqRnTPjCA  
  
Games: https://store.steampowered.com/  
  
Friends in the Video:  
https://www.youtube.com/@UC0mw5gGPjOfjRULRQ893srg  
  
#gamedev #shootergames #fps

## Transcript

**0:01** · Ugh, screw this game, man. This game sure does suck. I should just make my own FPS game.

**0:06** · Dude, you're terrible at game dev. You can't do that.

**0:09** · Can you help me?

**0:10** · What? No, I'm not going to help you.

**0:12** · What? I don't think you have a choice.

**0:17** · \[music\] To start off, we'll need a character to play as. So, meet Robert. Now, Robert has two problems. First, he doesn't have anywhere to move around, and second, he can't even walk. Stupid Robert. So, we programmed a movement script and gave him a platform to move around on. And \[music\] now, we have gameplay.

**0:35** · Aren't \[clears throat\] you forgetting something?

**0:36** · Oh, right. We still need enemies and a gun to shoot them with. So, enter the shotgun. First things first, we need to make our shotgun actually look like a shotgun and not a LEGO brick. So, we followed some YouTube tutorials to make this, which still kind of looks like a LEGO brick, but good enough. All we have to do now is add in some bullets and a target to shoot at, and we should have a working shotgun.

**0:58** · \[clears throat\] Uh, we should have a working shotgun.

**1:02** · What the \[ \_\_ \] As it turns out, our bullets were moving way too fast for the game to handle, sometimes teleporting through walls or worse, crashing the game. To fix this, we had to use hitscan bullets that teleport to the target instead, which look pretty convincing once you add in some particle effects. With the shotgun now working, we still need an enemy to shoot at. So, meet Gary. First, we'll need to give him a 3D model, which should be easy enough.

**1:26** · Making a high-quality 3D character is insanely hard compared to the shotgun. So, instead, we had to make Gary low-poly, which basically means that his polygons are low, making him less complex and easier to 3D model. All we had to do now is give him a hit box to detect when he gets shot, and now, we have an enemy. He still needs a way to defend himself, though.

**1:45** · So, I added some holes in his hands to blast lasers through. Uh, totally original idea that's never been done before. To make the lasers work, we just shot a projectile out of his hand that damages the player when it hits them. But, wait a second. Didn't you just say that you can't use projectiles because they teleport through walls.

**2:01** · No.

**2:02** · The bullet teleporting issue only happens to fast-moving projectiles. And since this is a slow-moving projectile, it's fine. The laser is looking kind of ugly though. So, let's just crank up those particle effects, added some glow, and all right, those are looking pretty nice. Uh what's happening to my PC? And now we finally have gameplay. Time to show my friend Will and see what he thinks.

**2:22** · Well, the uh the lasers are looking really good.

**2:26** · \[cough\] But uh where's the map?

**2:29** · This is the map.

**2:29** · \[laughter\] Oh my god, dude. You need to do some map I suck at map design. And after doing some research into what makes a good map, I found two things I need: recognizable locations and destructibility. So, I added in some unique-looking structures and destructible crates as well. And since the player currently doesn't have a way to get ammo, I made ammo boxes drop whenever you break the crates. But I still felt like we were lacking some real destructibility, something explosive to bring our game to the next level. We need barrels that blow up.

**3:01** · The first step in making an explosive barrel is to make a barrel. But next, we need to figure out how to make cool explosions. As it turns out, most games just spawn a video of a flat explosion and have it face the player at all times. That way they don't see this. And after you add in some smoke, sparks, and aftereffects, boom, explosion.

**3:19** · These can be used not only to kill enemies, but also to move around the map and reach secret areas. As I was exploring the map though, I noticed that Gary can't actually follow the player around yet. So, we're going to have to give him something called pathfinding. Let me break it down for you.

**3:33** · Pathfinding is basically just a GPS system that looks at all of the different possible paths to the player and chooses the fastest one. So, if the player is right in front of Gary, he'll just move straight forward. But if there's an object between the two, then Gary finds the fastest path around the object. He still looks super weird without any animations though. So, we'll have to make him something in Blender, which shouldn't be too bad. All we have to do is rig some bones, paint some weights, animate each keyframe, realize he was becoming deformed and that we had to redo everything, rig some more bones, paint some more weights, jiggy, and we had a finished animation. He also looks a little stiff when he dies.

**4:03** · So, we decided to give him some physics so he can ragdoll over the place. Oh, let's see how many Gary's we can spawn in now. All right, that's fine. It's getting a little laggy, but it's nothing some optimization won't fix.

**4:16** · Okay, try turning on the lasers.

**4:17** · Oh, yeah, you're right. Let me just UH NOT AGAIN!

**4:22** · THE problem is rendering all of these lasers, animations, and pathfinding solutions at the same time is basically the same as running GTA V five \[music\] times on ultra graphics. And my PC isn't powerful enough to do that. So, we need to optimize. The biggest issue is these lasers because of all the effects. So, we limited \[music\] how many you can see on screen and made them less detailed the further away they are. Next is this super bad pathfinding code which I fixed using boot.dev's course on pathfinding to learn how it works, which makes it run way better now. But for good measure, I limited how many enemies you can see at a time.

**4:49** · But then Gary started walking through each other, so I had to go back and redo the entire course and have this bear explain to me what I was doing wrong. The final issue is all these ragdolls that became super glitchy, so I decided to remove them and just use particle effects instead. And time. Using boot.dev made my learning way faster and more fun. And now we can spawn in twice as many enemies as we could before. Their courses are super beginner-friendly and they offer them in tons of different programming languages.

**5:12** · A lot of the knowledge here can carry over to game development, too, like with my pathfinding problem. If you want to start learning how to program, then go to boot.dev and use code Cole to get 25% off your first payment. Thanks for sponsoring this video, boot.dev. Time to get back to it, though, cuz there's another problem. It's pretty much impossible to dodge all of these lasers.

**5:30** · So, we need to give the player some more movement options. In the hit game Ultrakill, you can just dodge enemy projectiles by air dashing out of the way, which feels super clean and satisfying. You know what else feels super clean and satisfying? My game.

**5:41** · Because I stole their code. Thanks, Ultrakill. Very awesome. That gives the player good horizontal movement, but it leaves out verticality. So, we decided to add in a rocket launcher. Why?

**5:52** · Because it lets you do this.

**5:57** · Rocket jumping is my favorite movement mechanic of all time, and it was really easy to add since we already had explosions. All we needed to get it working were rockets, which are basically just lasers but retextured with some different particle effects, and a rocket launcher, which was just a crappy 3D model I got Will to make. And to make sure it wasn't too overpowered, we made the rockets damage you just as much as they damage the enemy.

**6:16** · So, if you rocket jump too much, then But, we had another issue with rocket jumping, because if you use it with a dash, you can just fly around the map without getting \[music\] hit, which is really fun, but it also makes the game incredibly easy. I decided that instead of removing it though, I would just add in a flying enemy to keep the game difficult. So, meet Jerry. You might be thinking he looks kind of familiar, and you'd be right, because I reused Gary's head as his model. Why?

**6:46** · To make Jerry fly, all we did was turn off his gravity and have him follow the player around. If he loses sight of you, then he goes to the last location he saw you at. And just in case he gets stuck, we leave a trail behind the player for Jerry to follow, which gets around most obstacles pretty well. Now, Jerry needs to actually attack the player, cuz right now he just kind of tickles you. I don't know if you've ever played Minecraft before, but there's this enemy called the creeper that can blow stuff up, and everyone likes creepers, so I figured I'd take some inspiration and make Jerry blow up when he touches you. Jerry, stop touching me, man.

**7:15** · What's that sound?

**7:17** · Making Jerrys explode also had this really cool side effect of causing other Jerrys to explode, creating a super satisfying chain reaction of destruction. As I was exploring the map to test these new features though, I started to notice this issue where my gun would clip through walls, which seemed like an impossible thing to fix, until I found a YouTube short with 60 million views that told me this.

**7:36** · Just take a picture of the gun and put it on top of the screen. I am a wise game developer.

**7:42** · And wow, that actually works, and the game is pretty much finished. See, man, I told you I can make an FPS game.

**7:48** · What do you mean, man? I did most of the work.

**7:50** · Are you kidding me? All you were doing was making crappy 3D models and doing a little bit of programming. All right, if you're so good at the game, then why don't you beat it?

**7:58** · Okay, how do you How do you even beat an FPS game?

**8:01** · Uh-oh.

**8:02** · Okay, if you can kill 100 enemies, you win. But, if you die, the video's over. Okay, got it.

**8:10** · Okay, let's go.

**8:11** · Okay, pretty good so far.

**8:12** · Thank you. Thank you.

**8:13** · Thank you. Thank you. Thank you.

**8:14** · Oh my You're a little skillful. Holy \[ \_\_ \] Okay, I did not mean to spawn this many.