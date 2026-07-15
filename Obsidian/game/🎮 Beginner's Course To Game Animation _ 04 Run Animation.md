---
title: "🎮 Beginner's Course To Game Animation | 04 Run Animation"
source: "https://www.youtube.com/watch?v=KQq5UZZ2c6E&list=PLzn9qrbm2X8OuNjFPw2rIj8O1h1Kt8JX0&index=4"
author:
  - "[[Agora.Community]]"
published: 2022-02-18
created: 2026-07-15
description: "In the next lesson of our Game Animation Course, Skylar Surra (Principal Animator at Riot Games), takes things up a notch. Now that we have our idle animation in-game and working, it's time to get on"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=KQq5UZZ2c6E)

In the next lesson of our Game Animation Course, Skylar Surra (Principal Animator at Riot Games), takes things up a notch. Now that we have our idle animation in-game and working, it's time to get on to what we've all been waiting for!  
  
Skylar will show you his process of creating a run cycle, and how to properly implement it in Unreal Engine to get it moving correctly.  
  
If you want to get up to speed with Skylar, check out our playlist and follow along with the first three episodes -  
https://youtu.be/Sx94L056ZCA  
  
⚡ You can download the Thor Rig for free on our website -  
https://agora.community/content/thor  
  
Thor was created by:  
Hicham Habchi \[concept art\]  
Guillaume Tiberghiem \[3d artist\]  
Character generously provided by Keos Masons  
  
🔔 Subscribe to be notified of when the next episode is released and for more animation industry advice and interviews!  
  
Join our Discord Community: http://www.discord.gg/daMCPGWjc6  
  
Facebook: https://www.facebook.com/Agoracommunity-106340684571716/  
Instagram: https://www.instagram.com/agora.community/  
Twitter: https://twitter.com/agoracommunity2  
LinkedIn: https://www.linkedin.com/company/agora-community/about/  
  
Chapters:  
00:00 01. Course Introduction  
01:24 02. Gathering Speed Data In Unreal  
09:41 03. Blocking The Start Pose  
20:32 04. Blocking The Legs  
30:35 05. Upper Body Pass  
38:19 06. Offsetting The Animation  
47:15 07. Leg Polish  
58:47 08. Up And Down Polish  
01:13:33 09. Final Polish  
01:21:38 10. Reviewing The Final Animation  
01:24:05 11. In-Game Implementation  
  
#gameanimation #unrealengine #animation #agorastudio #agoracommunity #cgi #vfx #animator

## Transcript

### 01\. Course Introduction

**0:00** · \[Music\] hello animators and welcome back to my game animation Workshop if you've been following along with the series so far you know that we ended last episode with an idle animation that we were pretty happy with unfortunately when we push the wasdi keys and actually move around the character just slides around playing that animation So today we're going to focus on building a run animation so that when we push those keys and move our character around the character will actually transition into a run animation

**0:30** · and look like they're running around like a real game now before we get into animating and all the fun stuff we do need to do a little bit of data Gathering it's important for us to understand some information about how our character moves in the game so we can make sure that our animation is moving appropriately primarily the piece of data we're going to be looking for is the move speed of our character how many

**0:54** · centimeters or meters or whatever it is per second that the character is moving forward this is really important for us to understand so that when we actually build our animation in Maya we're building it at the right speed to prevent lots of foot sliding and that kind of thing so we're going to hop into unreal first we're going to get that data I'm going to show you how to get that and then we're going to hop over and do a little bit of Preparatory setup in our animation scene in Maya to make

**1:18** · sure that we are prepared to get our animation moving at the correct rate to match what's in game all right so here we are in unreal I've just opened up our uh scene that we're very familiar with from last time time and we're going to go hunt down this info about the character how fast they move when they slide around in our world the easiest

### 02\. Gathering Speed Data In Unreal

**1:37** · way to do this is to actually go look at the character's pawn and just see what the settings are see what the Max uh sort of walk or run speed for our character is and we can get there very quickly by just actually selecting our character right here in the scene this is a instance of our character pawn and

**1:53** · you'll see that it highlights it over here in our world outliner and we can go straight to it by clicking this edit third person character button now we've kind of mucked around in here a little bit before but as just a reminder this is the character's uh Pawn or the character controller sometimes it's called it's kind of the the the the the bucket that everything about the

**2:15** · character all the pieces of the character get slotted into and this is the actual thing that ends up getting spawned in game that you play as you can see it's got all these components meshes uh weapon meses or camera boom all this stuff right so this is kind of the One-Stop shop for all the bits and Bobs

**2:31** · that actually make up your character okay over here there's a list of components and components are essentially they're they're modules or objects that are just like a component of this character and you'll note that there's one component here called the character movement component and this is something that all characters all playable characters uh in games and unreal have uh and it's kind of a

**2:56** · storage unit for all of this data about how you're character is allowed to move and all the tuning values uh for how they jump how they walk how they slide how they interact with physics and everything okay and you can kind of go down this list and look at all these numbers you could even tune them to be uh whatever you want if you wanted them to actually be something different than what they are okay the one that we are looking for is actually the max walk

**3:24** · speed okay so I'm actually going to just search for that we'll search walk uh and here we go here's our Max walk speed right here and it looks like it's 600 now 600 what you're probably asking well it's 600 uh uh unreal units which happen to smartly be centimeters okay so anytime you see a speed value uh in unreal what

**3:49** · it is actually going to translate to is centime per second so we now know that we need to build our mayene to match this and that when our character is running forward they need to be running forward at 600 cm per second so let's hop over Naya

**4:06** · now and actually set up our scene and get our character just moving through space at 600 cm per second so that we make sure uh we're building on a good foundation that matches exactly what we have in game and here we are back in Maya now the scene that I have opened here as a starting point is just our Idol from our

**4:28** · last episode now what what I did is I baked it all down and just grabbed our pose just that very first pose of it dumped that in a new scene and that is essentially what I have here so if I select all my controls you'll see all I have is one key here there's no animation it's just my idle pose and the reason we're starting with that idle pose is this is the animation that generally uh uh we're going to come from when we start running we're going to be coming from a standstill into the run so

**4:54** · it's a good pose to kind of start with uh and and make sure that we're kind of sort of matching that pose uh when our character actually runs forward as well now what we want to do is we want to actually get our character moving forward through space at 600 cm/ second

**5:13** · to match what's in game okay so the very first thing we want to make sure is that our units in Maya are actually set to centimeters so that when we put in values on our sort of layout control here that we're not working in meters or some other even more confusing uh unit

**5:31** · so we'll go down here to our settings uh I'm going to collect this little man with the gear down here and if we go to the main settings area here you'll see there's an area called working units this might be set to meters or something else whatever it happens to be you want to make sure that you have uh centimeters selected there before we do

**5:51** · this otherwise we're going to be working in units that won't make any sense to us and unreal so once you've got that hit save and then we're going to select our layout control so the bottom control here of the character and we want to go to frame 30 so we want to say from 0 to 30 so over uh 1 second our character moves forward 600 units okay so I'm going to go here to the graph editor let's look at our curves here Boop and we want to go let's

**6:25** · see in this direction which is z let me focus on on this there we go so we want to just we're just going to manually make this 600 at frame 30 okay now you might be tempted to say oh there we're done it moves 600 forward over 30 frames but if you look at our curve uh it's actually plateaued at the top and bottom which means that our motion is going to ease in and out on that curve and that's

**6:53** · not how our character moves in game our character is moving at 600 cm/ second linearly through space so we want to make sure that this is also Linear by clicking this uh and that the character is moving at a very even Pace forward now just for the sake of uh cleaning

**7:12** · this and not having to mess with this later I'm actually going to copy this a few times uh into perpetuity so that if we end up stretching out the timeline for any reason our character will continue to move forward at that same rate and I did that just by selecting my curves going to edit copy Cy selecting the last uh uh frame there and hitting paste paste paste to get it to paste out okay now the last thing I'm going to do

**7:39** · is I want to be able to view this animation in two different ways while I'm working on it I want to be able to view it actually traveling through space as well as in just one location looping right because sometimes it's like a little bit hard to uh actually like edit the manua of an animation when it's traveling through space really fast so what I'm going to do is Select my layout control yet again and over here in my layers editor I'm going to rightclick on this layer and say extract objects okay and what that's

**8:13** · going to do is it's going to extract all the animation from the selected object onto a new layer that I can turn on and off at will okay so if we look at now um we have our character moving forward through space just like that right but

**8:29** · if we turn off this layer our character actually stands still now I kind of did a mess up there because our character stands still in that location where we uh did the extraction so the last thing I'm going to do is Select my base layer make sure I have this layout selected set a key frame on zero again since we moved all those key frames off that base layer and up to that to that other layer and just zero out my uh Z here so that

**8:55** · when I have that layer turned off my character is back here at the origin and so what you should see at this point is if we play uh and have that layer turned off our character should just be standing there perfectly at the origin and then if I turn that layer on our character should be correctly sliding forward at 600 cm per second and now we're ready to

