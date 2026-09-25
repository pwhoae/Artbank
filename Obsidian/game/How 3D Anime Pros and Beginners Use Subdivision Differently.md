---
title: "How 3D Anime Pros and Beginners Use Subdivision Differently"
source: "https://www.youtube.com/watch?v=ZWFff4jRnFo&list=WL&index=3"
author:
  - "[[Noggi]]"
published: 2026-08-20
created: 2026-09-25
description: "Get the Poly Modeling Toolbox Addon here:https://noggi3d.gumroad.com/l/poly-modeling-toolboxBecome a member to get access to almost all my products, as well as exclusive in-depth tutorials and more"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=ZWFff4jRnFo)

Get the Poly Modeling Toolbox Addon here:  
https://noggi3d.gumroad.com/l/poly-modeling-toolbox  
  
Become a member to get access to almost all my products, as well as exclusive in-depth tutorials and more:  
YouTube: https://www.youtube.com/@Noggi\_3D/join  
Patreon: https://www.patreon.com/11209199/join  
  
  
Check out Yuki on Twitter:  
On Twitter: https://x.com/3dBisque  
  
\-----------------------------------------------------------------------------------  
  
Check out my premium products right here:  
Blender Market: blendermarket.com/creators/noggi3d  
Gumroad: https://noggi3d.gumroad.com/  
Patreon: https://www.patreon.com/user/shop?u=103694046  
  
\-----------------------------------------------------------------------------------  
  
↪ Join my Discord: https://discord.gg/BaDvFHuU6x  
↪ Check out my Newsletter: https://noggi.substack.com  
↪ Instagram: https://www.instagram.com/noggi\_now  
↪ Twitter: https://x.com/Noggi\_3D  
↪ Facebook: https://www.facebook.com/Noggi-106680368087394  
↪ Artstation: https://www.artstation.com/noggi  
  
\-----------------------------------------------------------------------------------  
  
Like the video's music? You can find them here:  
https://www.epidemicsound.com/playlist/p19jkt2o6f4hgbjwrz095372e7p4clcm/  
  
Want to start using Epidemic Sound yourself? Use my affiliate link and support me!  
https://share.epidemicsound.com/zszlhk  
  
\-----------------------------------------------------------------------------------  
  
My PC specs:  
NVIDIA GeForce RTX 3080 Ti  
Intel Core i9  
32 GB RAM  
Pen Tablet: Kamvas Pro 16 (4K)  
  
\-----------------------------------------------------------------------------------  
  
Enjoy your day. :)

## Transcript

**0:00** · Recently, I started learning poly modeling to create my characters, and the more I learn about it, the more I dislike the subdivision surface modifier. I remember at some point, I would always just, you know, start with a simple shape and then immediately add a subdivision surface modifier to make it, you know, nice and smooth. But, the more I've moved over from sculpting to poly modeling, the more I've realized that the subdivision surface modifier just adds more problems than it solves for you. To make sure I'm not crazy, I even asked my friend Yuki, who works in the Japanese gaming industry, \[music\] and he kind of agrees with me. But, the modifier isn't just all bad.

**0:32** · There are some good things that you can do with it. So, in this video, we're going to cover how the subdivision surface modifier actually works, how it keeps you from improving faster, and how you can use it like the pros to get the most out of it. So, what does the modifier actually do? \[music\] It first of all divides each edge by basically the level that you add here. So, in this case, it's two. The second thing that it does, it actually just takes the whole thing and then smooths basically the position of these points based on the ones they're connected to.

**1:02** · And if we do the same thing with \[music\] the subdivision surface modifier, it looks like this.

**1:07** · Another thing that it does is what you can see here, for example. It also actually does something interesting here for triangles or even for n-gons, \[music\] which is that if you now add a subdivision surface modifier to this, it not only divides the perfect faces, but also the n-gons and triangles and makes everything perfect quads, which of course can be pretty useful if you're kind of struggling to create, you know, perfect topology. It will make sure that everything in the end is actually quads.

**1:34** · Now, let's see how I've seen a lot of beginners or maybe even advanced people apply \[music\] this to their models, especially for characters. If you wanted to create something like this, for example, with the subdivision surface modifier, it could look, you know, something like this. It looks pretty similar. Maybe it's a bit smoother. You can't really see the knees, for example, but in general, the shapes are there.

**1:53** · But, now let's see what this model looks like without the subdivision surface modifier.

