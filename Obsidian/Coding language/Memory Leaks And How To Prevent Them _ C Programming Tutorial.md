---
title: "Memory Leaks And How To Prevent Them | C Programming Tutorial"
source: "https://www.youtube.com/watch?v=lQCLAKfcYI4"
author:
  - "[[Portfolio Courses]]"
published: 2022-04-19
created: 2026-07-07
description: "An explanation through examples of what memory leaks are in C, including different ways they can occur and how to prevent them.  Source code: https://github.com/portfoliocourses/c-example-code/blob/ma"
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=lQCLAKfcYI4)

An explanation through examples of what memory leaks are in C, including different ways they can occur and how to prevent them. Source code: https://github.com/portfoliocourses/c-example-code/blob/main/memory\_leaks.c. Check out https://www.portfoliocourses.com to build a portfolio that will impress employers!

## Transcript

**0:00** · in this video we're going to learn what memory leaks are in c and how to avoid them so memory leaks occur when we fail to free memory that's been dynamically allocated by our program memory leaks can also occur when our program loses the ability to access memory that's been dynamically allocated so the values for the regular variables in our c program are stored in a place in memory called the stack and the stack is basically managed automatically for us we don't have to do too much as programmers to set aside space for our variables or release that space when

### Memory Leaks

**0:32** · it's no longer needed so for example if our main function has a variable int x then we set to the value 5 that's going to be stored on the stack let's also create some functions we'll say here void func one it's going to have a variable y that's set to 10 and we'll have void funct2 with a variable z that we said to 15.

**0:57** · now we'll call func one and we'll call funct2 so when our program runs first space is going to be set aside for this variable x it's going to store 5.

**1:11** · then when funk 1 is called space is going to be set aside on the stack for the variable y it's going to be set to 10.

**1:18** · then when funk 1 returns that space is going to be released again then func two will be called then on the stack we'll have z set to 15 then funct2 will turn and that space will be released so that's how the stack works that's a very simple explanation but that's basically how it works we as the programmers don't really do too much

**1:41** · other than declare variables and that's about it the heap is an area of memory that we have to manage ourselves on the heap we have what's called dynamically allocated memory where we as the programmer more explicitly allocate a block of memory and release it when we're done with it so we typically use the functions malek and kalak to allocate space for these blocks of memory on the heap to use malloc we'll have to include the stdlib.h library

### Malloc

**2:09** · where it's defined and using malloc looks like this we'll say int star pointer is equal to malek sizeof int so malik is going to allocate space on the heap for a single integer it's going to return a memory address that memory address is going to be stored into pointer and that memory address is where that

**2:34** · integer can be stored on the heap so in memory we'll still have pointer on the stack but pointer will be set to some memory address that malloc returns we could say 102 then at that memory address 102

**2:52** · somewhere else in memory that's where we could store an integer so here if we said star pointer is equal to 5 what we're doing is dereferencing the pointer we're going and getting this space at the memory address stored in the pointer and we're storing at that memory address the value 5.

**3:18** · now this is on the heap it's in a different area of memory than the stack and the heap is something we have to manage so with the stack as our functions were returning those local variables were automatically being released from memory and that position in memory could be used again say what another function is called in the case of the heap we have to explicitly free the memory we do that using the free function so what we say here is free

### Free Pointer

**3:50** · pointer and when i say free pointer what's going on is that this space that was dynamically allocated during our program's execution is being given back it's being released so that it could be used again so in this program here it's not like our program is going to crash because we forget to free this single insworth of space on the heap but mallet can be called many times

**4:18** · throughout a program's execution and malloc can also allocate space for larger blocks of memory so for example here we could say times ten thousand and now malloc would allocate space for ten thousand integers if we start forgetting to free blocks of memory this big

**4:40** · we're to have more and more of an issue our program will have space set aside that it's not even using and eventually if our program keeps doing this we could actually run out of space that's even available malik will actually return null when there's no longer space available on the heap let's go over an example of that

**4:58** · we'll make a pointer here called data and we'll make a loop that's going to use data to continually allocate more space and we're going to allocate a lot of space we'll say here size underscore t data underscore size is equal to size of int times 1 and we'll put 12 zeros after it so 1 2 3 1 2 3 1 2 3 and 1 2 3.

**5:29** · this size underscore t is a type we get with stdlib.h that's technically what malloc accepts as an argument is something with this type we'll actually keep track of the number of iterations of the loop we'll say int

**5:44** · iterations is equal to zero we're going to run the loop until malloc returns null when the heap is full because we're using true here with our loop we'll include esteribul dot h and we'll say here data is equal to malloc

**6:10** · data underscore size so continuously try to allocate space for something with this very very large size here with each iteration of the loop eventually the heap is going to be full eventually there's going to be no more space to allocate because what we're not going to do is free data because we don't free data this space is

**6:34** · never released and if we just keep allocating more and more space eventually the heap is going to fill up so we'll check for that if malloc returns null then data is going to be set to null and if it is we'll break to terminate the loop so we'll say break here and then finally we'll increment the iterations variable keep track of the amount of iterations we'll do a printf as well

