const colorStatus = () => {

const status = document.querySelectorAll('#booking-status');

status.forEach((element) => {
if (element.innerText == '0') {
 element.innerText = "Pending";
 element.style.color = '#E67E22';
 element.style.fontWeight = 'bold'
} else if (element.innerText == '1') {
 element.innerText = "Scheduled";
 element.style.color = '#19AA86';
 element.style.fontWeight = 'bold'
} else {
 element.innerText = "Declined"
 element.style.color = '#FD1015';
 element.style.fontWeight = 'bold'
}
});
};


export {colorStatus};
