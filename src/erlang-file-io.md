**Erlang - File I/O**
 
Erlang provides a number of methods when working with I/O. It has easier classes to provide the following functionalities for files −

Reading files
Writing to files
Seeing whether a file is a file or directory
File Operation Methods in Erlang
Let’s explore some of the file operations Erlang has to offer. For the purposes of these examples, we are going to assume that there is a file called NewFile.txt which contains the following lines of text

Example1

Example2

Example3

This file will be used for the read and write operations in the following examples.

Reading the Contents of a File One Line at a Time
The general operations on files are carried out by using the methods available in the file library. For the reading of files, we would need to first use the open operation and then use the read operation which is available as a part of the file library. Following is the syntax for both of these methods.

Syntax
Opening a file – Open(File,Mode)
Reading a file – read(FileHandler,NumberofBytes)
Parameters
File − This is the location of the file which needs to be opened.

Mode − This is the mode in which the file needs to be opened in.

Following are some of the available modes −

Read − The file, which must exist, is opened for reading.

Write − The file is opened for writing. It is created if it does not exist. If the file exists, and if write is not combined with read, the file will be truncated.

Append − The file will be opened for writing, and it will be created if it does not exist. Every write operation to a file opened with append will take place at the end of the file.

Exclusive − The file, when opened for writing, is created if it does not exist. If the file exists, open will return {error, exist}.

FileHandler − This is the handle to a file. This handle is the one that would be returned when the file:open operation is used.

NumberofByte − This is the number of bytes of information that needs to be read from the file.

Return Value
Open(File,Mode) − Returns a handle to the file, if the operation is successful.

read(FileHandler,NumberofBytes) − Returns the requested read information from the file.

```elixir
For example
-module(helloworld). 
-export([start/0]). 

start() -> 
   {ok, File} = file:open("Newfile.txt",[read]),
   Txt = file:read(File,1024 * 1024), 
   io:fwrite("~p~n",[Txt]).
```

Output − When we run the above program, we will get the following result.

Example1
Let us now discuss some other methods available for file operations −

S.No	Method & Description
1	file_read
Available to allow the reading of all the contents of a file at one time.

```Erlang 
f().  
Txt = file:read_file("Newfile.txt"),    
io:fwrite("~p~n",[Txt]).
```

2	write
Used to write the contents to a file.

```Erlang 
f().  
{ok, Fd} = file:open("Newfile.txt", [write]), 
file:write(Fd,"New Line").
f().
{ok, Fd} = file:open("Newfile.txt", [append]), 
file:write(Fd,"New Line").
```

3	copy
used to make a copy of an existing file.

```Erlang 
f().  
file:copy("Newfile.txt","Duplicate.txt").
```

4	delete
This method is used to delete an existing file.

```Erlang 
f().  
file:delete("Duplicate.txt").
```

5	list_dir
This method is used to list down the contents of a particular directory.

```Erlang 
f().  
io:fwrite("~p~n",[file:list_dir(".")]).
```

6	make_dir
This method is used to create a new directory.

```Erlang 
f().  
io:fwrite("~p~n",[file:make_dir("newdir")]).
```

7	rename
This method is used to rename an existing file.

```Erlang 
f().  
io:fwrite("~p~n",[file:rename("Newfile.txt","Renamedfile.txt")]).
```

8	file_size
This method is used to determine the size of the file.

```Erlang 
f().  
io:fwrite("~w~n",[filelib:file_size("Renamed file.txt")]).
```

9	is_file
This method is used to determine if a file is indeed a file.

```Erlang 
f().  
io:fwrite("~w~n",[filelib:file_size("Renamed file.txt")]).
```

10	is_dir
This method is used to determine if a directory is indeed a directory.

```Erlang 
f().  
io:fwrite("~p~n",[filelib:is_dir("newdir")]).
```