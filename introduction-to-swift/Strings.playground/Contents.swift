import UIKit

// As you can see greeting is a variable from String type, although it's not declaring the type as greetingTwo
var greeting = "Hello, playground"
var greetingTwo: String = "Hello, playground"
type(of: greeting)
type(of: greetingTwo)

// This is a multi-line string, when constructed as this it will have a line break between words
var multiLineString = """
This
is
a
multiline
string
"""

// This is a multi-line formatted stringm when contructed as this it won't have line breaks
var multiLineStringTwo = """
This \
is \
a \
multiline \
string
"""

// This is equivalent to multiLineString
var multiLineStringThree = "This\nis\na\nmultiline\nstring"
