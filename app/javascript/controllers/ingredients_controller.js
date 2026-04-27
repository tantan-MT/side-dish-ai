import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
toggle(event) {
  const button = event.currentTarget

  if (button.classList.contains("selected")) {
    button.classList.remove("selected")
    return
  }

  const selectedCount =
    this.element.querySelectorAll(".selected").length

  if (selectedCount < 3) {
    button.classList.add("selected")
  }
}
}
