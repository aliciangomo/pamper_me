const toggleDropdown = () => {

  const dropdown = document.querySelectorAll(".user-dashboard-dropdown");

  if (dropdown) {

    dropdown.forEach((element) => {

      const content = element.querySelector('.user-dashboard-cards');
      content.classList.add('d-none');

      // const chevronRight = element.querySelector('.fa-chevron-right');
      // const chevronDown = element.querySelector('.fa-chevron-down');
      // const chevronDown.classList.add('d-none');


      const title = element.querySelector('.title');

      title.addEventListener("click", (event) => {

        content.classList.toggle('d-none');
        // chevronDown.style.display = "block";
        // chevronRight.style.display = "none"


       });

    });

  }
};

export {toggleDropdown};
