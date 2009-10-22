Parser
======

A document can be parsed as a string or a file. Once parsed an object holding
the document as a set of javascript objects is returned


Methods
-------

`libxml.parseString(string)`
> Parse an in-memory string  
> **returns:** a document object
> ### Arguments  
> * **string** - a string representing the document to parse  

`libxml.parseFile(filename)`
> Parse a file  
> **returns:** a document object
> ### Arguments  
> * **filename** - a string representing the filename of the document  
