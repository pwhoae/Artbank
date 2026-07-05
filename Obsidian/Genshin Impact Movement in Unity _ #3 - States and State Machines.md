---
title: "Genshin Impact Movement in Unity | #3 - States and State Machines"
source: "https://www.youtube.com/watch?v=KbA84fHeqXM"
author:
  - "[[Indie Wafflus]]"
published: 2022-02-25
created: 2026-07-03
description: "In this video we'll be learning about what are States and State Machines as well as set up their base Scripts.________________________________________________________Timestamps:00:00 What are St"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=KbA84fHeqXM)

In this video we'll be learning about what are States and State Machines as well as set up their base Scripts.  
  
\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_  
  
Timestamps:  
  
00:00 What are States and State Machines?  
01:30 What are their Advantages and Disadvantages?  
06:21 What are the Player States?  
08:00 Hierarchy State Machines  
09:58 Creating the State Interface  
13:16 Creating the State Machine Abstract Class  
  
\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_  
  
Useful Links:  
  
● GitHub Repository: https://github.com/Wafflus/unity-genshin-impact-movement-system  
● Tutorial Series (Youtube Link): https://www.youtube.com/watch?v=-HCv142Uqhk&list=PL0yxB6cCkoWKuPoh\_9dSvdItQENVx7YTW  
● Interfaces (C# Documentation): https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/interface  
● Default Interface Methods (C# Documentation): https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/proposals/csharp-8.0/default-interface-methods  
● Abstract Classes (C# Documentation): https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/abstract  
● Access Modifiers (C# Documentation): https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/access-modifiers  
● Null-Conditional Operators (C# Documentation): https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/operators/member-access-operators#null-conditional-operators--and-  
  
\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_  
  
● Subscribe: https://www.youtube.com/c/IndieWafflus?sub\_confirmation=1  
  
● Follow me on Twitter: https://twitter.com/IndieWafflus  
  
\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

## Transcript

### What are States and State Machines?

**0:00** · We are all set but before we go ahead and start coding I think it's best for you to learn about States and State Machines first.

**0:08** · When opening up and loading a game, the first thing you might notice is that our player is "Idling".

**0:15** · This is what we call a "State".

**0:17** · In this example, the current "Player State" is the "Idling State".

**0:22** · If we were to move, lets say by pressing "W", our player would start "Running".

**0:28** · "Running" is yet another "Player State".

**0:32** · We've simply changed or transitioned from the "Idling State" to the "Running State" by pressing a movement key.

**0:40** · This gives us two states: "Idling" and "Running".

**0:45** · Both of these states are implemented as their own classes with their own logic.

**0:50** · This means that the "Idling State" doesn't care about what the "Running State" does, but only that it should transition to it whenever we press a movement key, like "W".

**1:00** · The "Running State" is the one that takes care of giving the player some desired speed.

**1:07** · However, that transition needs to somehow happen and the current state logic needs to somehow run as well.

**1:15** · That's what "State Machines" are for.

**1:18** · They hold the current state, a method to change that current state and, if the state isn't public, one or more methods to run its logic.

### What are their Advantages and Disadvantages?

**1:30** · This brings us to one of the State Machine System Advantages: Each state has its own logic.

**1:38** · An example on why this is a good thing is the typical "Jumping" and being "Grounded".

**1:43** · Lets have an imaginary situation where our player is "Idling".

**1:48** · Whenever we press on the "Space" key, our player should "Jump".

**1:53** · One common problem when doing this without State Machines is that if we keep on pressing the "Space" key, our player will keep on Jumping.

**2:05** · The common way of fixing this problem is by adding an "isGrounded" check.

**2:10** · If when the player presses "Space" there is ground right underneath the player, then the player can "Jump".

**2:17** · Otherwise, our Player shouldn't be able to "Jump".

**2:21** · While this is alright, not only are the "Idling" logic and the "Jumping" logic in the same script, the "Jump" is also caring about whether we are Grounded or not while it should only care about adding an upwards force.

**2:35** · However, lets take a look at the same example using States and State Machines.

**2:41** · In our "Idling State", we have the logic of transitioning to the "Jumping State" whenever we press the "Space" key.

**2:48** · When we do so, the State Machine changes the current State to the "Jumping State".

**2:53** · In the "Jumping State", the only logic we have is to jump upwards, there is no logic telling us that we should "Jump" whenever we press "Space".

**3:03** · This simply means that our player won't keep Jumping if we keep on pressing "Space".

**3:08** · Of course, if we did want to double or triple jump, we would simply add a count of used jumps and add a new upwards force whenever we pressed "Space".

**3:18** · Something to note as well is that we do not need to check whether the Player is "Grounded" or not.

**3:24** · The reason for that is quite simple: Our player can only be "Idling" when it is in the "Ground", as otherwise, our Player would be in another state like "Falling".

**3:41** · One other big advantage is that it's quite easy to add, remove or change a state.

**3:48** · With one or a few scripts, we would have multiple states tangled within each other and it can be a bit of a mess to add or remove an existing state, at least if you end up having quite a lot of them.

**4:00** · With State Machines, we add a new one by creating a new class and add its own logic to that class and we can change that state implementation by updating that isolated logic.

**4:11** · To remove one, we simply remove the file, the state transitions and whatever code was necessary for that transition.

**4:18** · This does however bring us to a disadvantage: Each State is its own file.

**4:24** · If we end up having 200 States, we'll end up having 200 Files.

**4:29** · This can easily add up a lot of files which makes it harder to keep things organized.

**4:35** · However, it does sound better to me than having those 200 States in just a few files.

**4:40** · Another disadvantage is that the Player can only be in one State at a time.

**4:45** · If we're Moving, then we can't be Shooting, for example.

**4:49** · Or, if we're Shooting, then we can't be Moving.

**4:53** · The first fix you might think is to have the movement logic in the "Shooting State" so that you can Shoot and Move at the same time.

**5:00** · This works but "Shooting" shouldn't really be related to "Moving" as they are two complete different systems, although it's fine if you decide it to be that way.

**5:10** · The actual fix though, is quite simple: Simply create two State Machines.

**5:15** · This means that you'll have a State Machine for Movement and a State Machine for Combat, which allows you to be in two States at the same time, in case that's what you desire.

**5:26** · As far as I know, we can't move while attacking in Genshin, so they either doit in the same State Machine or disable the other one.

**5:35** · One last disadvantage is that State Classes do not inherit from the "MonoBehaviour" Class.

**5:41** · This means that we cannot add them as components in our Inspector, which also means that any variable we want to set in the Inspector needs to be done through another script.

**5:52** · An example of this would be having a Player Script that holds all of that data and then passes that data to the State Machines and their States.

**6:01** · Furthermore, because we need access to those variables, we'll either need to make them public or somehow reference them by passing in every single variable.

**6:10** · To keep things as simple as possible, we'll be making each variable a public property and alternate between private, omitted and public setters.

### What are the Player States?

**6:22** · Now that we have an idea on what States and State Machines are, lets take a look at what States our Player will end up having for our base Movement System.

**6:31** · Our very first State will of course be the "Idling State".

**6:36** · As we've seen before, it's a simple State where the Player stands still.

**6:43** · From the "Idling State" we can start "Moving".

**6:46** · In Genshin Impact, this is the equivalent of 3 States: "Walking", "Running" and "Sprinting".

**6:54** · The main difference between these states is the speed at what the Player moves at.

**7:02** · In Genshin Impact however, we can't directly go from "Idling" to "Sprinting" but instead need to go to "Dashing" first.

**7:10** · "Dashing" is a low-time but faster movement speed State.

**7:16** · When we stop movement in any of these 4 States, they will transition to 3 other States: "Light", "Medium" and "Hard Stopping".

**7:27** · These simply decelerate the Player until it comes to a Stop, then transitioning to the "Idling State".

**7:37** · We have 2 last States, which are the "Jumping" and "Light Landing".

**7:42** · "Jumping" is a simple upwards force while "Light Landing" happens when the Player falls from a small height.

**7:49** · There are 2 other "Landing States" that will be introduced with the "Gliding System", as we'll also introduce "Falling" there, but for now this one suffices.

### Hierarchy State Machines

**8:00** · These are all of the States we'll be needing for our base Movement System.

**8:04** · We, however, can go a bit further.

**8:07** · Each one of these States can be part of a Group.

**8:10** · And by Group, I basically mean "inherit" from a Base Class that groups common logic.

**8:16** · This is what's called "Hierarchical State Machines".

**8:19** · Much like State Machines though, there are several ways you can use them, so if you ever watch another video, it's quite possible that they'll have a different implementation than mine, but, we'll go with the simplest of them all, which is "State Inheritance".

**8:34** · To make things easier, we'll start Grouping States from the Bottom to the Top.

**8:39** · The first States we want to consider are "Walking", "Running" and "Sprinting".

**8:44** · These States can be considered "Moving States", as they're the States the player will be when "Moving".

**8:52** · With that same logic, our "Light", "Medium" and "Hard Stopping" States can be considered "Stopping States".

**9:01** · While there's only one of them right now, our "Light Landing" State can also be considered a "Landing State".

**9:08** · All of our current States, besides the "Jumping" State, are States that the Player will be when he's on the "Ground".

**9:15** · This means that we can group all of them into a "Grounded State".

**9:20** · Following the same logic, our "Jumping" State can be grouped into a State for when the Player is in the air, which we'll be calling an "Airborne State".

**9:31** · As we already know, the Movement System is the base of the other 3 systems.

**9:36** · The reason why is because Gliding and Swimming all use the same movement but with different settings.

**9:42** · This means that we can group every existing State into a Base State, to which we'll call "MovementState".

**9:49** · This will simply take care of Moving our Player around.

**9:54** · And this is how our State Hierarchy will look like.

### Creating the State Interface

**9:58** · As I've said before, each of these States will have to run their own logic.

**10:03** · This means that every single one of them needs to have common methods that run that logic.

**10:08** · Because of that, we'll be defining an Interface that defines those methods and implement that Interface into our Base State.

**10:16** · Because every other State will end up inheriting from our Base State, they will be able to use those methods and also override them with their own logic.

**10:25** · To create that Interface, we'll go into Unity and create a new folder named "Scripts" in the "Assets" folder.

**10:35** · Inside of this new folder, we'll create yet another one named "StateMachine".

**10:42** · Here, we can now create a new C# Script by right clicking in the Project Window and going to "Create > C# Script".

**10:49** · I'll name mine "IState".

**10:52** · Open it up and start by removing the default methods and the MonoBehaviour inheritance as well.

**10:58** · To make it an Interface, simply swap the "class" keyword with "interface" instead.

**11:04** · There are a few methods in State Machines that people commonly use.

**11:08** · The first two are a simple "Enter" and "Exit" methods.

**11:12** · The logic in these methods is supposed to run whenever we transition from a "State" to another.

**11:18** · "Enter" will run whenever this State becomes the current Player State.

**11:23** · "Exit" is the opposite and will run whenever this State becomes the previous Player State.

**11:29** · This is good for setting and resetting data whenever we "Enter" or "Exit" a State.

**11:35** · Lets then define a method for each of these.

**11:38** · To do that, simply type in "public void Enter();" and "public void Exit();".

**11:47** · Remember, we're only defining the methods here and not implementing them.

**11:51** · If you did want an implementation, you would likely use an Abstract Class instead.

**11:57** · It does seem that Unity 2021 does support C# 8, which supports default interface methods but I'm not entirely sure what's the line between Abstract Classes and Interfaces in that case.

**12:11** · Regardless, we now have two method definitions.

**12:14** · Of course, we can't really run any constantly on-going logic with these two methods.

**12:20** · For that logic, we often have 3 other methods: "HandleInput", which will allow us to run any logic regarding reading Input, "Update", which will allow us to run any non-physics related logic and "PhysicsUpdate", which will allow us to run our physics related logic.

**12:43** · You are likely familiar with the "Update" and "PhysicsUpdate" methods, which are the equivalent of the MonoBehaviour "Update" and "FixedUpdate" methods.

**12:53** · The only new one here is the "HandleInput" method, which is us simply separating it from the "Update" method.

**12:59** · We'll be adding a few more methods here as we need them, but these will work fine for now.

**13:06** · That's our State Interface done, so now, we'll be creating our base State Machine.

**13:12** · We'll be using an "Abstract Class".

**13:15** · So, back into Unity, in the exact same folder, create a new C# Script.

### Creating the State Machine Abstract Class

**13:21** · I'll name it "StateMachine".

**13:25** · Open it up and remove the default methods and the "MonoBehaviour" inheritance.

**13:30** · To make this an "abstract class", we simply need to type in "abstract" before the "class" keyword.

**13:36** · We'll start by creating the variable that will hold the current state.

**13:41** · To do that, type in "protected IState currentState;".

**13:48** · Note that this is the class that every State Machine we create will inherit from, so we don't want the "current Player State" but the "current State" of the context we're getting it from.

**14:00** · "Protected" is here to make it accessible in classes that inherit from this one.

**14:05** · We now need a few things: The first one is a method that allows us to change the State Machine current State for another State.

**14:14** · The second one, because our current state variable isn't public, are methods that access the current state logic methods.

**14:21** · If you don't understand why, don't worry, you'll do later.

**14:25** · Simply put though: we'll need them so that we can call them from the "MonoBehaviour" methods.

**14:31** · Lets start with the first one by typing in "public void ChangeState()".

**14:37** · We'll pass in "IState newState" as a parameter.

**14:42** · What we need to do here is quite simple.

**14:45** · We'll start by calling in "currentState.Exit();".

**14:49** · This resets any Data that needs to be reset before changing states.

**14:54** · Then, we set the "currentState" to be the "newState".

**14:59** · When that's done, we call in "currentState.Enter();".

**15:03** · This will set any Data that needs to be set on the new state.

**15:07** · That's really all we need to change states.

**15:10** · However, we currently have a problem: Because this will need to be called once to set the initial state, our "currentState" variable will be null.

**15:20** · This of course means that our "Exit" method won't be called as it will throw an error, as "null" doesn't contain an "Exit" method.

**15:27** · The simplest fix for that is to add an if statement checking if the currentState is null and if it isn't, we can then call in the "Exit" method.

**15:36** · C# however has an handy operator which is the "null-conditional" operator.

**15:41** · Its use is quite simple: Simply add a question mark (?) right after the code that can return null.

**15:48** · In this case, we add it right after the "currentState".

**15:51** · Now, if "currentState" returns "null", C# will not call the "Exit" method.

**15:57** · Our "Enter" method doesn't need it as our "currentState" is set to the "newState" right before we call it.

**16:03** · It would throw an error if we were to pass in a "null" "newState", but you probably want to know if that's the case.

**16:10** · That finishes up our "ChangeState" method.

**16:14** · We should now create a method for each of our State logic methods.

**16:19** · To do that, start by typing in "public void HandleInput()" and inside, call in "currentState?.HandleInput();".

**16:32** · That's all we need to do, so duplicate this method twice and swap the name with "Update" and "PhysicsUpdate".

**16:44** · We now have a way to call the current state logic from a MonoBehaviour class, so our base "State Machine" is done.