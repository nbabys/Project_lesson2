-module(p04).

-export([len/1]).

%len([]) -> 0;
%len([_|T]) -> 1 + len(T).

len(List) -> 
    len(List, 0).

len([], Acc) -> 
    Acc;
len([_|T], Acc) -> 
    len(T, Acc + 1).