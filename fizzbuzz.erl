-module(fizzbuzz).

-export([upto/1]).

upto(Limit) ->
  lists:map(
    fun(E) -> fizzbuzz(E) end,
    lists:seq(1, Limit)).

fizzbuzz(E) when ((E rem 3) == 0) and ((E rem 5) == 0) -> fizzbuzz;
fizzbuzz(E) when ((E rem 5) == 0) -> buzz;
fizzbuzz(E) when ((E rem 3) == 0) -> fizz;
fizzbuzz(E) -> E.
