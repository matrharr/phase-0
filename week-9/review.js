/*PSEUDO
- new list
  input: a single string of items
  output: a list of these items, each with quantity of 1
  steps:create empty object
        split arg string
        place each value of split string a property of obj
        assign value of each property === 1

- add item w/quantity
  input: obj, string, integer
  output: list with new item and corresponding quantity
  steps:assign item as property of list object
        give it value of n arg

- remove item
  input: obj, string
  output: edited list
  steps:iterate object
        IF string === a prop
          delete that property
        ELSE return error message

- change quantities
  input: obj, string, integer
  output: edited list
  steps: iterate object
        IF string === a prop
          prop quantity = integer arg
        ELSE return error message

- print list
  input: obj
  output: list of items and quantities
  steps: console log list

*/
//Initial Solution

// function newList(items){
//   var list = {}
//   items = items.split(' ')
//   for(var i = 0; i < items.length; i++){
//     list[items[i]] = 1
//   }
//   return list
// }

// function addItem(list, item, quantity){
//   list[item] = quantity
//   console.log(list)
// }

// function removeItem(list, item){
//   for(var prop in list){
//     if (prop == item) {
//       delete list[prop]
//     };
//   }
//   console.log(list)
// }

// function changeQuantity(list, item, quantity){
//   for(var prop in list){
//     if (prop == item) {
//        list[prop] = quantity
//     };
//   }
//   console.log(list)
// }

// function printList(list){
//   console.log('Your list contains:')
//   for(var item in list){
//     console.log(list[item] + ' ' + item + '(s)')
//   }
// }

// var groceryList = newList("milk eggs pumpkin bread candy")
// addItem(groceryList, "beef", 3)
// removeItem(groceryList, "milk")
// changeQuantity(groceryList, "pumpkin", 5)
// printList(groceryList)
// //console.log(groceryList)

// Refactored Solution

function newList(items){
  var list = {}
  items = items.split(' ')
  for(var i = 0; i < items.length; i++){
    list[items[i]] = 1
  }
  console.log('Your new list contains:')
  for(var item in list){
    console.log(list[item] + ' ' + item)
  }
  return list
}

function addItem(list, item, quantity){
  list[item] = quantity
  console.log('As you can see, your edited list now contains ' + item + '.')
  for(var item in list){
    console.log(list[item] + ' ' + item)
  }
}

function removeItem(list, item){
  for(var prop in list){
    if (prop == item) {
      delete list[prop]
    };
  }
  console.log('As you can see, your edited list no longer contains ' + item + '.')
  for(var item in list){
    console.log(list[item] + ' ' + item)
  }
}

function changeQuantity(list, item, quantity){
  for(var prop in list){
    if (prop == item) {
       list[prop] = quantity
    };
  }
  console.log('As you can see, your edited list has')
  console.log('changed the quantity of '+ item + ' to ' + quantity)
  for(var item in list){
    console.log(list[item] + ' ' + item)
  }
}

function printList(list){
  console.log('Currently, your list contains:')
  for(var item in list){
    if(list[item] > 1){
      console.log(list[item] + ' ' + item + 's')
    }else{
      console.log(list[item] + ' ' + item)
    }
  }
}

var groceryList = newList("milk egg pumpkin bread candy")
addItem(groceryList, "beef", 3)
removeItem(groceryList, "milk")
changeQuantity(groceryList, "pumpkin", 5)
printList(groceryList)

/* Reflection
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
--- I solidified using bracket notation to refer to properties and values
 when using placeholders. I also had to remind myself of a few basic concepts
 of how to write out each function.
What was the most difficult part of this challenge?
---- I had a few issues with using dot or bracket notation, but after
printing a couple things to the console to test, it was pretty much smooth
sailing the rest of the way.
Did an array or object make more sense to use and why?
---- I used an object for similar reasons as when I used a hash on this
challenge in ruby. Because there is a quantity, you want the items to point
to a value and objects make that really easy with the properties and values.
*/