---
title: "How to Use Codex as a Designer"
source: "https://www.youtube.com/watch?v=GOtHFZnagO0"
author:
  - "[[Griffin Wooldridge]]"
published: 2026-06-08
created: 2026-07-20
description: "Get 20% off your Mobbin subscription: https://mobbin.com/griffinDesigners are now one of the fastest-growing groups on Codex - and most videos won't tell you how to actually use it for design work."
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=GOtHFZnagO0)

Get 20% off your Mobbin subscription: https://mobbin.com/griffin  
  
Designers are now one of the fastest-growing groups on Codex - and most videos won't tell you how to actually use it for design work. In this video I break down the full Codex workflow for designers: how to set up context so it stops generating generic output, how to use plugins (MCPs) and skills to shape the quality of what you get, and how to generate and iterate on a real UI from scratch. Then I give you my honest take on how Codex stacks up against Claude Code for design work.  
  
📩 Business:  
griffin@griffinwooldridge.com  
  
🌐 Connect with me!  
https://www.x.com/GriffinWDesigns  
https://www.instagram.com/griffinwooldridge1  
https://www.tiktok.com/@griffin.wooldridge1  
https://www.facebook.com/griffinwooldridge1  
https://www.linkedin.com/in/griffinwooldridge/  
https://www.griffinwooldridge.com/  
  
🔥 My top tools (some are affiliate links – thank you!):  
Base44 – https://base44.pxf.io/c/6539388/2477538/25619?sharedid=griffin&trafcat=hp  
Anything – https://anything.link/griffin-wooldridge  
Mobbin – https://mobbin.com/griffin  
Framer – https://framer.link/griffin-wooldridge  
Granola – https://go.granola.ai/griffin-wooldridge  
  
00:00 – Intro  
01:29 – Setup process  
07:07 – First prompt  
10:54 – Iteration  
14:45 – Codex vs. Claude Code  
16:16 – Outro  
  
#aidesign #uidesign #aitools #vibecoding

## Transcript

### Intro

**0:00** · Open AI just made Codex for designers official. Designers are now one of the fastest growing groups using it, and Open AI is shipping plugins, annotations, shareable sites, and more, making it a super exciting time to be using Codex as a designer. So, in this video, I'm going to show all of you designers how to use it, how to feed it context so it stops spitting out generic AI output, how to generate a real polished UI, and how to iterate on that first pass so it's like having a full-time designer working for you.

**0:27** · Then, I'll give you my honest take on Codex first Claude code for design work because they are actually more different tools than you may think at first. Let's get into it. Quick context if you've only heard the name. Codex is Open AI's coding agent. It runs in your terminal, your IDE, and now a dedicated desktop app. And it can take a task and run it on its own, read your project, write the code, check its work, and hand you something to review. The newest models behind it, like GPT-5.5, are tuned specifically for this kind of work with a faster low-latency version for quicker work and a deeper one for heavier tasks.

**1:00** · Here's the part that matters for designers. Codex started as a developer tool, but Open AI just confirmed designers, marketers, and other non-engineers are now about a fifth of all Codex users and are growing three times faster than engineers. So, they're shipping features aimed straight at that crowd. Plugins tuned to your role, ability to refine a result by annotating it in place, and a preview of shareable interactive sites and apps. So, this is no longer a tool you'll feel out of place when using as a designer. It's being built for you now. Let's get started in the Codex desktop app.

### Setup process

**1:29** · Just like most AI tools, the UI is pretty simple and easy to navigate. You have your sidebar on the left where you can start a new chat, search your existing chats, browse plugins, and more. All of your projects, like building websites or apps, are listed here, while the chat section basically shows you all the chat GPT conversations you've had inside Codex. Now, the single biggest difference between Codex producing garbage and Codex producing something usable is the context that you give it before you build anything.

**1:55** · If you open Codex and just say build me a dashboard, Codex will go ahead and build something for you, but it'll have no idea what kind of dashboard you want, what kind of styling you want, and you're almost guaranteed to end up with a UI that looks like every other AI-generated UI out there. The fix is to set up three things first. One, an agents.md file.

**2:15** · When you're starting a new project in Codex, I recommend you open this drop down, hover over add new project, and if you choose use an existing folder, this is going to let you choose a directory to work in. This means that every time you send a prompt to Codex, it's only going to search for context within this directory. It's not going to scan your entire computer looking at irrelevant files and burning a ton of extra tokens in the process. Now, you can see inside my directory, I already have an agents.md file. I've opened it in VS Code just to show you what's inside it.

