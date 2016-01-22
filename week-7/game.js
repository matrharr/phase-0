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

var Player = {
  name: "Matt",
  movesRemaining: 2,
  position: "Bedroom",
  success: false,
}

var Ghost = {
  position: "Cellar", //randomize location,
  about: "A spooky, translucent entity."
}

var Rooms = [
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
    description: "You are in a scary cellar."
  },
  bedroom = {
    name: "Bedroom",
    south: "Library",
    east: "Kitchen",
    description: "You are in a creepy bedroom."
  },
  kitchen = {
    name: "Kitchen",
    south: "Cellar",
    west: "Bedroom",
    description: "You are in a dank kitchen."
  }
]

var ghostFind = function(){
  if (Player.position === Ghost.position){
    Player.success = true
    winGame()
  }else{
    loseGame()
  }
}

var winGame = function(){
  if (Player.success === true){
    console.log("You successfully found the ghost! Congrats, your house is no longer haunted!")
  }
}

var loseGame = function(){
  if (Player.movesRemaining === 0){
    console.log("You ran out of time, your house is permanently haunted!")
  }else{
    console.log("Hurry up and find the ghost! You have " + Player.movesRemaining +" move(s) remaining!")
  }
}

var go = function(direction){
  for (var i = 0; i < Rooms.length; i++){
    if (Player.position === Rooms[i].name) {
      for (var prop in Rooms[i]){
        if (direction === prop){
          Player.position = Rooms[i][prop]
          describeRoom()
          Player.movesRemaining -= 1
          ghostFind()

          //console.log(Rooms[i][prop])
        }
      }
    }
  }
}

var describeRoom = function(){
  for (var i = 0; i < Rooms.length; i++){
    if (Player.position === Rooms[i].name){
      console.log(Rooms[i].description)
    }
  }
}


go("east")
go("south")



// go("north")
// //console.log(Player.position)
// go("west")
// //console.log(Player.position)
// go("west")

// Refactored Code







// TO ADD
// Make map 3x3, 5 more rooms
// Randomize player and ghost starting location
// Use constructor to make three ghosts
// Give instructions at start of game
// Give player option to capture ghost
//    - pts awarded if successfully captured bad ghosts/released good ghosts
//    - if you make the right decision on two out of the three ghosts you win, else you lose
// Give instruction as to which directions the player may move
// Reflection
//
//
//
//
//
//
//
//