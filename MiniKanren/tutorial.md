# Notes on the [livecode tutorial](https://io.livecode.ch/learn/webyrd/webmk)

This tutorial leaves out a lot of background. Let's try and fill it in.

## Hello world

A basic example:

```
(run 1 (q) (== q 'hello-world))
```

This means:
* Run a miniKanren query
* showing at most 1 result;
* the result we want to see is the variable `q`, a fresh new variable just for this run;
* the query is the miniKanren expression `(== q 'hello-world)`.

When we run it we get back one result:

```
(hello-world)
```

