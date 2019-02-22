% Check base case - list is/is not empty.
sum-up-numbers-simple([], 0).
% Second case - if list is not empty, and 
% the first element is a number, compute:
% first element + rest of (current) list.
sum-up-numbers-simple([First | Rest], N) :-
	numbers(First),
	sum-up-numbers-simple(Rest, RestResult),
	Result is First + Result.

