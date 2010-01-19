Attribute
=========

The Attribute object represents an element attribute.

Instantiation
-------------

`new libxml.Attribute(node, name, value)`
> Creates a new attribute on `node` with `name` and `value`  
> **returns:** a new attribute object
> ### Arguments  
> * **node** - an element node object to attach the attribute to  
> * **name** - a string representing the name of the attribute  
> * **value** - a string representing the value of the attribute

`new libxml.Attribute(node, name, value, ns)`
> Creates a new attribute on `node` with `name` and `value` under the `ns`
> namespace  
> **returns:** a new attribute object
> ### Arguments  
> * **node** - an element node object to attach the attribute to  
> * **name** - a string representing the name of the attribute  
> * **value** - a string representing the value of the attribute
> * **ns** - a namespace object


Methods
-------

`name()`
> Get the attribute name  
> **returns:** a string representing the name of the attribute

`namespace()`
> See [Element#namespace()](/element)

`namespace(ns)`
> See [Element#namespace(ns)](/element)

`nextSibling()`
> Get the next sibling  
> **returns:** an attribute object or `null`

`node()`
> Get the node the attribute is attached to
> **returns:** an element object

`prevSibling()`
> Get the previous sibling  
> **returns:** an attribute object or `null`

`value()`
> Get the value of the attribute  
> **returns:** a string representing the attribute's value
