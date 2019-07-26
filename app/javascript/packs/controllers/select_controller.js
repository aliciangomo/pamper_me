import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "input", "button" ]

  initialize() {
    this.buttonTargets.forEach((buttonTarget) => {
      if (buttonTarget.dataset.selectValue === this.inputTarget.value) {
        buttonTarget.classList.add('selected');
      }
    });
  }

  update(event) {
    const button = event.target.closest('.stim-select-button');
    this.buttonTargets.forEach((buttonTarget) => {
      buttonTarget.classList.remove('selected');
    });
    button.classList.add('selected');
    this.inputTarget.value = button.dataset.selectValue;
  }
}
