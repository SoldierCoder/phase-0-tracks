// input: nothing
// steps:
// create a string with all the lowercase letters in order.
// create a random number between 1 and 10 inclusively -- that will be the length of the name.
// for each letter to be in the name
//   generate a random number between 0 and 25
//   use that number to pick a letter
//   add that letter to an array
//  create a string by joining those letters from the arra
//  return that string
// output:  a string that constitute a random "name"

var aName = function() {
  var letters = "abcdefghijklmnopqrstuvwxyz";
  var how_many = Math.floor((Math.random() * 10) + 1);
  var aLetter, whichLetter = '';
  var aLetterArray = [];
  


  for (var i = 0; i < how_many; i++) {
    whichLetter = Math.floor(Math.random() * 25);
    aLetterArray.push(letters.charAt(whichLetter));     
  }

  var aString = aLetterArray.join("");
  return(aString);
}

// input: number of random names to generate
// steps: 
// iterate through a loop nMany times
//   call the aName function and push the result onto the end of an array
// return the array



var randomNames = function(nMany) {
  
  var anArray = [];
  

  for (var i = 0; i < nMany; i++) {
  //    console.log(aName());
      anArray.push(aName());
  }
  return(anArray)

} 
//  input:  two objects
//  steps:
//  get a list of keys for each object, calling them keys1, and keys2, respectively
//  for each key in keys 1
//    search for a matching key in keys 2
//    if you find a matching key
//      if you have a matching value
//        return true -- you have satisfied the conditions.
//  return false -- you made it through all the keys and didn't find a matching key/value
// output: true if and only if the objects share at least one key/value pair



var commonKeyValues = function (object1, object2)
{
  var keys1 = Object.keys(object1);
  var keys2 = Object.keys(object2);
  var lengthOfKeys1 = keys1.length;
  var lengthOfKeys2 = keys2.length;
  var sharedKeys = [];
  var possible_shared = '';
  
  // loop through keys1 to see if any keys are in keys2
  for (var i = 0; i < lengthOfKeys1; i++) {
    var gotOne = keys2.indexOf(keys1[i]);
    if (gotOne >= 0) {       // if we found a matching key then check for matching value
      var value = keys1[i];
      if (object1[value] == object2[value]) {
        return(true);
      }
    }
  }
  return (false);
}
//  input: an array of strings
//  steps: 
//    set a variable called longestSoFar to 0
//    for each element in an array
//      if the length of the element is greater than lengthSoFar
//        reset lengthSoFar to the element's length
//        reset indexOfLongestElement to the index of this element
//    return the element that is indexed by indexOfLongestElement



var longest = function(someArray) {
  var indexOfLongest;
  var len = someArray.length;
  var longestSoFar = 0;
  for (var i = 0; i < len; i++) {
    if (someArray[i].length > longestSoFar) {
      longestSoFar = someArray[i].length;
      indexOfLongest = i;
    };
  };
  return (someArray[indexOfLongest]);
};
var releaseSeparater = "=======================================================================================";
var aFineMess = ["long phrase", "longest phrase", "longer phrase"];
console.log("the longest phrase is: " + longest(aFineMess));

var memorialDay = ["we will never forget", " the brave men and women", "who made the ultimate", "sacrifice"];
console.log("the longest phrase is: " + longest(memorialDay));
console.log(releaseSeparater);

var robin = {'name': 'Robin', 'ability': 'physic', 'age': 50};
var ed = {name: 'Ed', 'age': 50}
var george = { 'name': 'George', 'ability': 'physic', 'title': 'GM'}

if (commonKeyValues(ed, robin)== true) {
  console.log('' + ed['name'] + ' and ' + robin['name'] + ' share properties.');
}  else {
  console.log('' + ed['name'] + ' and ' + george['name'] + ' share NO properties.');
}
if (commonKeyValues(ed, george)== true) {
  console.log('' + ed['name'] + ' and ' + george['name'] + ' share properties.');
} else {
  console.log('' + ed['name'] + ' and ' + george['name'] + ' share NO properties.');
}
if (commonKeyValues(robin, george)== true) {
  console.log('' + robin['name'] + ' and ' + george['name'] + ' share properties.');
} else {
  console.log('' + robin['name'] + ' and ' + george['name'] + ' share NO properties.');
}
console.log(releaseSeparater);
for (var i = 0; i < 9; i++) {
  var testNames = randomNames(3);
  console.log(testNames);
  console.log("the longest phrase is: " + longest(testNames));
};

