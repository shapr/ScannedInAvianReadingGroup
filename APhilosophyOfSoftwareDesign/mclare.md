## Chapter 1 - Introduction (It's All About Complexity)
- Two approaches to eliminating complexity, but can't modularization be seen as a way of making code simpler and more obvious?
- Where is modular design really evident? Is functional programming a *form* of modular design? Currently working through learning React and obviously the whole modular reusable component idea is all over the place.
- If I had a nickel for every time a programming book compared programming to the building of actual physical things, I could retire early. Hilariously, a lot of the ideas behind current trends in construction have to do with modularization/"industrialization" of building components (everyone talks about "kits of parts")
- "Software systems are intrisically more complex than physical systems" -- I beg to differ, sir.
- "In contrast, major design changes are much more challenging for physical systems: for example, it would not be practical to change the number of towers supporting a bridge in the middle of construction" -- not practical, but by god, IT HAPPENS.
- If this should be done in conjunction with code reviews, should we work on a project where we can do that?
- I need to rewatch that talk about how there really isn't much difference between all the various programming paradigms (https://www.youtube.com/watch?v=Pg3UeB-5FdA)
## Chapter 2 - The Nature of Complexity
- "Complexity is anything related to the structure of a software system that makes it hard to understand and modify the system""
- What qualifies as "hard to understand"? What is a baseline amount of time it should take? How would this vary between different people's levels of experience with software
- I feel like Ryan would have a lot to say about these kinds of assertions about "hard to understand"/"easy to modify"
- Complexity is more apparent to readers than writers -- this is why you should pair program.
- How much has software culture shifted in the last 20 years towards code that others can work with easily, building abstraction layers rather than improving performance? I hear that one of the reasons golang is so popular is because of the ease of use and being able to pass off code.
- Change amplification - some manifestation or rewording of DRY?
- Cognitive load - gets back to the question of... won't this vary between developers/experience level?
- "Sometimes an approach that requires more lines of code is actually simpler, because it reduces cognitive load" -- HARD AGREE ON THIS ONE. When I was learning python and being exposed to an alpha framework, it felt like the developer was fixated on code golf to see how much he could pack into a single list comprehension.
- "Complexity is caused by two things: dependencies and obscurity"
- Dependencies vs modules? is it just that a library and how it works isn't exposed in dependencies?
## Chapter 3 - Working Code Isn't Enough
- Feels like there's some unspoken nuance in terms of what's tactical vs strategic... how can you completely scope a problem at its onset? Is this even realistic?
- If the primary goal is to produce a great design... what consistutes that? is it using well established/accepted design patterns? What makes it elegant?
- Sidebar - spaghetti code base is a term that exists outside visual programming?
- This chapter seems to be mostly about organizational approach. Having a clear idea in mind of how the system should work before you start to implement it and taking that prep/kickoff time
## Chapter 4 - Modules Should Be Deep
- "An abstraction is a simplified view of an entity, which omits unimportant details"
- Struggling with how "deep" modules are a good thing. This kind of goes against the "small methods/functions" paradigm I've seen, but I guess it really depends on module dependency.
- Can you actually see garbage collection in any programming language? Could I see what happens with Python? (Wondering if maybe pyspy can expose that)
- It seems like th biggest challenge with the deep vs shallow classes is answering the "what ifs?" while you're programming. I definitely tend to think of too many ways that something might be used, which leads to shallower functions, rather than limiting available actions
## Chapter 5 - information Hiding (and Leakage)
- The section on Information Leakage just seems like a different way of saying DRY
- "When designing modules, focus on the knowledge that's needed to perform each task, not the order in which tasks occur"
- "Information hiding can often be improved by making a class slightly larger"
- Are there programming languages where temporal decomposition kind of can't happen? (I'm thinking Haskelly but I could be wrong)
## Chapter 6 - General-Purpose Modules are Deeper
- so should functions only be defined if they're used in more than one place? re: text editor example
- The general purpose API only wraps up consolidation of two methods into one (delete key vs backspace key), is it more about the transparency of what it does at the interface level where the parameters explicitly indicate the method?
- This chapter was a bit harder to grok for specific applications, might need to reread again in a week.
## Chapter 7 - Different Layer, Different Abstraction
- dispatcher -- is this like a switch statement where it parses out which method to use?
- Hating on decorators... are decorators the same thing in all languages? I feel like the case for decorators is underdeveloped here because the author wants to warn against their usage
- context objects vs. global variables?? so you create an object that has properties that are the global state
## Chapter 8 - Pull Complexity Downwards
- "It is more important for a module to have a simple interface than a simple implementation"
- This is a pretty short chapter that seems to just be reinforcing the previous ones while just adding some info about avoiding configuration parameters (though this is a useful concept for me with Pymaxion)
