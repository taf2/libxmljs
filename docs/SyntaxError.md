SyntaxError
===========

Syntax Errors are generated during document parsing. Recoverable errors will be
pushed to an array on the document (Document#errors). Fatal errors will be
thrown and will need to be caught.

The property definitions below are taken from the libxml2 documentation.

Properties
----------

`domain`
> What part of the library raised this error  
> **returns:** a Number or null

`code`
> The error code  
> **returns:** a Number or null

`message`
> human-readable informative error message  
> **returns:** a String or null

`level`
> how consequent is the error  
> **returns:** a Number or null

`file`
> the filename  
> **returns:** a String or null

`line`
> the line number if available  
> **returns:** a Number or null

`str1`
> extra string information  
> **returns:** a String or null

`str2`
> extra string information  
> **returns:** a String or null

`str3`
> extra string information  
> **returns:** a String or null

`int1`
> extra number information  
> **returns:** a Number or null

`column`
> column number of the error or 0 if N/A  
> **returns:** a Number
