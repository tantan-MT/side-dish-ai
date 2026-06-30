import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["submit", "input"]

  static MAX_SELECTION = 3

  toggle(event) {
    const button = event.currentTarget
    const index = Array.from(
      this.element.querySelectorAll(".ingredient-card")
    ).indexOf(button)

    const hiddenInput = this.inputTargets[index]

    if (button.classList.contains("selected")) {
      button.classList.remove("selected")
      hiddenInput.disabled = true
    } else if (this.selectedCount() < this.constructor.MAX_SELECTION) {
      button.classList.add("selected")
      hiddenInput.disabled = false
    }

    this.updateSubmitButton()
  }

  selectedCount() {
    return this.element.querySelectorAll(".ingredient-card.selected").length
  }

  updateSubmitButton() {
    const enabled = this.selectedCount() > 0

    this.submitTarget.disabled = !enabled
    this.submitTarget.classList.toggle("disabled", !enabled)
  }
}