**9:19** · get started on our animation and that's it for the scene setup now if we've done everything correct up to this point and got our data in the correct way and actually set the scene up as expected as long as we actually don't mess that up the animation that we do on top of this should already have kind of built in the appropriate motion to prevent foot sliding and whatnot when we put it in the game down the road all right let's get started on this run animation now

### 03\. Blocking The Start Pose

**9:44** · there's a couple different ways that we can approach run animations and different animators like to think about animation in different ways and neither of these are right or wrong so I'm just going to kind of talk through them quick before I uh then go in and sort of show you my process for building a run animation the first and I would say more like traditional way to do a run animation is to take a pose to pose approach and by that I mean you know this is the this is the way that is kind of taught by Richard Williams and the animator survival kit it's the you sort of meticulously lay down and craft your

**10:17** · uh contact pose your low pose your passing pose your high pose and then sort of continue through that Loop and then you break down in between each of those and eventually spline it and sort of Polish it up that's the pose to pose approach it's sort of laying down the staple key poses of that run animation and filling in the blanks and sort of building up from there the second

**10:39** · approach is a more layered approach kind of how we animated the idle in the previous episode a layered approach for a run might look like hey we start by animating The Roots up and down motion and then we sort of add the the legs on and the upper body after that and we sort of build outward from a sort of centralized motion on the character

**11:00** · uh I'm going to kind of animate a little bit of of a hybrid of those two but I think I'll be leaning more towards that layered approach the reason for that in this specific instance is that I want to kind of build the Run within the idle pose I already have I don't want the character to just suddenly transition into a very different more straightforward run animation I want them to kind of maintain that uh that that that that lean forward crouched

**11:26** · weapon specific pose that we crafted while running because of that I think it's probably going to be a little bit easier to just sort of organically build it right out of that pose so we're going to take and sort of start at the center of the character and work our way outward and see what we come up with the end I really like layered approach because a lot of times it sort of uh uh

**11:48** · it sort of emergently creates a lot of happy accidents where you might animate one little part of the body offset in a way that feels really nice uh that often don't happen in more more traditional POs to pose animation so I'm not going to run through every little noodly bit of this process animating runs can actually take a really long time and can be a lot of sitting there like noodling curves and whatnot so I'll sort of break it up into the the the beginning how I started maybe show a little bit of the middle and then the final bit at the end

**12:19** · but hopefully it'll be enough that you can kind of infer what those in between pieces are without me sitting here for 3 hours actually showing you every little bit and Bob that I'm tweaking on the character so let's go into Maya and get started so here we are back in our beloved Maya and uh I have my idle pose

**12:40** · here now we have our root motion extract just like we uh set up in the setup so that it has the forward motion built into it over 30 frames now the very first thing I'm going to do is clamp this to a frame range that makes a little bit more sense for us we're probably not going to want to do a 120 frame uh looping animation here so let's

**13:00** · pull this down to since this is a pretty fast run you know I sometimes like to start around 20 but it's a little bit faster than normal so I'm I think I'm going to pull it down to around 18 as a starting point and just to make sure that everything is sort of same Z's across the board let's update this maximum this is your current clamp range and this is your maximum clamp range here to 18 now before I do any more I

**13:27** · just wanted to talk about one little hot key that I'm going to be using uh I like to try to uh squeeze these little hotkey tip and tricks in here where I can you'll see me uh frequently throughout this I selecting all of my character um

**13:43** · and that is essentially let me open up this uh this picker here it's essentially the same functionality as this all button here uh but I just pinned it to a key on my keyboard right now I have it on a and you can actually do that yourself by if you select this

**14:01** · uh sorry I I pointed to the wrong one here it's this one here um the all select uh if you actually go and open up your script editor here we can kind of see what's happening

**14:16** · if you click this little eraser button here it'll clear out all the all the current scripts we can go hit this button over here again and it'll print out a bunch of stuff here but but basically this is the script that just ran and you can see that there's this one line here it's really really long it goes way way way off the page way over here it goes on of my other screen but essentially this is a little um script

**14:39** · that is just selecting one at a time all the controls on the character right and so uh if you copy this you can actually just highlight it and middle click drag it up onto your shelf you'll uh and we want this to be a um you know what I

**14:56** · don't know whether it's a Mel or a python I guess it's a Mel script yeah and now if we click this button it will run the same behavior okay and then you could bind that same script to a hotkey or whatever you wanted uh this is just really useful particularly when blocking out animations because there's a lot of times where you want to just key everything and being able to quickly you know hit a to select all uh and make sure you have a key on everything is just a really uh convenient and easy tool to have along the way okay so I'm

**15:25** · going to turn off my root extract now because I don't really want to deal with my uh Forward Motion uh at the beginning here and we're just going to take this pose and start to massage it into a little bit more of a useful run post we want to keep the spirit of the original but um maybe kind of Center out the character a little bit more lean them forward uh and get something that feels a little bit more natural for a run so to start I'm going to select all and middle Mouse drag to just copy I want to

**15:55** · make sure on my Bas layer here to copy over a duplicate of my original pose so that we can scrub back and forth between our old pose and our new pose as we're editing it to make sure that we're kind of um you know keeping the same look about the character so I'm going to turn off my controls and mostly use my picker first off I'm going to actually kind of um uh Center out my my root here and

**16:21** · then counter rotate back some of these spines to get that feel just so that the character is a little bit more squared off forward um in in the run because it's going to be a little bit uh difficult to get a run I don't want the character to be like side stepping so much I do when they when they run I want the character to be rotating and kind of facing forward and running and I just want to keep a little bit of that uh rotation to the side in there so it still feels like uh you know the the run and the idle go together

**16:56** · well uh and if I was carrying this big weapon in my hand I think this arm that's carrying it is probably going to drag uh back a little bit oop so I'm going to grab the all the joints of this arm here and I'm just going to literally kind of pull them back a little bit let's grab this hand and just kind of rotate that back a little bit and likewise this other arm

**17:20** · here is going to be um this is going to be the arm that's pumping right it's like this thing's got the weapon in it over here and then this uh this arm on the other side this one's loose so it's going to be doing all the pumping if you ever carried a uh you know a kettle bell or or a heavy um item in one hand and

**17:37** · try to run you kind of pump with one arm and just kind of hold the heavy item in in your other one so let's bring this arm uh actually forward and get a bend in here um as if you know there's kind of a jog and then I'm going to do really

**17:53** · quick just a hand pose to put this into a fist because I don't want the hand to be you know Flo around in our run I want it to actually be uh you know a fist I'm going to use this little button up here to zero zero those out and actually I'm going to select the whole hand and make sure I have the whole thing kind of zeroed out um and then once again select

**18:13** · the fingers and kind of bring this into a really basic fist I can always make a nicer better fist later the point here is to just kind of get us into uh you know something that feels a little bit more uh runny than what we had before okay so

**18:33** · we'll just bring that down and then let's grab this wrist here and kind of bring it up into a little bit more of a appealing pose with that forearm okay uh what else do we want to do here I probably want to square my feet off a little bit more forward uh not so much to the side we'll

**18:55** · kind of keep we'll kind of put them like somewhere halfway between uh also bring this uh knee to sort of match similarly we'll grab this other foot bring it back to the center a little bit straighten it out a little bit so we're we're trying to just kind of straighten out the character a little bit before we get into the run so we have to deal with so many uh kind of awkward angled elements and then kind of zero out the

**19:24** · hips a little bit and and I think I want to add back in a little bit more rotation in the body to kind of match that pose we had at the beginning cuz he seems a little too squared off now so let's bring back in a little bit of this and a little bit \[Music\] leaning this

**19:48** · way okay um and then lastly I'm going to bring the head you know when you run you don't run with your even if you're leaning forward you don't bring your head way up and stare forward you actually kind of look down at a I don't know 10 20° in front of you um so I am going to bring this head down a little bit into a more natural running pose

**20:13** · kind of looking out at the ground in front okay and that is a pretty reasonable pose for us to start with um I didn't worry about you know putting the character quite into a run pose yet that's going to be our next step so now that we've got our pose in in a pretty reasonable position we'll move on to the

### 04\. Blocking The Legs

**20:32** · next step all right now that we've got the gesture of our run pose our our our just sort of idea of it we're going to actually start layering on some of our initial run animation and we're going to start with just the root of our character the kind of waist and our feet

**20:48** · we're not going to really worry yet about the upper body we're going to kind of do that as a next step like I said we're going to take kind of a layered approach to this but when we are uh kind of roughing out the the feet we are going to going to think about it in that classic pose to pose way we're going to try to make sure we nail all of our our key run poses so we're going to start with those contacts work through and build out our sort of passing pose in between those and then we'll break down with our high and uh that sort of inair

