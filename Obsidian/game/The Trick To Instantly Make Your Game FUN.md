---
title: "The Trick To Instantly Make Your Game FUN"
source: "https://www.youtube.com/watch?v=U0a-IE5xawo"
author:
  - "[[Thomas Brush]]"
published: 2026-02-07
created: 2026-07-22
description: "If you're new to game dev, then these 6 things are going to be a game changer for you...Check out Bezi: https://www.bezi.com/partnerships/thomasbrushCheck out me using Actions! : https://youtu.be/Ld"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=U0a-IE5xawo)

If you're new to game dev, then these 6 things are going to be a game changer for you...  
Check out Bezi: https://www.bezi.com/partnerships/thomasbrush  
Check out me using Actions! : https://youtu.be/LdZ0po5wU\_0  
► Get 50% off my game dev course during the massive Summer Sale: https://fulltimegamedev.mykajabi.com/full-time-game-dev-sale  
► Learn how to make a game studio from your bedroom, free: https://www.fulltimegamedev.com/opt-in-how-to-make-six-figures  
  
Chapters:  
00:00:00 - Introduction to Game Juice  
00:00:49 - Sponsor: Bezi  
00:02:03 - Basic Game Setup Demo  
00:02:44 - Measurement and Level Sizing  
00:06:25 - Color Theory and Visual Polish  
00:10:32 - Reactive Sounds: Jump and Collect  
00:14:27 - Footstep Sounds and Animations  
00:20:18 - Reactive Particles: Dust and Effects  
00:23:18 - Music and Ambience  
00:24:59 - Final Touches: Front Flip and Outro

## Transcript

### Introduction to Game Juice

**0:00** · Look, your game probably isn't bad. It might be that you just don't know how to make it feel good, how to make it fun, how to make it punchy and juicy. Most games out there, the reason they suck is not because the actual gameplay loop or the mechanics are bad. It's because there's just something missing. It just doesn't feel juicy. \[music\] So, I want to give you six things. Six things you've got to know about when making \[music\] a game that will make your game suddenly honestly 10 times better, 10 times funner. It's all about juice.

**0:30** · \[music\] Things like measurement, color theory, sound, animation, particles, music, ambience. We're going to talk about all of that in this video. I'm going to take a super simple capsule collider with very basic level art, just boxes, and I'm going to make the game fun \[music\] and exciting and juicy. So, let's jump into Unity. And I think you're going to learn a ton by the end of this video. Hey, but before we go further into this video, a huge thank you to a longtime sponsor \[music\] of the channel, Bezi. Bezi is a development assistant for Unity that actually understands your \[music\] project.

### Sponsor: Bezi

**0:58** · It knows what you're building and it becomes more helpful the longer that you use it, kind of acting like a proactive development partner rather than a reactive tool. It's specifically designed to help you with the technical side of your development. And it can assist you in everything from code to building tools and knocking out repetitive tasks so you can focus on building your game. And now with this cool tool called Bezi actions, which I recently made a video on, uh, Bezi doesn't just write code anymore.

**1:26** · It can build directly inside of the Unity editor. And that means creating and modifying scenes, setting up game object hierarchies, configuring components, generating materials, instantiating prefabs, \[music\] and working directly with your MonoBehaviors and scriptable objects, \[music\] and much more. All in the actual project. Every action is validated, reviewable, so you can always approve your changes before they're applied.

**1:50** · \[music\] And of course, roll back instantly if needed. If that sounds interesting, you can try Bezi completely for free. And also check out my video on their new actions feature by simply clicking the link in \[music\] the description.

### Basic Game Setup Demo

**2:03** · What I've got currently here, and the assets are linked below, what I've got here is a free character controller and a particle effect and some materials.

**2:13** · So, let me hit play here and just show you this boring game. This is the easiest thing to make on the planet. All you do is drag your character controller that you downloaded from from the asset store. You drag it in. You put a primitive cube there. And then there's also this sphere here. And this sphere when I touch it, it deletes. That's just a very simple script. I'll open it up for you. On trigger, enter. It'll play a collect sound. And that and it destroys it. That's it. These six things here, these six things are going to make your game 10 times as fun. And so we're going to go through each one.

### Measurement and Level Sizing

**2:44** · Let's start with measurement. Most game developers when they're building a level, they're not thinking about the grid. They're not thinking about what's the player jump height. They're not thinking about what the player's height is. They have no idea. They're just doing this. And I can make a pretty cool looking level like this. Look, it doesn't matter whether it's 2D, whether you're making an RPG, whether you're making a firstperson shooter, it does not matter. But if I just have fun, and this is this is a particular issue with the terrain tool. The terrain tool is particular culprit of this. Let me throw on a ground color really quick here.

