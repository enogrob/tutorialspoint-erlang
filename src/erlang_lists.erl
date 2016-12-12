-module(erlang_lists). 
-import(lists,[all/2,any/2]).
-export([start/0]). 

start() -> 
   Lst1 = [1,2,3], 
   io:fwrite("~w~n",[Lst1]),
   Predicate = fun(E) -> E rem 2 == 0 end, 
   Status = all(Predicate, Lst1), 
   io:fwrite("~w~n",[Status]),
   Status1 = any(Predicate, Lst1), 
   io:fwrite("~w~n",[Status1]).