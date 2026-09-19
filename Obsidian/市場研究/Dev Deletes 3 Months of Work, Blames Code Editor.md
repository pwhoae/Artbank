---
title: "Dev Deletes 3 Months of Work, Blames Code Editor"
source: "https://www.youtube.com/watch?v=XHIo1_nvi1I"
author:
  - "[[Kevin Fang]]"
published: 2026-08-20
created: 2026-09-19
description: "This second issue of Issues Insights covers VS Code's unusual user interface feature which allows uninformed users to accidentally permanently delete their project.Previous Issue: How A Steam Bug De"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=XHIo1_nvi1I)

This second issue of Issues Insights covers VS Code's unusual user interface feature which allows uninformed users to accidentally permanently delete their project.  
  
Previous Issue: How A Steam Bug Deleted Someone’s Entire PC https://youtu.be/qzZLvw2AdvM  
  
Sources:  
https://github.com/microsoft/vscode/issues/32405  
https://web.archive.org/web/20241120130529/https://learn.microsoft.com/en-us/archive/msdn-technet-forums/b32e47a9-d86c-473a-9449-a7f5c202463c  
https://code.visualstudio.com/updates/v1\_66#\_local-history  
https://code.visualstudio.com/updates/v1\_98#\_discard-untracked-changes-improvements  
https://raw.githubusercontent.com/microsoft/vscode/1.14.2/extensions/git/src/commands.ts  
https://github.com/git/git/blob/ea97ad8d017de0c9037451a78008a0fd60abea0c/builtin/clean.c#L919  
  
Chapters:  
0:00 - reenactment  
1:38 - the issue  
2:21 - startup example  
3:30 - intro to git  
5:15 - untracked files  
7:16 - people arguing  
  
Music credits:  
Lemmino - Aloft: https://www.youtube.com/watch?v=XNEKdkB\_kdc  
Philip Milman - We Shop Song: https://www.youtube.com/watch?v=Y-6Plfn1yHg

## Transcript

### reenactment

**0:01** · Hey, we're going to play pickleball.

**0:03** · Want to come?

**0:04** · Give me a sec. I'm just setting up a Git repository on this side project I've been working on. No problem. You start this recently? Nah, it's been 3 months and 5,000 files. It's like my whole life's work.

**0:16** · You've been working on a project for 3 months with no version control?

**0:19** · Shut up, okay? So, I've initialized Git in my project folder.

**0:24** · Whoa, that's a whole lot of files. I'm getting some information overload here.

**0:28** · Let me try and simplify this.

**0:30** · Oh, I can discard all changes.

**0:34** · Pretty standard pop-up. Going to click okay.

**0:37** · Interesting. It's removed all the files from the change list. I suppose it's just gone from the VS Code Git UI, but the files themselves should still exist.

**0:46** · Let me check my project folder in Windows Explorer.

**0:49** · Hmm, it's empty. Could it have been deleted when I pressed discard? Then it should be in the recycle bin.

**0:57** · It was at this moment he realized all his files were permanently deleted.

**1:03** · I had just downloaded VS Code as an alternative and I was just playing with the source control option. Seeing how it wanted to stage 5,000 files, I clicked discard and it deleted all my files. All of them permanently. How the is this possible? Who the hell is the dumb who made the option to permanently delete all the files on a project by accident even possible? Cannot even find them in the recycle bin. I didn't even thought that was possible on Windows. This editor and whoever implemented this option, I wish you the worst. I'm permanently staying away from every Windows development software from now on and to the genius who implemented this, you you you.

**1:35** · VS Code version code 1.15.

### the issue

**1:38** · Welcome to the second issue of Issues Insights, where we gain insight into both GitHub issues as well as personal issues. Today, the controversy surrounds Microsoft's famous open-source code editor called VS Code, which has built-in support for Git, a version control or source control system used by coders to track code changes. Some may think that Git was invented by GitHub or something, but it was actually created by Linus Torvalds. GitHub just uses Git in its name because they provide a file hosting service that uses Git. It's like Burger King.

**2:10** · Burger King didn't invent burgers, they just serve burgers.

**2:15** · GitHub, GitLab, Gitea, they all serve the same Git except with different extra features built on top. So, suppose you and your buddy want to code up the next six startup. You set up a server and upload the initial website code to it.

### startup example

**2:28** · Whenever someone wants to make a change, they just edit the files directly on the server and save them. You both always see the latest work and can build off from there. But then, your buddy accidentally makes a really buggy change that blows up the website. They didn't remember what they did, and since the files are already modified, there is no way to undo their change. You have to go in and figure out exactly what the problem is and fix it from scratch. This is not ideal, so you decide on a protocol. Whenever you make a change, do not directly overwrite the production code.

**2:59** · Instead, download the code to your local computer and make your changes there. When you're done, move the existing code on the server to a backup drive, and then upload your new code to the server. This way we can track our version history. Then one of the developers remembered something.

**3:16** · Hey, it's literally 2026. What the heck are we doing? Ever heard of Git?

**3:21** · No, I haven't, another developer responds. Actually, I never finished middle school. I just vibe coded my way here. Can you explain?

### intro to git

**3:30** · Sure. Git is just version control software used to organize your code changes so you aren't cooked when more than two people work on the same code.

**3:38** · In its simplest form, a project and its historical versions can be represented by a single linked list.

**3:44** · What's a linked list?

