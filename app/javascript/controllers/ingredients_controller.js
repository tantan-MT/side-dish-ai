import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static MAX_SELECTION = 3

  toggle(event) {
    const button = event.currentTarget

    if (button.classList.contains("selected")) {
      button.classList.remove("selected")
      return
    }

    if (this.selectedCount() < this.constructor.MAX_SELECTION) {
      button.classList.add("selected")
    }
  }

  selectedCount() {
    return this.element.querySelectorAll(".selected").length
  }
}
