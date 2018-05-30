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
% Total of two max
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
% Total of two min
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
% Total of last two
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
my_total_last_two([H], H) .
% Found only single element.
my_total_last_two([H1, H2], N) :-
% Found last two elements..
    N is H1 + H2 .
    % ..make sum of them.
my_total_last_two([_|T], N) :-
% Skip other elements..
    my_total_last_two(T, N) .
    % ..search the rest of the list.


%%
% Total of first two
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
my_total_first_two([H], H) .
% Found only single element.
my_total_first_two([H1, H2|_], N) :-
% Slice first two elements..
    N is H1 + H2 .
    % ..and make sum of them.


%%
% Total of first negative first positive
%
% Calculates total of first negative number and first positive number.
%
% E.g.:
%     L = [0, 1, -3, 4, -2] -> N = -2
%
% @param list L
% @param|@return int N
%
my_total_neg_pos([], 0) .
% Total of empty list is zero.
my_total_neg_pos(L, N) :-
%
    my_negative(L, N1), my_positive(L, N2), N is N1 + N2 .
    % Find negative and positive number and make sum of them.
