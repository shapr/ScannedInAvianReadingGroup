# A Philosophy of Software Design

# Chapter 1

* "If you can visualize a system, you can probably implement it in a computer program" what about the people who don't visualize at all?
* "greatest limitation is our ability to understand the systems we are creating" Yes, agreed!
* "we must find ways to make software simpler" I disagree, I think we need comprehension and understability. I'm not convinced simplicity is the best answer. Compositionality leads to comprehensibility.
* approaches to fighting complexity
  1. eliminate complexity by making code simpler and more obvious.
  2. encapsulate complexity so programmers can work on a system without being exposed to all of its complexity at once.
  3. Shae's third approach is to use consistent laws of behavior as evidence with monoids, functors, monads, etc. Follow the laws!
* "not practical to change number of towers in a bridge in the middle of construction" software is re-assembled with every/each change.
* "you should plan on spending some fraction of your time on design improvements" good luck with that, not sure I've worked anywhere that's been encouraged by management.
* "when using ideas from this book, it's important to use moderation and discretion" yes, don't be dogmatic about anything.

# Chapter 2 The Nature of Complexity

* "Complexity is anything related to the structure of a software system that makes it hard to understand and modify the system. [..] For example, it might be hard to understand how a piece of code works" comprehensibility is king.
* "it's worth probing other developers to find out why the code seems complex to them" that's a good idea, I should try that at work.
* change amplification vs cognitive load; Are these two opposites? That is, local changes are easy to make and understand? not sure about this one.
* "one of the most important goals of good design is for a system to be obvious." Not sure I agree with this, nothing is obvious unless you already know it, especially in programming.
* "it may be necessary to add an entry to a table holding string messages for each new status" - everyday at my job
* "obscurity comes from inadequate documentation" - also everyday at my job.
* with complexity "developers spend more time acquiring enough information to make the change safely" - yup, everyday at my job.

# Chapter 3 Working Code Isn't Enough

* "Many organizations encourage a tactical mindset, focused on getting features working as quickly as possible" This is also my job.
* "Perhaps you have a hard deadline." Also my job *sigh*
* "more important to get the next feature working than to go back and refactor existing code" Has the author worked at my employer?
* "In some organizations, management treats tactical tornadoes as heroes" Oh hey, that was my previous job.
* "If you program strategically, you will continually make small improvements to the system design." YES! I like this idea!
* "poor code quality slows development by at least 20%" AGREED
* "think of investement as something to do today, not tomorrow" yay!

# Chapter 4 Modules Should Be Deep

* "The interface consists of everything that a developer working in a different module must know in order to use the given module" This is a great description of an interface!
* "In general, if a developer needs to know a particular piece of information in order to use a module, then that information is part of the module's interface." This is a great point.
* Footnote: "there exist languages, mostly in the research community, where the overall behavior of a method or function can be described formally using a specification language. " What are these languages? I'd like to read more about them!
* ways abstractions can go wrong:
  1. omit important details
  2. include unimportant details
  sure, makes sense to me
* Deep Module: powerful functionality with simple interface
* "garbage collection shrinks the interface" huh, neat point
* shallow modules have a complex interface relative to the functionalit, linked list is the given example.
* "interfaces should be designed to make the common case as simple as possible" strong agree. Also Java's standard library classes is a good example of overwhelming numbers of classes that don't do much by themselves. (not that I've used Java the past few years)

# Chapter 11 Design it Twice
* you can't choose the best design unless you've come up with several designs

# Chapter 12 Why Write Comments? Four Excuses
* comments are part of the design?
* "Inadequate documentation creates a huge and unnecessary drag on software dev" OH YES
* "coments are fundamental to abstractions" "abstractions hide complexity" I'd buy that
* "comments capture information in the mind of designer that's not represented in the code" I like this!

# Chapter 13
* "use different words in the comment from those in the name of the entity being described" multiple descriptions give more info? the reader can triangulate?
* "higher level comments enhance intuition" - what's intuition? the big picture of the software?
* comments - what and why, not how

# Chapter 14
* names are documentation also?
* use names consistently - this is very important in Haskell!
* Hungarian notation takes descriptive names too far

# Chapter 15
* not yet convinced about writing the comments first, I gotta try this

* * Aren't tests also documentation?

# Random Notes

* Shae believes that maximizing speed of change is the best way to get all the other good parts of software. When code is easy to change:
  * speed of execution is easier to get by changing your approach to the problem, swapping out the algorithm or etc.
  * fixing bugs is easier
  * optimizing slow parts is easier
  * insight and understanding is easier, you can try new ideas quickly!
