Namespace
=========

Namespace is a an object representing the namespace of a specific node.


Instantiation
-------------

`new libxml.Namespace(node, prefix, href)`
> Creates a new namespace object defined on `node`  
> _This will not set the namespace to the node_  
> **returns:** a new namespace object
> ### Arguments  
> * **node** - a node object to carry the namespace definition  
> * **prefix** - a string or `null` representing the desired prefix  
> * **href** - a string representing the URI of the namespace  


Methods
-------

`href()`
> Get the href of the namespace  
> **returns:** a string representing the URI of the namespace

`href(new_href)`
> Set the URI of the namespace  
> **returns:** the namespace object
> ### Arguments  
> * **new_href** - a string representing the new URI  

`node()`
> Get the node the namespace is defined on  
> **returns:** a node object

`prefix()`
> Get the prefix of the namespace  
> **returns:** a string representing the namespace's prefix or `null`

`prefix(new_prefix)`
> Set the prefix of the namespace  
> **returns:** the namespace object
> ### Arguments  
> * **new_prefix** - a string or `null` representing the namespace's prefix  