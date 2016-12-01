-module(modules).
-import(io,[fwrite/1]).
-author("TutorialPoint").
-version("1.0").
-export([start/0]).

start() ->
  fwrite("Hello World").