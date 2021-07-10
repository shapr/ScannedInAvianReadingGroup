## Chapter 5 - information Hiding (and Leakage)

### 5.1 Information hiding

"The most important technique for achieving deep modules is
*information hiding*." "each module should encapsulate a few pieces of
knowledge, which represent design decisions."

"Information hiding reduces complexity in two ways. First, it
simplifies the interface to a module." "Second, information hiding
makes it easier to evolve the system."

"think carefully about what information can be hidden in that
module. If you can hide more information, you should also be able to
simplify the module's interface"

"partial information hiding also has value."

### 5.2 Information leakage

"Information leakage occurs when a design decision is reflected in
multiple modules." "information can be leaked even if it doesn't apper
in a module's interface." "Back-door leakage like this is more
pernicious than leakage through an interface, because it isn't
obvious."

"Information leakage is one of the most important red flags in
software design."

### 5.3 Temporal decomposition

"One common cause of information leakage... In temporal decomposition,
the structure of a system corresponds to the time order in which
operations will occur." "most design decisions manifest themselves at
several different times over the [runtime] of the application"

### 5.4 Example: HTTP server

### 5.5 Example: too many classes

### 5.6 Example: HTTP parameter handling

### 5.7 Example: defaults in HTTP responses

"Red flag: overexposure. If the API for a commonly used feature forces
users to learn about other features that are rarely used..."

### 5.8 Information hiding within a class

### 5.9 Taking [hiding] too far

"But, it's important to recognize which information is needed outside
a module and make sure it is exposed."

## Chapter 6 - General-Purpose Modules are Deeper

### 6.1 Make classes somewhat general-purpose

"'somewhat general-purpose' means that the module's functionality
should reflect your current needs, but its interface should not... The
interface should be easy to use for today's needs without being tied
specifically to them."

"it results in simpler and deeper interfaces than a special-purpose approach."

### 6.2 Example: storing text for an editor

### 6.3 A more general-purpose API

### 6.4 Generality leads to better information hiding

### 6.5 Questions to ask yourself

to "help you to find the right balance between general-purpose and
special-purpose for an interface."

"What is the simplest interface that will cover all my current needs?"

"In how many situations will this method be used?"

"Is this API easy to use for my current needs?"

## Chapter 7 - Different Layer, Different Abstraction

### 7.1 Pass-through methods

"one that does nothing except pass its arguments to another method,
usually with the same API"

### 7.2 When is interface duplication OK?

### 7.3 Decorators

### 7.4 Interface versus implementation

### 7.5 Pass-through variables

"passed down through a long chain of methods"

"context object"

### 7.5 Conclusion

"if different layers have the same abstraction... there's a good
chance that they haven't provided enough benefit to compensate for the
additional infrastructure they represent. Similarly, pass-through
arguments require each of several methods to be aware of their
existence (which adds to complexity) without contributing additional
functionality."

## Chapter 8 - Pull Complexity Downwards

"Suppose... you discover a piece of unavoidable complexity... should
you let users of the module deal with the complexity, or should you
handle the complexity internally within the module?" "it is more
important for a module to have a simple interface than a simple
implementation."

### 8.1 Example: editor text class

### 8.2 Example: configuration parameters

"In many cases, it's difficult or impossible for users or
administrators to determine the right values for the parameters."

"you should avoid configuration parameters as much as possible."

### 8.3 Taking it too far

"Pulling complexity down makes the most sense if (a) the complexity
being pulled down is closely related to the class's existing
functionality, (b) pulling the complexity down will result in many
simplifications elsewhere in the application, and (c) pulling the
complexity down simplifies the class's interface. Remember that the
goal is to minimize overall system complexity."

## Chapter 9 - Better together or better apart?

"when it makes sense to bring pieces of code together and when it
makes sense to separate them."

### 9.1 Bring together if information is shared

### 9.2 Bring together if it will simplify the interface

### 9.3 Bring together to eliminate duplication

### 9.4 Separate general-purpose and special-purpose code

"Red flag: repetition"

### 9.5 Example: insertion cursor and selection

"one project team took this approach. The object stored two positions
in the file, along with booleans indicating which end was the cursor
and whether the selection existed."

"Red flag: special-general mixture" ... "when a general-purpose
mechanism also contains code specialized for a particular use of that
mechanism"

### 9.6 Example: separate class for logging

### 9.7 Example: editor undo mechanism

### 9.8 Splitting and joining methods

"The best way is by factoring out a subtask into a separate method"
... "If you make a split of this form and then find yourself flipping
back and forth between the parent and child to understand how they
work together, that is a red flag"

"The second way... is to split it into two separate methods... makes
sense if the original method had an overly complex interface because
it tried to do multiple things"

"There are also situations where a system can be made simpler by
joining methods together."

"Red flag: conjoined methods... if you can't understand the
implementation of one method without also understanding that of
another"

## Chapter 10 - Define errors out of existence

"overall lesson from this chapter is to reduce the number of places
where exceptions must be handled"

### 10.1 Why exceptions add complexity

### 10.2 Too many exceptions

"classes with lots of exceptions have complex interfaces" "An
exception is a particularly complex element of an interface. It can
propagate up through several stack levels"

"The best way to reduce the complexity damaged caused by exception
handling is to **reduce the number of places where exceptions have to
be handled**."

### 10.3 Define errors out of existence

### 10.4 Example: file deletion in Windows

### 10.5 Example: Java substring method

"This approach simplifies the API for the method while increasing its
functionality, so it makes the method deeper."

"if errors are defined out of existence, won't that result in buggier
software?"

### 10.6 Mask exceptions

### 10.7 Exception aggregation

"handle many exceptions with a single piece of code"

"Masking and aggregation are similar in that both approaches position
an exception handler where it can catch the most exceptions,
eliminating many handlers that would otherwise need to be created."

### 10.8 Just crash?

### 10.9 Design special cases out of existence

"The best way to do this is by designing the normal case in a way that
automatically handles the special cases without any extra code."

### 10.10 Taking it too far

"Things that are not important should be hidden, and the more of them
the better. But when something is important, it must be exposed."

