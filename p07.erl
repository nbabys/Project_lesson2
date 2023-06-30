-module(p07).

-export([flatten/1]).

%flatten(List) -> flatten(List, []).

%flatten([H|T], Acc) -> flatten(H, Acc);
%flatten([[]|T], Acc) -> flatten(T, Acc);
flatten([[H|T1]|T2]) -> flatten([H, T1|T2]);
flatten([[]|T]) -> flatten(T);
%flatten([], Acc) -> (Acc).
flatten([E|T]) -> [E|flatten(T)];
flatten([]) -> [].