**21:15** · leap off pose that you want to really capture on every run and just sort of fill in the blanks in between but we're going to be working primarily just on the lower body first and then we're going to kind of layer the upper body on as a separate element afterwards and we'll do a little work to massage them together to make sure that they actually work well after so let's go take a look at the feet and that rout and see what we can do all right so here we are back in our Maya scene and we have our gesture and we can just kind of compare it to our idle pose like I suggested and

**21:45** · we can see that it's just you know lean forward a little bit more and it looks like it's going to blend reasonably well while giving us a little bit more of a sort of squared off straightforward pette to work with for our character okay so I'm going to uh copy this by

**22:01** · just middle Mouse dragging it over my original idle pose there and delete this out of our scene so that we just have our uh initial run gesture pose here okay so let's grab this we're going to copy it out to our middle and last frame just so we have a starting point and the very first pose I'm going to build for my legs is what I like to call the Run hero pose it's that sort of in air like

**22:30** · leaping forward pose and it's often the the pose that's easiest to kind of miss when animating a run uh but it's what really makes a run feel like a run as opposed to a jog or uh a walk animation is that sort of air time in that really extreme like stretched out push off pose that you get exclusively in a run so I'm just going to start uh posing that out getting both my legs up into to the air

**23:00** · into um poses that I think are going to work for that and I'm not worried about them being perfect I'm just trying to get the feel of uh the character launching themselves to the air I'm going to copy this zero pose over to my last one as well uh and then I'm going to create a similar pose here but in the other direction and I'm just sort of focusing on thinking about where the sort of extreme uh positions of each leg

**23:28** · are going to you know I don't want to pull this too far forward and get weird bending there in the ankle I'm just trying to find something that looks like the sort of natural extreme extensions of this run okay so kind of getting this leg back off the ground if that was sort of the full push-off position then I want this to be even further back and extended out

**23:55** · okay and we'll do something like that and if I scrub between them you know that's going to I think be some pretty reasonable sort of in aor poses to start with okay uh so next I'm just going to start one leg at a time working my way through the other poses so we'll start with this side and after you know as it's coming uh you know this leg was just coming forward so the next pose we're going to hit is contact we'll bring this down into our contact pose

**24:24** · and I think it'll probably end up being a little bit tiny bit more back like that I'm going to copy that a couple frames later and get a passing pose out of this bring it a couple more frames later to seven here and try to get our uh extreme push off

**24:44** · pose okay so something like like there's where our leg kind of naturally hits its full straight which is what we want and then let's grab our toe I'm going to set a key frame on my toe on all the same frames by selecting both the feet and my toe there um and let's just bring that toe bend it a little bit to kind of line it up with the ground okay so now I got my contact my uh low I kind of combined

**25:15** · the low and passing the passing is probably actually like somewhere in here actually and then here's my high this is going to be my full extension push off pose and then my sort of hero in the air Glide hangtime pose that I have um then we're going to work on the through the air portion of this here um I'm just going to bring the leg up here and I'm

**25:36** · going to be focusing mostly on the foot pose to kind of get it to feel like the the foot is dragging a little bit and I'm not too worried about the exactness of this I'm just trying to sort of straight ahead get the get the feel of this whole thing okay and there you can see that just with like a couple seconds of Animation we have something that feels reasonable on that foot so let's rotate around to this other side um I

**26:02** · know some people like to copy animation uh from one side to the other but one of the tricky things about this pose specifically was that my character was angled a little bit so I can't just straight up copy because I want my feet positions you know to actually be a little bit offset so I'm going to actually animate it straight ahead again just like I did the other side and it doesn't take very long so uh I'm not going to you know worry about wasting time too much we'll just bring this down likewise into our contact

**26:32** · pose um and I'm not concerning myself too much about the exactness of all this we'll do the sort of tracking along the ground and stuff as a separate step later uh bring over to our high get that full extension out Bend our leg get a

**26:50** · nice push off here for our back foot see if we can get it all almost straight I don't want to like have to worry too much about the like legs you know snapping to straight later so I'm going to give it a little bit of a Bend I'm going to do the same thing that I did with the toes where I select the foot and the toe and just key all my uh

**27:12** · frames here on the toe as well let's give that toe a little Bend now and then loop back around to the other end and get some of this through the air animation we'll drag that a little bit more like that as it's coming

**27:35** · forward that looks pretty good okay so if I play this now I've already got like a pretty reasonable motion for the feet I mean there's a lot of wonkiness in this angle he looks like he's you know running on top of a horse or something because his legs are so wide apart but we'll kind of deal with that later so the last bit we want to focus on in this block out like I said is the root here and we want get the root up and down to kind of match the Cadence of our legs

**28:04** · right so when the character is pushing off here and in the air that's probably where we want the character to kind of be at the highest whereas this you know right after the few frames after the foot contacts and during this passing is probably where we kind of want our low point so I'm just going to actually put a couple Keys here where we kind of think our low points are going to be and bring the character down just a little bit and I'll just copy that right over here and then we already kind of built in our

**28:32** · highs because that is that was our like push-off pose that we did and let's see what we got so we have something that's like actually not too bad so the last thing I'm going to do here is just kind of um uh adjust my foot poses a little bit

**28:48** · by using the graph editor so let's bring the graph editor \[Music\] over and we're just going to adjust the uh the translate X in towards the center a little bit so our character is not quite so bowlegged uh so I'm just going to grab the X curves and literally pull those in a little bit to something that's a little bit more reasonable like that let's see if we even need to move this other side at all it might be fine for now and we can always adjust it later yeah it's probably okay um I did

**29:19** · notice that it kind of pops out here so I think I'm just going to fix that right now by sort of scaling that down and we'll just to give us a pretty like vanilla starting point to work with Okay uh the last thing I sort of saw here is that this foot um has sort of a like

**29:39** · ankle rotation to it it looks like where is that at oh it must be on this joint uh yeah look at that okay I'm just going to actually um zero this control out for now I might add some of that later but I don't want it mucking up my initial blocking so I'm just going to zero it delete all the keys well well actually I guess probably I should have deleted all the keys first on it just set a key here at the very beginning and zeroed it out so that I'm

**30:07** · not getting extraneous ankle animation we'll do the same thing for the other side we'll zero it out here on frame one CU I want to control that if it happens later I don't want it to just be something that was left over from a previous pose and that is our rough foot

**30:25** · blockout and root motion blockout and so now we're going to work our way up the body and kind of do the same process for our torso and arms next our foot and root blockout is in a pretty good place we have the basic motion that we need in there to kind of start getting the idea and feel the run but our upper body is still completely static so next we're going to work on fleshing out the spine and the arms and a little bit of motion onto the head and what we're focusing on here is actually building poses that

### 05\. Upper Body Pass

**30:55** · counter rotate the lower body when we run our you know we all kind of learned this in animation school but it's it's worth reiterating that like when your left foot is forward your your your right side of your upper body is pumping forward to sort of counter the motion and the actual weight offsetting uh of

**31:13** · of your body to support all the the mechanics of keeping you upright right so what we're going to do is we're going to just like with that with that run we're going to build our sort of hero extreme poses with a little bit of adjusting in between um and just sort of get like we did on the lower body the gesture of the animation of the upper body so just like our lower body we are going to start out by building our sort of extreme hero poses uh on our upper

**31:41** · body okay uh so I'm going to grab sort of every control that we care about here our spine our uh uh well actually you know what we already have a I was going to say we got a set a key frame on all that but we actually have a key frame on all that uh already so let's just sort of make sure that we do indeed have yes

**32:02** · our key frames on our spine here at zero at 9 and 18 just like we did starting out on our lower body and we're just going to start uh blocking out these poses okay so here on this one we have our left leg coming forward which means our character is actually going to be sort of close to their Extreme rotation in this direction this uh arm here here

**32:28** · the loose one is actually going to be pumping quite a bit uh because it doesn't it's not carrying anything so we want to really really focus on that you know swing through that that's kind of coming around in front of the character and when it's is Extreme back that it's coming coming far back whereas that this other arm that actually has the the mace held in it this really heavy thing is going to be much more contained okay so this is going to be the sort of extreme uh back pose of this let's even get the

**32:57** · shoulder into that a little bit uh here it'll be like up and back okay and then on this other arm we're going to do the same thing but a little bit more conservatively we're going to bring it you know forward a little bit uh bring the elbow forward a little bit and I actually don't think I'm going to move the hand much at all um because you know when you carry a when you carry a heavy object in your arm uh in your hand a lot

**33:24** · of times that motion comes from your elbow but you keep your wrist actually pretty rigid okay so I'm going to try to not put too much uh of that rotation carry it down into the wrist to Awful much and similarly we're going to bring this uh shoulder though down and forward a little bit uh on this I think what I might do though is I might rotate this in a little bit and I'll maybe feather that up through um the upper arm here a

**33:53** · little too okay now we're going to go to uh our well actually here I I forgot to do the neck and head here too so I'm just going to kind of do the same thing here where I take the head and give it a little bit

