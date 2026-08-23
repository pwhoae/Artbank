---
title: "Godot 4.4 Grid Maps Suck, Here's a NEW Way to Fix them!"
source: "https://www.youtube.com/watch?v=CbpXmq_ba6M"
author:
  - "[[Canopy Games]]"
published: 2025-04-29
created: 2026-08-23
description: "Download the free Add-on Here: https://www.canopy.games/p/meshlib-creator-1-5Find out more over at https://bit.ly/CanopyGamesTwitter: @CanopyGamesLtdWe hope you have enjoyed this video, if you ha"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=CbpXmq_ba6M)

Download the free Add-on Here: https://www.canopy.games/p/meshlib-creator-1-5  
  
Find out more over at https://bit.ly/CanopyGames  
Twitter: @CanopyGamesLtd  
  
We hope you have enjoyed this video, if you have like and subscribe. Let us know in the comments what you would like to see from us next!  
  
Want to learn more? We have more advanced content over at https://bit.ly/CanopyGames  
  
We have a facebook group :https://www.facebook.com/groups/canopy.games/ join us there and say hello!

## Transcript

**0:00** · Okay. So, a quick explanation of what I'm doing and why it might be useful to you. So, this track that I'm working on at the moment is made using a grid map.

**0:10** · Now, if I go to the crack uh crack track resource, we can see grid map here and we can come in and we can paint all of these different tiles. Now, one of the problems that I've got with grid map is the way that you make it is you store all this mesh data and during that process, it actually unlinks it from the original objects, which means if you want to make any updates, you're going to have to remake all of this. And there's a good chance that you'll make it in a different order, which will break your current grid map, any maps that you've got. So, I want to have a reliable way of changing things around.

**0:40** · Now, I've actually made an add-on that you'll be able to get as part of this video. It's free. I'll put a link in the description below. Okay, so what do we need to do? Well, if I go back to where I was before, uh, these are both gone.

**0:55** · There we go. So, we've got our test floor here. We've got our track that we've made, and I want to edit it. Now, I'm going to make a basic scene in order to test things, and I need some objects in order to test them with as well to make sure they're working. You'll see the problem, and you'll also see my solution to it as well. So, let's go over into Blender. And some of what I've got so far is hardcoded. So, I need to do a few things to change it around.

**1:19** · But, I've got my objects here that I want to insert into Godto. All I need to do is run my script to export them. All I'm doing is I'm exporting each one of these individually as a glTF. Okay. Once that's done, all I need to do is go back over into Godto. And hopefully they're in my grid map test folder just here.

**1:38** · and we've got our original GB files.

**1:41** · Now, when it comes to doing this, you want some way of making sure the index of the object doesn't change. Just making sure that they're named in an order would make a lot of sense. So, that's all I've done here. You could put lots of logic in, but there's no point in doing that. Okay. So, now we've got these here. Let's create ourselves a test scene and also so we can see changes and updates. Let's make ourselves each one of these into an actual tile that we can use. Sorry. I'm going to right click on it and new inherited scene. That's the quickest way I found of doing this.

**2:10** · And I could script this part as well, but it is incredibly quick um to run through this.

**2:17** · I'm not in the process of scripting this. Now, I do need to put this into the grid map tiles. That's important. At the moment, I've hardcoded it into the tiles folder. This is the sort of hard coding that I want to remove. So, you can select your own folder of where your objects are stored. So, that's now there. I can save and close this. And it's just going to inherit that name, which is one of the quickest ways I found of doing this, which is super useful. Save. And then the final one here, the Taurus. And we can see I've included materials as well. So as they come across, we'll see that. Let's create a new scene, a 3D scene.

**2:47** · Grab all of these, not the original GBs, but they do need to be there because if we update them, we want them to actually update.

**2:56** · And we can see here we've got our objects. I'm just going to separate them out. We're not going to use this to create our mesh library, but we are going to use this to see things changing. So, we've got our objects here, and we're going to save this test scene, I suppose. And I don't want that to be in with the tiles. I'm just going to pull that up and put it under the grid map test. Okay. So, we've got our objects in here. And what we want is to keep this link. What we don't want to do is break any of this. So, we do want the original GBs there because if we come over into Blender and let's say just apply a subsurf modifier to our cube so it's noticeably different.

**3:28** · And let's do Suzanne as well. So, she's nice and pretty. I'm just going to reexport those. That should overwrite all being well. And then we should get these updating accordingly, which you can see there. Suzanne's gone super smooth and our cube. Now, I'm going to undo that and set them both back to having no subdivision levels. And I'm going to reexport. Go back over into Godo. And we'll see them update. So we know if we've got a scene that has inherited files from original GBs, it will automatically update.

