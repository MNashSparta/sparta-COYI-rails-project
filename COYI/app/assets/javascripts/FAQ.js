// This function grabs the id of the div in the list item that was clicked and will display the div if it is hidden or hide it if it isn't.
function displayOrHide(id){
  var answer = document.getElementById(id + "A");
  // console.log(answer);
      if (answer.style.display == "none") {
      answer.style.display = "block";
      }
      else {
        answer.style.display = "none";
      }
}
