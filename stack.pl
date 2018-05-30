%%
% Push
%
% Adds element on top of the stack.
%
% E.g.:
%     E = a, SS = [1, b #] -> S = [a, 1, b #]
%     # denotes bottom of the stack.
%
% @param element E
% @param list SS
% @param|@result list S
%
my_push(E, SS, [E|SS]) .

%%
% Pop
%
% Gets element from top of the stack.
%
% E.g.:
%     SS = [1, b #] -> E = 1, S = [b #]
%     # denotes bottom of the stack.
%
% @param element E
% @param list SS
% @param|@result list S
%
my_pop(E, [E|T], T) .