**3:16** · It's a particular culprit because with terrain, it's really hard to be precise.

**3:20** · So, if I wanted to make a fun little game like this where there's a bunch of platforms, if I hit play here, it's not going to be nearly as fun. And this this seems obvious to you guys, but I can't tell you how many times me personally, but also a ton of other game devs have not been precise with their measurements. This is not fun. This does not feel good because it's the world is not fine-tuned to my liking. You want the world to be measured precisely for your character. Now, the way you do this and the way that I do this is I always start with fine-tuning the player.

**3:50** · So, I'm going to start with the player and then I'm going to make the world match the player. So, I'm going to say, okay, well, what is the jump height? How high is a comfortable jump? Ideally, it's an integer. What is the integer for the scale in unity meters of a jump height?

**4:07** · My guess is, in fact, I'm going to I'm going to tell you the truth here. I don't have a guess. I figured this out before I started the stream, so I know exactly what it is. It's going to be the exact height of the player. A capsule collider for a character controller, whether it's a first-person controller or a third person character controller, 2D or 3D, the capsule collider should be two times as tall as a uni a unity primitive cube. And that this is what this is here. It's set to 1 one. It's exactly half the height of my capsule collider. So, in this game, I like how this jump height feels and it's two.

**4:38** · Okay, so this is my cube here. And it's going to now be so much funner to jump onto things when it's perfectly sized.

**4:46** · That sounds so dumb. And it sounds like, wow, Thomas, really? This is your advice? I can't tell you how many games I've played. I I play a lot of your games on stream. Most of the time, the world is not sized for the controller.

**4:58** · It's kind of weird. I'm like, what is happening here? So, in this case, now that I know that units of two are a good jump height, I can say, well, okay, well, let's make this 4x4. And this this also helps a lot with level design. And by the way, you can hold V here and snap it there so it's perfectly aligned with that. And then, by the way, now that you know your unit size, you know that one is half a jump, two is a full jump. Now that we know that, if I turn on snapping and I have it set to one here, building my level is super easy.

**5:26** · I can go, okay, we're going to go one unit or two units away. We're going to go two units higher. So now I know that I'm going to be able to jump to that. And I could just pretty much predict as I build my level. I could say, okay, 6x6. I know that I'm going to be able to jump up here. So not only is this a game field thing, but this is also a level design thing, which is a totally different workshop we need to do. So this feels so much better.

**5:52** · See? So that's the first thing, which is sizing. Now that I know the size of my player in terms of his width, he's one unit wide, and I know how high he can jump, which is two units high. Now I can build an entire level based on these sizes.

**6:06** · Okay, so guys, let's go ahead and just test this level out. Make sure it's decently fun. I'm going to zoom out here and go ahead and just platform.

**6:14** · See how fun that feels? It's very much built around my character's abilities.

**6:20** · That's step one for great game feel.

### Color Theory and Visual Polish

**6:25** · Next up, color theory is going to be one of these elements to your game that make it feel juicy. Well, it helps communicate the game to the player, and it makes the player better understand the game. So, we're going to quickly do some color theory stuff. And the bonus here is using lighting, fog, and post-processing to complement your color theory. So, we're going to briefly do this. It's not complicated. There's a link below, and you can look at a bunch of different color palettes that Adobe has, and you just copy and paste them into your game. But this is the color palette that I want to use. Now, I've already created materials for this.

**6:56** · The materials don't have smoothness values, so they're not shiny. So, it's going to look very velvety, which I like. The blocks are going to have this color. The ground is going to have this color, more of a subtle gray. The player is going to have, this is going to blow your mind.

**7:12** · The player is going to have this color.

**7:14** · And the coins are going to have this color. And they have a subtle emissive on them. Okay? Okay, so the emissive makes it well not receive shadows and it makes it look like it's a glowing orb.

**7:23** · So it's just an emissive of that orange color. So again, this is the grass. This is the player. This is the coin. And then these two I'm going to use to create a skybox. I've already created this. All it is is a gradient at the horizon with the yellow color almost like the sun is rising and then just a simple almost tealish blue. So I've already created this skybox. It's it's really simple. Um, let's make sure we assign the skybox texture. There it is.

**7:48** · So, as you can see, guys, already the game looks 10 times better. I have no textures. I'm not using any strange weird shaders or materials or adding normal maps or specular, none of that.

**8:00** · All this is is just great color theory.

