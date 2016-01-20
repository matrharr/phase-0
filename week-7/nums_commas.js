// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Aaron Opsahl.

// Pseudocode

// Input: An integer.
// Output: A string of the integer with appropriately places commas.
// Steps:
// Create an empty array
// Convert integer to string
// Iterate from last element of string
// Write a FOR loop
//   IF three numbers have been pushed
//     Push comma to array
//   ELSE
//     Push element to array
// Reverse and join the array
// Return the number with commas


// Initial Solution

// function separateComma(num) {
//   var output = []
//   num = String(num);
//   for (var i = num.length - 1, j = 1; i > -1; i--, j++) {
//     if (j % 3 === 0 && j != num.length) {
//       output.push(num[i])
//       output.push(",")

//     } else {
//       output.push(num[i])
//     }
//   }
//   output = output.reverse();
//   output = output.join("");
//   console.log(output)
// }


// Refactored Solution

function separateComma(num) {
  num = String(num).split('').reverse();
  for (var i = 3; i < num.length; i += 4) {
     num.splice(i, 0, ",")
  }
  console.log(num.reverse().join(''))
}


// Your Own Tests (OPTIONAL)



//var string = "hat"

//console.log(string)
// Driver Code

separateComma(10000000)

// Reflection
