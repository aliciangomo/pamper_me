const renderMap = () => {

  const map = document.querySelector('.map');

  if (map) {
    map.classList.add('d-none');

    const providers = document.querySelector('.index-cards');

    const marker = document.querySelector('.provider-index-map');

    marker.addEventListener("click", (event) => {
      const canvas = document.querySelector('.mapboxgl-canvas');
      console.log("Hiya")
      providers.classList.toggle('d-none');

      map.classList.toggle('d-none');

      mapp.resize();

    })
  }
}

export {renderMap};
