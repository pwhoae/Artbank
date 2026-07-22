---
title: "These CSS PRO Tips & Tricks Will Blow Your Mind!"
source: "https://www.youtube.com/watch?v=PL3Odw-k8W4"
author:
  - "[[Coding2GO]]"
published: 2024-05-06
created: 2026-07-21
description: "10 MINDBLOWING CSS Tips and Tricks that solve typical JavaScript problems with CSS ONLY. You will learn elegant solutions for everyday css problems and produ..."
tags:
  - "clippings"
---
![](https://www.youtube.com/watch?v=PL3Odw-k8W4)

## Transcript

**0:00** · tip number one did you know that you can actually allow the users to control the height and width of your Elements by using the resize property in CSS you can allow the user to resize the HTML element vertically horizontally or both at the same time this will work for every element that has an overflow of any other than visible for example overflow hidden have you ever seen these clean designs with the HTML elements look super smooth and have this levitating effect this is called neumorphism and can be achieved with a very easy CSS trick we give our element

**0:30** · a hover effect and simply add a box Shadow make sure that the background is not completely white and instead a very light gray because now we add another box Shadow with a comma this Shadow is using negative values for the X and Y coordinates to cast The Shadow on the top left corner of the element and the Shadow's color is white this will look like a source of light coming from the top left corner creating this clean realistic effect we could also create the exact opposite effect and make it look like the element is carved into the website just use the keyword inset after

**1:00** · each Shadow and there you go of course this effect will work with every color pette that you have in mind just make the top left Shadow slightly brighter than the background color did you know that in many cases you don't need JavaScript to create user interactive elements simple buttons or drop- down Menus can be achieved in CSS only if you

**1:17** · know a little trick that involves using checkboxes since labels and checkboxes can be connected using the four attribute you already have the foundation of your button now you can use the checked studo class on your checkbox to check if the label was clicked or not so this works like a simple JavaScript event listener but only in CSS because now you can show and hide other HTML elements depending on the state of the checkbox and the last thing to do is to hide the checkbox with a display none so no one will ever notice you can see this trick being used in our CSS only navigation bar tutorial

**1:47** · to open and close the sidebar when you want to make any type of container responsive you most likely end up changing the width so that a big container fits properly on a small smartphone screen then you probably have your preferred width of a 800 pixels and a Max width of 90% so the container will never be too big for the screen in this case you can actually use a function called Min to turn this two lines of code in one line of code the Min function always returns the smaller value which means on desktop devices 800 pixels is smaller than 90% so 800 pixels

**2:18** · is going to be the width but on smaller screens we reach a point where 90% of the screen is actually smaller than 800 pixels so 90% will be returned and 90% is the width of the container very simple the same thing works for minimum sizes by using the max function this function will always return the bigger value creating a short hand for the minwidth property and since you have to set up width minwidth and Max width for every element that needs to be responsive CSS introduced the clamp function that combines all three of them in one line of code tip number five

**2:50** · glass morphism if you ever wondered how you can make your website more unique consider using glass-like elements on your website they are definitely an eye-catcher all you need is an element that has a somewhat transparent background color now you can use the backdrop property to control how the elements behind the current element should be rendered here you apply the blur function and provide a value of let's say 10 pixels this will create a blur effect on the element which will look like glass of course this effect

**3:18** · only works for elements that are in front of something else if you don't have a background image or anything like that then of course no one will see the effect you can experiment with the blur amount to control the thickness of the glass and try to use borders and shadows to make it look even more realistic you probably know that writing good CSS code is all about figuring out by what logic you want to select HTML elements and then style them you're going to use many selectors combinators and SoDo classes to define the roots for your web design and when doing that you should definitely hear about the not and Haso

**3:49** · classes as they completely change the game forever the Noto class is able to exclude elements from the selector in this example I want to style all the buttons but not the first one so to right button the not selector and in the parenthesis I say first child now every

**4:05** · button will be affected except the first one the has selector is a cool way to select an element based on the presence of other elements it's often used as a parent selector which was not possible before in this example I want to style all the buttons the same way to have a clean and consistent design but some buttons have an icon inside and need a little more styling now I could give this button a class but then I need to do that for every icon button in the future much easier would be to do that in CSS only by addressing all the buttons that have an SVG as a child element to do that I write button has

**4:37** · SVG now only the buttons within SVG will be styled a more complex case for the selector would be to create a dark mode option in CSS only let's say we have a drop- down menu for the light and dark theme in CSS I apply the stes on the body that has an option with the value

**4:55** · dark then we check if this form element is checked using the checked s class I showed you earlier for the body where this is the case I override the variables for the color plette to be dark on Modern websites we see more and more creative ways to make text look more interesting one thing that I like a lot is putting gradients on text if you ever tried doing this then you probably notice that it is not possible to use the linear gradient method on the color property it just won't work the trick is

**5:20** · to apply the gradient on the background of the element now we can limit the background painting area using background clip text this means the background will only be where there is text last thing to do is to make the color transparent now we can only see the background color which is our gradient pretty cool when building a complex drop- down

**5:40** · menu you would probably use JavaScript to show and hide your elements but you might be surprised how much you can do with plain CSS as a start you would probably use the focus sudo class which is applied to the element when you click on a button or any type of form element using that will enable you to hide and show elements on click this will work great until you run into this annoying problem when you click on an item inside the drop down the button will lose its focus and the elements Disappear by now

**6:06** · most people will probably reach for JavaScript however you can use another pseudo class which is called Focus within this pseudo class will detect the focus on child elements and will spare a lot of work in JavaScript because now we can actually click on the element inside the dropdown and it will work perfectly

**6:21** · when you have a website where you want to number your headings you can do the hard work and hardcode it into every single heading but what if you are loading the headings from a database the then you can't really do that instead just create a counter variable in CSS in the root you create your counter using counter reset and give it any name now

**6:38** · the moment your counter should be incremented you address the element and use the counter increment property now you add a before element to the headings and its content is going to be the counter headings now you can apply a little bit of styling in the before element and the headings are numbered perfectly if you ever try to create a swiper where every card should slide perfectly into place then you need to hear this trick normally when creating a

**7:01** · scrollable container everything is very linear and very bad for the user experience we don't want the user to be stuck in between two cards instead we want the cards to behave like a magnet that sticks perfectly on the edge there's always only one card being displayed and in general the swiper FS very smooth how did I do that well in HTML I have a wrapper with five cards each card has a heading a Tex paragraph and some very basic Styles in CSS the only important thing is that the wrapper is exactly the same size as one card so

**7:31** · only one card can be displayed at a time and we have an overflow ax of scroll so we can't see the other cards and we have to scroll this is basically the foundation of every swiper now having only that the scrolling will be very linear and boring to have it smoother we need to specify its scroll snap type this is a CSS property that you apply on the parent element we are scrolling horizontally so the first value is going to be X this is for the xaxis if you

**7:57** · have a container that Scrolls vertically you would use Y for the y- axis the second value is the actual scroll snap type we want this to be mandatory now we have to Define where we want to snap for that we have to address the card's scroll snap align property this one can have the values Start Center or end for us it doesn't matter which one we choose since the cards are exactly the same size as the wrapper they will always snap perfectly so I just say Center and now when we use the Swiper the cards will snap perfectly mandatory is not the

**8:28** · only snap type you could also use proximity then it will only snap when we are close to the edge which means it can also snap back if we don't scroll hard enough this was coding to go and if you have a cool CSS trick to share write it in the comments for others to see also watch this video right here to learn more about web development or coding in general