**3:47** · The first node or root of the list is the original state of the project. Maybe an empty folder, maybe some boilerplate code, and each subsequent node represents a self-contained change or commit, all linked together chronologically in a branch. \[music\] The main branch that is deployed to production is often called the main or master branch. So, each commit represents a specific iteration or version of the project, just like all the project folders our startup kept on the backup drive.

**4:14** · In Git, however, each commit contains information like the author, timestamp, and a description of the change.

**4:20** · \[music\] Not to mention, because commits contain their exact changes, you can easily revert them or branch off and cherry-pick specific commits that you want for a new branch. So, the typical Git development workflow may look like the following. You first pull the project from remote to your local PC.

**4:37** · Git has the remote state of a project saved centrally in a Git provider like GitHub or Burger Git, and each developer will also have a local copy of the project, just like what our startup is doing currently. Then, you create a development branch, code it up, and commit all your changes. So far, everything is only applied to your local copy, and no production changes have been made yet. Then, you create what's called a pull request or merge request.

**5:02** · Then, a reviewer is asked to please take a look at their earliest convenience, who will then maybe leave a few comments, eventually approve it, and finally, the branch will be merged into the remote master, updating the official project with your new code. It's not all that simple, though. Git is quite famous for being confusing as heck, and one detail that was previously glossed over is that after coding it up, you don't actually directly commit your changes.

### untracked files

**5:26** · You first add changes to the staging area with the Git add command. Then, you can commit what you have staged. This allows you to precisely craft the perfect lineup for each commit.

**5:36** · We can see in the VS Code UI that changes include modified files, deleted files, and new files. New files are a special case because they are considered untracked until they are staged. This means they are technically not part of the project, so they will be ignored in operations like comparing your working tree to an earlier commit. They will also be scrubbed away by utility commands like git clean, which removes untracked files. This is useful, for example, if you want to quickly get rid of a bunch of test files or build artifacts.

**6:06** · VS Code has an interesting UI option to do this called discard all changes. Upon clicking it, a warning dialog no one will read appears, after which the code editor will call a combination of git commands including git clean to discard all your changes.

**6:22** · The problem is when a folder is newly initialized as a git project, the git project is empty by default, so everything is untracked. Typically, at this point you should simply stage all your changes and commit them. However, Ghost, a now deleted user on GitHub, was just playing around with the source control option and saw that 5,000 files needed to be staged. This was a really big and confusing number, so he reflexively clicked discard all changes to clean things up, causing git clean to run and delete all of his files.

**6:51** · But there's still a missing piece of the puzzle. Why didn't the files go into the recycle bin?

**6:56** · \[music\] Digging into the code, git clean triggers this command clean function, which makes the POSIX API call unlink. This is the same low-level deletion used by the Linux rm command, which skips the trash and instantly eradicates your files. So you can think of git clean as an r m r f or recursive force delete for untracked files.

### people arguing

**7:17** · 4 minutes after the Ghost post, a first responder affirmed that the file discard was valid and that you should watch out before pressing buttons. He then forgot the entire point of the post and recommended Ghost to recover his changes from version control. Ghost responded saying that he never committed his changes to any version control and that there should have been a better warning message. Furthermore, the same issue has affected dozens of other people.

**7:40** · He is in disbelief and doesn't take back any word of contempt against whoever designed this heinous and abhorrent behavior. Rem Corours recounts a dramatic school project experience he had 15 years ago, after which he began to use source control 24/7. Ghost claims his misunderstanding of how Git works should not destroy the integrity of a computer like a virus and attacks back with a scathing remark. You come here, see my despair, and berates me for something that was not my fault and had happened to a lot of other people. You.

**8:10** · A Microsoft employee then apologizes and points out that there actually is a pretty obvious warning message when you click discard all changes and that this same Git operation mishap could occur in any code editor.

**8:22** · It seemed like the whole world was against Ghost, but he soon found some much-needed support in the follow-up investigation started by Theer, which concluded that the discard all changes function in its current state was quite problematic. Potential remedies include improving the prompts, making the default discard behavior delete only tracked files, or even removing this feature altogether. Microsoft pushed back against the latter two since changing default behavior is a cardinal sin in the world of backwards compatibility. And according to the data, power users love the discard all changes feature.

**8:53** · More opinions flooded in. RMRF as a UI option is not a good idea under any circumstances. Perhaps we can replace Git clean with Git stash, which is reversible. I'm a UX designer, used to be a developer, have a background also in linguistics. From multiple perspectives, I find this problematic. The name of the option is misleading, so is the wording in the dialog box.

**9:17** · As an author of various Git tools, the discard all changes button is misleading because according to the strictest Git terminology, untracked files are not considered as changes. But the pro-Microsoft side asserts that even untracked files are clearly labeled as changes in the VS Code UI and that these UX professionals have no idea what they are talking about. Anyway, long story short, in the following months they changed the warning message to say "deleted from disk" and added two options in the prompt.

**9:45** · One for the original behavior to discard everything and the other to discard only tracked files. The issue was closed, but our story doesn't end there. In March 2022, nearly 5 years later, VS Code introduced a local history feature, which allows you to restore file content from the \[music\] past. It works like the version history you see in doc editors and would have protected Ghost from the accidental deletions. But, the real fix came 8 years later in February 2025.

**10:12** · At last, the default behavior of discard all changes will move the files to the recycle bin or trash, so the files can easily be recovered. And that wraps up Microsoft VS Code 32405. We'll see you in the next issue of Issues in Sites.