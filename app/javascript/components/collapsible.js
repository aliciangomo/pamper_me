const toggleCollapsible = () => {

  const collapsible = document.querySelectorAll(".collapsible");

  if (collapsible) {

    collapsible.forEach((element) => {

      const content = element.querySelector('.content');
      content.classList.add('d-none');

      const links = element.querySelectorAll('user-dashboard-card-links');

      const title = element.querySelector('.title');
      title.addEventListener("click", (event) => {

        content.classList.toggle('d-none');

       });

    });

  }
};

export {toggleCollapsible};
