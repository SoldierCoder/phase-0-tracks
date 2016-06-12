var a_winner = document.getElementsByClassName("winner");
for(var i=0; i < a_winner.length; i++) {
  a_winner[i].style.border = "2px dashed";
}
document.getElementById("timeshifter").addEventListener("click", function(){
  document.getElementById("last_x").innerHTML = "&nbsp;O&nbsp;";
  for(var i=0; i < a_winner.length; i++) {
    a_winner[i].style.border = "";
  };
  var comments = document.createElement("P id='comments'");
  document.getElementById("timeshifter").appendChild(comments);
  document.getElementById("comments").innerHTML = "Ha Ha";

});
