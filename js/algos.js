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

var aFineMess = ["long phrase", "longest phrase", "longer phrase"];
console.log("the longest phrase is: " + longest(aFineMess));

var memorialDay = ["we will never forget", " the brave men and women", "who made the ultimate", "sacrifice"];
console.log("the longest phrase is: " + longest(memorialDay));

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
