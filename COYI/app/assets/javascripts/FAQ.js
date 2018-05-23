// document.getElementById('question1').addEventListener("click", function(){
// alert("You clicked")
// })
function myFunction(id){
  var answer = document.getElementById(id + "A");
  // console.log(answer);
      if (answer.style.display == "none") {
      answer.style.display = "block";
      }
      else {
        answer.style.display = "none";
      }
}