**8:02** · And in fact, you know, you can do stuff like this. Like, for example, if I wanted to do isometric like this, with isometric games, what you want to do is is create height. In a normal game, you get depth, right? You can see into the sky like this. With isometric games, you don't get depth unless you elevate the player. So, I can create like a piece of ground here and I can have it floating in the sky. And then what you do with the skybox is you just bring the horizon down. There we go. That looks freaking incredible. I love this.

**8:30** · This is so valuable to understand why color theory is probably the lowest hanging fruit of all the juice and game feel and flare you can add to your game. really quick.

**8:42** · You'll notice that I said use lighting, fog, and post-processing to complement your color theory. So, here's what I'm going to do. You'll notice that that is very kind of obtrusive. There's no blending here. So, what you can do is go to lighting and add fog and make sure the fog is identical to the horizon color. And now we've got this subtle fade. Now, if we wanted to, we could crank it up a little bit like that. You know, we can also use post-processing to create bloom lens flare.

**9:07** · It's just adding that level of polish and realism to an otherwise very straightforward game. So, I'm going to go ahead and turn on bloom here. Now, we could crank it up if we wanted to. So, I like that. That's good. You'll notice that my my uh coins are are glowing as well. So, that's good. If I wanted to, I could really crank it up like that. That looks pretty good, actually. And then also lighting.

**9:28** · Okay, so by default, we have this directional light. We can rotate it and create some cool different shades. So, you'll notice that I'm picking the one that I like the best for this level design. So that looks pretty good to me.

**9:40** · And then finally, we can use lighting inside of our prefabs. So for example, if I go inside my coin here, I can actually add this point light here. I'm going to save it. And you'll see that it has that subtle glow. So this is just a lowhanging fruit, adding subtle bits of post-processing, some glow here and there, some point lights, but overall the whole point of this section, mainly color theory. And by the way, we've got a little lens flare there on our directional light. It's just called lens flare SRP. Now, if we wanted to, we could come up with a stone color as well.

**10:10** · So, once you get your base color palette down, you can start going in and saying, well, you know what? I need I need a little bit of grays. Let's go to our green color, the blocks. I'm going to call this block stone, just so we can create some variation. And I'm just going to eyeball kind of what I'm thinking here.

**10:26** · Okay, let's go down a little bit. There we go. So, you can see here why color theory is so important.

### Reactive Sounds: Jump and Collect

**10:32** · Next up, next up, reactive sound. I could have just said sound. animation particles. Reactive means, and this is particular to game feel and juice.

**10:41** · Reactive means that when I press a button, I get a reaction. It means that when I jump in the air, I get a sound.

**10:48** · When I collect the coin, instant reaction. The player needs to know that what they're doing with their fingers is getting a reaction. So, let's go ahead and start adding in some sound here.

**10:58** · First things first, we need to do some jump sounds. I've got a temporary sound here called temp sound. It's just my mouth going like that. And so I'm going to have a jump sound and a land sound.

**11:08** · So let's hear this out.

**11:13** · Okay. So let's let's do some sound design here, guys. Just because you're making a game that looks simplistic doesn't mean you can't add juice and flare and flavor to your world and make it feel real. So let's go ahead and head on over to where I get my sounds. I don't recommend you use this source because it's expensive. to actually license your sounds for games is quite expensive, but we're gonna use it in this case. A resource you could use though if you don't want to pay is freound.org. All right, so I'm gonna type in um grass foot or grass step. We need just a sound.

**11:49** · These are great. Let's download these. I also need a thud sound. And this is going to be our jump sound.

**11:59** · There's a good one right there. I like it. Okay, we're going to use a free tool called Audacity. We're going to do the jump sound first.

**12:07** · That's great. You want a little bit of a tail when the player jumps off the ground. And what I mean is it's not just it's \[laughter\] you almost want to hear dirt crumble.

**12:16** · Can you hear that? We can do a little bit of a whoosh sound.

**12:22** · We're going to make that a little bit lower and slower.

**12:27** · Okay, let's try that. And the thing about sound is it's all just guess and check, man. And I'm going to export this as an a uh a wave um sounds. I'm going to call this jump. Now, guess what I'm going to do? Jump. What? Jump one. I don't want one sound. I want like four.

**12:43** · I want to hear every time I'm jumping.

**12:50** · Okay, let's do a little bit of a h sound.

**12:56** · Okay, let's do that. We're going to do call this jump one.

**13:04** · Okay. So, you can see how it's already getting repetitive. So, what we want to do here is have a bunch of different sounds.

**13:25** · Yeah. So, I think all we need to do it's the land sound doesn't bother me too much, honestly. I think what we want to do is we want to have the land sound play at a much lower value.

