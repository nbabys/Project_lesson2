-module(p15).

-export([replicate/2]).

replicate(List, Num) ->
    replicate(List, Num, Num, []).

replicate([_H|T], Num, 0, Acc) ->
    %ok = io:format("~ncompr1~nAcc: ~p~nT: ~p~nNum: ~p~n", [T, Acc, Num]),
    replicate(T, Num, Num, Acc);
replicate([H|T], Num, N, Acc) ->
    %ok = io:format("~ncompr2~nH: ~p~nT: ~p~nNum: ~p~nAcc: ~p~nN: ~p~n", [H, T, Acc, Num, N]),
    replicate([H|T], Num, N-1, [H|Acc]);
replicate([], _, _, Acc) ->
    %ok = io:format("~ncompr3~nAcc: ~p~n", [Acc]),
    lists:reverse(Acc). 