import React, {Component} from 'react'
import Note from './note'

class Board extends Component {
  //modify the board to ADD STATE. and instead of rendering ONE of the notes we'll render the notes based on some State data. We'll use the constructor method and call super to do this.
  constructor(props) {
    super(props)
    this.state = {
      //this will render an array of dynamic data the will list the number of notes in our app
      notes: [
        {id: 33,
        note: "Walk outside"},
        {id: 34,
          note: "Work on resume today"}, 
        {id: 35,
          note: "Try to start/finish workshop from friday!!"
        },
        {id: 36,
          note: "Learn React for a few hours"}
      ]
    }
    //we have to always bind this
    this.eachNote = this.eachNote.bind(this)
  }
  //EACH TIME WE UPDATE SEND THE NEW NOTE component to 
//now let's add the notes to the board based on dynamic data above
  eachNote(note, i) {
    return (
      <Note key={i}
        index={i}>
        {/* this is what's displayed: the note of note */}
        {note.note}
      </Note>
    )
  }

  render() {
    return (
      <div className="board">
      {/* this will map over all the notes int eh array that are in STATE and print them to the screen. It does so by calling the eachNote function for every instance of a note*/}
        {this.state.notes.map(this.eachNote)}
      </div>
    )
  }
}

export default Board