---
title: "POINTERS in C++"
source: "https://www.youtube.com/watch?v=DTxHyVn0ODg"
author:
  - "[[The Cherno]]"
published: 2017-06-11
created: 2026-07-07
description: "Twitter ► https://twitter.com/thechernoInstagram ► https://instagram.com/thechernoPatreon ► https://patreon.com/thechernoSeries Playlist ► https://www.youtube.com/playlist?list=PLlrATfBNZ98dudnM48"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=DTxHyVn0ODg)

Twitter ► https://twitter.com/thecherno  
Instagram ► https://instagram.com/thecherno  
Patreon ► https://patreon.com/thecherno  
  
Series Playlist ► https://www.youtube.com/playlist?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb  
  
\----------------------------------------------------------------------------------------------------------------  
  
BEST laptop for programming! ► http://geni.us/pakTES  
My FAVOURITE keyboard for programming! ► http://geni.us/zNhB  
My FAVOURITE monitors for programming! ► http://geni.us/Ig6KBq  
  
MAIN Camera ► http://geni.us/CYUQ  
MAIN Lens ► http://geni.us/ZM3CmG  
Microphone ► http://geni.us/wqO6g7K  
  
\----------------------------------------------------------------------------------------------------------------  
  
Slack ► https://slack.thecherno.com  
Stream ► http://www.twitch.tv/thecherno  
Website ► http://www.thecherno.com  
Facebook ► http://www.facebook.com/thecherno

## Transcript

**0:04** · here it goes hey what's up guys my name is the chero and welcome back to my C++ Series so today possibly the most important episode in this entire series we're going to talk about pointers and unfortunately pointers are an area that a lot of people struggle with so I just really want to say don't worry don't overthink it pointers are actually really simple and I also want to mention that today we'll be talking about raw pointers not smart pointers if you don't know what smart pointers are don't worry about that we'll get into that in the future computers deal with memory memory is everything to a computer if I had to

### Pointers

**0:37** · name the single most important thing in programming it would probably be Memory when you write an application and you launch it that entire application gets loaded into memory all of the instructions that tell the computer what to do in the code that you've written all of that gets loaded into memory that's how the CPU can actually access your program and start executing its

**0:57** · instructions when you create a variable when you load in data from disk everything gets stored in memory there is nothing you can do if you do not have memory and pointers are extremely important for managing and manipulating that memory so what are Pointers I'm probably going to end up saying this multiple times throughout the course of this video a pointer is an integer a number which stores a memory address that is all that it is I don't want to get too deep into how memory actually works in a computer I might save that for another video but simply put your

### What Are Pointers

**1:29** · memory inside your your computer is just like one Big Blob it's like one big line that's all it is picture one straight if if your entire city that you live in just had a single Street and there was a start and there was an end and then you had a bunch of houses there were no houses across the road let's just say there's just a street and there's like a row of houses that is what memory is in

**1:51** · a computer it's just a linear one-dimensional line and every house on that street is going to have a number an address so to bring that metaphor back to computers picture that every house on that street that has an address is a bite it is one bite of data we obviously

**2:07** · need a way to be able to address all of those bites all those houses on our street because for example let's say someone orders something online and wants to have it delivered it needs to be delivered into the right house or or maybe someone's sending something they're sending something away from their house either way you need to be able to read and write from memory from those bites of memory from those houses so a pointer is that address it's the address that tells us where that house is where that specific bite of memory is

**2:34** · and that's extremely important because pretty much everything we do in our code is going to be reading or writing from and to memory now of course it's perfectly possible for you in C++ to write an application that does not use pointers that's you you can do that you don't necessarily need to use pointers however they are an extremely useful tool because as I just mentioned memory is probably the single most important thing you have the single most important resource that your computer can provide to you it's used for everything and being able to have more control over that memory is vital all right

**3:06** · anyway to reiterate a pointer is just an address it is an integer which holds a memory address that is all that it is forget types right types have nothing to do with any of that types are just some kind of fiction that we've created to make our lives easier it doesn't matter if you have an INT pointer or maybe you have an entity class and you have an entity pointer it doesn't matter types types are completely meaningless right a pointer for all types is just that

**3:36** · integer that holds a memory address that's all that it is let's jump in and take a look at some examples okay so here in Visual Studio I've got an extremely simple project it's just one source file everything that you see on the screen is the complete code that I've got written so let's go ahead and create a pointer we're going to create the purest of pointers because it's going to be something called a void pointer void basically means that it's completely typeless remember remember I said that a pointer is just an address

### Examples

### Void Pointer

**4:03** · it's just an integer which holds an address in memory so it doesn't need a type if we give a pointer a type we're just saying that the data at that address is presumed to be the type that we give it right it doesn't mean anything apart from that it's just something that we can write to make our lives easier syntactically like in the actual source code to make our lives easier we can use types with pointers but again a type does not change what a pointer is a pointer is just a memory address it's it's just an integer so a void pointer means that we do not care

**4:33** · right now in our source code what type this actual data is because we just want to really hold an address so let's go ahead I'll call it PTR or pointer for short and I'll set it equal to zero so what is zero we've given this pointer a memory address of zero what does that mean well zero isn't actually a valid

