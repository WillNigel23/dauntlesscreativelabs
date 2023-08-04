import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["bg"]
  connect() {
    this.initGrain();
  }

  initGrain() {
    const options = {
      animate: true,
      patternWidth: 100,
      patternHeight: 100,
      grainOpacity: 0.05,
      grainDensity: 1,
      grainWidth: 1,
      grainHeight: 1
    };

    grained("#noise-bg", options)
  }
}