**34:10** · of rotation in this direction too and I know I'm kind of animating everything all at once and that's fine we're going to take an approach later kind of like we did for the idle animation where we build some offsets into all of it okay so now let's go to our extreme in the other direction uh and we're going to bring this on arm so I moved over here to frame nine we're going to bring this arm way around into the front and grab

**34:35** · this shoulder and really you know lunge It Forward grab all these spine joints rotate them even a little bit more in this direction I think that I want this arm to instead of you know right now it's kind of pumping way s of straight out in front I think I want to have him bring it kind of like across his chest a little bit more so we're going to bring it in something like that so that when

**34:58** · you know he's at this most extreme pose that arm is actually sort of sweeping around uh in in front of the character uh and just like before we're going to grab this arm here on the other side and I just grab the upper arm and the uh the the elbow at the same exact time we're going to kind of bring it back a little bit take this uh hand and give it just a

**35:22** · tad bit of Animation you know because like I said I don't want that to be like flopping around like crazy uh and we'll bring this kind of back around that way and lastly we'll grab the neck a little

**35:38** · bit just give it a little bit of Animation even if it's we just nudge it a tiny bit it'll help the character feel a little bit more organic because there will be animation kind of on all of our joints okay and lastly we want to grab all that those controls that we just touched and and well actually we can just do a select all and we want to copy our pose here from frame one all the way over here to 18 so we have an actual loop again okay and there we have like a

**36:10** · pretty um reasonable start for an upper body now we probably want to build um just two in between poses to kind of get an idea of how we want these limbs particularly to move when they're sweeping forward reverse sweeping back so we'll start kind of with this side and I think that what I want is when this arm comes forward I kind of want it how it is where the arm kind of comes out and around the front but when it comes back I think to just add a little

**36:41** · bit of an organic feel I want that elbow to kind of come in and sweep back just so I don't have this exact same path going forward back forward back forward back like I have right now so let's go back over here to where he's pulling his arm back and we can kind of bring this in a little bit like that and uh maybe even keep the elbow you know

**37:08** · bent a little bit longer on the way back as it pulls back let's see what that looks like so there he kind of tucks it in when he comes back and then it comes out and really sweeps we could even exaggerate this sweep out a little bit

**37:25** · by rotating you know that arm out a little bit there to just get a little sweep out and the front and then when it comes back it pulls tucks the elbow in a little bit and that feels a little bit uh more organic um now for this other arm I

**37:44** · don't know if I really want to touch it that much until I start to actually see what the sort of uh overlapping motion is going to feel like when we start to feather that motion down the arm um so I might just actually leave that right where it is for now okay so I'm

**38:01** · just going to do a tiny bit more noodling on this upper body I'm not going to do anything super super crazy um and then I'll hop over to the sort of final version of this upper body and show you how I I feather out the animation through the spine and arms and whatnot all right so we have the full gesture of our entire animation both the lower body and the upper body but

### 06\. Offsetting The Animation

**38:23** · particularly the upper body is really kind of all moving at the same exact time you know the arms sort of reach their full Peak at the exact same time as the rotations on the body as the exact same time as the head which makes it feel really stiff and not very organic or natural at all so what we're going to do is we're going to employ the same tactic that we used on our idle animation to start offsetting some of our joints to make that really stiff that really um um samsy feeling motion

**38:54** · actually have some organic feel to it so instead of this will offset the elbow and then the hand to get something that's more you know natural like this same thing with the spines instead of them all moving at exactly the same time we'll kind of start at the bottom work our way up to get a little bit more of a natural twist to them so let's go back

**39:14** · over and we're going to actually be spending most of our time in this little segment in the graph editor sort of noodling our curves to get something that feels hopefully a little bit more natural so we're going to do a lot of this step in the graph editor I I've noted before that I kind of have the graph editor here but if you have a second screen it's a lot more natural to kind of work with your full space here and have it off to the side but I'm going to do my best to kind of work here

**39:39** · in this window together so we're going to do the same sort of thing that we did with the idle and we're going to start working from our Center outward okay and we're actually going to after we do each piece um maybe do a little bit of of extra work to try to get a little bit more of a pumping feel in uh on on the upper body okay so let's start though at

**40:01** · the beginning with our spine here and actually grab our top two spines only you know actually before we do any of that I'm going to select all and make all of these curves Loop into Infinity uh so that as we start shifting these curves around they correctly you know cycle off into infinity and we don't get weird you know jerky stop starts okay so now let's grab these top two spine joints and I'm just going to offset uh each of them by

**40:34** · one so we'll go Boop one and grab that last one only and do Boop one okay and already we should start to see this uh this chest feeling a little bit more uh you know natural because these aren't all moving at once they're kind of uh it's kind of distributed throughout them and the upper ones are delayed slightly behind the lower ones so now let's do the same thing with this uh right arm here uh we're going to use this shoulder

**41:05** · actually as a starting point because we animated that shoulder forward to we're going to have that kind of lead the action and offset everything after that by a frame or two so let's just start by offsetting everything by a single frame and see what that gets us and if that's not quite enough we can always go back and uh offset certain parts of it more

**41:27** · or less depending on what it looks like Okay so let's play it and see what that got us so you can see now that's already getting us you know some motion that feels way more natural and stiff than what we had before okay um I'm going to do the same thing to this other arm as a starting point we'll just go grab all three of these offset them by one work

**41:54** · our way down one oop uh and then lastly our wrist okay and as we scrub we can kind of see that the um the mace is now dragging behind a

**42:11** · little bit and it's feeling like that mace is starting to actually have a little bit of weight to it all right okay um so this is starting to actually feel surprisingly good but one of the things that I'm not super thrilled about is that the motion actually feels like it's starting here in the belly sort of

**42:34** · coming up from there and then the arms and everything are just kind of like flopping dragging behind it right but in a run animation um you actually kind of lead with your arms because you're like pumping forward you know to make a run feel like really powerful a lot of times you want the arms to be actually leading the action okay and so what I'm going to try to do is actually grab my entire uh

**42:59** · arm group so right and left and see what we can do by actually off setting all of those earlier into the animation so that they are actually leading ahead of the Torso animation okay so let's actually try pushing this back by a couple frames so that they're pumping forward during well maybe maybe just one frame is enough so that they're kind of pumping forward during the the passing

**43:28** · during the passing and high or you know this hero pose right before the contact you know traditionally in like a jog you'd have this stuff the the upper body would be sort of reaching its peak at or a little bit after the contact by pushing a little bit early I'm hoping I can make this feel a little bit more like it's you know sort of pumping and leading the action now the problem is is that our spine is still kind of the old

**43:54** · way where it's you know starting at the bottom going up so let's try reversing the way that we offset the spine um and instead making it so that the top happens first and then the the the pit of the spine and then the very base of it uh after so we're going to go back move these all back the other direction and I'm just kind of experimenting to see what I can

**44:23** · get to happen here and if we look at that that is actually starting to feel pretty cool right the arm is pumping forward pulling the Torso around and likewise on the way back so by actually reversing that relationship we got something that feels a little bit um more natural uh in our

**44:45** · run okay uh now now that I'm looking at it you know just as a critique kind of back to my previous I kind of wish that i' put like a little bit more back and forth in the spine CU it still feels a little bit um like it's on just this one axis going like this but we can always add that in a little bit later as a Polish point so the last thing that I'm going to do is this head I just want to look at it and see kind of um where uh it's landing and I think that

**45:16** · if I'm just sort of scrubbing through it it feels just a little bit off like I'd want the extreme pose in that direction to drag a little bit more so that it's maybe here on frame 10 or 11 so let's try just grabbing our neck and our head

**45:34** · and delaying them by one or two frames to see if we can get it to kind of go with the motion of the body a little bit better and there we go so now the body is dragging to the left it pull starts pulling the head and the head drifts a little bit behind it see what that looks like at full speed well it might be it might now look a little too floppy you know it's like

**45:58** · so let's see if we can bring it back maybe just to that one frame offset and that might be enough yeah that actually looks pretty decent it feels pretty natural okay so I'm going to do a little tiny bit of work just fine tuning this but as you know things go that's looking pretty good and I you could almost stop there if you wanted but if you want to go that extra mile and add a little bit of like polish to it you can sit there and noodle it you know I'm not loving how uh

**46:28** · this arm looks like it has like a little bit of a figure eight wobble to it so I might fix that and I also feel like this arm after all feels a little bit um stiff like the upper arm of it is moving quite a bit um but the elbow feels kind of too tight for how heavy that weapon is so I think by maybe adding a little bit more Motion in there and offsetting it a little bit of addition I can kind of keep the mace a little bit more stable but still have quite a bit of motion in that upper arm what I'll be aiming for is to try to just make this

