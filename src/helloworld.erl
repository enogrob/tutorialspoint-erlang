%%%-------------------------------------------------------------------
%%% @author enogrob
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Nov 2016 23:51
%%%-------------------------------------------------------------------
-module(helloworld).
-author("enogrob").

%% API
-export([start/0]).

start() ->
  io:fwrite("Hello, world!\n").
