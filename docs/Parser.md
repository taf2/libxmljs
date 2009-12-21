Parser
======

A document can be parsed as a string or a file. Once parsed an object holding
the document as a set of javascript objects is returned


Methods
-------

`libxml.parseXmlString(string)`
> Parse an in-memory XML string  
> **returns:** an [XmlDocument](/xmldocument) object
> ### Arguments  
> * **string** - a string representing the document to parse  

`libxml.parseXmlFile(filename)`
> Parse an XML file  
> **returns:** an [XmlDocument](/xmldocument) object
> ### Arguments  
> * **filename** - a string representing the filename of the document  

`libxml.parseHtmlString(string)`
> Parse an in-memory HTML string  
> **returns:** an [HtmlDocument](/htmldocument) object
> ### Arguments  
> * **string** - a string representing the document to parse  

`libxml.parseHtmlFile(filename)`
> Parse an HTML file  
> **returns:** an [HtmlDocument](/htmldocument) object
> ### Arguments  
> * **filename** - a string representing the filename of the document  
