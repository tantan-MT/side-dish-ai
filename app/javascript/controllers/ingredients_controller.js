import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["submit"]
  static MAX_SELECTION = 3

  toggle(event) {
    const button = event.currentTarget

    if (button.classList.contains("selected")) {
      button.classList.remove("selected")
    } else if (this.selectedCount() < this.constructor.MAX_SELECTION) {
      button.classList.add("selected")
    }

    this.updateSubmitButton()
  }

  selectedCount() {
    return this.element.querySelectorAll(".selected").length
  }

  updateSubmitButton() {
    if (this.selectedCount() > 0) {
      this.submitTarget.classList.remove("disabled")
    } else {
      this.submitTarget.classList.add("disabled")
    }
  }
}
