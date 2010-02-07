SaxPushParser
=========

libxmljs provides a SAX2 push parser interface that accepts chunks of data.


SAX Push Parser
---------------

`new libxml.SaxPushParser()`
> Instantiate a new SaxParser  
> **returns:** a SaxParser object

`new libxml.SaxPushParser(callback)`
> Instantiate a new SaxParser  
> **returns:** a SaxParser object
> ### Arguments  
> * **callback** - a function that accepts the new sax parser as an argument  

Parse
-----

`parser.push(string)`
> Push a chunk of data into the parser  
> **return:** boolean. true if no errors, false otherwise
> ### Arguments  
> * **string** - a string representing the document to parse  


Callbacks
---------

`parser.onStartDocument(function() {})`
> Called at the start of a document

`parse.onEndDocument(function() {})`
> Called at the end of the document parse

`parser.onStartElementNS(function(elem, attrs, prefix, uri, namespaces) {})`
> Called on an open element tag  
> ### Arguments  
> * **elem** - a string representing the element name  
> * **attrs** - an array of arrays: `[[key, prefix, uri, value]]`  
> * **prefix** - a string representing the namespace prefix of the element  
> * **uri** - the namespace URI of the element  
> * **namespaces** - an array of arrays: `[[prefix, uri]]`  

`parser.onEndElementNS(function(elem, prefix, uri) {})`
> Called at the close of an element  
> ### Arguments  
> * **elem** - a string representing the element name  
> * **prefix** - a string representing the namespace prefix of the element  
> * **uri** - the namespace URI of the element  

`parser.onCharacters(function(chars) {})`
> Called when a set of content characters is encountered  
> ### Arguments  
> * **chars** - a string of characters

`parser.onCdata(function(cdata) {})`
> Called when a CDATA is encountered  
> ### Arguments  
> * **cdata** - a string representing the CDATA  

`parser.onComment(function(msg) {})`
> Called when a comment is encountered  
> ### Arguments  
> * **msg** - a string representing the comment

`parser.onWarning(function(msg) {})`
> Called when a warning is encountered  
> ### Arguments  
> * **msg** - a string representing the warning message

`parser.onError(function(msg) {})`
> Called when an error is encountered  
> ### Arguments  
> * **msg** - a string representing the error message
