-module(p12).

-export([decode_modified/1]).

decode_modified(List) -> 
    decode_modified(List, [], 1).

decode_modified([{N, H}|T], Acc, 1) ->
    %ok = io:format("~ncompr1~nH: ~p~nT: ~p~nAcc: ~p~nN: ~p~n", [H, T, Acc, N]),
    decode_modified([H|T], [H|Acc], N-1);
decode_modified([H|T], Acc, 1) ->
    %ok = io:format("~ncompr2~nH: ~p~nT: ~p~nAcc: ~p~n", [H, T, Acc]),
    decode_modified(T, [H|Acc], 1);
decode_modified([H|T], Acc, N) ->
    %ok = io:format("~ncompr3~nH: ~p~nT: ~p~nAcc: ~p~nN: ~p~n", [H, T, Acc, N]),
    decode_modified([H|T], [H|Acc], N-1);
decode_modified([], Acc, _N) ->
    %ok = io:format("~ncompr4~nAcc: ~p~n", [Acc]),
    lists:reverse(Acc).