import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  connect() {
  }
  submit() {
    this.element.requestSubmit()
  }
}