**4:50** · memory address memory addresses do not go all the way down to zero zero is invalid and what that means is that this pointer is not valid being not valid is a perfect acceptable state for a pointer but all I'm saying here is that zero is not a valid memory address we can't read from or write to a memory address of zero if we try and do that our program will crash so zero means null and we can actually also write it like this which is actually just a hash Define if you look up what that null actually is you can see it's just a hash Define for Z so

**5:18** · it's the same as if we wrote zero or we can use a C++ keyword called null pointer this was introduced in C++ 11 so awesome we've made our first pointer it is completely typeless and it has the memory address of zero completely useless but it's a pointer and this is probably the simplest pointer you could write let's do something a little bit more useful let's create an integer so I'm going to create a variable I'm going to call it V and I'm going to set it equal to a it's going to be an integer now this is just a normal integer but of course every variable we create has a memory address because we need a place to store that variable so what if I want

**5:49** · to find out what the memory address of that variable is so where are you in memory I can do that by using the Ampersand operator so if I use an ampersand in front of an existing variable like this we're essentially asking this variable hey what is your memory address and then of course we're taking the memory address of that variable and in this case assigning it to a new variable called pointer and

### Ampersand Operator

**6:12** · that's it we've now got the memory address of our variable and we're storing it in another variable which is a pointer I'm going to put a break point on this line of code and hit F5 to run and debug my application so right now if I take a look at what we've got we've got a variable you can see if I hover my mouse over it it has the value of eight and if I hover my mouse over a pointer it has a slightly different value which

**6:33** · is presented to us in heximal format but it is as you can see still just a number it's an integer so what that pointer variable is holding now is the memory address of that VAR variable and that's all it is that number that you see there a0f b64 that is where in memory we are storing our integer variable and in fact what I can do is I can grab this I can copy it I can hit debug Windows memory

**6:58** · memory 1 so what this view is showing now is all of the memory inside our application I'm going to paste in that value I'm just going to get rid of that pointer at the beginning there and then I'm going to hit enter and check this out we are taken to this

**7:14** · memory address we know an integer is four bytes of data and look at that it has the value a we're looking at our computer's memory right now and we can see that at that memory address we have the value eight because we created that variable and we set its value to eight all right fantastic so that's really I

**7:32** · mean on a basic level that's all there is to it everything else builds from this if you know this much and you're following me and your understanding that's there's no magic behind it that's how pointers work a pointer is a variable which holds an address an integer a pointer is like any other variable it's just that instead of holding a value such as a it's holding a memory address which a memory address is also a value it's also an integer now how big that integer is how big that

**7:58** · pointer is depends on a lot of things it could be a 32-bit integer it could be a 64-bit integer it could be a 16bit integer doesn't matter right the point is it is an integer and that is all it's ever going to be if I go back to my code here and I change this to be an INT pointer I'm not actually changing anything if I run my application again you'll see it's not going to be any different if I go ahead and I copy that

**8:21** · value I'll copy the value I'll paste it into my memory View and I'll hit enter you can see it's still set to eight I can go back here I could make this a completely different type such as a double of course it's going to give me an error this time because the compiler is going to warn against that I can just

**8:38** · cast it to a double though doesn't matter I can I'm going to run my code again I'm going to look at the value I'm going to copy the value I'm going to paste it over here and get rid of all this other junk at the end hit enter and look at that it takes me to that place in memory where I'm storing my data and there are four byes there that have the value eight types do not matter types

**8:59** · are useful for manipulation of that memory so if I want to read and write to that memory types can help me out because the compiler will know for example that an integer is supposed to be 4 bytes so when I try and set a value there it will set four bytes of memory But ultimately types are completely meaningless and in future videos we're going to take a look at that even more deeply but for now just don't worry about types all right so let's go back to having our void pointer right why

**9:25** · wouldn't you always use a void pointer well suppose that I wanted to get access to my I've got a pointer which is pointing to that data however now I want to actually write to or read from that data so that variable is holding the value eight I want to change that how do I change that how do I I've got I know where the data is but how do I get access to it that's where D referencing comes in so we've gone from a VAR to a

**9:49** · pointer to VAR but how do I come back to that VAR well you can do that by sticking an asterisk at the front of your pointer so in other words if I write this I'm actually de referencing that pointer which means that I'm now accessing the data I can either read from or write to that data so I could

**10:07** · for example write the value 10 in here however if I try and do that you'll see that I'm actually getting an error why because we've said that point this pointer is a void pointer which means that I mean how how is the computer possibly going to write the value 10 into a void pointer it doesn't know what it is is that 10 a short which is a 2 by integer is it an INT which is a 4 by integer is it a long long which is an 8 by integer we don't know how many how

**10:30** · many bites of data should this write right we've just said it's 10 but 10 could mean anything really that's where types come in we need to tell the compiler actually know this is an integer so I expect you to write four bytes in please so let's just go ahead and change this to int and now of course we've told the compiler this is an integer we've told the compiler the compiler hasn't been like yeah this is this is correct we've told the compiler if we make a mistake if we say this is actually a double we could be in trouble if I then output the value of VAR which

