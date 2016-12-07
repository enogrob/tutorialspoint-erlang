-module(strings).
-import(string,[len/1,equal/2,concat/2,chr/2,substr/3,left/2,right/3,to_lower/1,to_upper/1,sub_string/3]).
-export([start/0]).

start() ->
  Str1 = "This is a string1",
  io:fwrite("~p~n",[Str1]),
  Len1 = len(Str1),
  io:fwrite("~p~n",[Len1]),
  Str2 = "This is a string1",
  Status = equal(Str1,Str2),
  io:fwrite("~p~n",[Status]),
  Str3 = concat(Str1,Str2),
  io:fwrite("~p~n",[Str3]),
  Str4 = "hello World",
  Index1 = chr(Str4,$e),
  io:fwrite("~p~n",[Index1]),
  Str5 = substr(Str4,2,5),
  io:fwrite("~p~n",[Str5]),
  Str6 = left(Str4,2),
  io:fwrite("~p~n",[Str6]),
  Str7 = right(Str4,10,$.),
  io:fwrite("~p~n",[Str7]),
  Str8 = "HELLO WORLD",
  Str9 = to_lower(Str8),
  io:fwrite("~p~n",[Str9]),
  Str10 = to_upper(Str4),
  io:fwrite("~p~n",[Str10]),
  Str11 = sub_string(Str4,1,5),
  io:fwrite("~p~n",[Str11]).