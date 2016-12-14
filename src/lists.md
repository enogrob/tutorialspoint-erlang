The List is a structure used to store a collection of data items. In Erlang, Lists are created by enclosing the values in square brackets.
```erlang
lists:module_info().
```

Following is a simple example of creating a list of numbers in Erlang.

Example
```Erlang
Lst1 = [1,2,3],
io:fwrite("~w~n",[Lst1]).
```
The output of the above example will be −

Output
[1 2 3]
Let us now discuss the various methods available for Lists. Note that the lists library needs to be imported for these methods to work.

S.No	Method and Description
1	all
Returns true if Pred(Elem) returns true for all elements Elem in List, otherwise false.
```erlang
f(),
Lst1 = [1,2,3],
io:fwrite("~w~n",[Lst1]),
Predicate = fun(E) -> E rem 2 == 0 end,
Status = lists:all(Predicate, Lst1),
io:fwrite("~w~n",[Status]).
```

2	any
Returns true if Pred(Elem) returns true for at least one element Elem in List.
```erlang
f(),
Lst1 = [1,2,3],
io:fwrite("~w~n",[Lst1]),
Predicate = fun(E) -> E rem 2 == 0 end,
Status = lists:any(Predicate, Lst1),
io:fwrite("~w~n",[Status]).
```

3	append
Returns a new list List3 which is made from the elements of List1 followed by the elements of List2.
```erlang
f(),
Lst1 = [1,2,3],
Lst2 = lists:append(Lst1,[4,5]),
io:fwrite("~w~n",[Lst2]).
```

4	delete
Deletes an element from the list and returns a new list.
```erlang
f(),
Lst1 = [1,2,3],
Lst2 = lists:delete(2,Lst1),
io:fwrite("~w~n",[Lst2]).
```

5	droplast
Drops the last element of a List.
```erlang
f(),
Lst1 = [1,2,3],
Lst2 = lists:droplast(Lst1),
io:fwrite("~w~n",[Lst2]).
```

6	duplicate
Returns a list which contains N copies of the term Elem
```erlang
f(),
Lst1 = [1,2,3],
Lst2 = lists:duplicate(2,Lst1),
io:fwrite("~w~n",[Lst2]).
```

7	last
Returns the last element of the list
```erlang
f(),
Lst1 = [1,2,3],
Lst2 = lists:last(Lst1),
io:fwrite("~w~n",[Lst2]).
```

8	max
Returns the element of the list which has the maximum value.
```erlang
f(),
Lst1 = [1,2,3],
Lst2 = lists:max(Lst1),
io:fwrite("~w~n",[Lst2]).
```

9	member
Checks if an element is present in the list or not.
```erlang
f(),
Lst1 = [1,2,3],
io:fwrite("~w~n",[lists:member(3, Lst1)]).
```

10	min
Returns the element of the list which has the minimum value.
```erlang
f(),
Lst1 = [1,2,3],
Lst2 = lists:min(Lst1),
io:fwrite("~w~n",[Lst2]).
```

11	merge
Returns the sorted list formed by merging all the sub-lists of ListOfLists.
```erlang
io:fwrite("~w~n",[lists:merge([[1],[2],[3]])]).
```

12	nth
Returns the Nth element of List.
```erlang
f(),
Lst1 = [1,2,3],
io:fwrite("~p~n",[lists:nth(2,Lst1)]).
```

13	nthtail
Returns the Nth tail of the List.
```erlang
f(),
Lst1 = [1,2,3],
io:fwrite("~p~n",[lists:nthtail(2,Lst1)]).
```

14	reverse
Reverses a list of elements.
```erlang
f(),
Lst1 = [1,2,3],
io:fwrite("~p~n",[lists:reverse(Lst1)]).
```

15	sort
Sorts a list of elements.
```erlang
f(),
Lst1=[5,6,4],
io:fwrite("~p~n",[lists:sort(Lst1)]).
```

16	sublist
Returns a sublist of elements.
```erlang
f(),
Lst1=[5,6,4],
io:fwrite("~p~n",[lists:sublist(Lst1,2)]).
```

17	sum
Returns the sum of elements in the list.
```erlang
f(),
Lst1 = [5,6,4],
io:fwrite("~p~n",[lists:sum(Lst1)]).
```