**13:38** · So, reactive sound, right? So, let's let's go ahead and jump into artlist.io and grab some coin sounds. Okay, so coin collect and I'm going to type in magic as well because typically you'll get some like cool magical or anime type sounds.

**13:53** · That's great. I also want coin coins like a sound. It's one thing to have a magical sound play. It's another thing to sound like it was added to your bag.

**14:03** · There we go.

**14:05** · There we go.

**14:10** · We'll do it together.

**14:14** · That's good. We're going to go to our coin here. Go to the prefab itself. And we're just going to add that clip. Coin collect here.

**14:25** · Okay.

### Footstep Sounds and Animations

**14:27** · Now, the way we're going to do footstep sounds is we're going to have to we're going to have to go into the animation section here because sometimes the animation will then determine the sound.

**14:36** · We're going to use what I'm going to call animator functions. It's going to be a script that plays a sound based on a animation event. So, let's go ahead and create an animation here. And I'm just going to create an anim called player walk. All we need to do here is we're going to make the root, I believe.

**14:53** · Let's see here. Yeah, as long as we're not messing with the actual capsule collider itself. This is purely graphical. You do not want to move the physics object. You want to move the graphic. So, all I'm going to do here is I'm going to set it to zero and then I'm going to go up to 0 2 and then one. Go back down to zero. You think that looks good? No. What you want to do with this kind of movement, and this is true across the board, even if you're doing a highly complicated animation, you want it to follow gravity. So, what we want to do is go to our curves here, and I just go to my Yvalue, I can do this.

**15:25** · This is exactly what a bouncy ball does.

**15:27** · That subtle change is what separates a new game developer from a seasoned one, understanding how to use the curves. So, it feels heavy. This is just going to play by default. So, we can walk around and feel it. So, that's fun, right? But we want it to stop. Although I don't love that the camera is following the route. That's much better. It feels much bouncier now that the camera isn't following it. Now we've got this animation. Right. Really quick, I just want to make sure this animation only plays when the player's walking. Player idle. So now we have an idle state where the route is set to zero.

**15:59** · So the idle state is going to be our default. Then we're going to create a parameter and we're just going to it's going to be a simple boolean and it's going to be walking. If we're walking, we go immediately to the walk state. No exit time, but there will be a subtle transition. And then we're going to go back to idle, but we're not going to have an exit time. And do a pretty quick transition. Walk needs to loop. I'm fine with idle looping as well. We'll create a cool idle animation. Walking. If it's true, go to walk. If it's false, go back to idle. That's all we need.

**16:27** · So, now that we know what this variable is, what I'm going to do is go to my code. I'm going to add an animator. public animator. Animator. And now I'm just going to tell Claude, I'm going to say ensure the animator sets a bull called walking to true if the player is walking. So if we go back to my character here, I can go to idle state and I can go to my route here and I believe I should be able to hopefully there's a pivot here. Yay. Okay, the pivot's at the bottom. Watch this. So what I can do here is I can set this to one and I can move up to here. And this I love doing this.

**16:59** · What I do is I scale down like this and then I squeeze up like this. So it looks like the volume is being displaced. Okay, that's it. So let's go ahead and add this stuff. If animator does not equal null, is walking is going to equal is stable ground and square magnitude is greater than zero.

**17:17** · That's about it. And that's not a bad line of code, honestly. Let's see if that actually does it. I doubt that this will work right out of the gate. Yeah, let's take a look here and see. If I set is walking to true, it should do it.

**17:30** · Yep, we need to assign the animator. I think that's it, guys.

**17:34** · There we go.

**17:38** · So, definitely need a jump animation, but that feels a lot funner already.

**17:46** · Already feels great, man. Now, we're going to go back to what we were talking about with sound. And we're just going to get some grass step sounds.

**17:57** · And we're going to create a new script.

**17:59** · I'm just going to call this um animator functions. And by the way, I've used this in Neverong. I've used this in Twisted Tower. Animator functions is one of my favorite classes because you can use animator functions to create a ton of game feel. Okay, so for this one, all we're going to do is we're going to have a function in here. We can just say uh public void um play sound, and then it'll be an audio clip clip. And then it's just going to be the player audio source. It's going to play through the player audio source.

**18:35** · So, let me show you kind of how we're going to use this. Now, we can add this animator functions class here. And I can bring in the audio source. And now I can specify which clips I want to play. So, step grass one, two, and three. I want to play it at like 0.5. And then I can go to my an uh my animator here. And I want the sound to play when do I want it to play immediately? Yes. Because the moment I press forward on the keyboard, ideally we hear as if the foot is pushing on the ground, right? That's a key aspect to game feel. One here, one here, but not one here.

