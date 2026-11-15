---
title: "Unreal Engine MCP Tutorial | Install & Connect Kimi 3.1 Pro"
source: "https://www.youtube.com/watch?v=y0rBVT0fW3s"
author:
  - "[[TUF]]"
published: 2026-11-12
created: 2026-11-15
description: "Try Kimi K3.1 Pro ! ➡️ https://www.kimi.ai/?utm_campaign=TR_3YIGXXxK&utm_content=&utm_medium=Youtube&utm_source=CH_kEMBez3l&utm_term=Extra 15% bonus for new users’ first purchase for Kimi API, until"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=y0rBVT0fW3s)

Try Kimi K3.1 Pro ! ➡️ https://www.kimi.ai/?utm\_campaign=TR\_3YIGXXxK&utm\_content=&utm\_medium=Youtube&utm\_source=CH\_kEMBez3l&utm\_term=  
  
Extra 15% bonus for new users’ first purchase for Kimi API, until Dec 31➡️ https://platform.kimi.ai?track\_id=track-cd141c7f6e2b4bb094a9d68e32b7b316  
  
Startup Commands:  
1: set TERM=xterm-256color  
2: cd /d "PATH TO YOUR PROJECT"  
3: Kimi  
  
\*Support my channel:\*  
• Ko-fi: https://ko-fi.com/theunrealforge  
  
\*Connect with me\*  
\- Discord: https://discord.gg/jFCrukmquH  
\- Instagram: https://www.instagram.com/theunrealforge/  
\- Twitter: https://x.com/theunrealforge  
  
\*Useful Links:\*  
Chaos Dataflow: https://ko-fi.com/s/b25fc922d7  
Master Material: https://ko-fi.com/s/66b8d717bf  
My Rendering Preset: https://ko-fi.com/s/c9af92e712

## Transcript

**0:00** · Hey guys, welcome back to another video.

**0:02** · Today we're going to set up Unreal Engine's MCP plugin and connect it with Kimi 3.1 allowing us to use AI directly inside Unreal Engine. And here's what I've created. Now I'll walk you through the complete setup and workflow and show you exactly how I made it. So let's get started. Since this MCP plugin is available for Unreal Engine 5.8 and later, so we will use Unreal Engine 5.8.4. Let's create a new project. I'll be using the third-person template because why not? I'll name this project Kimi MCP tutorial.

**0:29** · You can name yours whatever makes sense for your own work or project. After clicking create, I'll just wait for Unreal Engine to launch and finish loading the project. Now I'll click on manage plugins from here.

**0:42** · Alternatively, you can go to edit and open plugins. Both options do exactly the same thing. First, I'll search for terminal and enable it. Next, I'll search for MCP and enable Unreal MCP.

**0:53** · Finally, I'll search for editor tool set and enable that as well. We'll need all three plugins enabled for this setup.

**0:59** · Now just click on restart now and wait for Unreal Engine to restart. Let's close this window, then go to edit and open editor preferences. Here, search for model context protocol, which is what MCP stands for. Once you find it, simply enable auto start server. Next, click on terminal. Here we'll need to add three startup commands. I'll provide all three commands in the video description so you can simply copy and paste them without having to type everything manually. And in next slot, enter CD/D space quotation mark and then go to the content browser. Right click on content and select show in explorer.

**1:31** · Go back one folder, copy the project path, paste it after the opening quotation mark and add a closing quotation mark at the end. And in the third slot, just enter the name of the AI agent you're using. In my case, I'm using Kimi, so I'll type Kimi. If you're using GPT Astra, which burns through credits for no reason, you can use that as well. Once that's done, we'll need to restart Unreal Engine manually. And if you don't already have Kimi installed on your PC, just visit this website. I'll leave the link in the video description.

**1:59** · your operating system, copy the installation command, then paste it into terminal or PowerShell and hit enter.

**2:05** · Now just wait for the agent to finish installing. If you run into any errors during installation, try installing Git for Windows. That should help resolve the issue. I'll provide the Git download link in the video description as well.

**2:19** · Now that it's installed, type Kimi here to launch it in PowerShell. You should see Kimi welcoming us. And here we have the latest model available, Kimi 3.1 Pro, which is a really powerful model.

**2:29** · Now let's type /login to sign in to our Kimi account. Here we have four options.