**1:57** · it looks like this. Even like horrible looking or like very blocky looking geometry can look pretty nice and smooth by using the subdivision surface modifier. And I think that's why it is so appealing to people. But now the problem is, what if you want to add more geometry to this? Let's just do this, do that, do this, and then do that. All of a sudden, the shape has completely changed. The range that it has \[music\] to smooth is not like this whole thing.

**2:24** · Now it only has like this section right here. So it can only smooth, you know, like this. Now if you want to bring it back to this shape, what you would basically have to do is select these edges and then basically scale them back in. And then you could maybe get somewhere that looks pretty good. But you can see now we run into new problems.

**2:42** · \[laughter\] And it's breaking in other parts. And that is already like the first problem that you're going to run into. You never really like can just smoothly move forward. You basically go two steps forward, one step back. And so you basically go, you know, from this, then to this, always going back and forth, back and forth with the sub surface modifier, kind of wrestling with it, I guess. Going from this one and it's eventually getting to this one. All you really do is just kind of look at something that doesn't exist yet. But this is only one thing that the subdivision surface modifier does that I don't really like. Here's another thing.

**3:15** · Here we have two slabs which would look pretty cool. Then if we actually look at the geometry behind this, both of these models look, in terms of their shape, exactly the same. The only difference is that this one has way less geometry. Another example is this thing. If we add the subdivision to this, which in the end looks something like this.

**3:34** · So here you can see it, you know, it makes sense to add more geometry here because that makes it, you know, much more nice and smooth. But here there's like so so so much geometry that is like completely unnecessary. Like even like half of this is probably smooth enough, except if you're maybe like super super close to it. And so because you don't have any control over how many subdivisions you add to different parts of the model, some parts maybe need more subdivisions, whereas other parts maybe need no subdivisions, but because you have no control over it, you just add way more in some areas and maybe way too little in other areas.

**4:06** · But, you know, at least it made this big slope a bit smoother. You can see it's not fully smooth because it still follows kind of like the geometry, of course, that you already created, but even that has its downsides. Let's look at this, for example. This is kind of like the silhouette of this, you know, shape, this cylinder. Then, if we apply the subdivision, you can see it looks like this. As we've learned before, it makes everything much, much smoother.

**4:29** · But, just like any, you know, smoothing function, what that means is that whenever you smooth something, it basically removes any extreme highs or any extreme lows and brings everything kind of like into the middle. The the shape we had before that was a bit more defined, and you can see, oh, there's like, you know, this little indent here that kind of squeezes this section. Let's say, this is kind of like a band.

**4:56** · If we add the subdivision, you can see Well, first of all, I guess it kind of made the ribbon, I guess, or the band smaller, which, of course, already changes like the silhouette or shape of this. But, also, you can see before it was basically a shape like this.

**5:10** · \[music\] But, then, with the subdivision surface modifier, it's just kind of a shape like this. It's as if it's all going, you know, flowing into each other. Of course, what you can then do is, you know, use, for example, the crease feature, which is basically how you fight against the subdivision surface modifier and kind of bring back some of that sharpness. Or, I guess, something else you can do is just add more geometry.

**5:32** · So, if I, for example, go in here and add another edge, you can see we can bring it over here to kind of like rein in the effect, but that also means, of course, since we have it on subdivision level two, now these little gaps right here also get two subdivisions, and all of a sudden we have like so much geometry in this little area that isn't really necessary. So, when it comes to more subtle shapes in a model or, you know, depending on I guess the geometry, even bigger shapes, it can pretty significantly change what the shape of the model is.

**6:01** · And if the model had very intentional shapes, I guess you could call it, it could change these to look, you know, pretty different. And lastly, the subdivision surface modifier, it kind of struggles with when there's any triangles actually in the geometry and it's not just a flat plane. But, if we go in here, for example, and we bevel this, you can see all of a sudden, you know, we have more geometry, but the geometry, you know, follows the curvature perfectly. You can go in here and then use set flow to kind of adjust it to actually follow the flow with my poly modeling tool box add-on.

**6:34** · But, now if we actually apply the subdivision surface modifier, you can see it nicely quadrified it, but you can also see there's a weird bump now on the surface. You can see this is the shading before the subdivision surface modifier.

