-module(p11).

-export([encode_modified/1]).

encode_modified(List) ->
    encode_modified(List, [], 1).

encode_modified([H, H|T], Acc, N) ->
    %ok = io:format("~ncompr1~nH: ~p~nT: ~p~nAcc: ~p~nN: ~p~n", [H, T, Acc, N]),
    encode_modified([H|T], Acc, (N + 1));
encode_modified([H|T], Acc, 1) ->
    %ok = io:format("~ncompr2~nH: ~p~nT: ~p~nAcc: ~p~n", [H, T, Acc]),
    encode_modified(T, [H|Acc], 1); 
encode_modified([H|T], Acc, N) ->
    %ok = io:format("~ncompr3~nH: ~p~nT: ~p~nAcc: ~p~nN: ~p~n", [H, T, Acc, N]),
    encode_modified(T, [{N, H}|Acc], 1);
encode_modified([], Acc, _N) ->
    %ok = io:format("~ncompr4~nAcc: ~p~n", [Acc]),
    lists:reverse(Acc).
