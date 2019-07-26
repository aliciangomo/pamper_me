function refreshCollapsibles(booking) {

  const pending = document.querySelectorAll(".pending");

  pending.shift(booking)

  const confirmed = document.querySelectorAll(".confirmed");

  confirmed.addAdjacentHTML(booking);
  // links.classList.remove('fas fa-check');
  // links.classList.remove('fas fa-times');
  // links.classList.add('fab fa-whatsapp')

};
