// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var juicyCarnitas = 75;
console.log(juicyCarnitas)

// prompt("What is your favorite food?")
// console.log("That is my favorite food as well!")


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
for (i = "#"; i.length < 8 ;i += "#") {
  console.log(i)
}


// Functions

// Complete the `minimum` exercise.
function min(arg1, arg2){
  if(arg1 > arg2){
    return arg2
  }else{
    return arg1
  }
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  age: 26,
  favFoods: ["hotdogs", "hamburgers", "meat"],
  quirk: "Always shows up with balloons."
}
console.log(me)

// Reflection
/*
Did you learn anything new about JavaScript or programming in general? - All of the general concepts laid out were things I was already familiar with
Are there any concepts you feel uncomfortable with? - So far, I'm ok, there are a few times when the author speaks broadly and I get lost because I can't really visualize an instance of what he's talking about, but I assume that will come with some experience with using javascript and doing the exercises.
Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators. - Similar : 1. the greater and less than operators are the same 2. strings are surrounded with quote. Differences: 1. the equal to operator is three equals signs, not two 2. the || or operator works a little bit differently.
What is an expression? - a fragment of code that produces a value
What is the purpose of semicolons in JavaScript? Are they always required? - it terminates a statement, you are not always required to use one. he says that its complex and doesn't wish to elaborate.
What causes a variable to return undefined? - if the variable is not given a value
What does console.log do and when would you use it? What Ruby method(s) is this similar to? - console.log prints the output to the console. it is similar to print and p
Describe while and for loops - these are ways to iterate over several tasks or a list to perform certain expressions. they persist until a particular statement is achieved, like while i < 5. then the variable is incremented with each loop so the loop will go around five times.
What other similarities or differences between Ruby and JavaScript did you notice in this section? - it seems like a lot of the keywords are the same or similar. the syntax seems to have a few more brackets and things floating around, looks like more opportunity to commit syntax errors.


What are the differences between local and global variables in JavaScript? - local variables are declared inside of functions and can only be accessed inside, global variables are declared outside of functions and can be accessed inside or outside of a function.
When should you use functions? - when you want a specific manipulation of data to occur
What is a function declaration? - its a shorter way to write out a function, which also exempts the function from cascading hierarchy.



What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"] When using square brackets the expression between the brackers is evaluated to get the property name. Using the dot fetches the property of the object with that particular name.

What is a JavaScript object with a name and value property similar to in Ruby? - Math
What are the biggest similarities and differences between JavaScript and Ruby? - a lot of the methods/functions are the same and work the same. objects seem to be constructed a bit differently, and the syntax seems a bit more complicated than Ruby.
Was some of your Ruby knowledge solidified by learning another language? If so, which concepts? - Flow control in general, and just knowing what is happening in iterative methods because a for loop in javascript has to have each piece written out.
How do you feel about diving into JavaScript after reading these chapters? - Awesome
*/