//
//  QALibrary.swift
//  QZZServer
//
//  Created by Wesley Yang on 16/8/2.
//  Copyright © 2016年 ff. All rights reserved.
//

import Foundation


public class QALibray{
    
    var qalist:[QAInfo]
    public static let shared = QALibray()

    private init() {
        qalist = [QAInfo]()

        qalist.append( QAInfo(ques:"When might we use a structure instead of a class?        " ,code:"" ,opts:["Whenever we just want to encapsulate a bunch of simple values","Always, as structures are the better classes","Whenever we need inheritance","Never"] ,answers:[0] ,hint:"Exactly! We can use a structure whenever we want to encapsulate a bunch of simple values. Most of the time, however, it's smart to stick with classes; especially, if we want to use inheritance.            "))
        
        qalist.append( QAInfo(ques:"What's up with variables?            \n\nSimply pick your answer(s) and hit \"Solve\" as soon as you're done!        " ,code:"" ,opts:["Variables help us store information for later","Variables can change their type at any time","Variables can remember many values at once","Variables are containers for values"] ,answers:[0,3] ,hint:"Fantastic! As containers, variables can store values for later. Still, they can only remember one value at a time and their type is permanent.            "))
        
        qalist.append( QAInfo(ques:"How do we create a variable?        " ,code:"" ,opts:["var myAge = 17","var myName: String","var myName = \"Marty\"","myAge = 17"] ,answers:[0,1,2] ,hint:"Just like that! We can create a variable with 'var myVariable'. If we don't want to give it a value right away, we need to specify its type using ': Type'.            "))
        
        qalist.append( QAInfo(ques:"What's true about code?        " ,code:"" ,opts:["Code is another word for a list of instructions","Code defines the actions to be performed by the computer","With code, we can build apps, games and websites","Code can only be read by computers"] ,answers:[0,1,2] ,hint:"Exactly! Code is a list of instructions and defines the actions to be performed within apps, games and websites. It's executed by the computer but can be read by anyone.            "))
        
        qalist.append( QAInfo(ques:"What's different between 4 and \"4\"?        " ,code:"" ,opts:["4 can be used for calculations","\"4\" has a further meaning","4 is an Integer while \"4\" is a String","There's no difference"] ,answers:[0,2] ,hint:"That's right! 4 is an Integer and \"4\" is a String. Integers are numbers and can be used for calculations, Strings have no further meaning.            "))
        qalist.append( QAInfo(ques:"Can you find the mistake in this piece of code?        " ,code:"let myName\nmyName = \"Swifty\"\nprint(myName)        " ,opts:["myName needs to be defined as a String","myName can't take \"Swifty\" because it's a constant","myName can't take \"Swifty\" because it's an Integer","print() can't be used for Strings"] ,answers:[0] ,hint:"That's right! myName needs to be defined with a type if it doesn't get a value right away. It can take \"Swifty\" because it's a String and it didn't have a value yet.            "))
        qalist.append( QAInfo(ques:"What's up with variables and constants?        " ,code:"" ,opts:["A variable's value can be changed at any time","A constant's value is permanent","var defines a variable while let defines a constant","They're the same"] ,answers:[0,1,2] ,hint:"Sweet! Variables are defined with var and can change their value at any time; let defines a constant, which can't change its value.            "))
        qalist.append( QAInfo(ques:"Can you guess the result of this operation?        " ,code:"let number = 100\nprint(number / 10)        " ,opts:["10","100","1000","We can't divide by 10"] ,answers:[0] ,hint:"Good stuff! The result of the operation (100 / 10) is 10.            "))
        qalist.append( QAInfo(ques:"What's true about declaring and initializing in a single step?        " ,code:"" ,opts:["A variable can automatically recognize its type","We can't change a variable's type later on","We can't change a variable's value later on","We've got to specify a variable's type"] ,answers:[0,1] ,hint:"Well done! If we assign a value upon declaration, we don't have to specify a type because of 'type inference'. We can change a variable's value later on but the type is permanent after declaration.            "))
        qalist.append( QAInfo(ques:"What is declaration, anyway?        " ,code:"" ,opts:["It's defining a variable's name","It's specifying a variable's type","It's setting a variable's value","It's making a variable independent"] ,answers:[0,1] ,hint:"Fantastic! Whenever we're declaring, we're defining a variable's name and type. Declaration does not set values and, in this context, isn't about independence.            "))
        qalist.append( QAInfo(ques:"That said, what's initialization?        " ,code:"" ,opts:["It's setting a variable's initial value","It's setting a variable's name","It's making a variable constant","It's setting a variable's type"] ,answers:[0] ,hint:"Great! Initialization is the assignment of an initial value. If we assign a value when we declare a variable, declaration and initialization happen at the same time.            "))
        qalist.append( QAInfo(ques:"Which of these statements is true about declaring a variable without giving it a value?        " ,code:"" ,opts:["We need to specify its type","We can't change the variable's type later on","We can totally initialize it later on","We need to give it a value upon creation"] ,answers:[0,1,2] ,hint:"Yes! We don't have to initialize a variable upon creation. If we don't give it a value right away, we need to specify its type. We can't change a variable's type after declaration.            "))
        qalist.append( QAInfo(ques:"Can you anticipate the output of this code snippet?        " ,code:"var x = 6\nx += 1\nvar y = 3 + x\ny += 5\nprint(y)        " ,opts:["15","14","7","10"] ,answers:[0] ,hint:"Good stuff! x is initialized with 6 and increased to 7 right afterwards. y is 10 (3 + 7) before it's increased by 5. In the end, 15 gets printed.            "))
        qalist.append( QAInfo(ques:"When do we need optionals?        " ,code:"" ,opts:["Whenever we don't know if a variable will have a value","If we need a variable that can be nil","When we don't want a variable to change its value","When we want to change a variable's type"] ,answers:[0,1] ,hint:"Right! Optionals are variables that are allowed to have no value (nil). We need an optional whenever we don't know if there'll be a value for a variable.            "))
        qalist.append( QAInfo(ques:"What are valid ways to name the values of a tuple?        " ,code:"" ,opts:["let (artist, title) = (\"Burial\", \"Untrue\")","let album = (artist: \"Burial\", title: \"Untrue\")","var album = (artist:\"Burial\", title: \"Untrue\")","var album(artist, title) = (\"Burial\", \"Untrue\") "] ,answers:[0,1,2] ,hint:"Great work! There are several ways of naming the values of tuples. We can put names in front of the values when we're initializing the tuple or we can bind the values to constants.            "))
        qalist.append( QAInfo(ques:"What's this piece of code going to print to the console?        " ,code:"var optional: String?\nif let content = optional {\n\tprint(content)\n}        " ,opts:["Nothing","nil","content","optional"] ,answers:[0] ,hint:"That's right! Using if let, we're creating a constant and the code inside '{}' is executed only if the optional has a value. In case it's nil, however, the block is ignored and nothing is printed.            "))
        qalist.append( QAInfo(ques:"What's the deal with Bools?        " ,code:"" ,opts:["Bools can only be true or false","The \"hash values\" of true and false are 1 and 0","Comparisons like '<' and '>' return Bools","Operators like '+' and '-' return Bools"] ,answers:[0,1,2] ,hint:"Fantastic! Bools can only be true or false and are returned by comparisons (not operations). The \"hash values\" of true and false are 1 and 0.            "))
        qalist.append( QAInfo(ques:"How can we check if a variable called myNumber equals 10?        " ,code:"" ,opts:["myNumber == 10","myNumber = 10","We can't check that"] ,answers:[0] ,hint:"Perfect! We can compare values using '=='. The equals sign is used to assign values to variables.            "))
        qalist.append( QAInfo(ques:"How can we check if a variable called myString is not equal to \"Hank\"?        " ,code:"" ,opts:["myString != \"Hank\"","myString == !\"Hank\"","myString.equals(\"Hank\")","We can't check that"] ,answers:[0] ,hint:"Just like that! We can check if values are not equal with '!='. \"Exclamation points\" are used to invert Boolean values and equals() does not exist in Swift.            "))
        qalist.append( QAInfo(ques:"Do you know how to invert the value of myBool?        " ,code:"" ,opts:["myBool = !myBool","myBool != myBool","myBool = !true","myBool = false"] ,answers:[0] ,hint:"Swee-heet! We can invert the value of myBool by assigning itself with an \"exclamation point\" in front of it. '!=' is used to check if values are not equal.            "))
        qalist.append( QAInfo(ques:"How can we check if b1 and b2 are true?        " ,code:"" ,opts:["print(b1 && b2)","print((b1 == true)                \n\t&& (b2 == true))            ","print(b1 || b2)","print(b1 == b2)"] ,answers:[0,1] ,hint:"Great! We can check whether b1 and b2 are true using the \"logical and\". Doing so, we can but don't have to compare them with true.            "))
        qalist.append( QAInfo(ques:"Which of these statements print true?        " ,code:"" ,opts:["print(true || false)","print(10 < 100)","print(true && false)","print(\"false\")"] ,answers:[0,1] ,hint:"Perfect! (true || false) is true because one of the statements is true and, of course, 10 is less than 100. (true && false) is false because one of the statements is false.            "))
        qalist.append( QAInfo(ques:"How many else if blocks can we use? Again, more than one answer can be correct.        " ,code:"" ,opts:["0","1","2","As many as we want"] ,answers:[0,1,2,3] ,hint:"For sure! As long as every else if clause is followed by a Bool, we can use as many blocks as we want.            "))
        qalist.append( QAInfo(ques:"Does every else if block require a Bool?        " ,code:"" ,opts:["Yes","No"] ,answers:[0] ,hint:"That's right! Every else if block needs to have a Bool; it's just the else block that doesn't need a condition. If we want to use an else block, we need to place it at the end of the if statement.            "))
        qalist.append( QAInfo(ques:"Which of these statements can be used to check whether myOpt has a value?        " ,code:"var myOpt: String?        " ,opts:["if myOpt != nil","if let content = myOpt","if myOpt.hasValue","if myOpt"] ,answers:[0,1] ,hint:"Exactly! We can check if an optional holds a value by asking if it's not equal to nil or by using if let.            "))
        qalist.append( QAInfo(ques:"Can you figure out what this code will print?        " ,code:"let x = 5\nif x !=  5 {\n\tprint(\"a\")\n} else if x <= 4 {\n\tprint(\"b\")\n} else {\n\tprint(\"c\")\n}        " ,opts:["c","b","a"] ,answers:[0] ,hint:"Impressive! Because x is 5, (x != 5) and (x <= 5) are both false, triggering the else clause.            "))
        qalist.append( QAInfo(ques:"Which of the following statements return true?        " ,code:"" ,opts:["(true && true) == true","true && true","(true && true) == false","true && false"] ,answers:[0,1] ,hint:"That's right! The \"logical and\" returns true if (and only if) both Bools are true. In every other case, the result is false.            "))
        qalist.append( QAInfo(ques:"Talking about the \"logical or\", which of these statements returns true?        " ,code:"" ,opts:["true || false","(true || false) == true","(true || true) == false","false || false"] ,answers:[0,1] ,hint:"Swee-heet! The \"logical or\" returns true unless both values are false.            "))
        qalist.append( QAInfo(ques:"What's up with arrays?        " ,code:"" ,opts:["Arrays are ordered collections of values","Arrays can store multiple values of a single type","Like variables, arrays need to be declared and initialized","Arrays can store a single value of multiple types"] ,answers:[0,1,2] ,hint:"Exactly! Arrays are ordered collections of values of a single type. Just like variables, they need to be declared and initialized.            "))
        qalist.append( QAInfo(ques:"Let's say myArray has three elements. How can we print the third one?        " ,code:"" ,opts:["print(myArray[2])","print(myArray[3])","print(myArray[4])"] ,answers:[0] ,hint:"Perfect! Arrays are zero-based, which means the third element has an index of 2.            "))
        qalist.append( QAInfo(ques:"Can you think of a shortcut to declare, initalize and add values to myArray in a single step?        " ,code:"" ,opts:["let myArray = [8, 1, 5]","let myArray: [8, 1, 5]","myArray = [String]()","let myArray: [String]"] ,answers:[0] ,hint:"That wasn't so hard, was it? We can declare, initalize and add values to myArray by assigning them inside of '[]'. Because of 'type inference', myArray knows that it's made for Integers.            "))
        qalist.append( QAInfo(ques:"Which of these statements add \"Taco\" to myArray?        " ,code:"" ,opts:["myArray += [\"Taco\"]","myArray.append(\"Taco\")","myArray += \"Taco\"","myArray.add(\"Taco\")"] ,answers:[0,1] ,hint:"Yeehaw! If we're adding values with '+=', we need to put them inside '[]'. If we're using append(), we can add one value at a time.            "))
        qalist.append( QAInfo(ques:"Can you think of ways to check if myArray is empty?        " ,code:"" ,opts:["myArray.isEmpty","myArray.count == 0","myArray.empty","count(myArray) == 0"] ,answers:[0,1] ,hint:"Nice! 'myArray.isEmpty' and 'myArray.count == 0' return true if there are no elements inside the array.            "))
        qalist.append( QAInfo(ques:"What's this code going to print to the console?        " ,code:"var friends = [\"Harry\", \"Hermione\"]            \nfriends.insert(\"Ron\", atIndex: 1)            \nfriends.append(\"Neville\")            \nprint(friends)        " ,opts:["[Harry, Ron, Hermione, Neville]","\"Harry\", \"Ron\", \"Hermione\", \"Neville\"","[Harry, Hermione, Ron, Neville]","[Neville]"] ,answers:[0] ,hint:"Nice! \"Ron\" gets inserted between \"Harry\" and \"Hermione\". Then, \"Neville\" gets inserted the end of friends. Finally, the contents are printed inside '[]'.            "))
        qalist.append( QAInfo(ques:"Tell me about dictionaries!        " ,code:"" ,opts:["Dictionaries are unordered collections of key-value pairs","Dictionaries require keys in order to access the values","Keys and values can be of different types","Dictionaries are zero-based"] ,answers:[0,1,2] ,hint:"That's right! Dictionaries are unordered collections of key-value pairs, which means they don't have indices. Indeed, keys point to values and can be of a different type.            "))
        qalist.append( QAInfo(ques:"What's so different between arrays and dictionaries?        " ,code:"" ,opts:["Arrays are ordered collections while dictionaries are unordered","Arrays use indices to access values","Dictionaries use keys to access values","Arrays must be initialized, dictionaries not"] ,answers:[0,1,2] ,hint:"Sweet! Arrays are ordered collections and use indices to access values. Dictionaries are unordered and use keys for value retrieval. Of course, dictionaries need to be initalized as well.            "))
        qalist.append( QAInfo(ques:"Can you think of a shortcut to declare, initalize and add key-value pairs to d?        " ,code:"" ,opts:["let d = [\"de\": \"Hut\",\n\t\"en\": \"Hat\"]            ","let d = [\"Hut\", \"Hat\"]","let d = [Int: Int]()","let d = (\"Hut\", \"Hat\")"] ,answers:[0] ,hint:"Perfect! We can declare, initalize and add key-value pairs to d by placing them inside of '[]', separated by ':'. Because of 'type inference', d knows that it's made for String keys and values.            "))
        qalist.append( QAInfo(ques:"Let's say myDict has five elements. How can we access the fifth one?        " ,code:"" ,opts:["We can't unless we've got the key","print(myDict[\"E\"])","print(myDict[4])","print(myDict[5])"] ,answers:[0] ,hint:"Perfect! Dictionaries are unordered, which means they don't have indices. If we want to access the fifth element, we need to know its key.            "))
        qalist.append( QAInfo(ques:"Which of the statements can be used to update this key-value pair in d?        " ,code:"var d = [\"food\": \"bratwurst\"]        " ,opts:["d[\"food\"] = \"pie\"","d.updateValue(\"pie\",\n\tforKey: \"food\")","d.updateValue(\"food\",\n\tforKey: \"pie\")","d[1] = \"pie\""] ,answers:[0,1] ,hint:"Good stuff! 'd[key] = value' and  'd.updateValue(value, forKey: key)' update the value for \"food\".            "))
        qalist.append( QAInfo(ques:"Once again, what's this code going to print to the console? Careful, it might be a trap!        " ,code:"var fleet = [\"Admiral\": \"Ackbar\"]            \nfleet.removeValueForKey(\"Ackbar\")            \nif fleet.isEmpty {            \n\tprint(\"Nothing to print!\")            \n} else {            \n\tprint(fleet)            \n}        " ,opts:["[\"Admiral\": \"Ackbar\"]","Nothing to print!","[\"Ackbar\"]","nil"] ,answers:[0] ,hint:"Swee-heet! \"Ackbar\" isn't a key but a value, so nothing is removed, isEmpty returns false and fleet is printed.            "))
        qalist.append( QAInfo(ques:"Which of these Strings are mutable?        " ,code:"" ,opts:["var a = \"a\"","var b: String","let c: String","let d = \"d\""] ,answers:[0,1] ,hint:"Yes! A String is mutable whenever it's declared with 'var'. Using 'let', it's immutable. Combining strings and assigning them to other variables, however, is possible for mutable and immutable strings.            "))
        qalist.append( QAInfo(ques:"What are ways to add a variable to a string?        " ,code:"" ,opts:["\"I love \\(x)!\"","\"I love \" + x + \"!\"","\"I love $x!\"","\"I love $(0)!\""] ,answers:[0,1] ,hint:"Fantastic! 'String interpolation' is straight-forward: just put the variable's name inside the brackets of '\\()' .. or add the variable using the '+' operator. Simple, eh?            "))
        qalist.append( QAInfo(ques:"Which of these statements create c as a Character?        " ,code:"" ,opts:["let c: Character = \"x\"","var c: Character = \"x\"","let c = \"x\"","let c = \"xo\""] ,answers:[0,1] ,hint:"Right on! Characters can only hold a single Character and need to be explicitly declared as such. Otherwise, 'type inference' makes it a String.            "))
        qalist.append( QAInfo(ques:"What's this code going to print to the console?        " ,code:"let c: Character = \"D\"\nlet s1 = \"RUM\"\nvar s2 = \"RE\"\ns2.append(c)\ns2.appendContentsOf(s1)\nprint(s2)        " ,opts:["REDRUM","RUMRED","DRUMRE","RERUMD"] ,answers:[0] ,hint:"Swee-heet! Using append(), we can add a Character to the end of a String; with appendContentsOf(), we can do the same with another String. Have you tried to read \"REDRUM\" backwards?            "))
        qalist.append( QAInfo(ques:"How can we get the length of this String?        " ,code:"let name = \"Tom Selleck\"" ,opts:["name.characters.count","name.characters.length","name.count","name.length"] ,answers:[0] ,hint:"Good stuff! We can count the number of Characters in this String using 'name.characters.count'.            "))
        qalist.append( QAInfo(ques:"Can you anticipate the output of this code snippet?        " ,code:"let a = [\"B\", \"A\", \"D\"]            \nlet s1 = \"Brea\"\nlet s2 = a.joined(separator: \"_\")            \nprint(s1 + \"king \" + s2)        " ,opts:["Breaking B_A_D","Breaking BAD","B_A_Dking Brea","king BADBrea"] ,answers:[0] ,hint:"Great! joined() joins the elements of an array into a single String, separating them with a specified separator. In our case, that's \"_\".            "))
        qalist.append( QAInfo(ques:"What's this code going to print to the console?        " ,code:"let a = \"Mr. White\"\nif (a.hasSuffix(\"White\")){\n\tprint(a + \" broke bad\")\n} else {\n\tprint(a + \" went straight\")\n}\n" ,opts:["Mr. White broke bad","Mr. White went straight","White broke bad","White went straight"] ,answers:[0] ,hint:"Nailed it! hasSuffix() checks whether a String ends with the String specified in the brackets. In the case of \"Mr. White\", that's true. Let's cook!            "))
        qalist.append( QAInfo(ques:"What's true about loops?        " ,code:"" ,opts:["Loops automate repetitive tasks","Loops save time and effort","There are different loops for different circumstances","Loops run for eternity"] ,answers:[0,1,2] ,hint:"Precisely! Loops automate repetitive tasks and, therefore, save time and effort. There are different kinds of loops but none of them should be infinite.            "))
        qalist.append( QAInfo(ques:"Do you know when a while loop and a repeat-while loop behave differently?        " ,code:"" ,opts:["When the run condition is false from the start","If the loop is infinite","If the run condition is always true","Never"] ,answers:[0] ,hint:"Exactly! If the run condition is false from the start, the while loop isn't executed but the repeat-while loop runs one time.            "))
        qalist.append( QAInfo(ques:"What's the difference between closed ranges and half-open ranges?        " ,code:"" ,opts:["Closed ranges include the last specified number","Half-open ranges stop before the last specified number","Closed ranges stop before the last specified number","Half-open ranges run for eternity"] ,answers:[0,1] ,hint:"Great! In a closed range, the sequence includes the last number in the statement. In a half-open range, the sequence stops right before reaching the last number.            "))
        qalist.append( QAInfo(ques:"Why is it important to be sure that the run condition becomes false after a finite number of iterations?        " ,code:"" ,opts:["It determines when to exit the loop","If it didn't, the loop would run forever","That's not so important","Otherwise, the code can't compile"] ,answers:[0,1] ,hint:"Good stuff! The run condition determines when to exit the loop. Without it, the code would compile but the loop would run for eternity.            "))
        qalist.append( QAInfo(ques:"How can we browse through the elements of myArray?        " ,code:"" ,opts:["for e in myArray","for i in 1...10","while myArray.count > 0","repeat"] ,answers:[0] ,hint:"Nice! Using 'for e in myArray', every element will be accessed. The other for loop just counts to 10 and the while loop is infinite.            "))
        qalist.append( QAInfo(ques:"Can you tell what this code will print to the console?        " ,code:"var counter = 0\nwhile counter < 10 {            \n\tprint(counter, terminator: \" \")            \n\tcounter += 1\n}        " ,opts:["0 1 2 3 4 5 6 7 8 9","1 2 3 4 5 6 7 8 9 10","0","Nothing"] ,answers:[0] ,hint:"Precisely! The while loop will run from 0 to 9 and stop when the counter is increased to 10.            "))
        qalist.append( QAInfo(ques:"What's up with functions, anyway?        " ,code:"" ,opts:["Functions are named blocks of code","Functions make code readable and reusable","There are no such things as built-in functions","There are only built-in functions"] ,answers:[0,1] ,hint:"Fantastic! As named blocks of code, functions improve readability and reusability. There are many built-in functions but we can also create custom functions.            "))
        qalist.append( QAInfo(ques:"What's true about arguments in functions?        " ,code:"" ,opts:["Arguments help us adopt generic behavior to particular needs","We can use as many arguments as we want","Arguments are also called parameters","Every function needs an argument"] ,answers:[0,1,2] ,hint:"Exactly! Arguments or parameters help us adopt generic behavior to our needs. We can use as many as we want but we can also create functions without any arguments.            "))
        qalist.append( QAInfo(ques:"Can you think of ways to return more than one number?        " ,code:"" ,opts:["return [1, 2]","return (1, 2)","return 1, 2","That's not possible"] ,answers:[0,1] ,hint:"Fantastic! While there can only be one return type, we can use an array or a tuple to return multiple values of the same type.            "))
        qalist.append( QAInfo(ques:"Can you think of ways to call this function?        " ,code:"func sum(numbers: Int...) -> Int {            \n\tvar s = 0\n\tfor number in numbers {            \n\t\ts += number\n\t}            \n\treturn s\n}        " ,opts:["sum(8)","sum(8, 1, 5)","let s = sum(8.15)","sum(\"8\", \"1\", \"5\")"] ,answers:[0,1] ,hint:"Perfect! Functions treat variable numbers of arguments ('...') like arrays, no matter how many arguments there are.            "))
        qalist.append( QAInfo(ques:"What's this code going to print to the console?        " ,code:"func go(steps: Int) {            \n\tvar moved = 0\n\tfunc addSteps(steps: Int) {            \n\t\tmoved += steps\n\t}            \n\taddSteps(steps)            \n\tprint(moved)            \n}            \ngo(5)        " ,opts:["5","0","Nothing"] ,answers:[0] ,hint:"Swee-heet! Nested functions can access variables that are created in their surrounding functions as if they'd own them.            "))
        qalist.append( QAInfo(ques:"How can we make use of this function?        " ,code:"func sayHi(name x: String) {            \n\tprint(\"Hi, \\(x)!\")            \n}        " ,opts:["sayHi(name: \"Ben\")","sayHi(x: \"Ben\")","sayHi(\"Ben\")","sayHi()"] ,answers:[0] ,hint:"That's right! In order to call the function we're forced to use name, the external name of x.            "))
        qalist.append( QAInfo(ques:"What do you remember about classes?        " ,code:"" ,opts:["Classes are like blueprints","Classes define things that objects of a particular kind have in common","Objects are instances of classes","Classes can't model behavior"] ,answers:[0,1,2] ,hint:"Good stuff! Classes are like blueprints, modeling properties and behavior that objects of a particular kind have in common. Objects, then, are instances of classes.            "))
        qalist.append( QAInfo(ques:"How can we create an instance of this class?        " ,code:"class Human {            \n\tvar name: String\n\tinit(name: String) {            \n\t\tself.name = name\n\t}            \n}        " ,opts:["let h: Human\nh = (name: \"Frank\")            ","let h = Human(\"Frank\")","let h = Human()"] ,answers:[0] ,hint:"Awesome! If the initializer requires one or more arguments, we need to specify them using their names.            "))
        qalist.append( QAInfo(ques:"What's wrong with this class?        " ,code:"class Car {            \n\tvar model: String\n\tinit() {            \n\t\tmodel = String()            \n\t}            \n\tfunc start() -> Bool {            \n\t\treturn \"Vrooommm!\"\n\t}            \n}        " ,opts:["start() doesn't return a Bool","There's no initializer","model never gets a value"] ,answers:[0] ,hint:"Exactly! Because start() specifies a return type, it needs to return a Bool. Car does have an initializer that gives model an initial value of \"\".            "))
        qalist.append( QAInfo(ques:"What's true about this code?        " ,code:"class Racecar : Car {            \n\tvar nitro: Bool?            \n}        " ,opts:["Racecar is a subclass of Car","Car is the superclass of Racecar","Racecar inherits variables and functions from Car","Instances of Car can use nitro"] ,answers:[0,1,2] ,hint:"Yup! As a subclass of Car, Racecar inherits variables and functions from Car. While instances of Racecar can use nitro, those of Car can't.            "))
        qalist.append( QAInfo(ques:"Can you tell what's going on inside this class?        " ,code:"class Dog : Animal {            \n\toverride func makeSound() {            \n\t\tprint(\"Woof!\")            \n\t}            \n}        " ,opts:["Dog is a subclass of Animal","Dog has a custom makeSound() function","Every Animal has a makeSound() function","Dog overrides the default initializer"] ,answers:[0,1,2] ,hint:"Way to go! Dog is a subclass of Animal. It uses the default initializer but overrides makeSound(), which is part of every instance of Animal.            "))
        qalist.append( QAInfo(ques:"What essential component is missing in this subclass?        " ,code:"class Cat : Animal {            \n\tvar name: String\n\toverride init(name: String) {            \n\t\tself.name = name\n\t}            \n}        " ,opts:["Calling super.init() before setting any values","Creating a purr() function","Overriding makeSound() to print \"Meow!\"","Nothing"] ,answers:[0] ,hint:"Awesome! A initializer needs to call its superclass's initializer before it can change or set values. Creating a purr() function or overriding makeSound() is very optional.            "))
        qalist.append( QAInfo(ques:"So, what's a structure?        " ,code:"" ,opts:["A structure bundles information","Structures can model properties and behavior","Structure is a synonym for class","A structure is a building"] ,answers:[0,1] ,hint:"Nailed it! A structure is a construct that bundles information. It's able to model properties and behavior, making it similar to but not the same thing as a class.            "))
        qalist.append( QAInfo(ques:"Can you anticipiate the output of this code?        " ,code:"struct Resolution {            \n\tvar height = 768\n\tvar width: Int {            \n\t\treturn height * 2\n\t}            \n}            \nvar r = Resolution()            \nprint(r.width, terminator: \"x\")            \nprint(r.height)        " ,opts:["1536x768","2x1","1024x768","2560x1440"] ,answers:[0] ,hint:"Good stuff! We can define variables in a structure that process information before returning it. That's why they're called computed properties.            "))
        qalist.append( QAInfo(ques:"Which of these classes might make more sense as structures?        " ,code:"" ,opts:["class Point","class Rectangle","class Human","class Car : Vehicle"] ,answers:[0,1] ,hint:"Fantastic! Structures are a good choice if the information we want to store is really simple; Car and Human are way too complex. Besides, only classes can use inheritance.            "))
        qalist.append( QAInfo(ques:"What's true about initializers in structures?        " ,code:"" ,opts:["Initializers are optional","Just like in classes, initializers are mandatory","Initializers don't exist for structures","Structure instances don't have to be initialized"] ,answers:[0] ,hint:"Great! Initializers also exist for structures but, as in classes, they're usage is optional. And, like pretty much everything, structure instances have to be initialized.            "))
        qalist.append( QAInfo(ques:"Is it possible to define functions inside a structure?        " ,code:"" ,opts:["Yes","No"] ,answers:[0] ,hint:"Sweet! Just like classes, structures can have functions that model behavior.            "))
        qalist.append( QAInfo(ques:"What's true about setting a default value for a property in a structure?        " ,code:"" ,opts:["We're initializing the property inside the structure","We can use the property right after initializing the structure instance","The property's value is permantent"] ,answers:[0,1] ,hint:"That's it! If we give a property a default value, we're basically initializing it inside the structure. We can use it right after creating an instance and change it, as long as it's not a constant.            "))
        qalist.append( QAInfo(ques:"What in the world are optionals?        " ,code:"" ,opts:["Optionals are declared with a question mark","Optionals are allowed to hold no value","An optional is nil by default","An optional is 0 by default"] ,answers:[0,1,2] ,hint:"Nice! Optionals are declared by placing a question mark after the type. Unlike normal variables, they're allowed to hold no value. If we don't assign anything, the value of an optional is nil.            "))
        qalist.append( QAInfo(ques:"Which of these types can be defined as optionals?        " ,code:"" ,opts:["var number: Int?","var string: String?","var bool: Bool?","var dog: Dog?"] ,answers:[0,1,2,3] ,hint:"That's right! Any variable of any type can be defined as an optional, including custom classes and structs.            "))
        qalist.append( QAInfo(ques:"What do you remember about optional binding?        " ,code:"" ,opts:["Optional binding is a way to check if a variable has a value","Optional binding works with constants and variables","It's a safe alternative to the '!' operator","That's a synonym for optional chaining"] ,answers:[0,1,2] ,hint:"True that! Optional binding is a way to check if a variable has a value, a safe alternative to '!' and works with constants and variables alike. Optional chaining uses '?' to access functions and variables.            "))
        qalist.append( QAInfo(ques:"What's number going to look like when it's printed?        " ,code:"let s = \"10\"\nlet number = Int(s)            \nprint(number)        " ,opts:["Optional(10)","Optional(\"10\")","10","nil"] ,answers:[0] ,hint:"Fantastic! Trying to get a number from a String creates an optional. Because this optional is still wrapped, number will be printed as \"Optional(10)\".            "))
        qalist.append( QAInfo(ques:"Why is it important to check if there's a value inside an optional before force unwrapping it?        " ,code:"" ,opts:["The program could crash","The code might not compile","It looks sophisticated","It's not that important"] ,answers:[0] ,hint:"Impressive! It's important because our code will compile but might crash when we run it. That's where optional binding comes in handy.            "))
        qalist.append( QAInfo(ques:"What's up with enumerations?        " ,code:"" ,opts:["An enumeration defines a common type for a group of constants","Enumerations require a finite number of possible values","An enumeration's values are specified after the case keyword","Enumerations model properties and behavior of objects of a particular kind"] ,answers:[0,1,2] ,hint:"Great! An enumeration defines a common type for a finite number of constant values, which are specified with 'case'. Other than classes, enumerations don't model properties and behavior.            "))
        qalist.append( QAInfo(ques:"How can we make use of this enumeration?        " ,code:"enum Direction {            \n\tcase North, East, South, West\n}        " ,opts:["var d = Direction.North","var d: Direction\nd = .North","var d = .North","var d = Direction"] ,answers:[0,1] ,hint:"Good stuff! Initializing a variable with North requires the use of Direction.North; the shorter \"dot\" syntax works after d is declared.            "))
        qalist.append( QAInfo(ques:"In which of these enumerations and cases might raw values come in handy?        " ,code:"" ,opts:["case Penny, Nickel\ncase Dime, Quarter","enum Weekday","case Private, Work","case Top, Bottom"] ,answers:[0,1] ,hint:"Absolutely! Raw values make sense whenever there's a specific value associated with the cases, which is true for Coins (1 to 25) and Weekdays (1 to 7).            "))
        qalist.append( QAInfo(ques:"What's this code going to print to the console?        " ,code:"enum Rank {            \n\tcase Padawan, Knight, Master\n\tvar description: String {            \n\t\tswitch self {            \n\t\tcase .Master:            \n\t\t\treturn \"Masterful\"\n\t\tdefault:            \n\t\t\treturn \"Not yet\"\n\t\t}            \n\t}            \n}            \nvar rank = Rank.Knight\nprint(rank.description)        " ,opts:["Not yet","Masterful"] ,answers:[0] ,hint:"Right you are! Because there's no case for Knight, the default case triggers and \"Not yet\" gets printed.            "))
        qalist.append( QAInfo(ques:"What's wrong with this enumeration?        " ,code:"enum Level {            \n\tcase Beginner = 1\n\tcase Intermediate = 2\n\tcase Advanced = 3\n}        " ,opts:["Level needs a type ","The cases can't have custom raw values","The cases have to be in a single line","There's no Expert case"] ,answers:[0] ,hint:"Nailed it! The cases can have custom raw values but Level needs to specify a type (enum Level: Int). The cases don't have to be in a single line and there's no need for an Expert case.            "))
        qalist.append( QAInfo(ques:"What are ways of using this enumeration with associated values?        " ,code:"enum Barcode {            \n\tcase UP(Int, Int, Int)            \n\tcase QR(String)            \n}        " ,opts:["var bc: Barcode\nbc = Barcode.UP(1, 2, 3)            ","var bc: Barcode\nbc = .UP(1, 2, 3, 4)            ","var bc: Barcode\nbc = Barcode.QR(\"1234\")            ","var bc = .QR(1, 2, 3)"] ,answers:[0,2] ,hint:"Impressive! Here, assigning an enumeration's value to a variable requires an associated value: a tuple for UP and a String for QR. Again, the \"dot\" syntax works only after bc is declared.            "))
        qalist.append( QAInfo(ques:"What's up with a function that gets passed to another function?        " ,code:"" ,opts:["We can call it inside the other function","We can overwrite it inside the other function","We can transform it into a closure expression"] ,answers:[0] ,hint:"That's right! If we pass a function to another, we can call it inside the latter. It's got nothing to do with closures .. yet!            "))
        qalist.append( QAInfo(ques:"Which of these statements result in valid functions?        " ,code:"" ,opts:["let a: (Int) -> Int\na = {$0 * $0}","func a(x: Int) -> Int {\n\treturn x * x\n}","let a: (Int) -> Int\na = {x in x * x}","let a = {$0 * $0}"] ,answers:[0,1,2] ,hint:"Exactly! Closures need do be declared if they're not used right away. In fact, these functions do the same thing, they multiply the passed argument with itself.            "))
        qalist.append( QAInfo(ques:"Can you anticipate the output of this code?        " ,code:"print({$0 * $1 + $2}(1, 2, 3))        " ,opts:["5","6","3","1 * 2 + 3"] ,answers:[0] ,hint:"Swee-heet! We don't need a variable to store a closure. We can simply place arguments inside of '()' after the closure, which infers that its arguments and its return type are Integers.            "))
        qalist.append( QAInfo(ques:"Okay, what's this code going to throw out?        " ,code:"let a: (Int, Int) -> String\na = { \"Numbers: \\($1), \\($0)\" }\nprint(a(1, 0))        " ,opts:["Numbers: 0, 1","Numbers: 1, 0","Numbers: $1, $0","0, 1"] ,answers:[0] ,hint:"Yeehaw! The variable a accepts a function that takes two Integers and returns a String. The closure expression returns a String with the numbers in reverse order.            "))
        qalist.append( QAInfo(ques:"Which of the expressions can be assigned to c?        " ,code:"var c: Int -> Double" ,opts:["{ Double($0) }","{ x in Double(x) / 1.2 }","{ $0 }","{ $0 + $0 }"] ,answers:[0,1] ,hint:"Great! The closure needs to return a Double. Therefore, the Integer argument needs to be converted into a Double.            "))
        qalist.append( QAInfo(ques:"When and why might we use closures?        " ,code:"" ,opts:["When we've got convenience functions like map() in arrays","Whenever a function expects another function as an argument","Because their clutter-free syntax is concise and readable","Because they're great at bundling simple values"] ,answers:[0,1,2] ,hint:"That's right! Closures are great when we've got convenience functions that expect another function as an argument. To some degree, that's because their clutter-free syntax is concise and readable.            "))
        qalist.append(QAInfo(ques:"iOS开发谁最帅",code:"print('我好帅')",opts: ["德龙","德群","德顺"],answers:[2],hint:"还想不想混😄"))

    }
    
    
    public func getRandomQAInfo()->QAInfo
    {
        srand(UInt32(time(nil)))
        let randvalue:Int = Int(rand()) % (qalist.count)
        return qalist[randvalue]
    }
    