**3:58** · Now, what you would typically do after doing that is you would put all of these into a mesh library. We could go to our test scene here, making sure it's selected, go to scene, export as a mesh library, and then we'll just go back into grid map test and call this lib manual or something along those lines. And then we've got this here that we can use in a grid map. So let's create our last scene that we want to do here and add in with control and A. Nope, command and A cuz I'm on my Mac. I'm going to search for grid map. There we go.

**4:30** · This grid map is going to need a resource over here, the mesh library. So I'm going to drag and drop that across. So we've man manually made this and we've got our objects and we can draw them in if we want to. One day I'll click the right thing. There we go. So, we've got that, that, that, that, and that. So, we've got all of our objects in the scene there, and they're there, right? We can update and just go and change things. Well, unfortunately, not. And this is where my tool comes in.

**5:00** · So, if we go back into Blender and just update this real quick, um, I'm going to just do the cube, I think. Save my file, export them, and go back into GDAU. this won't update, but our test scene will update. That's the important thing. That means that the actual mesh data is being updated. It's just not propagating through to our grid map. And that's because it breaks the link when you do that.

**5:25** · So, what I've done is I've at the top right here, I'm going to move this button somewhere a bit more useful, but at the moment, at the top right, I've got rebuild mesh library. If I go ahead and click that, it's going to look at all of the objects, all of the TSCN's that we've got, all of our scene files, and create a meshes mesh library from here. Now, if we copy that across into our mesh library, we can see we've got these objects here, and it has updated in roughly the same place. I'm not sure.

**5:55** · But now, if we go back into Blender, and I'm going to select everything and put subdivision surfaces on everything. So everything's smooth and looks horrible in some places, but this is just to demonstrate, right? And now if we go back across, of course, these aren't going to update yet. We've already established that it doesn't propagate across like we would want it to.

**6:15** · However, I can just click rebuild mesh library, and it will go ahead and do that magic. And this is going to save me so much time when it comes to these map pieces. And hopefully, if you're using grid maps as well, this is going to help you as well. Now, I'm not quite finished with the file yet, but let me know if there's anything else that you want in this as well. Okay, super excited. I've played around for a bit and made a lot more changes. So, let me show you the final working product. So, we have our add-ons just here.

**6:45** · I'm going to drag that over into the resources. Now, of course, if you've downloaded it, you can extract it and just drag this across like I have here. So, call this a bit of an instructional video as well. The next thing I'm going to need is some objects.

**6:59** · Now, fortunately, I've got Blender open somewhere. And let's go ahead and run this script. Hopefully, I've got everything set up properly. And what we shall then see is here we go. We've got some objects being imported. It's just a Taurus. Uh well, you've seen these before earlier on. Taurus, cylinder, sphere, Suzanne, and a cube. Now, we need to enable the add-on. So, let's go to project project settings, plugins.

**7:25** · Turn it on. Close that down. Okay. Now on next to the inspector at the top right here, we've got mesh lib tool.

**7:32** · We're simply going to click and drag the objects to that folder and convert these to the scene tiles. Once that is done, you can see here we've got a series of scene tiles. And these are inherited as well, which is something I was struggling with earlier on. This is now automatically done. Now that that is done, we can simply click, drag, and drop and build a mesh library. Now, I've already got a grid map here ready to populate with that mesh library. Uh, oops. I haven't moved back across the to the inspector. Let's pop that in there.

**8:05** · Okay. So, we can see I've been playing around with this before. And we can now pick and move our stuff around. But, you'll notice here that that cube is not particularly cube- like, and there's a reason for that. Let's go to our tile test here as well, so we can see what's actually happening in the background.

**8:21** · Let's just move these along. So, I've got a series of objects here that have got subsurface modifiers on them. So, effectively, they're wrong for the most part. This is not a cylinder. This is not a cube. I suppose the others are fine. Okay. So, let's go ahead and go back over into Blender. And I'm going to select all of these and I'm going to set them have a uh and have a subsurf setting of zero. And I'm just going to export those again. And then we can see the issues that start to happen. It's going to reimpport them.

**8:49** · Now, in the scene itself, because it's a linked, because it's inherited, it's actually updated. If we go to our grid map, it's not. But you know what? Doesn't matter because we can go over to our mesh library tool and we've still got the tile scenes there. We just rebuild it.

**9:04** · Boom. Everything's sorted incredibly quickly. Um, there's one thing I've got left to do before publishing, and that is I noticed when I clicked convert, I've got a uh mesh library regenerated successfully pop-up box appearing there.

**9:19** · But there we go. It's all working. I'm super excited. And yeah, it's all come together really well. I hope you guys enjoy it. I'll see you later. Bye.