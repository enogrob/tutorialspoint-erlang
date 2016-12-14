-module(helloworld). 
-import(lists,[duplicate/2]). 
-export([start/0]). 

start() -> 
   Lst1 = [1,2,3], 
   Lst2 = duplicate(2,Lst1), 
   io:fwrite("~w~n",[Lst2]).
