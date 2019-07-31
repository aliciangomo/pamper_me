const renderMap = () => {

const map = document.querySelector('.map');

if (map) {
 map.classList.add('d-none');

  const providers = document.querySelector('.index-cards');

  const marker = document.querySelector('.provider-index-map');

  marker.addEventListener("click", (event) => {

  map.classList.toggle('d-none');
  providers.classList.toggle('d-none');

});

}

};


export {renderMap};
