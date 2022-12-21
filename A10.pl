find_max([], 0).
find_max([X|Xs], Max) :- find_max(Xs, RestMax), (X > RestMax -> Max = X; Max = RestMax).

% ?- find_max([1, 2, 3, 4, 5], X).
% X = 5.

empty_intersection(A, B) :- \+ (member(E, A), member(E, B)).

% ?- empty_intersection([1, 2, 3], [4, 5, 6]).
% true.

union_lists([],[],[]).
union_lists([],B,B).
union_lists(A,[],A).
union_lists([HA|TA], [HB|TB], [HA|UT]) :- member(HA, [HB|TB]), union_lists(TA, [HB|TB], UT).
union_lists([HA|TA], [HB|TB], [HA|UT]) :- \+member(HA, [HB|TB]), union_lists(TA, [HB|TB], UT).

% ?- union_lists([1, 2, 3, 4], [5, 6, 7, 8], X).
% X = [1, 2, 3, 4, 5, 6, 7, 8] .

last_element([], 0).
last_element([X], X).
last_element([_|T], X) :- last_element(T, X).

% ?- last_element([1, 2, 3, 4, 5], X).
% X = 5.
