-module(p13).

-export([decode/1]).

decode(List) -> 
    decode(List, [], 1).

decode([{N, H}|T], Acc, 1) ->
    %ok = io:format("~ncompr1~nH: ~p~nT: ~p~nAcc: ~p~nN: ~p~n", [H, T, Acc, N]),
    decode([H|T], Acc, N-1);
decode([H|T], Acc, 0) ->
    %ok = io:format("~ncompr2~nH: ~p~nT: ~p~nAcc: ~p~n", [H, T, Acc]),
    decode(T, [H|Acc], 1);
decode([H|T], Acc, N) ->
    %ok = io:format("~ncompr3~nH: ~p~nT: ~p~nAcc: ~p~nN: ~p~n", [H, T, Acc, N]),
    decode([H|T], [H|Acc], N-1);
decode([], Acc, _N) -> 
    %ok = io:format("~ncompr4~nAcc: ~p~n", [Acc]),
    lists:reverse(Acc).