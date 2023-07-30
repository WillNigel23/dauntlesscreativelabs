import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["menuIcon", "hiddenMenu"]

  connect() {
    this.isOpen = false;    
  }

  toggle() {
    this.isOpen = !this.isOpen;

    if (this.isOpen) {
      this.openMenu();
    } else {
      this.closeMenu();
    }
  }

  openMenu() {
    this.menuIconTarget.classList.add("open");
    this.hiddenMenuTarget.classList.add("open");
  }
  closeMenu() {
    this.menuIconTarget.classList.remove("open");
    this.hiddenMenuTarget.classList.remove("open");
  }
}
