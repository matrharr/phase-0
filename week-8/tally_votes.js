// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Brian Bier
// This challenge took me [3] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 , Devin: 2},
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// 1. count function
// Iterate through votes obj --> voter names obj
// counter variable
// Iterate through voter names obj --> title properties
// voteCount[title][name] = counter

// 2. tally function
// Iterate through voteCount obj --> title obj
// highest value variable--> arr w/ string[0] and number[1]
// Iterate through title obj --> name properties --> n of votes
// compare highest value var[1] to n of votes
//   if n of votes > highest val var, highest val var === name,      n of votes
// officers[title] = [array[0]]
// __________________________________________
// Initial Solution

// function count(obj){
//   for(var voter in obj){ // Inside alex
//     // console.log(voter + " " + obj[voter]);
//     var innerVoter = obj[voter];

//       for(var key in innerVoter){ // information inside alex
//         // console.log(key + " " + innerVoter[key])
//         if(voteCount[key][innerVoter[key]]){
//           voteCount[key][innerVoter[key]] += 1;
//       }else{
//         voteCount[key][innerVoter[key]] = 1
//            }

//   }
// }
// }


// function tally(obj){

//   for(var title in obj){
//     var votesCount = 0;
//     //console.log(title + ' '+ obj[title])
//     var innerName = obj[title];
//     for(var name in innerName){
//      // console.log(officers[title])
//       if(votesCount < innerName[name]){
//         votesCount = innerName[name]
//         officers[title] = name

//       }
//     }
//   }
// }


//  count(votes)
//  console.log(voteCount)
 // tally(voteCount)
//console.log(voteCount.president["Bob"])
// console.log(officers)
// count(votes)
//console.log(voteCount)


// __________________________________________
// Refactored Solution

function count(ballot){
  for(var voter in ballot){
    var innerVoter = ballot[voter];

      for(var name in innerVoter){
        if(voteCount[name][innerVoter[name]]){
          voteCount[name][innerVoter[name]] += 1;
      }else{
        voteCount[name][innerVoter[name]] = 1
           }

  }
}
}


function tally(votes){

  for(var title in votes){
    var votesCount = 0;
    var innerName = votes[title];
    for(var name in innerName){
      if(votesCount < innerName[name]){
        votesCount = innerName[name]
        officers[title] = name

      }
    }
  }
}


count(votes)
tally(voteCount)




// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript? - I learned syntax for accessing objects and properties using placeholders, and generally learned how to look carefully at what something is pointing to.
// Were you able to find useful methods to help you with this? Unfortunately, we couldn't find any methods that would improve our code. We looked for a bit but I don't know what exactly could be done by a method to make it work better.
// What concepts were solidified in the process of working through this challenge? - Probably the main thing was how to count up the number of votes for a given candidate. We had a hard time coming up with a way to increment, finally realizing that you have to compare a given vote to voteCount's contents.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)