**46:59** · hand feel like it's a little bit more stabilized in space and that it's orbiting around the weight of that uh on mace as opposed to right now where it feels very driven by the the the sort of shoulder motion there and the weight really isn't being taken into account much well we've given those abs pecs

### 07\. Leg Polish

**47:18** · those sweet delts and biceps and even those neck Muses a lot of love but unfortunately we skipped leg day so we got to go back and make sure that our legs and feet are kind of up to the same standard that we just brought that upper body to primarily what that means is that we want to start to smooth out some of that animation but the main thing we want to focus on now is actually getting our feet to correctly track uh at our

**47:43** · 600 cm per second motion that we established we've kind of ignored that up to this point and just kind of got the idea of that foot Motion in there but now's the time to turn that layer on and really start making sure that our feet are tracking along the the ground and not sliding so I'm going to show you how to do that let's go over there turn that layer back on and see what it looks like when it's actually traveling through space the very first thing we're going to do here is actually go over and

**48:09** · make sure that our root motion is now turned on up to this point we've been just kind of animating the character in place looping but now we want to finally uh bite the bullet and make sure that this looks good moving through space like it's going to in the game and as you can see our character now is tracking uh along the path through space now I swear I didn't cheat uh it just sort of was a happy accident that I happened to animate these feet at pretty close a pretty good approximation of of

**48:41** · the speed that this character was actually going to run I really just got lucky there sometimes it's close sometimes it's not um but now I'm going to go actually polish up and fix up some of this this sliding that is there even though it is kind of minor so let's start with this foot that's closest to camera since that's the one that uh seems to be the most problematic okay um the very first thing I'm going to do is a tiny bit here in the graph editor um and I'm going to try to make the motion

**49:15** · along the ground for this foot uh a little bit more linear here because once that foot actually contacts the ground and starts going backward it's going to go back at a sort of linear linear speed okay it's not going to ease into it because it's stuck to the ground and the character is moving forward at a uh you know uniform linear speed so at this Frame where it contacts I'm actually going to break this uh curve here by

**49:43** · clicking this button which allows me to control the each side of this independently from the other side okay so I'm going to grab this side and make it linear while keeping this other side kind of plateaued like it was um and then I can kind of see what H what

**50:02** · happens here and I'm just going to kind of make this a straight line so that I know at least even if my speed is kind of off that at least my uh you know foot tracking backward is tracking back at a a pretty linear Pace uh and let's make sure that we got all the ones that are actually on the ground yep and by that point it's coming up off the ground okay so let's now actually just zoom in on this and at this point we're just going to do some eyeballing of it okay um I'm

**50:34** · going to make sure you know since we're kind of polishing this that this foot is actually above the ground and we're going to go to the next frame and I'm going to do a little cheat here and actually just copy this Frame right over and then slide it back and I'm just scrubbing and I'm going to just eyeball these and nudge them until they are nearly

**51:01** · identical okay now it doesn't need to be 100% perfect but the closer the the less this moves the more it will feel like the character's foot is really truly planted on the ground okay now here this foot rolls up and if I kind of compare where the toe positions are we can see that this one is a bit off and we want to bring this back even more now that's

**51:23** · kind of the right position but this is going a little bit through the ground so let's raise it up a little bit and now we have a pretty great plant and push off now if I look here kind of in between it's wobbling

**51:39** · around a little bit so let's just go on ones and fix each of these in between frames as well since it's only a couple frames that we have to deal with and like I said if you get a little wobble like that you could probably fix that up but I wouldn't worry about it too much it just needs to be close Okay uh let's get this guy moved back a little bit and pulled up a tad as

**52:10** · well there we go I'm looking at this toe position it still wobbles a little bit there it goes back I know this is not the most interesting but it's important to uh make sure that these foot placements are nice nice and solid otherwise our character in game is going to look like they're sliding around the world uh and that's a quick sign of Animation that

**52:38** · feels a little bit um cheaper or not quite as polished is when you see foot sliding okay so that's pretty good now the other thing that I kind of think um might be worth doing is just massaging

**52:55** · when this this uh foot rolls up a little bit this is starting to feel a little bit awkward here and since I'm kind of at a polishing point in this animation I know I said I didn't like to use this this foot roll too much because it was one more thing to polish I'm going to use it as just like a quick polish tool to try to massage out the uh foot

**53:17** · rotation here a little bit cuz if I start to use my ankle and toe again I'm going to mess up all that work if I you know start to rotate this up and then animate my toe again I'm going to just mess up all that work I just did to keep it nice and planted so I'm actually just going to grab this uh you know ankle control here I'm going to put keys on all these and I'm just going to use that to

**53:45** · massage out me delete this one this area a little bit to get my toe bends more what I want there now it's feeling a little bit more natural like as the maybe even one frame here I could just nudge it up a tiny bit it feels now like it's rolling up nice onto that toe and really actually like pushing off right um and lastly for this area here

**54:13** · I'm just going to try to get this toe to feel like it's really pushing off from that location where it was and maybe it might even help to zero out the toe itself so that it feels like it rolls up

**54:28** · and launches up into the air off of that exact spot so the toeses kind of pointing to the location where it pushed off from right okay so that was all just sort of straight ahead I just sort of um you know uh did all the foot sliding and then worked on the foot roll a little bit and I think the last thing I want to work on is the contact here the

**54:55** · character sort of just clonk puts their foot right down flat onto the ground which I don't love generally I'd either like the toe to contact first if you want to have like a really fast kind of sprinting run you can have like the toe come down and just sort of land on the ground or your heal um and I'm actually not quite sure which one I want in this this animation so I'm going to try both

**55:20** · first so I'm going to keep that kind of how it is and then try giving a little bit of a heel land in which case this probably needs to be coming in a little bit more horizontal uh and I should have keyed that next frame flat before I did that so that when I animated this up I

**55:44** · didn't get weird interpolations so now in this version this comes in kind of flat here hits heel first and then comes down a frame later and for that foot I think that feels pretty good based off of you know just looking how far it is it's kind of like out in front of the character so it makes sense that the heel would contact first if I wanted it to be a toe contacting first I would think it would be hitting the ground back here a little bit under the character because you start to almost bring your foot back and

**56:15** · hit with your toe when you're sprinting as opposed to this where he kind of reaches out with his foot and it does make sense for the heel to kind of contact UM so the last thing that I think I see is that there's just a huge uh pose change in the leg from this Frame to this Frame

**56:38** · here to this extension and I really like this extension but I want to make sure that that snap isn't happening there in the leg so much so how I'm going to deal with that is actually by just adding a little bit of more rotation and translation here on the leg to try to get it into a just barely bent State and

**57:00** · I think part of the problem might also be that I think my pose here right before might be like in the ground a little bit Yeah you can see that my foot kind of sinks down so let's try to fix that here by just frame by frame pulling these

**57:17** · up bring this guy up and forward a little bit and then use the rotations to kind of get the toe back in the right position get that up out of the ground get up out of there there we go and then we'll look at this toe to make sure we're not getting sliding again which we are sliding a little bit

**57:38** · so let's get it there that's sliding a little bit we're just holding our cursor right at the tip of the toe and then oh that's sliding quite a bit there there we go and then we can really now get the straight like the really close to straight on this pose

**57:59** · here since that kind of eases into it now a little bit and we basically got rid of that knee popping by doing that right um now it does come I do have kind of a straight to Bent to straight to Bent to straight to Bent so I might want to pull this one back a little bit too so that we similarly ease back into the bent uh pose afterwards and make sure we copy that back over here to the front

**58:25** · Okay now now I'm not going to go through that entire process again on the other foot I'm basically going to work through the same exact logic where I check my foot plant and work through uh all the mechanics of this other foot in the same way but I will kind of play this through and then I'll show you the the final finished version of those feet uh at the

**58:46** · start of the next little segment here we've made some great progress up to this point we've done kind of a medium polish pass on the upper body and on the on the legs and now time to start adding in a little bit of those more nuanced polish points and specifically I was noticing on this animation that the up and down Motion in the character doesn't really uh doesn't really distribute

### 08\. Up And Down Polish

**59:09** · throughout the rest of the body in any way shape or form and that makes sense because if you remember at the beginning the only up and down motion we added at all was just on the root of the character so we're going to use a layer now to just sort of feather in some of that up and down motion onto the rest of the body to Hope y kind of loosen up our character a little bit and make the whole thing feel a little less rigid and and stiff and tight uh and a little bit more looser like a big muscly guy running okay all right so here's where I kind of ended up with uh on my foot

**59:42** · polish from the previous uh uh step and I went through and worked on both of the feet and I actually did a little bit of work from the game angle to doing just the same exact kind of stuff that I showed in there it was nothing too crazy but but just kind of making sure that the rotation and planting and everything in my feet worked from this axis as well as from that side and this is an important angle as well because this is the angle you see your character from a lot so make sure that before you move on you actually uh take the time to kind of