**2:44** · Think of this as the brief that travels with your project, your design conventions, your component patterns, your tokens, your do's and don'ts. And I've opened it here in VS Code just to show you what's inside it. Codex will read it automatically on every task, so you write it once instead of re-explaining yourself every prompt.

**3:00** · This is basically your design system talking directly to the agent. Now, this is just a demo agents.md file, but it includes some sections that will be helpful for Codex to give it more context. I tell it my visual style, my color system, and down here I've even included an example color palette including hex values. Now, all this detail isn't essential, especially if you're working on a brand new project with no design system to adhere to. You can just include some more general instructions in your agents.md file, and Codex will figure out a design system and style guide and so on for you.

**3:28** · Just to show you what else is in here, I have typography guidelines. For example, I always want to use a clean, modern sans-serif font like Inter, SF Pro, or Geist. I gave it a suggested type scale, and this part of the end of my file is important. I've told it what to avoid: bright gradients, glassmorphism style, overly colorful cards. So, on top of telling my agent what to do and what guidelines to to it's important that you also give it the don'ts. Now, you'll want to save this agent's file as a .md file and just make sure it's inside the directory that you're going to be working in in Codex.

**3:58** · The next essential setup step before we start building is plugins. OpenAI plugins are where you access MCP servers and collections of skills. Quick word about MCP servers and skills for those who don't know what those are. An MCP server, to put it simply, just lets your AI agent communicate with outside tools. For example, if I wanted Codex to be able to read and manage my Slack, I could connect the Slack MCP server, or as Codex calls them, plugins. Now, a skill on the other hand is just a reusable set of instructions that teaches your AI agent to work the way you want it to.

**4:29** · It's similar to your agents.md file in that you can include instructions about how you want your agent to design, for example. Now, there's a handful of useful plugins for designers inside Codex that are built by OpenAI themselves. The first one I want to install is this product design plugin.

**4:43** · It's a collection of 11 different skills that enable you to explore better product directions, audit user flows, research user friction, and prototype from a live URL. A couple skills in particular that I think are very useful inside this plugin are the product design skill and URL to live code, which actually lets you take a live URL from the internet and turn it into an interactive prototype that you can run locally. So, I'm adding this plugin to my Codex right now, and just like that, I have it installed. Another plugin that I highly recommend you check out, especially if you already use Figma, is the Figma plugin.

**5:13** · This is pretty much the fastest way to go from a Figma design to real code, or you can even prompt Codex to design for you inside your Figma file. Now, one more of my favorite plugins is the Mobbin MCP server. Mobbin, if you haven't heard of it, is a design inspiration platform with hundreds of thousands of screens from real shipped apps from some of the biggest brands like Uber, Netflix, Apple, and many more. And with the Mobbin MCP, Codex can analyze successful design patterns in top apps and apply them in your AI-generated designs. This way your AI isn't just guessing anymore.

**5:45** · If you want to get started with the Mobbin MCP, I'll leave a link in the description. Aside from Mobin, I recommend you just connect whatever tools you already use day-to-day for your design work. For example, if your team uses linear for project management, try connecting this. If you use notion for design documentation, this is a good one, too. Just go check out their plugins library and see what works for you. Plugins are simply the installable package that bundles the AI workflow plus its MCP setup. So, you're not configuring this by hand every time.

**6:11** · Now, the third setup step for Codex is using skills. Like I said, a skill is just a reusable set of instructions that Codex will follow. Through skill.md files, you can teach Codex how to generate or edit images. You could use the skill creator to create your own skill with your guidelines, your design rules, but there's also a handful of skills more closely related to design. A couple of my most popular videos are actually about skills. So, if you haven't already seen those, I highly recommend you go check those out to learn more about how to use them as a designer specifically. In those videos, you'll see a lot of the skills that I already have installed listed here.

**6:41** · Like Emil Kowalski's design engineering skill, the infamous front-end design skill, and quite a few others that teach Codex how to design better. So, before I generate anything, my setup is a solid agents.md file, having the right MCPs ready for whatever kind of design project I'm working on, and a few design skills. That's the entire setup process.

**7:02** · Now, it's time for the first generation, and with all that context in place, the first prompt does most of the work.

### First prompt

**7:07** · Right before the first prompt, I want to call out that I'm going to use GPT 5.5 for this generation. It's OpenAI's latest and strongest model, and by far the best one for designers. For this demo, I'm going to leave the reasoning on medium, but if you're working on a more complex project, that's when you might want to consider switching to high or extra high. This will, of course, use more tokens, but it's worth it if it means a smaller number of prompts in the end. The first prompt I'm using is create a dark mode investment dashboard UI at desktop dimensions.

