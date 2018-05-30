# Prolog
Educational experiments with list structure in Prolog. Not nice nor optimal. Just trying to learn something before an exam..

## Content

- [**basic**](https://github.com/vojtechobrusnik/prolog/blob/master/basic.pl) -- Standalone clauses used in advanced ones in other files.
- [**delete**](https://github.com/vojtechobrusnik/prolog/blob/master/delete.pl) -- Deleting elements from lists.
- [**index**](https://github.com/vojtechobrusnik/prolog/blob/master/index.pl) -- Searching for element index in lists.
- [**minmax**](https://github.com/vojtechobrusnik/prolog/blob/master/minmax.pl) -- Searching for minimum and maximum values in lists.
- [**queue**](https://github.com/vojtechobrusnik/prolog/blob/master/queue.pl) -- List as a queue.
- [**stack**](https://github.com/vojtechobrusnik/prolog/blob/master/stack.pl) -- List as a stack.
- [**total**](https://github.com/vojtechobrusnik/prolog/blob/master/total.pl) -- Calculating totals from list elements.

## Run

Run code in Prolog interpreter with `make run` or just `make`.

Tested on `Ubuntu 17.10 64-bit` and [`SWI-Prolog version 7.4.2 for amd64`](http://www.swi-prolog.org).

## Recursion

Here is a piece of code that merges two lists into the one. For example if `L1 = [a, b]` and `L2 = [c, d]` then `R` should be equal to `[a, b, c, d]`.

```prolog
%%
% @param list L1
% @param list L2
% @param|@return list R
%
my_append([], L2, L2).
% 1st
my_append([H1|T1], L2, [H1|R]) :- my_append(T1, L2, R).
% 2nd
```

How does it work?

```prolog
my_append([a, b], [c, d], R).
% 1. do 2nd
    my_append([a|[b]], [c, d], [a|R]) :- my_append([b], [c, d], R).
    % 2. do 2nd
        my_append([b|[]], [c, d], [b|R]) :- my_append([], [c, d], R).
        % 3. do 2nd
            my_append([], [c, d], [c, d]).
            % 4. do 1st
        my_append([b|[]], [c, d], [b|[c, d]]).
        % 3.
    my_append([a|[b]], [c, d], [a|[b, c, d]]).
    % 2.
my_append([a, b], [c, d], [a, b, c, d]).
% 1.
```