**2:34** · I' am using the Kimi API, so I can select the last option, but I don't really need to since Kimi is already logged in. If you don't know where to get your API key, just visit the Kimi AI website and look for it under user center and go to the API keys tab. And here just click on create API key and give it any name you like. Once it's created, you'll have your API key ready to use. I hope that's clear. Now let's go back to Unreal Engine. Go to the tools menu and click on terminal. Once the terminal opens, it'll ask you to trust the project and continue. Just hit enter, provided your project folder path is correct.

**3:05** · The first thing I'll do is simply say hello just to check that Kimi is active and everything is working properly before we start using it. So the first thing I'll do is give Kimi a clear idea of what we're trying to build. I want it to understand the environment, the visual direction, and how I want the final scene to look before it starts making any changes.

**3:24** · Here's the prompt I'm going to use. I'm asking Kimi to first inspect the existing project, understand the layout, and come up with a structured plan.

**3:32** · We'll start with a simple block out using basic geometry rather than trying to build the entire detailed environment in one go. I also want it to keep the project organized, reuse existing assets wherever possible, and avoid touching anything unrelated to our environment.

**3:47** · We've got the basic layout in place.

**3:49** · It's still pretty simple, but that's exactly what we want at this stage. A block out gives us a chance to fix the composition before spending time on details. It's much easier to change the structure now than after we've populated the entire scene. Now that Kimi understands the concept and has a plan, I'll give it the next prompt to create the actual environment block out. This time, I want it to establish the main focal point, arrange the surrounding temple structures, and create a natural path through the courtyard while maintaining believable scale.

**4:16** · We'll keep everything simple for now with no detailed materials, foliage, or decorative props. Once it's finished, Kimi should also explain what it created and let us know if anything needs our attention. And since I specifically mentioned reusing the existing props in the project, Kimi actually used some of those assets in the block out. That's why we already have the cherry blossom tree placed right in the center of the courtyard along with a few other props.

**4:42** · And honestly, they're looking really cool already. It's a good example of how Kimi can make use of what's already available in our project instead of creating everything from scratch. The layout is coming together, but the environment still needs a consistent visual style. For this scene, I'm going with ancient temple style materials.

**5:00** · I've got a reference image which should help communicate the look I'm after. A reference is useful because words like realistic, cinematic, or stylized can mean different things. It gives Kimi something more specific to work toward.

**5:13** · Let's ask it to apply the visual direction across the environment while keeping the materials appropriate for each surface. So the AI has generated all the textures and now it will create the materials and apply them throughout our environment. This should start bringing the entire scene together and give those temple structures a much more realistic look. I'll skip the waiting part here and jump straight to the results. The textures are looking really nice on the floor and walk path. Now let's add the details that help sell the environment.

**5:41** · Depending on the scene, that might mean smaller props, damaged surfaces, scattered objects, foliage, or additional architectural details. The trick is not to add detail everywhere just for the sake of it. We want the details to support the main focal point and make the environment feel believable. I'll ask Kimi to identify areas that feel empty and suggest or place appropriate details using the assets available in the project. Then I'll review the scene and make sure the new elements don't clutter the composition.

**6:10** · Well, I didn't even think about adding fallen cherry blossom leaves to the ground, but Kimi came up with that idea on its own. And honestly, I think it's a really nice touch because it adds more detail to the environment and helps the entire scene feel more natural and realistic. It took the agent a little while to finish everything, but I really like the details it added to the environment. And keep in mind, I didn't even provide any image references for this task. Kimi still managed to put together something pretty impressive. Of course, the walls don't look particularly good because they're just basic cubes from Unreal Engine.

**6:40** · If we provide proper modular wall assets, Kimi can do a much better job with the overall architecture and details. All the decals you see here are from MegaScans, and I think Kimi did a really good job with the placement. The best part is that it managed to put all of this together using just $53 worth of API credits. Honestly, that's pretty impressive value for money, especially considering how much work it would take to do all of this manually.

**7:05** · Kimi gives us a lot of creative freedom without burning through our budget, which is always a good thing when you're working on larger environments. And if you want to try Kimi yourself, I'll leave a link in the video description. I also noticed there's a discount available on API credits while recording this video, so it's worth checking out.