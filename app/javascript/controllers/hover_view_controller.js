import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hover-view"
export default class extends Controller {
  static targets = ["view", "img"]

  connect() {
    this.showingView = false;
    this.viewTarget.classList.add('opacity-0'); // Initialize as hidden

    this.element.addEventListener('mouseenter', () => this.showView());
    this.element.addEventListener('mousemove', (event) => this.moveView(event));
    this.element.addEventListener('mouseleave', () => this.hideView());
  }

  showView() {
    this.showingView = true;
    this.viewTarget.classList.remove('opacity-0');
    this.viewTarget.classList.add('opacity-1');
    this.imgTarget.classList.add('scale-110');
  }

  moveView(event) {
    if (this.showingView) {
      requestAnimationFrame(() => {
        const pointerWidth = 90; // Adjust this based on your actual mouse pointer size
      const pointerHeight = 90;

      const xOffset = event.clientX - this.element.getBoundingClientRect().left - pointerWidth / 2;
      const yOffset = event.clientY - this.element.getBoundingClientRect().top - pointerHeight / 2;

      this.viewTarget.style.transform = `translate(${xOffset}px, ${yOffset}px)`;
      });
    }
  }

  hideView() {
    this.showingView = false;
    this.viewTarget.classList.remove('opacity-1');
    this.viewTarget.classList.add('opacity-0');
    this.imgTarget.classList.remove('scale-110');
    this.viewTarget.style.transform = 'translate(0px, 0px)'; // Reset the transform
  }
}