**1:00:13** · look at it from all angles and polish up uh each section you know of these feet from this other axis as well but we're going to focus primarily on the up and down oh one more thing you'll notice that I have a new layer here you know and I didn't want to leave you hanging wondering well what did he do between scenes here I actually uh kind of modified very slightly the upper body pose just a little bit um by creating a

**1:00:42** · layer and just adjusting it I believe I pushed it down a little bit added just a little bit of rotation to just get him leaning um uh forward and down a little bit more and a little bit to the to the left um it was nothing too crazy but I did that by just uh adding most of these upper body elements to this layer here we can actually see what's in this we can say select objects um and then I

**1:01:07** · just added a single key frame here to sort of fix the pose in the way I wanted that's a nice way once you're getting towards the Polish section of animations to just change a little bit or tweak a little element um without you know destroying any of the previous work that you've done okay so so now we're

**1:01:26** · actually going to do another layer though we're going to create an up down layer we'll call it up down and the problem that we're trying to solve now is it's it's probably easiest to see from this angle is when I play nothing really seems to respond to

**1:01:43** · the up and down motion of the character I mean this huge mass this whole character up here the the spines the shoulders the arms all this heavy stuff just seems pretty pinned to it so when this goes up it goes up and and vice versa so I'm going to add a little bit of Animation in this axis to try to soften that out and make the character feel a little looser and more organic and we're going to use some of the same sort of um uh uh offsetting rules that

**1:02:12** · we've used in the past okay so I'm going to use a little trick here though I'm actually going to extract the uh curve of the up and down motion from this root and use it as a starting point for rotation and translations on some of this upper body okay so let's find our Translate Y

**1:02:33** · which is going to be our up and down from our base layer we'll get Translate Y here and I'm going to just select this curve and hit edit copy and then hop back up here to my spine joints go back up to my up down curve and add these guys to this

**1:02:53** · layer I'm going to go make sure we have a key frame set at zero on it and what I'm going to do is I'm going to copy that animation of my up and down uh on my on my root into this rotation axis on

**1:03:10** · the character to get that curve sort of uh of the translates um the same as the the corresponding rotation on the spine okay and so that's going to be my rotate X so how I'm going to do that now is I'm going to go here and grab my rotate X on all of these uh oops we'll grab rotate x

**1:03:36** · uh set a key there there we go rotate X come on give me the right there we go okay um I still have the whole character selected I don't want the whole character there we go uh we'll grab my rotate X again let's try this 20th time is the charm set a key on it there we go now but I got to grab them for all three

**1:04:07** · controls okay so now I have the rotate X of my three spine controls and we're going to paste this edit paste that curve into here now this is probably going to look crazy like if we scrub it um our character is probably going to be jelling all around right and that's fine because we just wanted the core motion now we're going to modify it to be something a little bit more subtle by just scaling this Curve Way Way Down

**1:04:36** · okay now it's kind of in the axis we want right so when the character goes up in this direction the uh animation is bending forward let's see so this axis here is going up so it's like bending back as it goes up so all of our all of our information translated we just want to actually have the uh the inverse right that is when this goes up that it actually drags the characters uh torso

**1:05:10** · the the spines down so what we can do is actually just hold down r or hit R to change this to scale and hold down shift and we can middle Mouse drag to just invert this whole curve okay and I'm actually going to make it a little bit more exaggerated just so that we can um as we do our editing and then I'll subtley it at the end okay now we're going to do our offset trick that we have used all over the place so we're going to make this uh curves cycle

**1:05:42** · curves cycle into infinity and we're going to just start offsetting these by a little bit okay we'll start once again with just I always like to start with um uh one one frame offset uh let's make sure we have the right layer selected there we go and then this last one there we go okay so now they're

**1:06:06** · offset a little bit and then let's see if we can scrub and see what that looks like so the motion is kind of right I think the problem at this point now is that it's just too big so let's try to make this a a little bit more uh subtle again so we'll scale these down to almost nothing we don't want this to be

**1:06:33** · crazy obvious we want it to just kind of feel like it's naturally uh built into there right that might even that's get that's looking pretty good I think I might make it a little bit even more

**1:06:49** · subtle there we go now we're getting to starting to feel just a little bit of that right which is I kind think what we want I might even try you know nudging it a little bit One Direction or the other to kind of see what it looks like but if we have to set it even more but I kind of like where that's at it starts to add you know it's it's subtle it's not it's not going to be incredibly like crazy or anything um but what we could also do one more thing is

**1:07:19** · we could scale uh it per joint a little bit so that it kind of gets a little bit more extreme the further you get away from the root of the character so essentially this first spine's going to just have a little bit up and down the next one's going to have a little bit more and then that upper one's going to have even a little bit more um and because I don't want the character to lean forward quite so much at the lowest point um I'm going to bring this back down just to grab all

**1:07:52** · these and pull them down a little bit just to better maintain that that I had initially created and now I'm getting something that feels pretty good honestly um if I just sort of look it's a little subtle but if you look here you kind of see now this nice natural little uh up and down uh on on the chest okay now the last thing I'm going to do is try and do kind of the same thing with these shoulders okay um I'm going to just kind of focus

**1:08:22** · in this front view here though and add these to my up and down um and for this I'm actually just going to kind of uh you know eyeball this um so I'm going to set a key frame

**1:08:38** · basically split this into quarters okay and I'm just kind of looking at where the most extreme downs and ups are okay so in you know relative to where the shoulder position is so here's kind of the lowest point right and here's kind of the highest you know happens to be kind of at those demarcations so what I'm going to do is I'm actually just going to add some simple translates to these I'm going to bring these down and a little bit of rotation to

**1:09:08** · bring these down at the lowest point and at the highest point I'm going to do the exact opposite I'm going to bring them up a little bit and also rotate them up a little bit and I'm going to copy these so at our other highs we'll go we'll copy to here at this high here at this high and then I'll middle Mouse drag this low to my other low okay

**1:09:33** · now those are these are not offset at all at this point it's literally the shoulders are at the lowest at their lowest point in the animation that they're at the highest and their highest point if we wanted to kind of have some it to be offset a little bit we're going to have to do the same exact thing that we've been doing uh all along here which is to actually add some uh you know offsets to these okay so let's go to our uh up down here and oh man I

**1:10:00** · might have all along had these just only moving in one axis um I'm going to have to do that really quick just again it's not too difficult let's actually remove uh these from it and I'm just going to do that really fast we'll just review it do it one more time let's add

**1:10:17** · those guys back to there okay we got to deselect all those axes so I don't accidentally just uh animate them in the same axes again so we'll set our key frames there at our Highs at our lows um and we'll just do this one more time our lows copy that over and we'll grab our highs give it a little little bump up there we go those High okay there we go now we should have

**1:10:49** · animation on all our axes so same as always we're going to edit our curves and make these cycle ever boom boom and let's now offset them by a couple frames let's start with two so that when the characters coming up they're kind of dragging down a little bit and then as the character's coming down they're dragging up and two might have been too much so let's try bringing them back one there we

**1:11:19** · go and you know I'm not sure if I love that or not it might be that it's just too much it might be that it's um doesn't quite match up to the uh sort of cadence of the up and down of the body like let's go look at the translate on this uh the Translate Y on this base layer so you can see that this kind of has like a Cadence to it that we're not matching and that might be the problem which is that you know the push off is actually like pretty fast and then it kind of drifts down so probably if I

**1:11:53** · um uh wanted to I can turn try to kind of match that here which is that uh so our Highs are actually these happen to be these low peaks in the case of this this shoulder right um and our uh lows

**1:12:08** · are actually our high peaks let's copy this again this is also these aren't quite the same so let's make sure that all these are matching here before I uh make myself crazy we'll copy and paste these over there now they all match so if we wanted to we can probably kind of match that by grabbing all of our high they're like shallow peaks in the graphit OR but they're the highs on our shoulder and bring them back a couple frames to kind of better match what happens on the um character

**1:12:46** · here and I guess we actually probably want to do the inverse because we want the actual lows it's like it's like the character's going up fast so it's getting dragged down faster I was kind of thinking of it backwards so I think what we actually want is to pull these a little bit earlier something like

**1:13:09** · that there we go okay so once again that's kind of subtle it's just going to be kind of mixed in there but it loosens up the shoulders in a way that feels a little bit uh more natural I think overall uh so that's all I'm going to do with with the up and down on the upper body and now we're just going to do some final polish all around on this to kind of get this game ready and finish it up here we

### 09\. Final Polish

**1:13:34** · are on the last leg of the animation portion of this and we're going to just do a little bit of final polish before we put this in the game now I would love to tell you that I have an incredible uh strategy and tactic for highight Polish animations but it's really not that glamorous the reality is is I just look at it see something that's off and fix it that's really it um and the best strategy I can offer is

