import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="ajax"
export default class extends Controller {
  static values = {
    moodboard: Number
  }
  connect() {
    console.log("hello")
  }
  send(event){
    event.preventDefault()
    let el = event.currentTarget
    console.log(this.moodboardValue)
    let button = el.querySelector("a")
    button.classList.toggle("pin-btn")
    button.classList.toggle("unpin-btn")
    // let btnNewText = button.innerText === 'pin' ? 'unpin' : 'pin'
    // button.innerText =  btnNewText
    // console.log(btnNewText)

    fetch(button.href, {
      method: "PATCH",
      headers: { "Accept": "application/json" }
    })
      .then(response => response.text())
      .then((data) => {
        console.log(data)
      })


  }
}
