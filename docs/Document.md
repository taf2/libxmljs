Document
========

The Document class represents an XML document. It can be created by
instantiating an object using the "new" keyword or by parsing a document.

Instantiation
-------------

`new libxml.Document();`
> Instantiate a new document object defaulting the version to *1.0* and the
> encoding to *UTF-8*.  
> **returns:** a new document object

`new libxml.Document(callback);`
> Instantiate a new document object defaulting the version to *1.0* and the
> encoding to *UTF-8*.  
> **returns:** a new document object  
> ### Arguments  
> * **callback** - a function that accepts the new document object

`new libxml.Document(version);`
> Instantiate a new document setting the version to `version` and defaulting
> the encoding to *UTF-8*.  
> **returns:** a new document object
> ### Arguments  
> * **version** - a string representing the desired document version  

`new libxml.Document(version, callback);`
> Instantiate a new document setting the version to `version` and defaulting
> the encoding to *UTF-8*.  
> **returns:** a new document object
> ### Arguments  
> * **version** - a string representing the desired document version  
> * **callback** - a function that accepts the new document object

`new libxml.Document(version, encoding);`
> Instantiate a new document setting the version to `version` and the encoding
> to `encoding`.  
> **returns:** a new document object
> ### Arguments  
> * **version** - a string representing the desired document version  
> * **encoding** - a string representing the desired document encoding  

`new libxml.Document(version, encoding, callback);`
> Instantiate a new document setting the version to `version` and the encoding
> to `encoding`.  
> **returns:** a new document object
> ### Arguments  
> * **version** - a string representing the desired document version  
> * **encoding** - a string representing the desired document encoding  
> * **callback** - a function that accepts the new document as an argument  

Methods
-------

`child(idx)`
> A convenience method to get the `idx`th child of the root element  
> See [Element#child](/element) for more information  
> **returns:** a element object or `null`
> ### Arguments  
> * **idx** - a zero indexed integer representing the child element to return  

`children()`
> Get all the children of the root node  
> **returns:** an array of element objects

`document()`
> A convenience method that returns the document  
> **returns:** the document object

`errors()`
> An array of recoverable errors encountered while parsing the document  
> **returns:** an array of [SyntaxErrors](/syntaxerror)

`encoding()` 
> Gets the document's encoding  
> **returns:** a string representation of the document encoding

`encoding(enc)`
> Sets the document's encoding  
> **returns:** the document object
> ### Arguments  
> * **enc** - must be a string representing the desired encoding  

`find(xpath)`
> A convenience method to search the document starting at the root node  
> See [Element#find](/element) for more information  
> **returns:** an array of element objects
> ### Arguments  
> * **xpath** - must be a string representing the xpath to search  

`get(xpath)`
> A convenience method to search the document and get the first node in the
> results  
> See [Element#get](/element) for more information  
> **returns:** a element object or `null`

`node([args])`
> A convenience method for creating and setting the root node  
> See [new libxml.Element](/element) for the full spec

`root()`
> The root element of the document  
> **returns:** an element object or `null`

`toString()`
> Renders the document to a string  
> **returns:** a string representation of the document

`version()`
> Gets the document version.  
> **returns:** a string representation of the document version
