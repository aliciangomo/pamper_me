// function destroyBooking(bookingId) {

//   const pending = document.querySelector(".pending");

//   const booking = pending.querySelector(`#booking-${bookingId}`);

//   const pendingCount = pending.querySelector('.number')
//   pendingCount.innerText = parseInt(pendingCount.innerText, 10) - 1

//   const declined = document.querySelector(".declined");
//   const insertionPoint = declined.querySelector('.provider-dashboard-cards')

//   insertionPoint.insertAdjacentHTML('afterbegin', booking.outerHTML)

//   const declinedCount = declined.querySelector('.number')
//   declinedCount.innerText = parseInt(declinedCount.innerText, 10) + 1

//   booking.style.display = "none";
// };

// declineBooking(<%= @booking.id %>)
