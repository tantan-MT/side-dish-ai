import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  toggle(event) {
    event.currentTarget.classList.toggle("selected")
  }
}
