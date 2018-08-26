	// Hello world

print ("Hello world")

//===============================================================================================

// Varaible
// Two types : var, let. let variable can't be changed.

var my_var_variable = "strings for var variable"

let my_let_variable = "string for let variable"

//Before changing var varaible
print (my_var_variable)

my_var_variable = "changed strings for var variable"

print (my_var_variable)

// Changing let

// my_let_variable = "Try to change the string for let variable which will leads to an error"

// ==========================================================================================

// String and Integers

var my_string = "text within double quotes"

var my_int = 2 // no need of quotes

// Multi line string

var my_multiple_line_string = """
text that are enclosed within triple double quotes
are considered as the multiple line string
and thats how it does
"""

print (my_multiple_line_string)

// =============================================================================================
// Boolean

var my_variable_to_represent_true = true
var my_variable_to_represent_false = false

//==============================================================================================

// String interpolation

var my_variable = "something"

print ("The interpolated string value is \(my_variable)")

//==============================================================================================
// Type annotation

let my_string_variable : String = "String value"

let my_integer_variable : Int = 23

//=============================================================================================
// Array

let my_array = ["one", "two", "three", "four"]

// accessing array by index
print("The first element in the array is \(my_array[0])")

//==============================================================================================
// Set

let my_set = Set(["one", "two", "three", "three", "four", "four", "four", "five", "five"])

print (my_set)
// no duplicates
// no order
//===============================================================================================

// Tuple
var my_tuple = ("one", "two", "three")

print (my_tuple)

//accessing tuple by index
print ("The first element in the tuple is \(my_tuple.0)")

// using key value pair like elements
var my_tuple_with_key = (first:"one", second:"two")

//access by keys
print (my_tuple_with_key.first)

var my_second_tuple_with_key = (anything:"one", anything2:"two")
print (my_second_tuple_with_key.anything)

//=============================================================================================

// Dictionary
var my_dictionary = ["mykey" : "myvalue", "mysecondkey":"mysecondvalue", "mythirdkey":"mythirdvalue"]

// priting a dictionary value
    
print (my_dictionary["mykey"])
print (my_dictionary["mysecondkey"])
 
    
var mysecond_dictionary = ["facebook" : "Mark", "amazon" : "jeff", "napster" : "sean"]
print (mysecond_dictionary)
print (mysecond_dictionary["facebook"])
print (mysecond_dictionary["amazon"])
// now trying to access a key which is not presented over in our dictionary
print (mysecond_dictionary["microsoft"]) // this one will return a nil value
print (mysecond_dictionary["microsoft", default:"This dictionary is not on the list if you want you can add"]) // this one will return a default value if the key is not there
    
//==============================================================================================

// Creating an empty array/set/dictionary
    
// syntax : var array_name = [datatype]()
    
// example:
var my_first_empty_array = [Int]() // now we have created an empty array which can hole integer items
    
// ===============================================================================================

// Enumerations
     // use - to define a group of similar values
    
    // syntax :
    // enum ENUMERATIONNAME
    //{
    //    case case1
    //    case case2
    //}
    // example
enum Recipes {
    case Vegeterian
    case NonVegeterian
    }
    
let rasam = Recipes.Vegeterian

print ("Okay rasam belongs to the category : \(rasam)")
    
// Enum with associated values
// we can have associated values with enum to store additional values
    // example:
    enum Books {
        case Thriller(author: String)
        case Novel(numberOfPages: Int)
    }
    
    var DigitalFortress = Books.Thriller(Author: "DanBrown")
    
    print ("The enum assocated with value is \(DigitalFortress)")
    
// Enum with raw values
    enum Programming : Int {
        case functional
        case objectoritented
        case procedural
        case interpreted
    }
    
    var my_favourite_programming = Programming(rawValue: 2)
    print ("My favourite programming is \(my_favourite_programming)")
    
// ====================================================================================================

// operators
// as most of em are similar covered these two operators apart from rest of it.
// ternary and range operator

// range operator is for taking length range and ternary operators is for conditions
// range operator => ".."
var range_variable = 1..5 // this will take range from 1 to 5

print (range_variable)

// ternary operator = "?"

var ternary_variable = 5
var ternary_second_variable = 6

print (ternary_variable > ternary_second_variable ? "nope it is not greater" : "yup it is greater") // if the condition returns true then it will print the second value else third value

// =================================================================================================

// loops

// for loop

var for_loop_variable = 1..5

for value in for_loop_variable {
    print ("This will print till that time")
}     

// while loop:

var while_loop_variable = 1

while while_loop_variable <=20 {
    print (while_loop_variable)
    while_loop_variable += 1
}

// repeat loops - which is more over similar to while except the condition will be exectued atleast once

var repeat_loop_variable = 1

repeat {
    print (repeat_loop_variable)
    repeat_loop_variable += 1
} while repeat_loop_variable <=20 // so since we have while over here the cond will be executed once

// Exiting a loop
// keyword : break

for value in for_loop_variable {
    print ("This will printed")

    if value == 2 {
        break
    }
}

// Exiting multiple loops
// keyword : outerLoop    
outerLoop : for i in 1..10 {
    for j in 10..20 {
        sum_value = i + j

        if sum_value == 24 {
            break outerloop
        }
    }
}

//==================================================================================================