**19:09** · \[snorts\] Actually, let's see here. All we need is here. All we need is here.

**19:13** · One here up. And then when it comes down, you hear it again. So, let's see if this feels good.

**19:23** · So, there's one sound there. That's trash. What is that sound? Oh, I chose the wrong sound.

**19:33** · Goodness, that feels good. That feels really good already. So, for now, for now, all I want to do is create an idle state where he jumps. That's it.

**19:44** · Meaning, he's just going to be still.

**19:46** · And then we're going to we're going to make sure that that plays with our code.

**19:49** · And then we're going to make a bounce effect. And hopefully, this looks good.

**20:12** · Good. All right, let's talk about the next key to juice.

### Reactive Particles: Dust and Effects

**20:18** · Another lowhanging fruit \[music\] is reactive particles. And so what we're going to do is simply play a particle effect when the player jumps. So I've got a little game object here called dust. And all this is is a simple uh standard particle that's built into Unity. And if I set it to 25 here, this is what it looks like currently. Let's clean this up a little bit so that its shape isn't so big. We want it to be right at the base of the player. I'm going to increase the radius a little bit so that there's sort of a plume occurring. And what you want is you want to see how it looks as um a burst, right?

**20:49** · So, this is how it looks as a burst.

**20:54** · Good. I like that. We're going to go to color of a lifetime, and we're going to make sure that we have a just a subtle fade in. We don't want it to be immediate. There we go. We could probably go a little bit bigger. Maybe like one one to two. There we go. So, that's what how it's going to look when it when you land or when we jump. So, particle effects are a huge aspect to creating juice in your game. The particles already built into the codebase. So, you can see here there's a particle system that you can assign. And I'm just going to go ahead and turn it on here. And they should just go ahead and play.

**21:31** · Freaking told you guys it's looking good, man. You know what we need? We need a particle that we like. I'm going to use a nice clean sphere here. It's going to be white. It's just a simple white particle for our more tuny looking game. I like the sprite effect. That's kind of cool. They're a little big. So, we're going to do a scale of between 0.5 and one. Let's go ahead and set the color to the brown color of these.

**21:58** · So, what I can do here is make it feel a little bit more tuny.

**22:05** · I'm going to have it shrink.

**22:08** · \[music\] pretty good. Okay, we got our particles working, right? We've got the collection sound.

**22:29** · All right, let's go ahead and distribute some coins and start working on the sound and the music. \[music\] All right, we got a fun little background here.

**22:47** · Brilliant. Okay, I would like to, if I can, I would like to flash the player when I collect something. So, I'm curious if we could create a new layer here. And I'm going to call this color.

**22:58** · There's our capsule. Set emission to true. I want it to be white, the same color as the coin, as if it was absorbed into my body. There we go. So that's what happens when I collect a coin.

**23:07** · Okay.

**23:10** · Oh, it works.

**23:16** · Let's go ahead and move forward to the last one. This is such an afterthought for most game devs. Music and ambience.

### Music and Ambience

**23:24** · I've played a lot of your games on my streams. Typically, there's no ambience.

**23:28** · I don't know why, but ambience just doesn't exist. And the music it sometimes it it feels like the developer wrote it themselves. And so I understand that it's expensive to get music, but oftentimes there's just there's music that you can buy online or you can get a friend to write your music or something.

**23:43** · That is tough. You know, music can be expensive. But let's just go ahead and jump inside of artlist.io. Find some good music and find some good sound effects.

**23:52** · That's great.

**23:56** · That's good, too. All right. All right, let's go to our music here and we're going to type in adventure medieval. I don't know.

**24:15** · \[music\] By the way, guys, you might be thinking, why am I just picking random ones? I'm looking for the ones that don't have a full waveform. Like this right here. I could tell you right away I don't want.

**24:27** · Right. You can just see it in the waveform.

**24:35** · \[music\] That's great. That feels like Minecraft.

**24:38** · That's what we want.

**24:55** · \[music\] Okay, I want to do a front flip. I'm sorry. I want to do a front flip. So, we're going to do for the jump. We're going to see what happens if I could do a front flip. Wouldn't that be great?

### Final Touches: Front Flip and Outro

**25:11** · That is so fun. We need a flip sound, obviously. That is so fun.

**25:43** · Yeah.

**25:55** · Also, hey, don't forget to check out Bezi. You can learn more about their new Bezi actions feature in the video I made recently trying it out. And you can also get started with Bezi for free using the link in the description.