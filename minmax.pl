%%
% Min
%
% Searches for minimum value in the list. Needs seed minimum value.
%
% E.g.:
%     L = [1, 2, 3], MM = 3 -> M = 1
%
% @param list L
% @param int MM
% @param|@return int M
%
my_min([], MM, MM) .
% Minimum value of empty list is current minimum value.
my_min([X|T], MM, M) :-
% Test the first value of the list..
    my_smaller(X, MM, N), my_min(T, N, M) .
    % ..whether it is smaller than current minimum value and search the rest if there is even smaller value.


%%
% Min 2
%
% Searches for minimum value in the list.
%
% E.g.:
%     L = [1, 2, 3] -> M = 1
%
% @param list L
% @param|@return int M
%
my_min_2([], _) :-
% Empty list..
    false .
    % ..doesn't have minimum value.
my_min_2([MM|T], M) :-
% Create seed value for my_min..
    my_min(T, MM, M) .
    % ..call my_min.


%%
% Max
%
% Searches for maximum value in the list. Needs seed maximum value.
%
% E.g.:
%     L = [1, 2, 3], MM = 1 -> M = 3
%
% @param list L
% @param int MM
% @param|@return int M
%
my_max([], MM, MM) .
% Maximum value of empty list is current maximum value.
my_max([X|T], MM, M) :-
% Test the first value of the list..
    my_bigger(X, MM, N), my_max(T, N, M) .
    % ..whether it is bigger than current maximum value and search the rest if there is even bigger value.


%%
% Max 2
%
% Searches for maximum value in the list.
%
% E.g.:
%     L = [1, 2, 3] -> M = 3
%
% @param list L
% @param|@return int M
%
my_max_2([], _) :-
% Empty list..
    false .
    % ..doesn't have maximum value.
my_max_2([MM|T], M) :-
% Create seed value for my_max..
    my_max(T, MM, M) .
    % ..call my_max.
