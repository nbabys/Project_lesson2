-module(p08er).

-export([compress/1]).

compress([H|T]) -> compress([H|T], []).

compress([H, H|T], Acc) -> 
    %ok = io:format("~ncompr1~nH: ~p~nT: ~n~pAcc: ~p", [H, T, Acc]),
    compress([H|T], Acc);
compress([H|T], Acc) -> 
    %ok = io:format("~ncompr2~nH: ~p~nT: ~n~pAcc: ~p", [H, T, Acc]),
    compress(T, [H|Acc]);
compress([], Acc) -> 
    %ok = io:format("~ncompr3~nAcc: ~p~n", [Acc]),
    lists:reverse(Acc).