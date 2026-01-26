+++
title = 'Software Architecture in the age of AI'
date = 2025-01-17T17:48:00+03:00
draft = false
+++

## Software Architecture in the age of AI

In 2022, as an early Christmas present, OpenAI released ChatGPT, and the world will never be the same. In the next few years, the product will undergo rapid evolution, and competitors will start appearing left and right. Software products like Windsurf, Cursor, and Claude code will be released. As of January 2026, it appears that software development has undergone a metamorphosis not seen since the days of C and the rise of higher-level languages. Software development is now available to the masses like never before, the number of people who never learned to code that created and released applications is countless, and the speed at which new software is being created has ever increased. But there is another trend lurking in the shadows, the trend against good Software Architecture.

{{< figure src="/images/clean-architecture-in-the-age-of-ai_heading.png" >}}

### The power of MVP

There is an interesting manifesto I like to read from time to time, it’s called “The Cult of Done”. Its idea in essence is to accept that things will never be perfect and to avoid over-perfecting everything, or in other words, “Perfect is the enemy of Done”.

Let me paint you a picture, a personal one. I’ve long dreamed of the perfect Workout logging application, one that has a given number of functionalities I so much crave in my workouts. At some point 2 years ago, I realised “Wow, okay, I am a software developer. Why don’t I make one?”, and proceeded to spend the whole winter time-off to write this React Native app that has the exact functionalities I need. I even USED IT! It was not the smoothest experience. There would be multiple times where I would be smashing Iron, and the App would crash, or some functionality would simply not work, but eventually, I got it working.

