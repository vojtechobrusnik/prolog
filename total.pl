%%
% Total
%
% Calculates total of all elements.
%
% E.g.:
%     L = [1, 2] -> N = 3
%
% @param list L
% @param|@return int N
%
my_total([], 0) .
% Total of empty list is zero.
my_total([H|T], N) :-
% Slice the first element..
    my_total(T, NN), N is NN + H .
    % ..calculate total for the rest of the list and add value of the first element to it.


%%
% Total two max
%
% Calculates total of two maximum elements.
%
% E.g.:
%     L = [1, 2, 2, 3, 1] -> N = 5
%
% @param list L
% @param|@return int N
%
my_total_two_max([], 0) .
% Total of empty list is zero.
my_total_two_max(L, N) :-
%
    my_max_2(L, M1), my_delete_x_first(M1, L, LL), my_max_2(LL, M2), N is M1 + M2 .
    % Search for the first maximum value, remove it from the list, search for the second one..


%%
% Total two min
%
% Calculates total of two minimum elements.
%
% E.g.:
%     L = [1, 2, 2, 3, 4] -> N = 3
%
% @param list L
% @param|@return int N
%
my_total_two_min([], 0) .
% Total of empty list is zero.
my_total_two_min(L, N) :-
%
    my_min_2(L, M1), my_delete_x_first(M1, L, LL), my_min_2(LL, M2), N is M1 + M2 .
    % Search for the first minimum value, remove it from the list, search for the second one..


%%
% Total last two
%
% Calculates total of last two elements.
%
% E.g.:
%     L = [1, 2, 3] -> N = 5
%
% @param list L
% @param|@return int N
%
my_total_last_two([], 0) .
% Total of empty list is zero.
my_total_last_two([H|T], N) :-
% Found last element..
    my_length(T, K), K = 0, N is H .
    % ..if the rest of the list has zero length. Then assign it's value to N.
my_total_last_two([H|T], N) :-
% Found last but one..
    my_length(T, K), K = 1, N1 is H, my_total_last_two(T, N2), N is N1 + N2 .
    % ..if the rest of the list has length equal to one. Then remember it's value, call my_total_.. to obtain value of the last element and make sum of them.
my_total_last_two([_|T], N) :-
% Skip other elements..
    my_total_last_two(T, N) .
    % ..for whole list.


%%
% Total first two
%
% Calculates total of first two elements.
%
% E.g.:
%     L = [1, 2, 3] -> N = 3
%
% @param list L
% @param|@return int N
%
my_total_first_two([], 0) .
% Total of empty list is zero.
my_total_first_two([H|T], N) :-
% Found only one element..
    my_length(T, K), K = 0, N is H .
    % ..if the rest of the list has length equal to zero. Value of that element must be sufficient.
my_total_first_two([H1, H2|_], N) :-
% Slice first two elements..
    N is H1 + H2 .
    % ..and make sum of them.
