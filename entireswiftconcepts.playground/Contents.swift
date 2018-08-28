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

// Functions

// keyword : func

func my_first_function(){
    print ("text form my first function")
}

my_first_function() // calling the function

// passing arguments

func my_function_with_argument(name: String){
    print ("The name is : \(name)")
}

my_function_with_argument(name: "linux")

// returning value

func my_function_with_return(number : Int) {
    return number + number
}

my_function_with_return(number:5)

// giving labels to our functin parameters

// we can give labels to our function parameters

// syntax func <function_name> (parameter label : datatype)

func my_function_with_parameter_label(name personname:String){
    print ("The person name is \(personname)") // here I can use the label to reger the data
}

my_function_with_parameter_label(name : "somename") // just giving the parameter while calling it

// passing default parameter

func my_function_with_default_parameter (name : String ="somerandomname"){
    print ("The name parameter value is \(name)")
}

my_function_with_default_parameter()

// variadic function

// you can pass n number of arguments that is variadic function 

// we have to use "..." for this

func my_variadic_function(number :Int...){
    print (number)
}

my_variadic_function(number : 1,2,3,4,5)

// throwing functions
// we can write throwing functin which will throw something based on the condition
// keywords : throws, throw
// syntax : func <function_name>(parameter : datatype) throws -> datatype

var throw_variable = "entered number is correct"

func my_function_with_throw(number : Int) throws -> Int {
    if number == 5 {
        throw throw_variable
    }

    return "nope correct value didnt got"
}

my_function_with_throw(number: 2)

// inout 
// inout will change the value of passed parameter
// keywords :inout operator : &
var my_inout_variable = 5

func my_inout_function(number : inout Int){
    return number + 1
}

my_inout_function(&my_inout_variable)

print ("The Changed value is \(my_inout_variable)")

// ==================================================================================================

// closures

// creating function in a way with string/integer like data type 

let my_first_closure = {
    print ("These are text from the first closure")
}

my_first_closure() // calling it like a function call.

// passing parameters
// keywords : in

let my_closure_with_parameter{ (number:Int) in 
    print ("Enetered value is \(number)")
    }

// using return in a closure similar to function

let my_closure_with_return { (name: String) in
    return name 
}    

// passing closures as parameters to functions
// keywords : () -> Void
// syntax : func <functionname>(parameter : () -> Void)

let my_closure_as_parameter {
    print ("Text from my closure")
}

func my_function_with_closure_as_parameter(name:() -> Void){
    print ("Text from my function")
    name () // calling the closure

}

my_function_with_closure_as_parameter(name: my_closure_as_parameter) // function calling

// function call using trailing closure syntax

// when a function contains closure as its parameter then we can call it using trailing closure syntax

let my_trailing_closure_variable {
    print ("Text from my closure")
}

func my_function_with_trailing_closure_syntax(name : () -> Void){
    print ("text from my function")
    name()
}

// function call with trailing closure 
my_function_with_trailing_closure_syntax() {
    print ("my trailing function")
}

// alternate way with trailing closure
my_function_with_trailing_closure_syntax {
    print ("This will also work")
}

//======================================================================================================

// strucutres or structs is for creating own types

// syntax : struct <structurename> {
//    definitions
// }

struct Recipes {
    var cusine_name : String // this variable is called property aka stored property
}

var first_cusine = Recipes(cusine_name:"Italian") // calling it

print ("The entered value which is of type recipes is \(first_cusine.cusine_name)")

// computed property
// If a property depends on other things for its value then its called computed property

struct BloodGroup {
    var name : String

    var BloodgroupStatus : String {
        if name == "O+ve" { // here bloog group is depends on name for its value
            return ("Blood group \(name) is suitable for all")
        }
        else{
            return ("No the group \(name) is not suitable for all")
        }
    }
}

// property observers
// property observers are used to execute things before or after a change in the property
// keyword : didSet 
struct FlightReachingTime {
    var FlightName : String
    var ArrivalTime : Int{
        didSet{
            print ("Flight \(FlightName) arriaval timing is \(ArrivalTime)")
        }
    }
}

var flight = FlightReachingTime(FlightName: "m416")

flight.ArrivalTime = 2 
flight.ArrivalTime = 5 // everytime when the property get changed our property observer will print the things defined in "didSet"

// Functions inside structs

struct StudentName {
    name : String
    func StudentNameReturner() -> String {
        return name
    }
}

let student = StudentName(name: "Ethen Hunt")

student.StudentNameReturner()

// Mutating functions with structures
// Mutating function allows us to change the property inside a structure

struct MutatingStruct{
    var name : String

    mutating func NameChangerFunction(){
        name = "changed name"
    }
}

var StructureInstance = MutatingStruct(name: "something") 

StructureInstance.NameChangerFunction()  // withour mutating we can't change this

// Initializers
// Initializers are used to give default values to a property in a struct
// keywords : init()

struct MyStructWithInitializers{
    var name : String

    init() {
        name = "Default name"
    }
}

// calling the struct

var MyStructInstance = MyStructWithInitializers()
print (MyStructInstance.name) // will print the default value enclose inside init

// now to change the init value
var MyStructInstance2 = MyStructWithInitializers()
MyStructInstance2.name = "Changed value"   // chaning the default value
print (MyStructInstance2.name)

// self
// self is used to distinguish between property and parameter of init if both of em are supposed to be same

struct User {
    var name : String

    init(name: String){
        print ("The initial name is \(name)")
        self.name = name
    }
}


// lazy property
// lazy property is used to call a function whever its needed instead of loading it already/

struct FirstStruct {
    init() {
        print ("text form first structures init")
    }
}

struct SecondStruct {
    var name : String
    lazy var firststruct : FirstStruct()
    init(name: String){
        print ("Name is \(name)")
        self.name = name
    }
}

var lazyStructInstance = SecondStruct(name:"random name")

lazyStructInstance.firststruct // since we have added lazy to this property it will call only when its needed instead of loading already

//====================================================================================================

// Class

// Most of the sytax for class are more over similar to struct

class FirstClass{
    func FirstFunction(){
        print ("Text from first function")
    }
}

var FirstClassInstance = FirstClass()

FirstClassInstance.FirstFunction()

// properties inside a class should have an initializers

class FirstClassWithProperty {
    var FirstProperty : String

    init(FirstPropery:String){
        self.FirstProperty = FirstProperty
    }
}

var InstanceClassProperty = FirstClassWithProperty(FirstProperty:"Something")

print (InstanceClassProperty.FirstProperty)

// Inheritance
// syntax class Subclass : Superclass

class SuperClass {
    func SuperClassFunction(){
        print ("Text from super class function")
    }
}

class SubClass : SuperClass {
    
}

var SubClassInstance = Subclass()

SubClassInstance.SuperClassFunction()

// final class
// class that are defined as final class cant be inherited
final class FinalClass {
    func FinalClassFunction(){
        print ("Text from final class function")
    }
}

class FinalSubClass : FinalClass{ // this will leads to error
    
} 

//==================================================================================================




