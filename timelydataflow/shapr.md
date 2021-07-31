# Timely Dataflow

Here's the [original paper](https://users.soe.ucsc.edu/~abadi/Papers/naiad_final.pdf) .

I started by reading [acolyer's blog post](https://blog.acolyer.org/2015/06/12/naiad-a-timely-dataflow-system/) and then reading the paper itself.

Jamie Brandon work in this area was the motivation for my original interest, starting with his [dida project](https://github.com/jamii/dida). From that repository, I found [why](https://github.com/jamii/dida/blob/main/docs/why.md) most helpful.

There's a companion paper [posted](https://blog.acolyer.org/2015/06/17/differential-dataflow/) by acolyer that might also help.

One of the authors posted [a video](https://www.youtube.com/watch?v=yOnPmVf4YWo) in 2020 that's very bare bones and motivates the reasoning.

# Goal

Unify stream processors, batch systems, and triggers?

# How
For basic dataflow, like writing your own excel spreadsheet, each input has a timestamp (could be an integer that increases for each input) and that allows operators like ~count~ to know the smallest timestamp it could get next, thus allowing reductions to know when to actually do some work.

For timely dataflow, Build a graph of computations, sounds a lot like excel with one really big difference, you can have nested cycles in the graph of computations!

So how the heck do you get anything done when your loop could be infinite? Frontiers, which limit how far a message can go? Something like that?

# Implementations

There's an implementation in rust called [timely dataflow](https://timelydataflow.github.io/timely-dataflow/) with the updated source [here](https://github.com/TimelyDataflow/timely-dataflow). Looks like this was originally written by one of the paper authors, Frank McSherry, and has been picked up by the rust community.

There's an implementation in Haskell called [dataflower](https://github.com/doublecrowngaming/dataflower/) but I haven't really looked into it.
