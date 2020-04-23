import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from './init_mapbox';

initMapbox();

// Toggle display and hide of map on click 

const mapToggleButton = document.querySelector('.toggle-map');
const map = document.getElementById('map');

mapToggleButton.addEventListener('click', () => {
  if (map.style.width === "0%") {
    map.style.width = "100%";
    map.style.height = "100%";
    mapToggleButton.innerText = 'Close Map';
  } else {
    map.style.width = "0%";
    map.style.height = "0vh";
    mapToggleButton.innerText = 'Open Map'
  }
})

var x = window.matchMedia("(max-width: 700px)")