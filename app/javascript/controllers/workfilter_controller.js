import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="workfilter"
export default class extends Controller {
  static targets = ["nav", "items"]
  connect() {
    this.active = this.navTarget.querySelector('li[data-slug=""]');
  }

  toggle(event) {
    const choice = event.target

    if (choice != this.active) {
      this.active.classList.remove("underline");
      this.active = choice;
      this.active.classList.add("underline");
      this.itemsTarget.classList.add("opacity-0");


      setTimeout(() => {
        this.itemsTarget.querySelectorAll('a').forEach((item) => {
          if(item.dataset.slug !== this.active.dataset.slug && this.active.dataset.slug !== "") {
            item.classList.add("hidden");
          } else {
            item.classList.remove("hidden");
          }
        });
        this.itemsTarget.classList.remove("opacity-0");
      }, 500)
    }
  }
}
