function refreshCollapsibles(booking) {

  const pending = document.querySelectorAll(".pending");

  pending.shift(booking)

  const confirmed = document.querySelectorAll(".confirmed");

  confirmed.addAdjacentHTML(booking);

};
