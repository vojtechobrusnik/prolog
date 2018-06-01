%%
% Intersection
%
% Returns list with common elements from L1 and L2.
%
% E.g.:
%     L1 = [a, b, c], L2 = [a, b, d] -> R = [a, b]
%
% @param list L1
% @param list L2
% @param|@return list R
%
my_intersection([], _, []) .
% No common elements can be found in empty list.
my_intersection([H1|T1], L2, [H1|R]) :-
% Add the first element to the result list..
    my_in_list(H1, L2), my_intersection(T1, L2, R) .
    % ..if it is present in L2 too and repeat for the rest of L1.
my_intersection([_|T1], L2, R) :-
% The first element is unique in L1..
    my_intersection(T1, L2, R) .
    % ..so skip it and try other elements.


%%
% Union
%
% Returns list with all elements that are in L1 and L2.
% In the result list those elements will be unique.
%
% E.g.:
%     L1 = [a, b, c], L2 = [a, b, d] -> R = [a, b]
%
% @param list L1
% @param list L2
% @param|@return list R
%
my_union([], L2, L2) .
% L2 it is in case L1 is empty.
my_union([H1|T1], L2, [H1|R]) :-
% Add the first element to the result list..
    not(my_in_list(H1, L2)), my_union(T1, L2, R) .
    % ..if it is not present in L2. And repeat for the rest of L1.
my_union([_|T1], L2, R) :-
% The first element from L1 is in both lists..
    my_union(T1, L2, R) .
    % ..so the one from L2 is enough.


%%
% Difference
%
% Returns list with all elements that are in L1 and not in L2.
%
% E.g.:
%     L1 = [a, b, c, e], L2 = [a, b, d] -> R = [c, e]
%
% @param list L1
% @param list L2
% @param|@return list R
%
my_difference([], _, []) .
% No unique element can be found in L1.
my_difference([H1|T1], L2, [H1|R]) :-
% Add the first element to the result list..
    not(my_in_list(H1, L2)), my_difference(T1, L2, R) .
    % ..if it is not present in L2. And repeat for the rest of L1.
my_difference([_|T1], L2, R) :-
% The first element from L1 is in both lists..
    my_difference(T1, L2, R) .
    % ..so skip it.


%%
% Is set
%
% Tells if each element in list is unique (..then the list may be considered a set).
%
% E.g.:
%     L = [a, b, c] -> true
%     L = [a, b, a, c] -> false
%
% @param list L
%
my_is_set([]) .
% Empty list is a set.
my_is_set([H|T]) :-
% Check..
    not(my_in_list(H, T)), my_is_set(T) .
    % ..if the first and every other element is not in the list twice.


%%
% To set
%
% Returns list with unique elements.
%
% E.g.:
%     L = [a, b, a, c, c] -> R = [a, b, c] 
%
% @param list L
% @param|@return list R
%
my_to_set([], []) .
% Empty list is a set.
my_to_set([H|T], [H|R]) :-
% Add the first element to the result list..
    not(my_in_list(H, T)), my_to_set(T, R) .
    % .. if it is not twice in the list. And repeat for the rest.
my_to_set([_|T], R) :-
% The first element is a duplicate..
    my_to_set(T, R) .
    % ..so skip it.


%%
% Is subset
%
% Tells if L1 is subset of L2.
%
% E.g.:
%     L1 = [a, b], L2 = [c, a, b, d] -> true
%     L1 = [a, b], L2 = [c, d, a] -> false
%
% @param list L1
% @param list L2
%
my_is_subset([], _) .
% Empty list is a subset.
my_is_subset([H1|T1], L2) :-
% Check..
    my_in_list(H1, L2), my_is_subset(T1, L2) .
    % ..if the first element is present in L2 and every other element of L1 is in L2 too.


%%
% Is equal
%
% Tells if L1 is equal to L2.
%
% E.g.:
%     L1 = [a, b], L2 = [b, a] -> true
%     L1 = [a, b], L2 = [b, a, c] -> false
%
% @param list L1
% @param list L2
%
my_is_equal(L1, L2) :-
%
    my_is_subset(L1, L2), my_is_subset(L2, L1) .
    % Equal sets are subset to each other.
