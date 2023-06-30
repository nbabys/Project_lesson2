-module(p05).

-export([reverse/1]).

reverse([]) -> [];
reverse([H|T]) -> reverse([H|T], []).

reverse([H|T], Acc) -> reverse(T, [H|Acc]);
reverse([], Acc) -> Acc.
