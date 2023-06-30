-module(p09).

-export([pack/1]).

pack(List) -> 
    pack(List, [], []).

pack([H, H|T], Acc1, Acc2) ->
    %ok = io:format("~ncompr1~nH: ~p~nT: ~p~npAcc1: ~p~nAcc2: ~p", [H, T, Acc1, Acc2]),
    pack([H|T], [H|Acc1], Acc2);
pack([H|T], Acc1, Acc2) ->
    %ok = io:format("~ncompr2~nH: ~p~nT: ~p~npAcc1: ~p~nAcc2: ~p", [H, T, Acc1, Acc2]),
    pack(T, [], [[H|Acc1] | Acc2]);
pack([], Acc1, Acc2) -> 
    %ok = io:format("~ncompr3~npAcc1: ~p~nAcc2: ~p", [Acc1, Acc2]),
    lists:reverse(Acc2 ++ Acc1).