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

    fetch(button.href, {
      method: "POST",
      headers: { "Accept": "text/html" }
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })


  }
}
