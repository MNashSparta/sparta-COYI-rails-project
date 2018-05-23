// document.getElementById('question1').addEventListener("click", function(){
// alert("You clicked")
// })
function myFunction(id){
  var ans1 = document.getElementById("A1");
  var ans2 = document.getElementById("A2");
  var ans3 = document.getElementById("A3");
  var ans4 = document.getElementById("A4");
  
  switch (id) {

    case 'Q1':
      if (ans1.style.display == "none") {
      ans1.style.display = "block";
      }
      else {
        ans1.style.display = "none";
      }
      break;
    case 'Q2':
      if (ans2.style.display == "none") {
      ans2.style.display = "block";
      }
      else {
        ans2.style.display = "none";
      }
      break;
    case 'Q3':
      if (ans3.style.display == "none") {
      ans3.style.display = "block";
      }
      else {
        ans3.style.display = "none";
      }
      break;
    case 'Q4':
      if (ans4.style.display == "none") {
      ans4.style.display = "block";
      }
      else {
        ans4.style.display = "none";
      }
      break;
    default:

  }


}
