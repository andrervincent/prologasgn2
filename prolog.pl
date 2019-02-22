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

