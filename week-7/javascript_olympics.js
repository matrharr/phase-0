// JavaScript Olympics

// I paired with Mollie Stein on this challenge.

// This challenge took me [1] hours.


// Warm Up




// Bulk Up
var athletes = [
   hughes = {
    name: "Sarah Hughes",
    event: "Ladies' Singles",
  },

  phelps = {
    name: "Michael Phelps",
    event:"Mens Swimming",
  },
];

function addWin(array) {
  for (var i = 0; i < array.length; i ++){
    array[i].win = console.log(array[i].name + (" won the ") + array[i].event);
  }
}


addWin(athletes);



// Jumble your words

function reverseString(string){
  var string = string.split('').reverse();
  return string = string.join('');
}

console.log(reverseString("whatever"));


// 2,4,6,8

function evenNums(array){
  var output =[];
  for (var i = 0; i < array.length; i++){
    if(array[i]%2==0){
      output.push(array[i])
    }
  }
  return output
}


var arr = [1,2,3,4,5,6]
console.log(evenNums(arr));



// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
// What JavaScript knowledge did you solidify in this challenge? - Accessing properties and values, iterating over arrays, and using constructor function
// What are constructor functions? - it creates js objects and allows for new instances of that object to be created. it seemed similar to working with ruby classes and initialize method
// How are constructors different from Ruby classes (in your research)? - different in that you can add/edit properties as is, whereas with ruby you have to designate attr methods to do that.