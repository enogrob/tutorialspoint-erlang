**Erlang - Atoms**

An atom is a literal, a constant with name. An atom is to be enclosed in single quotes (') if it does not begin with a lower-case letter or if it contains other characters than alphanumeric characters, underscore `(_), or @`.

The following program is an example of how atoms can be used in Erlang. This program declares 3 atoms, atom1, atom_1 and ‘atom 1’ respectively. So you can see the different ways an atom can be declared.

Example
```erlang
-module(helloworld).
-export([start/0]).

start() ->
   io:fwrite(atom1),
   io:fwrite("~n"),
   io:fwrite(atom_1),
   io:fwrite("~n"),
   io:fwrite('atom 1'),
   io:fwrite("~n").
   ```

The output of the above program would be follows −

Output
atom1

atom_1

atom 1
Let’s see some of the methods available in Erlang to work with atoms.

S.No	Methods and Description

**1	is_atom**
This method is used to determine if a term is indeed an atom.
```erlang
-module(helloworld).
-export([start/0]).

start() ->
   io:fwrite(atom1),
   io:fwrite("~n"),
   io:fwrite("~p~n",[is_atom(atom1)]).
```

**2	atom_to_list**
This method is used to convert an atom to a list.
```erlang
-module(helloworld).
-export([start/0]).

start() ->   
   io:fwrite("~p~n",[atom_to_list(atom1)]).
```

**3	list_to_atom**
This method is used to convert a list item to an atom.
```erlang
-module(helloworld).
-export([start/0]).

start() ->
   io:fwrite("~p~n",[list_to_atom("atom1")]).
```

**4	atom_to_binary**
This method is used to convert an atom to a binary value.
```erlang
-module(helloworld).
-export([start/0]).

start() ->
   io:fwrite("~p~n",[atom_to_binary('Erlang', utf8)]).
```

**5	binary_to_atom**
This method is used to convert a binary value to an atom value.
```erlang
-module(helloworld).
-export([start/0]).

start() ->
   io:fwrite("~p~n",[binary_to_atom(<<"Erlang">>, latin1)]).
```