    public func getNextQAAfter(idx:Int) -> QAInfo
    {
        if idx<qalist.count {
            return qalist[idx+1]
        }else{
            return qalist[0]
        }
    }
    
    public func getQA(problemId:Int) -> QAInfo?
    {
        for qa in qalist {
            if qa.id == problemId {
                return qa
            }
        }
        return nil
    }
    
    public func getQA(user:String?=nil) -> QAInfo?
    {
        if let userName = user {
            let solved = getSolvedQuestions(userName)
            var notSolvedQA = qalist.map({ (aQA) -> Int in
                return aQA.id
            })
            
            for anSolvedId in solved {
                if notSolvedQA.contains(anSolvedId) {
                    notSolvedQA.removeAtIndex(notSolvedQA.indexOf(anSolvedId)!)
                }
            }
            
            if notSolvedQA.count==0 {
                return nil
            }else{
                srand(UInt32(time(nil)))
                let randvalue:Int = Int(rand()) % (notSolvedQA.count)
                if let result = getQA(notSolvedQA[randvalue]){
                    return result
                }else{
                    return nil
                }
            }
           
        }else{
            return getRandomQAInfo()
        }
    }
    
}


public class QAInfo{
    static var incId = 0
    var id = 0
    var question=""
    var options = [String]()
    var answersForOptions = [Int]()
    var answerForText = ""
    var code = ""
    var hint = ""
    var questionType = "0"//0:options,1:text
    
    init(ques:String,code:String,opts:[String],answers:[Int],hint:String){
        self.hint = hint
        self.question = ques
        self.code = code
        self.options = opts
        self.answersForOptions = answers
        self.id = QAInfo.incId
        QAInfo.incId += 1
    }
    
    func validateOptionAnswers(answers:[Int]) -> Bool{
        let sorted = answers.sort { (a, b) -> Bool in
            return a<b
        }
        return sorted == answersForOptions
    }
    
    func toDic() -> Dictionary<String,AnyObject> {
        return ["id":id,
        "question":question,
        "options":options,
        "answersForOptions":answersForOptions,
        "answerForText":answerForText,
        "code":code,
        "hint":hint,
        "questionType":questionType
        ]
    }
    
    func toQDic() -> Dictionary<String,AnyObject>{
        return ["id":id,
                "question":question,
                "options":options,
                "code":code,
                "hint":hint,
                "questionType":questionType
        ]
    }
}