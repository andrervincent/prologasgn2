%			Project - 2: Logic Programming with Prolog
%
%
%	Part 1. sum-up-numbers-simple

% Check base case - list is/is not empty.
sum-up-numbers-simple([], 0).
% Second case - if list is not empty, and 
% the first element is a number, compute:
% first element + rest of (current) list.
sum-up-numbers-simple([FirstNum | RestofList], Sum) :-
	number(FirstNum),
	sum-up-numbers-simple(RestofList, RestResult),
	Sum is FirstNum + RestResult.
% if the current element is not a number,
% use the aforementioned rule on the rest
% of the list to calculate the subsequent 
% sum.
sum-up-numbers-simple([FirstNum | RestofList],Sum) :-
    not(number(FirstNum)),
    sum-up-numbers-simple(RestofList, Sum).

%
%
%	Part 2. sum-up-numbers-general
% Check base case - list is/is not empty.
sum-up-numbers-general([], 0).
% Second case - if list is not empty, and 
% the first element is a number, compute:
% first element + rest of (current) list.
sum-up-numbers-general([FirstNum | RestofList], Sum) :-
	number(FirstNum),
	sum-up-numbers-general(RestofList, RestResult),
	Sum is FirstNum + RestResult.
% if the current element is not a number, 
% but it is a list, calculate the result of that list.

sum-up-numbers-general([FirstElem | RestofList],Sum) :-
    is_list(FirstElem),
    is_list(RestofList),
    sum-up-numbers-general(FirstElem, FirstResult).
    
% if the current element is not a number,
% use the aforementioned rule on the rest
% of the list to calculate the subsequent 
% sum.    
sum-up-numbers-general([FirstNum | RestofList],Sum) :-
    not(number(FirstNum)),
    sum-up-numbers-general(RestofList, Sum).

%	Part 4. common-unique-elements
% 
% first 3 rules, when list1 and/or list2 are empty, 
% NList must also empty if it is a sublist
common-unique-elements([], [], []).
common-unique-elements(L1, [], []).
common-unique-elements([], L2, []).

% common-unique-elements(List1, List2, NList) :
common-unique-elements(List1, List2, [A| B]) :- 
% is NList a list?
    not(is_list(A)),
% is NList a member of either list?
    member(A, List1),
    member(A, List2).

