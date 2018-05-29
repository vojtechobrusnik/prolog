%%
% Delete X
%
% Deletes all occurrences of the element.
%
% E.g.:
%     E = a, L = [a, b, a, c, a] -> R = [b, c]
%
% @param element E
% @param list L
% @param|@return list R
%
my_delete_x(_, [], []) .
% Nothing can be deleted from empty list.
my_delete_x(E, [E|T], R) :-
% Wanted element is the first..
    my_delete_x(E, T, R) .
    % ..so omit it.
my_delete_x(E, [H|T], [H|R]) :-
% Copy other elements to the result list and..
    my_delete_x(E, T, R) .
    % ..search the rest of the list.


%%
% Delete X first
%
% Deletes the first occurrence of the element.
%
% E.g.:
%     E = a, L = [b, a, c, a] -> R = [b, c, a]
%
% @param element E
% @param list L
% @param|@return list R
%
my_delete_x_first(_, [], []) .
% Nothing can be deleted from empty list.
my_delete_x_first(E, [E|T], R) :-
% Wanted element is the first..
    my_append([], T, R) .
    % ..so omit it and append the rest of the list to the result list.
my_delete_x_first(E, [H|T], [H|R]) :-
% Copy other elements to the result list and..
    my_delete_x_first(E, T, R) .
    % ..search the rest of the list.


%%
% Delete last
%
% Deletes last element of the list
%
% E.g.:
%     L = [a, b, c] -> R = [a, b]
%
% @param list L
% @param|@return list R
%
my_delete_last([], []) .
% Nothing can be deleted from empty list.
my_delete_last([_|T], []) :-
% Found last element..
    my_length(T, N), N = 0 .
    % ..if the rest of the list is empty.
my_delete_last([H|T], [H|R]) :-
% Copy other elements to the result list and..
    my_delete_last(T, R) .
    % ..repeat for the rest of the list.
    
%%
% Delete first
%
% Deletes the first element of the list
%
% E.g.:
%     L = [a, b, c] -> R = [b, c]
%
% @param list L
% @param|@return list R
%
my_delete_first([], []) .
% Nothing can be deleted from empty list.
my_delete_first([_|T], T) .
% Throw away the first element.
