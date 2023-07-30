import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["menuIcon", "hiddenMenu", "interface"];
  static values = { scrolled: Boolean };

  connect() {
    this.isOpen = false;
    this.previousScrollY = 0;
    window.addEventListener('scroll', this.onScroll.bind(this));
  }

  disconnect() {
    window.removeEventListener('scroll', this.onScroll.bind(this));
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

  onScroll() {
    const scrollY = window.scrollY;

    if (scrollY > 30 && !this.scrolledValue) {
      this.interfaceTarget.classList.remove("show");
      this.scrolledValue = true;
    } else if (scrollY <= 30 && this.scrolledValue) {
      this.interfaceTarget.classList.add("show");
      this.scrolledValue = false;
    }
  }
}
