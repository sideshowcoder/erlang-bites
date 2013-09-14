-module(sort).

-export([quick/1]).

quick([]) -> [];
quick([Pivot|Tail]) ->
    quick([X || X <- Tail, X =< Pivot]) ++
        [Pivot] ++
        quick([X || X <- Tail, X > Pivot]).

