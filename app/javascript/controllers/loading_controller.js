import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loading"
export default class extends Controller {
  static targets = ["overlay", "message"]

  connect() {
    this.dots = 0
    this.interval = null
  }

  show() {
    this.overlayTarget.classList.remove("hidden")

    this.interval = setInterval(() => {
      this.dots = (this.dots + 1) % 4

      this.messageTarget.textContent =
        "👨‍🍳 AIがレシピを考えています" + ".".repeat(this.dots)
    }, 500)
  }

  disconnect() {
    if (this.interval) {
      clearInterval(this.interval)
    }
  }
}
