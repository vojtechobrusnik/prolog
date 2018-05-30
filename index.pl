%%
% Index
%
% Returns index of the first occurrence of the element.
%
% E.g.:
%     E = b, L = [a, b, c] -> N = 1
%
% @param element E
% @param list L
% @param|@return int N
%
my_index(_, [], _) :-
% Empty list..
    false .
    % ..doesn't contain wanted element.
my_index(E, [E|_], 0) .
% Wanted element is the first thus it's index is zero.
my_index(E, [_|T], N) :-
% Throw away the first element. Wanted element may be somewhere further..
    my_in_list(E, T), my_index(E, T, NN), N is NN + 1 .
    % ..search the rest of the list only if E is present and for each thrown element increment counter.
    

%%
% Index of maximum
%
% Returns index of an element with maximum value.
%
% E.g.:
%     L = [1, 3, 2] -> N = 1
%
% @param list L
% @param|@return int N
%
my_index_max([], _) :-
% Empty list..
    false .
    % ..doesn't contain wanted element.
my_index_max(L, N) :-
%
    my_max_2(L, M), my_index(M, L, N) .
    % Search for maximum value and find index of it.


%%
% Index of minimum
%
% Returns index of an element with minimum value.
%
% E.g.:
%     L = [3, 1, 2] -> N = 1
%
% @param list L
% @param|@return int N
%
my_index_min([], _) :-
% Empty list..
    false .
    % ..doesn't contain wanted element.
my_index_min(L, N) :-
%
    my_min_2(L, M), my_index(M, L, N) .
    % Search for minimum value and find index of it.
