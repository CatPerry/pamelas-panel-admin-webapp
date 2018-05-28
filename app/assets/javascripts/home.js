function greeting(greeting) {
  this.greeting = greeting;

  return `Welcome! ${greeting}`
};

greeting = "Please go to your respective page to log in!"

let welcome = document.getElementsByClassName("welcome");



let announcements = function() {
  return "Students! Midpoint reivews are coming up in June. See a counselor at least two weeks in advanced for a quick consult."

    setInterval(() => {
      this.setState({ foo: Teachers! Midpoint reivews for the students are coming up in June. Be prepared Be prepared to setup an appointment! })
    }, 5000);
  }

//clock idea from https://www.w3schools.com/js/js_timing.asp
let myVar = setInterval(myTimer, 1000);
function myTimer() {
  let d = new Date();
  document.getElementById("clock").innerHTML = d.toLocaleTimeString();
}


