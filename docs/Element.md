Element
=======

The Element class represents an element node in the XML tree. 

Instantiation
-------------

`new libxml.Element(doc, name)`
> Creates a new element object called `name`  
> **returns:** a new element object
> ### Arguments  
> * **doc** - a document object to provide context for the node  
> * **name** - a string representing the name of the element  

`new libxml.Element(doc, name, content)`
> Creates a new element object called `name` with `content` as its content  
> **returns:** a new element object
> ### Arguments  
> * **doc** - a document object to provide context for the node  
> * **name** - a string representing the name of the element  
> * **content** - a string representing the content to add to the node  

`new libxml.Element(doc, name, attrs)`
> Creates a new element object called `name` with `attrs` as its attributes  
> **returns:** a new element object
> ### Arguments  
> * **doc** - a document object to provide context for the node  
> * **name** - a string representing the name of the element  
> * **attrs** - a hash of `{name: value}` pairs to set as attributes  

`new libxml.Element(doc, name, callback)`
> Creates a new element object called `name` then calls `callback` passing the  
> new object as an argument.  
> **returns:** a new element object  
> ### Arguments  
> * **doc** - a document object to provide context for the node  
> * **name** - a string representing the name of the element  
> * **callback** - a function that will accept the new object as an argument  

`new libxml.Element(doc, name, attrs, content)`
> Creates a new element object called `name` with `attrs` as its attributes  
> **returns:** a new element object
> ### Arguments  
> * **doc** - a document object to provide context for the node  
> * **name** - a string representing the name of the element  
> * **attrs** - a has of `{name: value}` pairs to set as attributes  
> * **content** - a string representing the content to add to the node  

`new libxml.Element(doc, name, attrs, callback)`
> Creates a new element object called `name` with `attrs` as its attributes  
> **returns:** a new element object
> ### Arguments  
> * **doc** - a document object to provide context for the node  
> * **name** - a string representing the name of the element  
> * **attrs** - a has of `{name: value}` pairs to set as attributes  
> * **callback** - a function that will accept the new object as an argument  

`new libxml.Element(doc, name, attrs, content, callback)`
> Creates a new element object called `name` with `attrs` as its attributes  
> **returns:** a new element object
> ### Arguments  
> * **doc** - a document object to provide context for the node  
> * **name** - a string representing the name of the element  
> * **attrs** - a has of `{name: value}` pairs to set as attributes  
> * **content** - a string representing the content to add to the node  
> * **callback** - a function that will accept the new object as an argument  


Methods
-------

`addChild(child)`
> Add a child node to the node  
> **returns:** the current element object
> ### Arguments  
> * **child** - a node object to be added as a child  

`attr(name)`
> Get the attribute called `name`  
> **returns:** an attribute node or null
> ### Arguments  
> * **name** - a string representing the name of the attribute  

`attr([attr hash])`
> Create a set of attributes from a hash  
> **returns:** the element object
> ### Arguments  
> * **attr hash** - a has of `{name: value}` pairs  

`attr(attr)`
> Add an attribute object to the node  
> **returns:** the element object
> ### Arguments  
> * **attr** - an attribute object  

`attrs()`
> Get the list of attributes attached to the node  
> **returns:** an array of attribute objects

`child(idx)`
> Get the `idx`th child of the root element  
> **returns:** a element object or `null`
> ### Arguments  
> * **idx** - a zero indexed integer representing the child element to return  

`children()`
> Get all the node's children  
> **returns:** an array of element objects

`define_namespace(href)`
> Define a new namespace on the node using `href` for the URI  
> This will only define the namespace but wont add it to the node  
> **returns:** the new namespace
> ### Arguments  
> * **href** - a string representing the URI for the new namespace  

`define_namespace(prefix, href)`
> Define a new namespace on the node using `href` for the URI and `prefix` as
> the prefix  
> This will only define the namespace but wont add it to the node  
> **returns:** the new namespace
> ### Arguments  
> * **prefix** - a string representing the prefix for the new namespace  
> * **href** - a string representing the URI for the new namespace  

`doc()`
> Get the document object containing the element  
> **returns:** the document object

`find(xpath)`
> Search the element's children by `xpath`  
> **returns:** an array of element objects
> ### Arguments  
> * **xpath** - must be a string representing the xpath to search  

`find(xpath, ns_uri)`
> Search the element's children by `xpath` within the `uri` namespace  
> **returns:** an array of element objects
> ### Arguments  
> * **xpath** - must be a string representing the xpath to search  
> * **ns_uri** - must be a string representing the namespace uri  
> ### Example  
> `doc.find("xmlns:child-name", "ns:uri")`

`get(xpath, ns_uri)`
> This this is syntactic sugar for `find(xpath, ns_uri)[0]`  
> **returns:** a element object or `null`

`find(xpath, namespaces)`
> Search the element's children by `xpath` within the `uri` namespace  
> **returns:** an array of element objects
> ### Arguments  
> * **xpath** - must be a string representing the xpath to search  
> * **namespaces** - must be a hash representing the namespaces  
> ### Example  
> `doc.find("ns-1:child-name", {"ns-1": "ns:uri"})`  
> `doc.find("ns-1:child1/ns-2:child2", {"ns-1": "ns:uri1", "ns-2": "ns:uri2"})`  

`get(xpath, ns_uri)`
> This this is syntactic sugar for `find(xpath, namespaces)[0]`  
> **returns:** a element object or `null`

`name()`
> Get the name of the element  
> **returns:** a string representing the name of the element

`name(new_name)`
> Set the name of the element  
> **returns:** the element object
> ### Arguments  
> * **new_name** - a string representing the new name of the element  

`namespace()`
> Get the node's namespace  
> **returns:** a namespace object or `null`

`namespace(ns)`
> Set the node's namespace to `ns`  
> **returns:** the element object
> ### Arguments  
> * **ns** - a namespace object  

`namespace(href)`
> Add namespace with `href` as the URI to the node  
> This will search up the tree to find a namespace with the given href and, if
> found will use it. Otherwise it will create a new namespace.  
> **returns:** the namespace object
> ### Arguments  
> * **href** - a string representing the namespace URI  

`namespace(prefix, href)`
> Add namespace with `href` as the URI and `prefix` as the prefix to the node  
> This will search up the tree to find a namespace with the given href and, if
> found will use it. Otherwise it will create a new namespace.  
> **returns:** the namespace object
> ### Arguments  
> * **prefix** - a string representing the namespace prefix  
> * **href** - a string representing the namespace URI  

`next_sibling()`
> Get the next sibling  
> **returns:** an element object or `null`

`parent()`
> Get the parent node  
> **returns:** an element object or the document if the node is root node

`path()`
> Get the xPath of the element  
> **returns:** a string representing the xPath of the element

`prev_sibling()`
> Get the previous sibling  
> **returns:** an element object or `null`

`text()`
> Get the text content of the element  
> **returns:** a string representing the content of the element
