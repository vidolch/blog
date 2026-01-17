+++
title = 'Clean Architecture in the age of AI'
date = 2025-01-17T17:48:00+03:00
draft = false
+++

## Clean Architecture in the age of AI

The year is 2022, as an early Christmas present OpenAI releases ChatGPT, the world will never be the same. In the next few years, the product will start rapid evolution, competirors will start appearing left and right. Software products like Windsurf, Cursor and Claude code will be released and as of now January 2026, it looks like the software development went a methamorphose not seen since the days of C and the raise of higher level languages. The once considered coding ascpect of the software development is now available to the masses like never before, the number people who never learned to code that created and released applications is countless, the speed of which the new software is being created has ever increased. But there is another trend lurking from the shadows, the trend against Clean Architecture.

### The power of MVP

There is an interesting manifesto I like to read from time to time, it's called "The Cult of Done". It's idea in essense is to accept that things will never be perfect and to avoid over-prefecting everything, or in other words "Perfect is the enemy of Done". 

Let me paint you a picture, personal one. I've been long dreaming of the perfect Workout logging application, one that have that given number of functionality I so much crave in my workouts. At some point 2 years ago I realised "Wow, okay I am software developer. why don't I make one", and proceeded to spent the whole winter time-off to write this React Native app that has the exact functionalities I need. I event USED IT! It was not the smoothest experience, There would be multiple times where I would be smashing Iron and the App will crash or some functionality will simply not work, but eventually I got it working.

As great as the app was, I never got aroung releasing it, I wanted to be smooter, have more features, be more friendly, more, better, smooter, more, better smooter. It was never released. It was like I was working against myself. Eventually an year later I got to play with Claude Code and Zed in my free time and I created one from Scratch using Swift, this time I set a clear goal, to release version 1. And this time I did, only to proceed to get stuck on version 2 because of the same issues, not good enough. The app is called [Jim Logger](https://apps.apple.com/np/app/jim-logger/id6747583498) and it's available in the App Store, it's 100% offline with 0 tracking.

In the years I've been working in the industry I've seen this Patters multiple times with multuple people and it has been a great interest of me how do different people/organization handle this problem. Then the AI happended and people started pumping apps and SaaS solution with great speeds. 

Looking at social media, there are roughly 2 types of people in regards to AI(mind you this is the vocal ones): people who are all about getting the product out of the window ASAP and people who care about the art of architecting the system to the best of their ability. More often than not those people colide in an interesting discussions around the product life-cycle.

### The "old school" days of Sotftware Development

I remember when I initially started my journey as a programer, learning and writing PHP in a company that was partner of my high school. In the end of the internship I felt like a rockstar. We
ve created the perfect system for tracking univecity grades. I was ready to start work right there and then(in my eyes), but I had 1 more year of school. Well in that year I found out just eactly how much I don't know.

As I kept learning, I kept finding more and more things I don't know: Object Oriented Programing, Design patterns, System design, application lifecycle. As part of my preparation for the real-world job I was doing application that were as extendable as possible, with the most appropriate design patterns, validation, data normalization. Later I found out that there is no perfect project in terms of architecture, but I had the opportunity to work on some that really showed the strength of a good design.

In this article I mentioned Clean Architecture, but in reality I would like to talk about the architecture patterns as a whole: Clean, Event Driven, Domain Driven, Layered ... architecture.

In my eyes there is no bad approach, people these days seems to hate on the microservices for example, for me they are great, yes sometimes pain to debug, more time to scaffold but I enjoy them very much so. My mantra per se is that there is no bad architecture(mostly) as long as there is something in place and that something is consistently there everywhere. Meaning if we are going to do something like Onion architecture, we better do it for the whole project not only some parts of it. This is ensuring that the code is predictable, easier to maintain, there are guardrails for the Developers and the overall review process is easier.

The graphic above probably my most favorite graphic in the Software business. The premise is simple, when the setup is good, the new features take long time initially but later on they are very easy to add. But if you take shortcuts initially the later features, especially those that touch multiple things in the code base can be very painful to add and support.

This is where ballance comes, do you design a plarform and deliver MVP in 6 months, or wing it and do it in 1 but in the price of having to revamp most of the things you did initially.

### The good, the bad and the LLM

One Friday I got the inspiration to try and create a TODO app with given set of features and try deploy it by Sunday evening using nothing but vibe coding. It was my first time starting empty project so I just prompted my way around, asking for feature after feature, testing and asking for fixes here and there. I got my app by Sunday, it was functional but something strange occured. You remember the previous graphic? Well once we hit a certain point, adding new things was just painful. I wanted to add tags to the todo items as a last feature before delivery. I took nearly as much time as the colaborative mode I've introduced in the begginig. Bug after bug, missing validations, crashes, it was glorious.

In the time since I've done some more projects, small sized POC just to see what sticks when needing to create something working(TUIs, games, apis, web apps). It's faacinating to me, having the power to create something you though about before going to sleep and having it working before lunch. It's very obvious how many people are able to get they Apps workout without knowing anything about programing and it's probably liberating as well.

Well, that's it, the software engeneer job is done ... or is it?

The whole issue with such approach lies beyond the first few functionalities, when you start changing things. "Oh this field looks weird here, move it there", "Let's make it fit on a smaller screen", "The DB id should actually be GUID". This often leads to things being backwards compatible without needing so or vice versa. Functionalities not being updated everywhere. At some point we start throwing more and more prompts with the hope of fixing it and we eventually do, until the next round of changes/additions.

### New tech old problems

But this isn't a new problem. Actually it sounds pretty similar to working with Interns and relatively new Juniors, well, a bit more eager Interns and Juniors but the same behaviour, meaning trying to get something off.

Now let's say we combine the two tools, Clear Architecture + LLM, let's add to the mix rules file that restricts the AI in areas like, silencing warnings, string typing in languages like python. A lot of those problems start to go away and more consistent output starts comming up. The AI now has a way to navigate the codebase in more organised manner. It has the rules for logging so no more println, no more any types, no more deeply nested functions.

What works for me in such cases is to start a planning mode in cursor, where I would lay out the problem and then ask the AI about possible solutions. I will usually come up with some pretty decent sugggestions, but we must be careful with the usecase we are having. For example I recently wanted to refactor a faily chunky service layer file. It had a lot of functions, a lot of logic inside of it. I started by asking about opinion, an open ended question about a possible solutions. Then I added some of my ideas, and finally I asked what would senior architect suggest. Had I gone with it's first suggestion, we would've ended with multiple service layer files but they would have to have dependencies on each other so we don't have repeating checks. Had it's gone with my suggestion for Domain Driven approach it would've been quite complex and not at all compatible with out other sevices. The third solution was also not very good just because it was more event based that we would've liked. The final solution was a mix of the first 2, where some of the complex checks were moved into the domain, but the overall flow was still service layer based, so it's compatible with the other stuff.

The interesting thing about this solution was that it came from semi-natural discussion, it wasn't me telling it what to do, and it wasnt it doing what it thinks it's best and most imporantly due to the way we structured out rules files and our architecture the code-review later didn't have as much comments as I would've expected, mostly small stuff around one line functions that can go away and some backwards compatibility with experimental flag so we don't brake prod with our fresh refactor.

There is quite a lot I like to explore more on the topic of working with LLMs. For me they are facinating piece of technology, something that allow me to quickly verify solutions or brainstorm.