**7:33** · Include screens for dashboard, transactions, budgets and goals, analytics and reports, and settings. Refer to the agents.md file and the attached inspiration image as you craft our UI.

**7:45** · So, note that I said the attached inspiration image. Something I usually do, especially on the first prompt, is on top of the agents.md file that it's going to read, give it a screenshot of a design that you really like and want to use the style and overall design of as inspiration. Keep in mind that ideally the guidelines in your agents.md file and your attached inspiration image don't conflict because, for example, if you say you want light mode in the .md file and then dark mode in the inspiration image, that's going to confuse Codex and you might not get a good result. Now, this is my whole prompt. The last thing I want to add to this prompt is that product design skill that I showed you earlier.

**8:16** · I can run this as a slash command, meaning I just hit slash, start typing product, then hit enter. And now Codex is going to invoke that skill as it starts building our UI. We can see that it's found the agents.md file and it's referencing the inspiration image as a strong visual target. Now, check this out. If Codex feels like it's missing any information from you, it'll tell you. It's asking me if this should be mostly a static polished UI with clickable screen navigation or a fully interactive prototype with functional filters, settings controls, and more.

**8:47** · GPT-5.5 is so powerful that I'm going to tell it to go straight to the fully interactive prototype. Here's the thing.

**8:52** · If you're working on a much more complex project, I recommend that you take baby steps and have it just decide on the look of the UI first. But for this investment dashboard, I'm comfortable going straight to the prototype. Now, as it's building, it tells me that the product design handoff wants a visual QA pass before I call this done. Now, because we're using the product design plugin, after it builds the UI, it's going to open it itself in browser, capture the desktop state, and tighten anything that visibly drifts from the reference. This is a pretty essential step that you have AI do, check its own work, and ideally check its own work visually.

**9:22** · Because after all, what we're trying to achieve is a beautiful, functional, and usable UI. Now, while it's still building, we can already review the file that it's writing to.

**9:32** · Now, to give you a little more detail about the UI while it's building, we have three buttons in the upper right.

**9:37** · This first one prompts a pinned summary.

**9:39** · It shows whatever outputs you've created during the session and any sources that it's followed to build those outputs.

**9:45** · You can also bring up a bottom panel.

**9:47** · This is your terminal that you can use inside Codex and a right sidebar, which is basically your file explorer or IDE.

**9:53** · Now, after 6 minutes, it's built the first version of our dashboard, so let's check it out. If I hit open in, I can either view it in the Codex browser without even leaving the app or my preferred external browser. For the sake of staying inside Codex, I'm going to use the in-app browser. We have a full dashboard produced by Codex. We have this dashboard page with four KPIs at the top, a huge chart right here, and a couple cards showing my top holdings and priority actions. It's looking pretty solid. It adhered to the inspiration image I gave it pretty well along with the guidelines in the agents.md file.

**10:24** · Dark mode, rounded corners, green to indicate growth, and so far I'm not seeing any design patterns that scream AI-generated. That's because we went through that setup process and attached a reference image. The first generation is, of course, a starting point, never the finish. So, here's how I teach Codex what it can improve on so that I can iterate on my design fast. One thing I'm noticing is that this chart doesn't have any X or Y values, so I really can't tell what the graph is conveying or measuring. I also wish there were tooltips here so that I could hover over a certain part of the line and see the exact value at that point.

**10:53** · So, this is a great opportunity to show you one of my favorite features in Codex, annotating.

### Iteration

**10:59** · This is a newer feature, and to use it, all I have to do is click this button up here. And just like that, I'm in annotating mode. What this means is I can select any element on the screen and write a prompt targeted at that element that I've selected. This keeps you from having to explain what element you're talking about when you prompt Codex. So, I'm going to annotate this chart area and say, "Add X and Y axes that clearly convey what values are being tracked, and then also add interactive tooltips upon hover of the line graph."

**11:27** · Now, we can see in the left sidebar that it's made those changes. Now, the thing that might throw you off about Codex is you'll likely have to refresh this Codex browser every time a change is made to see those changes live. So, we have this working dynamic tooltip now, that's looking great. But, the labels in the X and Y axes are clearly getting a little bit distorted. So, I'm going to give a follow-up prompt telling Codex to fix this. This is actually a great example of you telling Codex to do two different things at once and nailing the execution of the first thing, but then butchering the implementation of the second thing.