**1:13:58** · to try to focus on one body part at a time and kind of work your way through the character I know a lot of animators like to start with kind of the root of the animation and work their way out and runs I like to kind of focus on starting at the feet and moving my way up just because the feet tend to be the uh you know where all the mechanics of the Run start and they kind of push upwards through the character so I'm going to kind of start down this I'm not going to show you the entire polish for this cuz it would be like an or plus long um but hopefully after a few minutes of just uh

**1:14:29** · me sort of you know looking at one part of the body polishing it a little bit and moving on you can kind of get the idea and then I'll show you the final animation at the end let's get some polish on this okay I'm going to start with the feet here um and you know I'm just kind of looking at them from each angle trying to figure out I what can I

**1:14:51** · fix up about these to try to just make them feel a little bit more finalized and the first thing that stood out to me and probably the biggest one you know I actually like looked at these from the side and generally I like the mechanics here pushing off everything the the feet generally look pretty good but when I looked at them from this angle I noticed that they were kind of just on Rails completely they're in one axis entirely

**1:15:14** · they don't deviate in out anything which is not exactly how a run uh Works in real life so what I want to try to do is add I'm going to focus on this foot as starting point I want to add that there is a little bit of a inout motion that as the foot kind of pulls forward through the air during this portion it's actually moves in towards the center a little bit um and then once it hits the ground of course it is kind of on Rails

**1:15:42** · um because the foot gets planted but hopefully that will add like a little bit of inout loop to those feet that will help it feel um like at least I put some thought into uh the the motion of them there so how I'm going to do that is we're just going to go down and make sure that we are on our base layer here I'm going to kind of lock out all these other layers so I don't accidentally uh junk those up as

**1:16:07** · I'm working um and let's make sure we have the right foot actually selected okay so I'm going to start with it on the ground here and as it comes back and pushes off I'm going to start to pull it in this direction and actually have the the push off be a little bit more diagonal and actually I might even I think I'm going to do that even at this pose and I'm just sort of scrubbing I'm literally doing this frame by frame at this point um so I'm really just sort of animating

**1:16:41** · this straight ahead and I could do this on a layer if I wanted to be a little bit uh safer but I'm like not too worried about it cuz this axis in my animation was not super great to begin with so I think by doing this it's only going to improve my animation um there's

**1:17:01** · a little chance of me really uh making any irreparable mistakes that are going to make it worse than it was which was that it had like no motion back and forth in this axis so I'm just kind of Straight Ahead animating it into uh to

**1:17:18** · like bring it in a little bit as it comes forward and I'm dragging the toe as I do that right uh and then it kind of is going to straighten out here now I think I might be going a little too far in so I'm going to just massage this back out a

**1:17:35** · little bit I want this motion to be somewhat subtle I don't want it to be uh you know super crazy and obvious that these feet are sliding in during this okay let's copy that over to our start here and now keep carrying that over and we're going to carry this motion over all the way till uh we contact the ground

**1:18:04** · again and here maybe by the time it gets to this point it would be like kind of straightened out again so let's scrub it and see what that looks like okay I like how that kind of pushes off there but I feel like it would now start flicking out maybe a little bit faster this be like straight and actually start curving that way as the toe kind of overshoots uh being pulled off the

**1:18:34** · ground and then at this point it might you know be coming in like that there we go so let's play it and see what that looks like now so that actually feels pretty good like it adds a little bit more of an organic feel to that and I think if we propagated that to the other side we'd have something that's pretty nice now just to uh you know make sure that I didn't do anything too wonky I want to look at that curve uh in this axis my

**1:19:08** · translation okay so we hit the ground here and it tracks you know as we'd expect but I did do a little bit of wonkiness here so I'm just going to you know sort of massage this out and make sure that my curves aren't you know bumpy or crazy because that's going to that's going to end up being um noticeable in the animation like if I

**1:19:31** · if I do a big change like this where it kind of comes here plateaus and is in the same exact axes for all these frames that's going to be noticeable to the naked eye in the animation so I'm just going to try to you know get this to feel like the curves are nice and smooth to me while still keeping the idea I had which was that that foot kind of comes in and out and there we go that's feeling pretty now I could probably do the same polish on the curves of all the rotations of the foot but I'm not going to do that at this point um now listen

**1:20:04** · at this point I'm not going to go through and show this process on every single part of the body I think what I'll do is just talk about the things that I would update about this and then I'll kind of go do them off page so the things that kind of stand out to me as

**1:20:20** · uh needing a little bit of Polish uh the body here doesn't really have any back and forth Motion in it so I probably add a little bit of a sway to the character and propagate that to the upper body too so we get a little bit of this maybe even that would end up being propagated down to the arms a little bit too I'd kind of have to see obviously I'd apply the same um logic that I applied to this foot to this one over here and then I think the other thing that's kind of missing is uh some like counter animation of um this pelvis right here

**1:20:50** · the pelvis feels very pinned and doesn't really feel like it you know responds runs much to what the legs or the upper body is actually doing um so I probably add a little bit of animation on that to make it feel a little bit more organic um from the side view I didn't see anything that stood out too much except that maybe adding a little bit of overlap on the head might help loosen

**1:21:13** · that up a little bit but generally I think that with a tiny bit more polish this animation is close enough that it's probably worth putting it in game at this point and you can always polish stuff uh and polish it and polish it and polish it but I think that once you get to the stage like this where you're really getting talking about noodly bits it's probably past time to actually see

**1:21:34** · it and check it out in game and make it sure it works before you spend a bunch more time on it so here is what I ended up with after a little bit of Polish this is just a play blast of the animation and you know I'm pretty happy with how it turned out for the amount of time that I put into it but as I noted there could always be some improvements and just because you've sort of got up an animation to the point where you're going to put it into the game doesn't necessarily mean that you're never going to revisit it so don't think that you need to like take everything to the nth

### 10\. Reviewing The Final Animation

**1:22:05** · degree before getting into the game in fact you should try to be getting things into the game as quickly as you can um once you've sort of got the idea of it there now what would I improve about this you know I'll sort of do like a little bit of critique of my own animation right now uh I think one thing that kind of stood out to me is that you know while the character has a nice like up and down motion there's very little feeling of the character sort of lunging forward you know on these um when the character pushes forward here you know

**1:22:34** · the uh let me pause this um when the character is like pushing forward I might try to actually have the character translate forward a little bit so you get this little uh uh like lunge forward with the upper body as opposed to right now the uh the hips and the whole upper body feels very like pinned in this single axis um uh another thing that stood out to me um was that the uh uh

**1:23:05** · legs on these flick backs could maybe uh I could maybe uh increase the texture of the spacing of how they come forward so that like they when they when they push off and and flick up like here let me

**1:23:20** · see like here I could um keep them back a little bit longer have them speed through this section and sort of uh uh linger here a little bit longer to get a little bit more of like a ease in ease out texture to them coming forward um similarly I think I could probably do something similar to the uh arm here as

**1:23:41** · as well uh you know because it kind of has some of the same problems um but you know I I'm pretty happy with how this uh turned out I used a lot of different processes on it so uh it was is a nice little exercise to try out a bunch of different things so let's close down this Maya portion and head over to Unreal now we've put a lot of work into this run and it's in a pretty reasonable place to export and put into our actual

### 11\. In-Game Implementation

**1:24:12** · game so we're going to export this animation import it into unreal I'm not going to walk through all that we've done it a lot of times before and then we're going to hop into the animation blueprint and I'm going to talk to you a little bit about creating variables and building your first States and a little bit of logic to actually get this run to work so let's go over into unreal and

**1:24:32** · we'll dig a little bit into the more uh technical implementation side of this okay so here we are in unreal I imported our run animation into here and overall it looks pretty good I mean it could always be better there's always things that we can improve but I think it's in a pretty great place for us to hook up and actually see what it looks like in game before we spend tons more time noodling on it so let's hop over to our animation blueprint um and actually if

**1:24:59** · we are here in our animation preview window we can get to that blueprint by just clicking right here on our blueprint tab you kind of see you can go go back and forth between the mesh skeleton and blueprint okay uh if yours doesn't look like this when you open it up you might be in a different part of the animation blueprint so go ahead down

**1:25:20** · here to the animation graph in the bottom left click it and it'll bring you right to here and as you might recall from our previous episode our character the only thing it knows how to do right now is play its idle animation we have done no other logic in here nothing okay so what

**1:25:36** · we want to do is we actually want to create what's called a state machine that can manage our transition between idle and run based off some of some uh data that we're going to plug into it okay so let's rightclick here and we're going to create a state Machine by typing state machine you'll see there it will give us context add new state machine great we'll click on that and up here in the top right you can give it a name that makes a little bit more sense let's call this uh Locomotion State machine all

**1:26:09** · right and let's plug that into this to replace our idle and then doubleclick to enter into this now this looks a little bit different um this is its own kind of editor and as an animator you're going to probably spend a reasonable amount of time in here editing creating new States creating transition rules and whatnot so

