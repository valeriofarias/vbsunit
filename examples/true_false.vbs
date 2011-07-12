' Options in market

juice = ""
fruit = "grape"
fruits = array("orange", "apple", "mango", "banana")

assert_false isArray(fruit), "fruit should not be an array"
assert_true isArray(fruits), "fruits should be an array"
assert_true (vartype(fruits) = 8204), "Array + Variant (8192 + 12)"
assert_true (vartype(fruit) = VBString), "fruit should be a string"
assert_true (vartype(fruit) = 8), "fruit should be a string"

bag = juice
assert_true isEmpty(bag), "the bag should not be empty :(" 'fail
assert_true isNumeric(ubound(fruits)), "fruits should be in a Integer representation"
assert_true ubound(fruits) > 2 , "should have at least 3 different kinds of fruits"

' Dates
assert_true IsDate("April 22, 1947"), "April 22, 1947 should be a date" 'fail in windows pt-br
assert_true IsDate("Abril 22, 1947"), "In windows pt-br: Abril 22, 1947 should be a date" 'run in windows pt-br
assert_true IsDate(#01/31/11#), "#01/31/11# should be a date"
assert_false IsDate("#01/31/11#"), "#01/31/11# should not be a date"
assert_false IsDate("52/17/2011"), "52/17/2011 should not be a date"
assert_false IsDate("Hello World!"), "Hello World! Should not be a date"

' Null
dim null_test
assert_false IsNull(null_test), "null_test variable created should not be null"

null_test = 10
assert_false IsNull(null_test), "null_test variable with 10 should not be null"

null_test = Empty
assert_false IsNull(null_test), "null_test variable with Empty should not be null"

null_test = Null
assert_true IsNull(null_test), "null_test variable with null should be null"

' TypeName
chameleon = "Hello World!"
assert_true TypeName(chameleon) = "String", "Chameleon with -Hello World!- should be a string" 

chameleon = 4
assert_true TypeName(chameleon) = "Integer", "Chameleon with 4 should be a Integer"

chameleon = 4.675
assert_true TypeName(chameleon) = "Double", "Chameleon with 4.675 should be Double"

chameleon = Null
assert_equal TypeName(chameleon), "Double", "Chameleon with Null should be Null" 'fail

chameleon = Empty
assert_equal TypeName(chameleon), "Empty", "Chameleon with empty should be empty" 

chameleon = True
assert_true TypeName(chameleon) = "Boolean", "Chameleon with true should be Boolean"

' Objects
set connection = CreateObject("ADODB.Connection") 
 
assert_true isObject(connection), "connection object should be a Object" 
assert_false isNull(connection), "connection object should not be null" 
assert_false isEmpty(connection), "connection object should not be empty"
assert_false connection is nothing, "connection object should not be nothing"
 
set connection = nothing 
 
assert_true isObject(connection), "finalized connection object still should be a Object" 
assert_false isNull(connection), "finalized connection object still should not be null" 
assert_false isEmpty(connection), "finalized connection object still should not be empty"
assert_true connection is nothing, "finalized connection object should be nothing"