**6:46** · There's maybe like a subtle hint of like a weirdness going on. Before and after, you can see how different it looks. So, it cannot only remove subtle shapes that you added yourself, but it can also add some if you use anything but clear quad topology. Lastly, we have the good old, I guess, guilty gear mouth, you could call it, which is basically, you know, just like a way to allow for a bigger mouth movement for stylized characters.

**7:11** · What is the subdivision surface modifier going to do with this? Since it can't really deal well with, of course, you know, triangles and end guns, if you apply this, it's going to create something super crazy.

**7:22** · \[laughter\] Like, if you ever want to use create characters, anime characters that use this kind of \[music\] mouth technique or end guns, for example, in the eyes and stuff, you know, the subdivision surface modifier is going to just create some kind of weirdness that just doesn't really work at all. So, hopefully at this point I was able to show you that the subdivision surface modifier has its uses or has pretty useful features, but overall, there's still also a lot of drawbacks or weird things that you have to kind of work with or work around to, you know, make it work.

**7:50** · But now that we know that, let's look at how actually the pros use the subdivision surface modifier. Here, we have a model from Zenless Zone Zero, and you can see Look at all these nice shapes. Look at how smooth they are. Look at how, you know, everything looks nice and shaped. Look at the hair.

**8:09** · Wow.

**8:10** · \[laughter\] And maybe you've seen it already, maybe you haven't. There isn't actually any subdivision surface applied yet. This is a game model, and for games, you don't have subdivisions. This subdivision surface modifier is a modifier that only exists in Blender. You can't export that to Unreal Engine or to any game engine, basically. And, you know, from this distance, \[music\] maybe I was able to fool you, maybe I wasn't.

**8:33** · But basically, what I'm trying to say with this is since the subdivision surface modifier only exists in Blender, and professional character artists were able to create highly detailed and good-looking 3D models without the modifier, do you really need the modifier?

**8:52** · And maybe, you know, you would argue, "Well, you know, these video game models, you don't see them super close, so they're fine to not have like crazy super smooth surfaces." But what about like animations, right? There you have super smooth, you know, characters. And there you want to maybe zoom in quite a lot into the face to make it, you know, nice and smooth. And of course, yes, subdivisions are being used. For example, you know, any Disney characters probably have a subdivision modifier applied. But the important thing to keep in mind is what happens when I actually apply the modifier to this character.

**9:23** · Right now, of course, you can see, you know, a little bit blocky, but not too much. And now if we add the modifier, everything is a little bit smoother, but importantly, the shape hasn't really changed that much. All that the subdivision modifier really did is really only like smooth out the blockiness a little bit. I would argue that the shape of the nose is more unique or more interesting without the modifier than with the modifier. All of a sudden with the modifier everything kind of gets smoothed out and looks not as interesting anymore.

**9:52** · Something you might also say is, "Well, yeah, but in then subdivision still make the surface smoother." Well, maybe, but maybe not. Because something important to keep in mind, you have shade smooth on. If I shade flat, all of a sudden it doesn't look very smooth anymore. Which means that even without subdivisions, the surface is still smooth. Look at that.

**10:16** · Of course you can see here like there's like some blockiness, but these things you can adjust for example with normal editing. And so really all that the subdivision surface modifier does is smooth out the silhouette of a character. And I would argue also that for example for anime characters, if you want to look create something stylized, the blockiness actually doesn't really take away that much from the impression of your animation.

**10:41** · What is more important is just that the shapes look nice, that the overall presentation looks nice, and the blockiness is just kind of like a side thing that isn't really that important. Of course it's nice to have a smoother silhouette and make it perfectly smooth. So now let's cover how in my opinion you use the subdivision surface modifier properly.

**11:00** · Since the modifier reacts to what the geometry of your model is and then basically works on top of it, puts basically like a filter on top. It's kind of like I guess using like sandpaper to smooth out surfaces. What is the most important is that you actually can create a model that the modifier can then smooth out nicely. So this model of course would look much weirder if for example the geometry wouldn't look like this.

**11:24** · If you for example instead of using the subdivision surface modifier to model the legs like this, actually worked with the real geometry, You could of course first of all immediately see that it looks a bit weird. So, you would for example go in here of course and kind of adjust it to look a bit more like the original. In this way, just by modeling normally, you can immediately make it look a lot more like the original. You don't really need the subdivision surface modifier.

**11:49** · I think in my opinion, it's really a big distraction that kind of hides the flaws that are in your model and that's also how you don't improve because it makes your model look so nice even though it isn't really that nice.

