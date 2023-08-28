import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="markdown"
export default class extends Controller {
  connect() {
    this.setCssVars();
  }

  setCssVars() {
    const element = this.element;
    const bgColor = element.getAttribute("data-bg-color");
    const textColor = element.getAttribute("data-text-color");

    element.style.backgroundColor = bgColor;
    element.style.color = textColor;

    const blockquotes = element.querySelectorAll("blockquote");
    blockquotes.forEach((blockquote) => {
      blockquote.style.backgroundColor = textColor;
      blockquote.style.color = bgColor;
    });
  }
}
