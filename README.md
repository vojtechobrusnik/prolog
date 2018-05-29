# Prolog
Educational experiments with list structure in Prolog. Not nice nor optimal. Just trying to learn something before an exam..

## Content

- *basic* -- Standalone clauses used in advanced ones in other files.
- *minmax* -- Searching for minimum and maximum values in lists.

## Recursion

Here is a piece of code that merges two lists into the one. For example if `L1 = [a, b]` and `L2 = [c, d]` then `R` should be equal to `[a, b, c, d]`.

```prolog
%%
% @param list L1
% @param list L2
% @param list R
my_append([], L2, L2).
% 1st
my_append([H1|T1], L2, [H1|R]) :- my_append(T1, L2, R).
% 2nd
```

How does it work?

```prolog
my_append([a, b], [c, d], R)
% 2nd
    my_append([a|[b]], [c, d], [a|R]) :- my_append([b], [c, d], R)
    % 2nd
        my_append([b|[]], [c, d], [b|R]) :- my_append([], [c, d], R)
        % 2nd
            my_append([], [c, d], [c, d])
            % 1st
        my_append([b|[]], [c, d], [b|[c, d]])
        % 2nd
    my_append([a|[b]], [c, d], [a|[b, c, d]])
    % 2nd
my_append([a, b], [c, d], [a, b, c, d])
% 2nd
```
