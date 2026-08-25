---
title: "I changed my mind about this"
source: "https://www.youtube.com/watch?v=lLRa96zwuHM"
author:
  - "[[Queble]]"
published: 2026-08-24
created: 2026-08-25
description: "So about 1.5 years ago, I made a Godot tutorial covering the \"Scene Constructor Pattern\": https://youtu.be/u9aMR50yjCE?si=H4FouqBPJgLi2d4uI have since changed my opinion on this topic, and now favor"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=lLRa96zwuHM)

So about 1.5 years ago, I made a Godot tutorial covering the "Scene Constructor Pattern": https://youtu.be/u9aMR50yjCE?si=H4FouqBPJgLi2d4u  
  
I have since changed my opinion on this topic, and now favor a variation of the Factory Pattern for "constructing" scenes.  
Anyway, wanted to share my current thoughts with you all :)  
  
If you enjoyed the video, be sure to leave a like and consider subscribing!  
  
Checkout my Steam game, Eavor: https://store.steampowered.com/app/4585960/Eavor/  
  
My website: https://www.queblegames.com/  
  
Patreon: https://patreon.com/QuebleGames?utm\_medium=unknown&utm\_source=join\_link&utm\_campaign=creatorshare\_creator&utm\_content=copyLink  
  
Twitch streams: https://www.twitch.tv/queble\_game\_dev  
  
Godot Download: https://godotengine.org/

## Transcript

**0:00** · So, I made a video a year and a half ago on scene constructors in Godot, but I think I made up this term scene constructor. I haven't really seen it in many places. Now, I have changed my mind about a lot of the stuff in this video, so that's kind of why I wanted to discuss it and make this new video about it. But, another reason is this video has just been popping off for some reason.

**0:17** · It hasn't really gotten that many views, but in the past like month, we had this crazy spike of views, and I still don't understand why YouTube has been pushing it, but a lot of people ended up seeing it and thinking it was one of my recent videos, and I figured I should just kind of like make an updated video on what I think about the system.

**0:35** · So, let's get the things I disagree with out of the way, right? So, looking at this code here, I really like the idea of having a static function that you can just use to construct a new enemy. I think the way you use it, I show right here. Yeah. So, anywhere in your game, you're able to say var new enemy, and then just call the new enemy static function on your enemy class, for example. Uh in my case, I also allowed you to pass in initial parameters to the enemy, so this would be like maybe the health, attack, and the name of the enemy.

**1:04** · I kind of like that, but I also mentioned in the video that maybe it would be a good idea to use a dictionary to pass in these values, or even like a separate resource where you could have designated properties for each one of these values. And as far as the actual like constructor enemy scene goes, I really dislike using preloads now. I think I made a video on like why you should not use preloads.

**1:24** · They're okay in very specific scenarios, but if you implemented this system for every single class inside of your game, then first of all, you'd have a bunch of similar functions copied between classes, but also you would be loading each one of those classes corresponding scenes in a preload, which is something that you can't exactly unload from your game. So, you're wasting a ton of memory. And since I'm bullying myself, one last thing I'm going to say is I don't like that I'm using a direct path here. If I was coding this nowadays, I would use a UUID, and I would also be storing it in like a dictionary in my constant script.

**1:58** · So, I want to show quick what I would change if I were to make this system nowadays with like my current knowledge.

**2:03** · So, in this blank Godot project, well, it's not blank cuz I added a couple things, but in the ready function here, this would be kind of my new way of making an enemy. So, we just have a variable to store the new enemy. And instead of calling enemy.new on the enemy class itself, we're actually calling create enemy on the factory class. And factory is more of like the factory pattern, which I know a lot of you guys commented on the last video.

**2:27** · And it's probably a better way to handle something like this because if we go and look at this function, uh we just have a class whose entire job is to construct objects. And if you really want, you can split this up into like your enemy factory or you like your UI elements factory. In this case, we only have one function that we need. And we have a really similar setup where we're getting the scene path, we're loading that scene, and then we're instantiating the enemy scene and returning it so that we can obviously add it to the game world.

**2:56** · But there's a couple things that you will notice. Uh one of them, we don't have that preload inside of our script anymore. And we also don't have the path to our scene at all. And that's because we're using a new ID system. And this is shown best if we go to my constant script. So, having a constant script is something I really prefer using nowadays. The main thing to note is we have an enum right now which has a list of every single enemy ID. And then we're primarily using the entries of this enum as keys that correspond to those specific enemies scene paths.

**3:27** · So, I only have one filled out right now, but we have this enemy scenes constant, which is a dictionary of keys and their path.

**3:36** · And we just have the UID or the scene path to my skeleton scene. So, by doing it this way, we have a few benefits. The first benefit is the path is only stored in one area. And there aren't going to be like a bunch of miscellaneous paths floating around different scripts. The second benefit, we're using an ID system where every single enemy has a designated integer because it's an enum.

**3:57** · That's a lot cleaner than working with their paths or like string names or things like that. And third of all, because we're using this ID system, we don't technically need a class for each one of our enemies. Sure, you can have a class for each one of your enemies, but in a lot of the games I've made, I find that some enemies it's nice to have their own class and a lot of them just don't even need it in the first place, which was kind of a drawback of the scene constructor pattern that I showed in this video was it requires every single like constructible entity to be

**4:29** · its own class so that you can call the static function. Now, we're giving that job to the factory, so we technically only need this one factory class because it can just hold a static function that works for every single enemy. So, this is how I do things now. Again, we have the constant script, the factory script, and the game script we're actually utilizing this. Enemy doesn't have anything in it. I was also editing this and have to add this in post, but the way that I'm loading this scene is also not what I would do, but this requires an entirely separate, more elaborate system.

**5:00** · Basically, it's best if you make a system that loads your enemy scenes in this case and then just caches them somewhere so that they are loaded into your game, but then you also want to be able to choose when those scenes get unloaded if you need them unloaded. But again, that's a completely like separate system, so let me know if you guys want to see that in a future video. But I just want to show that because my mind has kind of changed on these things and seeing as that video got a bunch of views recently, I would like to update you guys, too.

**5:27** · So, I'm also going to be linking this video on that video so people can kind of have like a follow-up. I do really like the idea of that scene constructor pattern still, but I would also much rather use the more like optimized modern system that I showed in this video. But anyways, that's it. I hope you guys enjoyed the video or at least learned something new, and if you want to leave a like and subscribe, that would help the channel out a ton. I would greatly appreciate it. Uh huge shout out to all the current channel members as your support is super appreciated over on Patreon and also YouTube members.

**5:56** · And if you want to join the Discord server, get connected with the community, all the links are in the description. So, definitely check those out and I hope you have an amazing week.

**6:04** · Bye.