**11:56** · So, sometimes you're better off giving Codex these instructions in individual prompts. I'm willing to bet that if I was using a higher reasoning mode, like higher extra high, it would have gotten the execution right on the first pass at the cost of using more tokens. Something I would also want to fix is the spacing in between the first row of KPIs and the next row below it. There only seems to be a couple pixels of spacing in between, and that's something I would definitely want to bump up a bit to match this horizontal spacing here. And this is yet another fix you could easily make with that annotation feature. Now, like you saw in the beginning, we asked for a full prototype.

**12:26** · So, we have the dashboard page, but then we also have all the other pages included, too.

**12:31** · Transactions, which is looking pretty solid. Budgets and goals. I like the colors being used here to differentiate each type of funding goal. Analytics and reports. And we can see it's applied those same X and Y axes and tooltip to this chart, as well. Then, we also have this final settings page.

**12:47** · Now, one more thing about my dashboard that I want to check is whether it's responsive or not. I would definitely have mobile users using this dashboard.

**12:54** · So, taking mobile screen sizes into consideration is super important. Here's how we can check for that in Codex.

**13:00** · Click this drop-down, show device toolbar, and then this button right here is going to switch our view from desktop to mobile. And we can clearly see that our dashboard is not mobile responsive whatsoever. All the content is just getting absolutely smooshed, and the left-side navbar should ideally get collapsed into a hamburger menu. So, this just shows you that you don't get mobile responsiveness by default. And this is something you should definitely consider including in that agents.md file or just in your first prompt. So, here's what I'm going to tell Codex now.

**13:27** · It's not responsive at all. Set up robust breakpoints for mobile and tablet and check your work visually at each screen size to make sure it's fully responsive. Now, here's the important thing. I'm telling it to check it visually. This means don't just review the code and make sure those breakpoints are technically there. See what our app looks like because that's a much better indicator of whether the app is actually responsive or not. Now, Codex just finished, so let's refresh our browser.

**13:52** · And now from that prompt, at mobile screen size, the API stack vertically, the chart shrinks to fit the screen size, and we have this bottom navbar for navigation. So, this just shows you that every change you want to make in these AI agents can be done through natural English, but it makes it more convenient having tools like annotation and seeing your designs at both mobile and desktop screen sizes. Now, if I open the summary panel that I showed you earlier when it was empty, it's now listing this index.html file that's making up this whole design and the in-app browser that we have running right now.

**14:21** · One more thing worth knowing because it's brand new at the time of recording, Codex can now build interactive sites and apps and give you a live URL so you can share them. For a designer, that's a huge deal. Spin up a working prototype, a portfolio site, even a full app that has real functionality, and send a link instead of a Figma file that needs explaining. Still early, and right now it's only available in preview for business users, but keep an eye on it.

### Codex vs. Claude Code

**14:46** · Now the honest part because if you've watched my channel, you know that I love Cloud Code personally and use it a lot for my work, but you deserve an honest comparison. Across a lot of real-world testing that I've done, the pattern is consistent. For pure visual and UI work, Cloud Code tends to win. It's first pass is often closer to shippable, and it preserves more of the original design structure when converting a Figma design. Codex's raw UI output tends to lean more functional and beautiful out of the box. So, where does Codex actually win for a designer? Well, when you can write a clear, detailed brief, Codex can execute it exactly.

**15:16** · It's leaner on token usage, so if you've ever used Cloud Code to design and ended up burning through 100,000 tokens in one prompt, this is something you'll probably experience less of using Codex.

**15:28** · It's pretty strong at kicking off several tasks and then reviewing them later. And like I said before, OpenAI has started shipping a ton of new features targeted toward designers.

**15:36** · There's no sign of them slowing down anytime soon, so I'm very excited to see what else is coming. Here's my honest take. If you want the prettiest first draft with the least setup, go for CloudCode. I think for that reason alone, CloudCode is used by more designers than Codex at this point. If you're willing to do the setup with an agents.md file, your right skills and MCPs, Codex closes most of that gap and gives you that coding precision that more technical folks will appreciate. A lot of people, myself included, end up using both. CloudCode for more exploratory visual work, Codex for more technical design work that involves a more complex code base.

**16:08** · And of course, the new designer features that are being shipped. The setup beforehand is what makes the main difference. That's the main lesson of this video. So, that's Codex for designers. You saw how to give it context with an agents.md file, plugins, and skills, how to generate a UI that respects your design system, and how to iterate fast with annotations and the visual loop. And you got the honest comparison against CloudCode, so you can pick the right one depending on your project and workflow. If you want me to make more videos like this on Codex, let me know in the comments because I read every single one.

### Outro

**16:38** · I'll see you in the next video and don't forget to subscribe to become a better designer.