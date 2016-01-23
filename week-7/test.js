// arr = [hughes = {
//   name: "Sarah Hughes",
//   event: "Ladies' Singles",
// },
// federer = {
//   name: "Roger Federer",
//   event: "Men's Tennis"
// }]


// var add_win = function(arr){
//   for (var i = 0; i < arr.length; i++){
//     console.log(arr[i].win = arr[i].name + ' won the ' + arr[i].event)
//   }

// }

// var reverse_str = function(str){
//   arr = str.split('').reverse()
//   console.log(str = arr.join(''))
// }

// var even_nums = function(arr){
//   output =[]
//   for (var i = 0; i < arr.length; i++){
//     if(arr[i]%2===0){
//       output.push(arr[i])
//     }
//   }
//   console.log(output)
// }

// function Athlete(name, age, sport, quote){
//     this.name = name;
//     this.age = age;
//     this.sport = sport;
//     this.quote = quote;
//     this.whatAmI = function(){
//         alert('I am ' + this.iAm);
//     };
// };


// var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
// console.log(michaelPhelps.constructor === Athlete)
// console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


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
    array[i].win = array[i].name + ("won the") + array[i].event
  };
}


//

console.log(addWin(athletes))
console.log(athletes[0].win);