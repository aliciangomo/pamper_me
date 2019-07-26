const toggleDropdown = () => {

  const dropdown = document.querySelectorAll(".user-dashboard-dropdown");

  if (dropdown) {

    dropdown.forEach((element) => {

      const content = element.querySelector('.user-dashboard-cards');
      content.classList.add('d-none');

      const chevron = element.querySelector('.fa-chevron-right');

      const title = element.querySelector('.title');

      title.addEventListener("click", (event) => {

        content.classList.toggle('d-none');
        chevron.classList.toggle('rotate');

       });

    });

  }
};

export {toggleDropdown};