**7:04** · top of the iterations so we'll say printf iterations percent d backslash n and then iterations then we're done we'll print out that malloc failed so we'll say malik failed backslash n so we'll save this and we'll compile it

**7:25** · and then we'll run it and after 34 iterations we get the malloc failed and what's gone on is that the heap is actually out of memory because malik just keeps allocating more and more space but we never free the space so we actually just run up memory on the heap this is the big risk with a memory leak

**7:48** · let's actually slow down the program so we can see what's going on in more detail to slow things down we'll use the sleep function what i'll do is include uni std.h where the sleep function is defined then down here in our loop after each iteration is complete we'll say sleep one to sleep our program for one second

### Sleep Function

**8:15** · let's recompile our program and try running it again this time when i run it i'm going to use the activity monitor to actually monitor what's going on with our memory so up here i'll go to the activity monitor and we'll get that running i've called my program aaa so i should be able to see it at the top here so we'll run our program now

### Activity Monitor

**8:44** · and we have that aaa program running let's check it out let's zoom in on this virtual memory size here so that we can watch the memory that our program takes up expanding so notice how it's going from 36 54

**9:04** · 72 so it's going higher and higher here eventually we're just going to run at available space and our program will actually crash so 112

**9:20** · now it says terminated up here and if we check our program we're going to see that we're at the malloc failed stage now so it took a longer time but our program failed in the same ways before and this time we could actually watch the memory that our program is using increase over time until eventually it crashed modern computers and operating systems use something called virtual memory that allows our programs to take up more space than is available in ram alone

### Virtual Memory

**9:49** · virtual memory is also slow so if a program has a memory leak and as a result it's using more and more virtual memory it's also going to impact the performance of our program so even if our program doesn't crash due to memory leak the program's performance can also be impaired as well

**10:05** · what if we use free though if we use free here and we just say free data what's going to happen is that in each iteration of the loop we're going to free the dynamically allocated memory we're never going to run out of space this way we'll actually take out this call to sleep here we'll save this we'll do a clear recompile our program and run it

**10:34** · and now it's going to work indefinitely because in each iteration of the loop yes we're allocating a big block of memory we're also freeing it so on the next iteration of the loop when we use malloc to allocate memory again there will be space available so the program can actually go on indefinitely now we'll actually have to kill it here to stop it so whenever we use malloc or calek to allocate space for data on the heap we're going to have to use free to free that space once

**10:59** · we're done working with that data otherwise we'll have a memory leak now typically speaking memory leaks aren't really a problem in small programs like this where we can see where we allocate the space and we can see where we free it it's typically more of a problem in larger programs where we have functions that allocate space and maybe other functions that are responsible for freeing that space that sort of a situation actually comes up when working with data structures like linked lists or binary search trees

**11:27** · now one other way that a memory leak can occur is if our program loses the pointer to the block of memory if that's the case our program can no longer free that block of memory let's go over an example of that we'll delete this here it will make a function that actually allocates a block of memory and returns a pointer to that block of memory so we'll say here in star allocate it's going to allocate space

**11:56** · on the heap using malloc we'll say malloc sizeof int times 100.

**12:04** · and then the function is going to return the pointer it's going to return the memory address for that block of memory then in our main function we could actually store that return value we could say instar block is equal to allocate

**12:23** · then our main function once we're done working with that memory we could say free block and this will work this is okay so just because we allocated the memory in the allocate function doesn't mean we need to free it there we can free in the main function and that's okay and just because we stored the return value of malloc the memory address for that block of memory into pointer

**12:47** · it doesn't mean we need to use free with pointer we can use free with block and it's the same thing because block is also a pointer that stores a memory address and block stores the same memory address that was stored into pointer that was a return value of allocate we could actually print out the memory address just to make that clear

**13:08** · here we'll say printf percent p backslash n and we're going to output pointer then in the main function we'll say printf percent p backslash n and we'll output block if we save this recompile our program and run it

**13:35** · both of those memory addresses we output are the exact same so we can use free here and we say free block we're freeing that same block of memory that allocate allocated what we returned with allocate was a pointer to that block of memory now the problem is what if we lose that pointer what if our program no longer has it so

**14:02** · for example let's say we didn't actually store the memory address returned by allocate so we call allocate to actually allocate the block of memory but we never store the pointer at that point the allocate function has returned because the allocate function has returned the pointer variable no longer exists

**14:24** · it's no longer on the stack and because we no longer store the return value of allocate we just don't have that memory address anywhere anymore and our program can't get it back either so we have this allocated block of memory but our program can't use it and

**14:39** · it can't free it so this becomes another way that we can get a memory leak and in my experience it's the more common way that they can occur memory leaks and dynamic memory allocation are some of the more challenging aspects of c programming and newer languages like java and python

**14:55** · actually handle dynamic memory allocation automatically for us using a process called garbage collection in large part to alleviate programmers of this difficulty hopefully this video has helped you to understand memory leaks and c checkout portfolio courses.com where we'll help you build a portfolio that will impress employers including courses to help you develop c programming projects