**1:26:30** · let's rightclick first and sort of familiarize oursel with this we can add some States into here let's click add State and we'll make this our idle state by naming it idle and we want to do one more State too because we want to be doing transitions between idle and Run Okay so let's right click again and add a second state and call that one run now you see that there's this little entry node here and this is where uh

**1:26:59** · it's basically asking like what is the first thing in this state machine that you want to enter when the state machine starts and I think generally since we're not moving when we start the game we probably want to enter into to idle and you can click this little arrow drag off to it and it will give you this little uh indicator that says where do you want to go we want to go into idle check mark okay now right now if we were to play it

**1:27:24** · would just go right into Idol and it could never make it to run because we haven't built any transitional rules between these two okay so that's what we're going to do now we're going to click on the border of idle we're going to drag off again create this little arrow and Link it up to the run and you'll see that this now generated a transitional rule between these two states okay if you click into this right now it's just like a normal blueprint that we could say well what are the rules we want to uh uh dictate whether

**1:27:56** · you can go into this transition or not now we want to be able to go from idle to run when we're moving but then if we stop we also want to transition back to idle and right now this transitional rule is Only One Direction so it's saying if I go from idle to run I'd get

**1:28:14** · stuck here I'd never have an opportunity to go back so we also want to create a transitional rule going back in the other direction now let's take a moment actually plug our animations into here by double clicking into idle we can drag off of this and type idle to get our idle animation plug that guy in there and similarly we'll double click into the Run drag off of this and type run

**1:28:38** · and plug that guy into there now if we play right now we're still only going to be stuck in this idle because we don't actually have any rules in this transitions these transitions will never trigger because we've put nothing into them and as it stands right now we don't even have the information to put into them because what we want to know is basically am I moving or not so that's what we're going to do next we're going to compile save this you see it warned

**1:29:03** · us that the transitions can never be entered and then we're going to go over to our event graph okay but we're going to do that by going down here to the bottom left again and clicking the event graph now the event graph is a more open-ended blueprint where we can sort of calculate data set variables and just generally create variables in logic that we can use to drive our state machines okay so I'm going to walk you through how we're going to get the speed for our character and then set a variable called is moving

**1:29:37** · that we can use in that transition to decide whether we should go into our run or not so the very first thing is to rightclick and we're going to type begin play and we want to get this event for begin blueprint play okay this is basically saying when this blueprint starts do whatever I tell you to after this and what we're going to do here is we're just going to establish some basic information that we're going to use uh

**1:30:05** · to on each tick of the blueprint each time the animation updates uh to change some variables here and the information that we want is we basically want to get the the sort of Pawn of the character so that we can pull the movement information from it so if you right click on the graph here here we can type get Pawn owner and it's going to try to

**1:30:29** · get the pawn owner we want to check if this thing is valid because if it's not valid if for some reason this fails to identify this we don't want it to do a bunch of stuff based off of that we basically want it to like end there so we can drag off of this and type is valid and do a check just to make sure it's valid there we go and then we want to

**1:30:52** · use this to set a VAR able because we don't want to every time we want to get the information from this Pawn have to say try get Pawn owner try get Pawn owner try get Pawn owner we can do is we can just establish who the the pawn owner is right here right now we can do that by dragging off of this and saying promote to variable we can name this variable up here on the top right we'll call it pawn owner we want to make sure that this is plugged in here if this is valid that actually gets set great so we've

**1:31:23** · established on blueprint begin play it's going to check and try to get our Pawn over owner and if that is valid it's going to set this local variable that we can reuse to pull information from so now we're going to go down here to on blueprint update now this is basically saying that every time my animation blueprint updates tries to update the pose it's going to execute whatever logic I put here okay basically every time the game ticks and looks for information it's going to do this

**1:31:54** · so let's grab our Pawn owner by dragging it from down here and we'll say get Pawn owner just to be safe again we should probably check if it is valid and maybe that's not necessary but it's a good practice to just sort of check if things are valid whenever you cast out and look for some external object and then we want to pull off of

**1:32:20** · this well actually let's first let's do a little organization here let's pull off of this I'm just clicking on this Arrow I'm pulling out and saying uh sequencer okay now a sequencer is just it's just purely an organizational tool it says do this then do this then do this then do this and you can add pins onto it into perpetuity to uh just keep

**1:32:42** · doing things so that you don't get these graphs that just extend out to the right forever and ever okay I'm going to grab my Pawn owner again we're going to get it and this time we're going to drag off of this and say get velocity and this is going to get the velocity Vector values in every

**1:33:01** · direction so it's going to get the Velocity in X Y and Z and that's the kind of information we want because we want to be able to check if the character is moving so once again let's promote this to a variable to use later and let's just call this um I character velocity vector and we will plug this into there

**1:33:26** · straighten these guys all out so it's nice and organized now this is going to get our ve our velocity in literally every Direction X Y and Z and we only want to know right now the horizontal direction we don't want that Z axis because that's going to confuse us um you know we don't

**1:33:48** · actually want the character to be running if they're moving up down the road we probably want to have them be jumping or something but right now we basically want to filter out that vertical axis and only get our horizontal X and Y combined velocity because that'll be like how fast we're moving along the ground so let's now get

**1:34:07** · that character velocity that we just created okay and what we're going to do is we're going to break it apart into its three axes and pull out only the information that we need so you can drag off of this and actually type break and break this Vector out into its axis these and then we want to reassemble it now but only with the information that we want which is the XY so what we want to do now is actually do a make

**1:34:37** · vector and plug in just our XY leave at our Z and now this is going to be uh our horizontal movement only okay and what we're going to do now this doesn't make quite as much sense but we're actually going to get the length of this oh let's see uh sorry it's just

**1:35:04** · length come on Vector length is what we want there we go now that terminology might not make much sense but essentially what it means is kind of get the intensity or the value of how fast that Vector is going in those axes right which is the exact information we want we want to know uh how fast am I moving

**1:35:24** · in the combined XY axis right how fast am I moving horizontally and so this is actually going to be our horizontal speed so we can pull this off and promote it to a variable and call this horizontal speed okay let's plug

**1:35:42** · that guy in right here and we can double click on this line to actually create a PIN to kind of organize this a little bit better now we're not quite done yet because we we have the horizontal speed but we haven't actually checked whether

**1:35:57** · it has a value or not so what we want to do at this point is we want to create a condition that says like well do I have any speed or am I just standing there having zero speed right and we want to create a piece of data that we can then use in our state machine so what we're going to use is called a branch condition so we're going to pull off of this and type branch and this is basically saying is

**1:36:20** · this statement that I'm going to plug into here true or false and the statement we want to know is is my horizontal speed greater than I'm going to use the greater than sign to say float greater than float is it greater than zero and if that's true we want to set a variable to say I'm either moving

**1:36:38** · or not moving so down here in our variables we're going to hit this plus sign to create a Boolean a Boolean is just a true false variable and we'll name this is moving and we're going to pull this onto our graph and say set and if my character is moving if this velocity is greater than zero so if it's true we want to say yeah I am moving and then we'll copy paste this contrl c contrl

**1:37:09** · v and if it's not greater than zero then I'm not moving all right so there we have established all the data that we need and just to review it we got our Pawn owner and establish that as a variable use that to pull off the velocity information in every direction filtered out just our XY axis to get the

**1:37:31** · horizontal speed and then checked if that speed actually had a value greater than zero to set our is moving or is not moving variables so let's compile save and now we're going to go back over into our animation graph and actually use these to drive our state machine so we can go back down here to the bottom left and click Locomotion State machine and now we have the information to put into these transitional rules okay so let's click into this this is going to be idle to run so the rule for idle to run is

**1:38:04** · that I is moving so we're going to get this and say if I moving if I'm moving I will go from idle to run and we want to do the exact inverse for this other transitional rule so in this one we're going to get is moving again but now we want to say not

**1:38:24** · and you can literally type not and say I am not moving so what this says now is I'm going to enter into the state machine I'm going to idle and then if I'm moving I'm going to transition into my run if I'm running and at some point I'm not moving I'm going to transition back to my idol okay now we're going to go back up one level to our animation graph make sure it's all plugged in and ready to go we can delete this old idle there we go compile save and let's take

**1:38:54** · a look at this in game and see if it all worked so we hit play our character is standing still and if we move around it is now playing our run animation and looks pretty great look at that so we've just built our first state machine for this character with some basic idle and

**1:39:17** · movement States okay and we can actually watch this happening real time if we take a look at this kind of pull this into view uh and look at our state machine we can see that we are in our idle State and if we start moving oh I got to watch the right thing if I click on this little arrow I can watch my third person

**1:39:40** · character in there if I uh move around you can see it transitions into the Run State and when I stop it transitions back likewise we could go out to the event graph and see this happening in real time uh from the data perspective we can watch here and as these values change you see it ticks to is moving is not moving based off of whether or not I have a horizontal speed so that's where we're going to end for today uh we animated this uh run and

**1:40:15** · got it into the game and it looks pretty cool