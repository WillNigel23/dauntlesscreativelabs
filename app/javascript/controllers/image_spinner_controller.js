import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="image-spinner"
export default class extends Controller {
  static values = { rotationFactor: Number };

  connect() {
    this.rotationAngle = 0;
    this.image = this.element;
    window.addEventListener("scroll", this.rotateImage.bind(this));
  }

  disconnect() {
    window.removeEventListener("scroll", this.rotateImage);
  }

  rotateImage() {
    const scrollY = window.scrollY;
    this.rotationAngle = scrollY * this.rotationFactorValue;
    this.image.style.transform = `rotate(${this.rotationAngle}deg)`;
  }
}
