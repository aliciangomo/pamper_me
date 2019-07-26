const renderMap = () => {

const map = document.querySelector('.search-map');
if (map) {
 map.classList.add('d-none');

  const providers = document.querySelector('.index-cards');

  const marker = document.querySelector('.provider-index-map');

  marker.addEventListerner("click", (event) => {

  map.classList.toggle('d-none');


});
}

};


export {renderMap};