**10:58** · as you note is my original variable you'll see that the value that I get is 10 Okay so we've successfully changed it from A8 to to 10 and if we go ahead and we set another break point over here and run our program I'm going to come down here into watch and actually put in that pointer and then I'm just going to drag the value all the way up here so that we go to that spot of memory you'll see that at that memory we're storing eight if I hit F10 to advance my program one line You'll see that now it's changed to 0 a a of course is hexadecimal for 10 so

**11:29** · you can see that by dereferencing a pointer and writing to it I'm basically accessing that data in this case I'm writing to the data at that memory address all right cool so you should now know how pointers work that's really all there is to them a pointer just points to a location in memory some people say that it points to a block of memory although this isn't really accurate because we don't know how big that block of memory is in this case it's 4 bytes sure cuz we've created an integer and an integer is four bytes of memory so we do

**11:57** · have a pointer that is pointing to essentially a block of four byes however there's nothing in the actual pointer which says how big the memory is when we create arrays and all that it does kind of keep track of the size I'm not going to talk about that but simply put we don't know how big the pointer is we don't know how much data it's holding because it's not holding data right a pointer is just an integer which is a

**12:17** · memory address that's it now so far we've been directly creating data on the stack if I create a variable like this we're creating it in the stack portion of our memory I'm going to be talking about the stack and the Heap and all of that in a later video there might be like an annotation or something on the screen if I've already made that video so go ahead and check that out if you want more details but what I could do is create a variable on the Heap or in other words I could ask our computer hey I want you to allocate some memory for me and I want it to be a certain size so what I could do for now is use a Char star now we

**12:49** · know we know that a Char is one bite right so when I ask something like this I I'll call it a buffer and I'll set it equal to a new Char of size eight what I'm really asking for is 8 bytes of memory so this has allocated 8 bytes of memory for us and is returning a pointer

**13:07** · to the beginning of that block of memory I could then use a function called memset which basically fills the block of memory with data that we specify it takes in a pointer which is going to be the pointer to the beginning of the block of memory it's going to take in a value such as zero and then it's going to taken aside so how many bytes should it fill in this case we know that we have eight bytes let's run this program

### Mem Set

**13:29** · I'm going to take this now you'll see that this has the memory address over here now you already know how memory addresses work and all that so I'm just going to type the actual variable name buffer up here and hit enter and you'll see that look at this we've got eight bytes of memory in a row of course that are all set to zero because that's what we've done with our M set in this case because we use the new keyword and this data is actually Heap allocated we should also delete the data when we're done with it and we can do that just by typing in delete we know it's an array we use the array operator to allocate it

**13:56** · so we should use the delete keyword with the array operator and then delete that buffer if we were being super nice however our program does finish here anyway the point of this example was just again to reiterate that this is a pointer we've said here that we want to allocate eight chars a Char is one bite so Thus We've allocated eight bytes and we're storing a pointer to the beginning of that data one more thing that I want to mention is the pointers themselves are just variables

**14:22** · and those pointers those variables are also stored in memory that's where we can get things like double pointers or triple pointers or basically pointers two pointers how does all that work right well you just go down a level and you're basically just saying I now have a pointer which points to my pointer so I now have a variable which is storing the memory address that's pointing to another variable which is storing a memory address simple right so in this

### Double Pointers

**14:46** · example with my buffer I could create a double pointer right this means it's a pointer to a pointer I'm going to call it PCR and I'm going to set it equal to the memory address of buffer so now this is where it gets interesting I'm just going to move this break point up here because I don't want to be deleting the data just yet let's take a look at this slowly this is the value of pointer I'm going to take that I'm going to copy it in here right now you can see that over here we've got B8 F1 02 and 0 four byes

**15:15** · I know that this pointer is going to be 4 bytes of memory because I'm running a 32-bit application and in a 32-bit application a memory address is 32 bits more on that in another video now because of the endianness of this computer it's actually in reverse order so if I paste this in here we actually have to rearrange it so that it says 0 0 02 F1 and then B8 at the end like that

**15:38** · if I hit enter look at that I'm taken to the memory which stores this buffer of zeros okay that's it pointers to pointers sorted right really simple stuff so that's it I could keep talking about this all day but really I'm just going to come back to saying the pointers are just integers which store a

**15:58** · memory address that is all that they are get that into your head I'm going to be making a lot more videos on this topic and dealing with things like pointer arithmetic and more advanced kind of pointer operations so if you're new to this channel feel free to subscribe as you begin to use pointers and as we begin to use pointers throughout this series you'll get a lot more examples and you'll see just how powerful they are and what we can do with them but this is the gist of how they work don't

**16:21** · overthink it they're really simple thanks for watching and I hope you enjoyed this video if you did please hit that like button you can also follow me on Twitter and Instagram and if you really enjoyed this video and you want to see more videos like this you can support me on patreon.com theurn next time we're going to be talking about references and I'll see you guys in the next video goodbye \[Music\] \[Music\]