**12:05** · No no offense.

**12:06** · \[laughter\] It hides flaws that you could otherwise identify and improve or change and learn from. It fixes those by itself and this way kind of like takes away the learning opportunity that you would otherwise have. You know, now the shape looks a bit better and then we would maybe add like here some more geometry to just kind of you know, adjust and add more like this.

**12:31** · In this way, you know, you can slowly but surely get a bit closer to what this is actually supposed to look like.

**12:37** · If you're wondering what I kept using here, this is my poly modeling toolbox add-on. During my process of learning how to poly model, I discovered that there's quite a lot of things that Blender doesn't have that improve the whole poly modeling process by quite a lot. You can for example just color any geometry in any color and that does not only apply to faces of course, but it also applies to edges and it also applies to vertices. But of course, these are not just colors that you can apply to your model. You can actually use them for our stuff too.

**13:06** · I could for example extract the pink color set that I have currently selected and all of a sudden, we have a new geometry made out of this. You could for example also convert the already existing color set for example to a material slot, but this is only one part of the whole add-on. We have like default functions for example like the smooth vertices feature. then there's also an improved version, in my opinion, which is these smooth vertices keep shape, which actually makes sure that the shape of the model is being retained a little bit better.

**13:35** · Something I use a lot for poly modeling, for example, is the draw feature, so you can just draw \[music\] something and that gets turned into a face. There's a lot more small things in detail, but the last cool thing that I want to show you allows you to, for example, select this knee right here and then create a linked duplicate of this knee, which basically means means that if you now change the main mesh, you can then sync these

**13:59** · changes to your duplicates and they, of course, adjust accordingly, but now you also have a deform cage, which allows you to actually change the shape of this duplicate independently of the main model while still keeping all the changes synced between this duplicate and the original. And then, once you're done, you can just kind of apply everything and now the models are joined again and you have your duplicate as part of the original model again.

**14:25** · If you're curious and you want to check out the poly modeling toolbox add-on, just check out the first thing in the description and, yeah, there you go. If you're actually sculpting a character first and then do retopology, where you then use subdivisions, I think in that case you can immediately start with subdivision because you've already established a good shape, now you're just trying to, you know, clean it up basically. And in case you're still not believing me, okay, here's what actually Yuki said when I asked him.

**14:50** · In his opinion, you should only really use subdivisions to check whether the model you've created looks good with subdivisions, but not use subdivisions during modeling. You would just kind of use it to kind of see if the final result looks good. You know, if something looks weird, you would then disable it again, adjust it and then see if the adjustments made it better. He also says that most models that he knows don't actually use subdivisions at all, but also, of course, something to keep in mind is that he is more like in the 3D anime niche or anime video games.

**15:18** · I think in there, maybe, you know, it's more about like getting nice looking shapes rather than making it look something like realistic, of course. So, I think for these kind of things, what the subdivision surface modifier actually does is actually more destructive than, for example, for something more realistic. If you say, "Oh, but I really really really really like my super super super super super smooth silhouettes on my characters, right?

**15:42** · It's It's like super important to me."

**15:44** · Well, there's another solution that actually is being used in video games, which is basically, you know, if you for example need more geometry here you think it looks too blocky, all you really need to do to give it more geometry is just use the knife tool and add more geometry here. And all of a sudden you have one more point to make this just a little bit smoother. And all it cost you was one more vertex rather than subdividing the entire model just to have a little bit more geometry on the nose.

**16:12** · If you were for example want to have two more points, you can, you know, subdivide this edge, let's say by two, and then you can do this, for example, and then all of a sudden the silhouette already looks a lot smoother than it did before, all, you know, just by adding one or two points rather than everything being more subdivided. So, to summarize, if video game models, for example, can look good without being able to use the subdivision surface modifier, then in my opinion you don't really need it to create nice models.

**16:42** · It usually just makes beginners feel a little bit more comfortable with what they're modeling, even though it actually hinders them from learning faster what they could improve in their modeling process. \[music\] And also all the modifying really does is smooth out the silhouette because the shading on the actual surface is handled by the smooth shading that is based on the normals of the model. So, in the end the most important thing that you need to learn is how to create a nice 3D model.

**17:07** · And for that, check out this video right here where I talk about, in my opinion, the most intuitive way to create a 3D model, a 3D character. If you still struggling with creating nice room characters, I think this video can be really, really, really helpful.