-module(p10).

-export([encode/1]).

encode([H|T]) -> 
    encode([H|T], [], 1).

encode([H, H|T], Acc, N) -> 
    %ok = io:format("~ncompr1~nH: ~p~nT: ~p~nAcc: ~p~nN: ~p~n", [H, T, Acc, N]),
    encode([H|T], Acc, (N + 1));
encode([H|T], Acc, N) ->
    %ok = io:format("~ncompr2~nH: ~p~nT: ~p~nAcc: ~p~nN: ~p~n", [H, T, Acc, N]),
    encode(T, [{N, H}|Acc], 1);
encode([], Acc, _N) ->
    %ok = io:format("~ncompr3~nN: ~p~nAcc: ~p~n", [N, Acc]),
    lists:reverse(Acc).