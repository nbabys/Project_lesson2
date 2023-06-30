-module(p15a).

-export([multiply/2]).

multiply(X, N) -> 
    multiply(X, N, []).

multiply(_X, 0, Acc) ->
    Acc;
multiply(X, N, Acc) ->
    multiply(X, N-1, [X|Acc]).
