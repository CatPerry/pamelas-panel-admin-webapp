
import React from "react"
import PropTypes from "prop-types"
class HomeMicropost extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = {
      foo: <h2>Students! Midpoint reivews are coming up in June. See a counselor at least two weeks in advanced for a quick consult.</h2>   
    };
  }

  componentDidMount() {
    setInterval(() => {
      this.setState({ foo: <h2>Teachers! Midpoint reivews for the students are coming up in June. Be prepared Be prepared to setup an appointment!</h2>})
    }, 5000);
  }

  render () {
    return (
      <React.Fragment>
        <main> {this.state.foo} 
        </main>
        <aside> You make learning possible through dedication, we make learning fun! 
        </aside>
      </React.Fragment>
    );
  }
}


//clock idea from https://www.w3schools.com/js/js_timing.asp
  let myVar = setInterval(myTimer, 1000);
              function myTimer() {
    let d = new Date();
      document.getElementById("clock").innerHTML = d.toLocaleTimeString();
  }
             

export default HomeMicropost
