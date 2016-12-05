-module(recursion).
-export([start1/0,start2/0,start3/0,start4/0,start5/0]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N*fac(N-1).

start1() ->
  X = fac(4),
  io:fwrite("~w",[X]).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

start2() ->
  X = [1,2,3,4],
  Y = len(X),
  io:fwrite("~w",[Y]).

tail_len(L) -> tail_len(L,0).
tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T,Acc+1).

start3() ->
  X = [1,2,3,4],
  Y = tail_len(X),
  io:fwrite("~w",[Y]).

duplicate(0,_) ->
  [];
duplicate(N,Term) when N > 0 ->
  io:fwrite("~w,~n",[Term]),
  [Term|duplicate(N-1,Term)].

start4() ->
  duplicate(5,1).

tail_reverse(L) -> tail_reverse(L,[]).

tail_reverse([],Acc) -> Acc;
tail_reverse([H|T],Acc) -> tail_reverse(T, [H|Acc]).

start5() ->
  X = [1,2,3,4],
  Y = tail_reverse(X),
  io:fwrite("~w",[Y]).
