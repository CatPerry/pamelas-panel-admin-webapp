import React, {Component} from 'react'
// import icons
import FaPencil from 'react-icons/lib/fa/pencil'
import FaTrash from 'react-icons/lib/fa/trash'
import FaFloppyO from 'react-icons/lib/fa/floppy-o'


class Note extends Component {
  //the BIND function makes these bound to the constructor to make sure they're bound to THIS
    constructor(props) {
      super(props)
      //adding an editing state to the constructor, so we can change other things based on that
      this.state = {
        editing: false
      }
      this.edit = this.edit.bind(this)
      this.remove = this.remove.bind(this)
      this.save = this.save.bind(this)
      this.renderForm = this.renderForm.bind(this)
      this.renderDisplay = this.renderDisplay.bind(this)
    }
  //let' viewers know they are editing/removing the text
  edit() {
    this.setState({
      editing: true
    })
  }
  remove() {
    alert('removing note')
  }
//handle the Save State
  save() {
    alert(this._newText.value)
  }

//Now we need a few functions that handle creating a form
renderForm() {
  return (
    <div className="note">
      <form>
        {/* added a REF below to to capture the input into the text area. We are using a CALLBACK function for it.*/}
        <textarea ref={input => this._newText = input}/>
        <button onClick={this.save} id="save"><FaFloppyO/></button>
      </form>
    </div>
  )
}
  //changed this to renderDisplay funciton since it's rendering display
  renderDisplay() {
    return (
      <div className="note">
      {/* this will display whatever the value of Note/each Note is  */}
        <p>{this.props.children}</p>
        <span>
          <button onClick={this.edit} id="edit"><FaPencil /></button>
          <button onClick={this.remove} id="remove"><FaTrash /></button>
        </span>
      </div>
    )
  }
  //always need a final render method that will append items to the DOM given their state. and let's use th ternary syntax to check all states at once.
  render() {
    return this.state.editing ? this.renderForm() : this.renderDisplay()
  }
    
}

export default Note