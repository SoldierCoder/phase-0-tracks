// reverse 
// input : a string, for example, hello
// observations: we are dropped on an island, with just a watter bottle (our string) and a knife (the ability to access 
// single parts of an array).  To survive we must use our cunning!
//
// steps
// determine the length of the string and save it in a variable len
// we generalize that the number of swaps_to_do is Math.floor(len / 2 );
// we further generalize that it is better to start from the outer bounds (0, len - 1) and work inwards
// so right_hand_swappend = len - 1, left_hand_swappend = 0
// while not done_swapping
//    swap(array item on right at index: right_hand_swappend, array item on left at: left_hand_swappend)
//    decrement right_hand_swappend, increment left hand swappend 
// end
// return the changed string
var swap_letters = function(str, index_left, index_right) {
  var holding_area = '';

  holding_area = str[index_right];
  str[index_right] = str[index_left];
  str[index_left] = holding_area;

  return str;
}

var reverse = function (str) {

  index_left = 0;
  index_right = my_str.length - 1;

  swaps_left = swaps_to_do(str);

  while (swaps_left >= 1) {
    str  = swap_letters(str, index_left, index_right)
    index_left++;
    index_right--;
    swaps_left--;
  }
  return (str);
}
   
var swaps_to_do  = function(str) {
  return (Math.floor(str.length / 2));

};


var my_str = "water".split('');
my_str = reverse(my_str);
var s  = my_str.join('');
console.log(s);


