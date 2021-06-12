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
