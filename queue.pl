%%
% Enqueue
%
% Adds element to the queue.
%
% E.g.:
%     E = c, QQ = [# a, b] -> Q = [# a, b, c]
%     # denotes queue beginning.
%
% @param element E
% @param list QQ
% @param|@return list Q
%
my_enqueue(E, [], [E]) .
% Add the first element to the empty queue.
my_enqueue(E, [H|T1], [H|T2]) :-
% Copy all elements..
    my_enqueue(E, T1, T2) .
    % ..unless it is possible to add the element to the empty (rest of) queue.


%%
% Dequeue
%
% Returns element from the queue.
%
% E.g.:
%     QQ = [# a, b, c] -> E = a, Q = [# b, c]
%     # denotes queue beginning.
%
% @param|@return element E
% @param list QQ
% @param|@return list Q
%
my_dequeue(E, [E|T], T) .


%%
% Enqueue with priority
%
% Adds element to the priority queue.
%
% E.g.:
%     E = c, P = 2 QQ = [# [a, 1], [b, 3]] -> Q = [# [a, 1], [c, 2], [b, 3]]
%     # denotes queue beginning.
%
% @param element E
% @param int P
% @param list QQ
% @param|@return list Q
%
my_enqueue_prio(E, P, [], [[E, P]]) .
% Add the first element to the empty queue.
my_enqueue_prio(E, P, [[EE, PP]|T1], [[EE, PP]|T2]) :-
% Copy all elements..
    P >= PP, my_enqueue_prio(E, P, T1, T2) .
    % ..while priority of the new element doesn't fit into the place.
my_enqueue_prio(E, P, QQ, [[E, P]|QQ]) .
% Add the element to the queue.


%%
% Dequeue with priority
%
% my_dequeue can be used.
%
