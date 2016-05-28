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


