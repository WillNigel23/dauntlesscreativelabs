import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="accordion"
export default class extends Controller {
  static targets = ["icon", "dropdown"]

  connect() {
    this.isOpen = false;
  }

  toggle() {
    this.isOpen = !this.isOpen;

    if(this.isOpen) {
      this.iconTarget.classList.add("rotate-180");
      this.dropdownTarget.classList.add("open");
    }
    else {
      this.iconTarget.classList.remove("rotate-180");
      this.dropdownTarget.classList.remove("open");
    }
  }
}
