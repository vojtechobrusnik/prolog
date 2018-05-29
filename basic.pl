%%
% Append
%
% Merges two lists into the one.
%
% E.g.:
%     L1 = [a, b], L2 = [c, d] -> R = [a, b, c, d]
%
% How it works:
%     my_append([a, b], [c, d], R)
%
%         my_append([a|[b]], [c, d], [a|R])
%         :- my_append([b], [c, d], R)
%
%             my_append([b|[]], [c, d], [b|R])
%             :- my_append([], [c, d], R)
%
%                 my_append([], [c, d], [c, d])
%
%             my_append([b|[]], [c, d], [b|[c, d]])
%
%         my_append([a|[b]], [c, d], [a|[b, c, d]])
%
%     my_append([a, b], [c, d], [a, b, c, d])
%
% @param list L1
% @param list L2
% @param|@return list R
%
my_append([], L2, L2) .
% L1 is empty so the result list is L2.
my_append([H1|T1], L2, [H1|R]) :-
% Add the first element of L1 to the beginning of R..
    my_append(T1, L2, R) .
    % ..but first do it for the rest of L1.


%%
% Prepend`
%
% Merges two lists into the one.
%
% E.g.:
%     L1 = [a, b], L2 = [c, d] -> R = [c, d, a, b]
%
% @param list L1
% @param list L2
% @param|@return list R
%
my_prepend(L1, [], L1) .
% L2 is empty so the result list is L1.
my_prepend(L1, [H2|T2], [H2|R]) :-
% Add the first element of L2 to the beginning of R..
    my_prepend(L1, T2, R) .
    % ..but first do it for the rest of L2.


%%
% In list (Member)
%
% Tells if the element is present in the list.
%
% E.g.:
%     E = b, L = [a, b] -> true
%     E = z, L = [a, b] -> false
%
% @param element E
% @param list L
%
my_in_list(E, [E|_]) .
% Wanted element is the first in the list.
my_in_list(E, [_|T]) :-
% Wanted element may be somewhere further..
    my_in_list(E, T) .
    % ..search the rest of the list.


%%
% Length
%
% Calculates length of the list.
%
% E.g.:
%     L = [a, b] -> N = 2
%
% @param list L
% @param|@return int N
%
my_length([], 0) .
% Length of an empty list is zero.
my_length([_|T], N) :-
% Throw away first element..
    my_length(T, NN), N is NN + 1 .
    % ..as long as the rest of the list is not empty. For each thrown element increment the counter.


%%
% Bigger
%
% Returns bigger of two numbers.
%
% E.g.:
%     X = 1, Y = 2 -> N = 2
%
% @param int X
% @param int Y
% @param|@result int N
%
my_bigger(X, Y, N) :-
% X is bigger..
    X >= Y, N is X .
    % ..return X.
my_bigger(X, Y, N) :-
% Y is bigger..
    X < Y, N is Y .
    % .. return Y.


%%
% Smaller
%
% Returns smaller of two numbers.
%
% E.g.:
%     X = 1, Y = 2 -> N = 1
%
% @param int X
% @param int Y
% @param|@result int N
%
my_smaller(X, Y, N) :-
% X is smaller..
    X =< Y, N is X .
    % ..return X.
my_smaller(X, Y, N) :-
% Y is smaller..
    X > Y, N is Y .
    % .. return Y.

