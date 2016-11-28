-module(case_expression).
-export([start/0]).

start() ->
  A = 5,
  case A of
    5 -> io:fwrite("The value of A is 5");
    6 -> io:fwrite("The value of A is 6")
  end.