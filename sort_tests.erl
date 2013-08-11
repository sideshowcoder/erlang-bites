-module(sort_tests).
-include_lib("eunit/include/eunit.hrl").

sort_empty_test() -> [] = sort:quick([]).
sort_two_test() -> [1,2] = sort:quick([2,1]).


