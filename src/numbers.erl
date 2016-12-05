-module(numbers).
-import(math,[sin/1]).
-export([start/0,start1/0,start2/0,start3/0]).

start() ->
  io:fwrite("~w~n",[1+1]),
  io:fwrite("~w~n",[1.1+1.2]),
  io:fwrite("~f~n",[1.1+1.2]),
  io:fwrite("~e~n",[1.1+1.2]).

start1() ->
  Sin = sin(45),
  io:fwrite("~p~n",[Sin]).

start2() ->
  Num = float(3),
  io:fwrite("~f",[Num]).

start3() ->
  Num = 3.00,
  io:fwrite("~w",[is_float(Num)]).
