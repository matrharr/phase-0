 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Find the ghost within a certain number of moves to win.
// Goals: Search through rooms to find the ghost, you only have a certain number of moves so you have to be strategic and avoid backtracking
// Characters: Player(ghost hunter), Ghost
// Objects: Player(name, moves remaining, position, success), Ghost(position, description)
// Functions: go(direction), describeRoom, winGame, loseGame, ghostFind

// Pseudocode
// define Player object and assign properties
// define Ghost object and assign properties
// write go function that takes one argument(north or south, etc)
// if the Player goes to the position that the Ghost is in, success = true
// if the Player.movesRemaining === 0 then success = false

// Initial Code

// var Player = {
//   name: "Matt",
//   movesRemaining: 2,
//   position: "Bedroom",
//   success: false,
// }

// var Ghost = {
//   position: "Cellar", //randomize location,
//   about: "A spooky, translucent entity."
// }

// var Rooms = [
//   library = {
//     name: "Library",
//     east: "Cellar",
//     north: "Bedroom",
//     description: "You are in a spooky library."
//   },
//   cellar = {
//     name: "Cellar",
//     north: "Kitchen",
//     west: "Library",
//     description: "You are in a scary cellar."
//   },
//   bedroom = {
//     name: "Bedroom",
//     south: "Library",
//     east: "Kitchen",
//     description: "You are in a creepy bedroom."
//   },
//   kitchen = {
//     name: "Kitchen",
//     south: "Cellar",
//     west: "Bedroom",
//     description: "You are in a dank kitchen."
//   }
// ]

// var ghostFind = function(){
//   if (Player.position === Ghost.position){
//     Player.success = true
//     winGame()
//   }else{
//     loseGame()
//   }
// }

// var winGame = function(){
//   if (Player.success === true){
//     console.log("You successfully found the ghost! Congrats, your house is no longer haunted!")
//   }
// }

// var loseGame = function(){
//   if (Player.movesRemaining === 0){
//     console.log("You ran out of time, your house is permanently haunted!")
//   }else{
//     console.log("Hurry up and find the ghost! You have " + Player.movesRemaining +" move(s) remaining!")
//   }
// }

// var go = function(direction){
//   for (var i = 0; i < Rooms.length; i++){
//     if (Player.position === Rooms[i].name) {
//       for (var prop in Rooms[i]){
//         if (direction === prop){
//           Player.position = Rooms[i][prop]
//           describeRoom()
//           Player.movesRemaining -= 1
//           ghostFind()

//           //console.log(Rooms[i][prop])
//         }
//       }
//     }
//   }
// }

// var describeRoom = function(){
//   for (var i = 0; i < Rooms.length; i++){
//     if (Player.position === Rooms[i].name){
//       console.log(Rooms[i].description)
//     }
//   }
// }


// go("east")
// go("south")



// go("north")
// //console.log(Player.position)
// go("west")
// //console.log(Player.position)
// go("west")

// Refactored Code

var rooms = [
  library = {
    name: "Library",
    east: "Cellar",
    north: "Bedroom",
    description: "You are in a spooky library."
  },
  cellar = {
    name: "Cellar",
    north: "Kitchen",
    west: "Library",
    east: "Baby's Room",
    description: "You are in a scary cellar."
  },
  bedroom = {
    name: "Bedroom",
    north: "Lavatory",
    south: "Library",
    east: "Kitchen",
    description: "You are in a creepy bedroom."
  },
  kitchen = {
    name: "Kitchen",
    north: "Study",
    east: "Dining Room",
    south: "Cellar",
    west: "Bedroom",
    description: "You are in a dank kitchen."
  },
  lavatory = {
    name: "Lavatory",
    south: "Bedroom",
    east: "Study",
    description: "You are in a smelly lavatory."
  },
  study = {
    name: "Study",
    west: "Lavatory",
    south: "Kitchen",
    east: "Guestroom",
    description: "You are in a musty study."
  },
  guestroom = {
    name: "Guestroom",
    west: "Study",
    south: "Dining Room",
    description: "You are in a horrifying guestroom."
  },
  diningRoom = {
    name: "Dining Room",
    north: "Guestroom",
    west: "Kitchen",
    south: "Baby's Room",
    description: "You are in a dim dining room."
  },
  babysRoom = {
    name: "Baby's Room",
    north: "Dining Room",
    west: "Cellar",
    description: "You are in a dirty room, decorated for a baby."
  }
]

var player = {
  name: "Matt",
  movesRemaining: 5,
  position: rooms[Math.floor(Math.random() * rooms.length)].name,
  success: false,
}

var ghost = {
  position: rooms[Math.floor(Math.random() * rooms.length)].name,
  about: "A spooky, translucent entity."
}

var winGame = function(){
  if (player.success === true){
    console.log("You successfully found the ghost! Congrats, the house is no longer haunted!")
  }
}

var loseGame = function(){
  if (player.movesRemaining === 0){
    console.log("You ran out of time, the house is permanently haunted!")
  }else{
    console.log("Hurry up and find the ghost! You have " + player.movesRemaining +" move(s) remaining!")
  }
}

var rules = function(){
  console.log("You are a ghost hunter. You enter a house that is allegedly haunted and you must search for and locate the ghost culprit before time runs out or else the house will become a haunted house.")
}

var ghostFind = function(){
  if (player.position === ghost.position){
    player.success = true
    winGame()
  }else{
    loseGame()
  }
}

var describeRoom = function(){
  for (var i = 0; i < rooms.length; i++){
    if (player.position === rooms[i].name){
      console.log(rooms[i].description)
      for(var prop in rooms[i]){
        if (prop === 'north' || prop === 'south' || prop === 'east' || prop === 'west'){
        console.log('You can go ' + prop +'.')
        }
      }
    }
  }
}

var go = function(direction){
  for (var i = 0; i < rooms.length; i++){
    if (player.position === rooms[i].name) {
      for (var prop in rooms[i]){
        if (direction === prop){
          player.position = rooms[i][prop]
          describeRoom()
          player.movesRemaining -= 1
          ghostFind()
        }
      }
    }
  }
}



rules()
describeRoom()
go("north")



// TO ADD
//
//
// Use constructor to make three ghosts
//
// Give player option to capture ghost
//    - pts awarded if successfully captured bad ghosts/released good ghosts
//    - if you make the right decision on two out of the three ghosts you win, else you lose
// Figure out how to add to HTML
// Reflection
//
//What was the most difficult part of this challenge? - for me, it was difficult figuring out how to iterate over the rooms array that I made, and to pull the properties or values when I needed to validate a command. when I figured it out, it obviously made sense, but I had not used a for loop to do (var prop in array) so I had to take some time to practice it to fully understand how to use it. I also had some issues just getting the objects and functions to work with each other, which was just probably from lack of experience.
// What did you learn about creating objects and functions that interact with one another? - I learned how to iterate over those objects to point to the values and properties that you want. I ran into several different errors, and had to work through those, and that is always a great way for me to learn what different methods and loops and whatnot are actually doing
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work? - I couldn't really find any methods that made sense, I would be really interested if there were js methods that would do some of the work for me on this project.
// How can you access and manipulate properties of objects?- by using a for(var prop in array). I guess maybe the main hook there is the keyword in. in my case with this project, I would iterate over the room array to first confirm that position was same as a room, then iterate that rooms properties or values. whenever you use the in keyword like I just referred to, you should use brackets, whereas if you are pointing directly at a specific value, you use a dot.