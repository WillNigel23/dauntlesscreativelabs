import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="hero"
export default class extends Controller {
  static targets = ["video", "audio"]

  connect() {
    this.isMuted = true;
  }

  toggle() {
    this.isMuted = !this.isMuted;

    this.videoTarget.muted = this.isMuted;

    this.audioTarget.innerHTML = this.isMuted ? "AUDIO: OFF" : "AUDIO: ON"
  }
}
