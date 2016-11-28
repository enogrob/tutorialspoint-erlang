-module(if_statement).
-export([start/0]).

start() ->
  A = 5,
  B = 6,

  if
    A == B ->
      io:fwrite("True");
    A < B ->
      if
        A > 5 ->
          io:fwrite("A is greater than 5");
        true ->
          io:fwrite("A is less than 5")
      end;
    true ->
      io:fwrite("False")
  end.