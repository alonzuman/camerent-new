import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from './init_mapbox';

<<<<<<< Updated upstream
initMapbox();
=======
initMapbox();

// Toggle display and hide of map on click 

const mapToggleButton = document.querySelector('.toggle-map');
const map = document.getElementById('map');

mapToggleButton.addEventListener('click', () => {
  if (map.style.width === "0%") {
    map.style.width = "100%";
    mapToggleButton.innerText = 'Close Map';
  } else {
    map.style.width = "0%";
    mapToggleButton.innerText = 'Open Map'
  }
})
>>>>>>> Stashed changes