As great as the app was, I never got around to releasing it. I wanted to be smoother, to have more features, to be more friendly, more, better, smoother, more, better, smoother. It was never released. It was like I was working against myself. Eventually an year later, I got to play with Claude Code and Zed in my free time, and I created one from Scratch using Swift, this time I set a clear goal: to release version 1. And this time I did, only to proceed to get stuck on version 2 because of the same issues, not good enough. The app is called Jim Logger, and it’s available in the [App Store](https://apps.apple.com/np/app/jim-logger/id6747583498). It’s 100% offline with 0 data tracking.

{{< figure src="/images/jim-logger.png" link="https://apps.apple.com/np/app/jim-logger/id6747583498" >}}

In the years I’ve been working in the industry, I’ve seen this pattern multiple times with multiple people, and it has been a great interest of mine to see how different people/organization handle this problem. Then the AI happended and people started pumping apps and SaaS solution with great speeds.

Looking at social media, there are roughly 2 types of people regarding AI(mind you, this is the vocal ones): people who are all about getting the product out of the window ASAP, and people who care about the art of architecting the system to the best of their ability. More often than not, those people collide in interesting discussions around the product life-cycle, quality, and values.

{{< figure src="/images/mvp-irl.png" >}}

### The “old school” days of Software Development

I remember when I initially started my journey as a programmer, learning and writing PHP in a company that was a partner of my high school. At the end of the internship, I felt like a rockstar. We've created the perfect system for tracking university grades. I was ready to start work right there and then(in my eyes), but I had 1 more year of school. Well, in that year, I found out just exactly how much I don’t know. The so-called app was barely stitched together. We are talking SQL mixed with HTML and PHP, no security whatsoever, hard to debug, and even harder to work on.

As I kept learning, I kept finding more and more things I don’t know: Object Oriented Programming, Design patterns, System design, application lifecycle. As part of my preparation for the real-world job, I was creating applications that were as extendable as possible, with the most appropriate design patterns, validation, and data normalisation, etc. Later, I found out that there is no perfect project in terms of architecture, but I had the opportunity to work on some that really showed the strength of a good design.

In this article, I mentioned Software Architecture, but in reality, I would like to talk about the architecture patterns as a whole: Clean, Event Driven, Domain Driven, Layered … architectures.

In my eyes, there is no bad approach. My mantra per se, is that there is no bad architecture(mostly) as long as there is something in place and that something is consistently used everywhere. Meaning if we are going to do something like Onion architecture, we'd better do it for the whole project, not only some parts of it. This is ensuring that the code is predictable, easier to maintain, there are guardrails for the Developers and the overall review process is easier.

{{< figure src="/images/effort-time.jpeg" >}}

The graphic above is probably my favourite graphic in the Software business. The premise is simple: when the setup is good, the new features take a long time initially, but later on, it gets easier and easier to add new stuff. But if you take shortcuts initially, the later features, especially those that touch multiple things in the codebase, can be very painful to add and support.

This is where balance comes: do you design a platform and deliver MVP in 6 months, or wing it and do it in 1, but at the price of having to revamp most of the things you did initially?

### The good, the bad, and the LLM

One Friday, I got the inspiration to try and create a TODO app with a given set of features and try deploy it by Sunday evening using nothing but vibe coding. meaning, I don’t care about the code, I want the functionality. It was my first time using AI on a green-field project, so I just prompted my way around, asking for feature after feature, testing, and asking for fixes here and there. I got my app by Sunday; it was functional, but something strange occurred. You remember the previous graphic, the one with the time to add features? Well, once we hit a certain point, adding new things was just painful. I wanted to add tags to the todo items as a last feature before delivery. I took nearly as much time as the collaborative mode I introduced at the beginning. Bug after bug, missing validations, crashes, it was glorious.

{{< figure src="/images/claude-mvp.png" >}}

In the time since I’ve done some more projects, small sized POCs just to see what sticks when needing to create something working(TUIs, games, APIs, web apps). It’s fascinating to me, having the power to create something you thought about before going to sleep and having it working before lunch. It’s very obvious how many people are able to get their apps working without knowing anything about programing and it’s probably liberating as well.

Well, that’s it, the software engineer job is done … or is it?

The whole issue with such an approach lies beyond the first few functionalities, when you start changing things. “Oh, this field looks weird here, move it there”, “Let’s make it fit on a smaller screen”, “The DB ID should actually be a GUID”. Often, the AI will forget some parts of the system that need updating, or it will try to make things backwards compatible without the need. It will add a bunch of addly specific log messages which more often than not contains emojis. It will get stuck trying to update SQL migration and, at some point, will try to purge the whole DB(ask me how I know).

All this to say, yes, you can create an App built with AI, but the maintenance is something that should always be at the back of your mind.

### New tech, old problems

But this isn’t a new problem. Actually, it sounds pretty similar to working with Interns and relatively new Juniors, well, a bit more eager Interns and Juniors but the same behaviour, meaning trying to get something off ASAP without thinking much about the code already in place(again, ask me how I know).

Now let’s say we combine the two tools, Clear Architecture + LLM, let’s add to the mix a rules file that restricts the AI in areas like: silencing warnings, string typing in languages like Python. A lot of those problems start to go away, and more consistent output starts coming up. The AI now has a way to navigate the codebase in a more organised manner. It has the rules for logging, so no more println, no more any types, no more deeply nested functions.

What works for me in such cases is to start a planning mode in Cursor, where I would lay out the problem and then ask the AI about possible solutions. I will usually come up with some pretty decent suggestions, but we must be careful with the usecase we are having. For example, I recently wanted to refactor a fairly chunky service layer file. It had a lot of functions, a lot of logic inside of it. I started by asking about opinion, an open-ended question about a possible solution. Then I added some of my ideas. Finally, I asked what the senior architect would suggest. 

Had I gone with it’s first suggestion, we would’ve ended with multiple service layer files, but they would have to have dependencies on each other, so we don’t have repeating checks. Meaning more of the same. Had it’s gone with my suggestion for Domain Driven approach, it would’ve been quite complex and not at all compatible with our other sevices. Also, it would’ve been confusing for my peers. The third solution was also not very good just because it was more event based that we would’ve liked. The final solution was a mix of the first 2, where some of the validations were moved into the domain, but the overall flow was still service layer based, so it’s compatible with the other stuff.

The interesting thing about this solution was that it came from semi-natural discussion, it wasn’t me telling it what to do, and it wasnt it doing what it thinks it’s best and most imporantly due to the way we structured out rules files and our architecture the code-review later didn’t have as much comments as I would’ve expected, mostly small stuff around one line functions that can go away and some backwards compatibility with experimental flag so we don’t brake prod with our fresh refactor.

Lately, I've been experimenting with the Superpowers Claude Code plugin. For those unaware, this is a plugin that turns the agentic capabilities of your Claude Code to 11. It tries to be as critical as possible of the requirements before starting any work. It splits the work into managable tasks, and while implementing them, it is doing it in TTD fashing, making sure all tests pass, and all lint errors are solved. It isn't perfect, for example, I don't really like the amount of commits it produces, and the number of subtasks can definetely be improved, but it feels like a 2x improvement over the plain Claude Code setup with just rules.

{{< figure src="/images/superpowers-tasks.png" >}}

As a whole, I am pretty excited about what's next in this field; the pet projects are faster to spin than ever before, and I am looking forward to experimenting more with this tech.
