// Toggle display and hide of map on click 

const mapToggleButton = document.querySelector('.toggle-map');
const map = document.getElementById('map');
const cardsGrid = document.querySelector('.results-wrapper');
const mapContainer = document.querySelector('#map-container');


console.log(cardsGrid)

if (window.matchMedia("(max-width: 768px)").matches) {
  // mapContainer.style.display = 'none';
  map.style.display = 'none';

  mapToggleButton.addEventListener('click', () => {
    if (map.style.display == 'none') {
      cardsGrid.style.display = 'none';
      map.style.display = 'block';
      mapToggleButton.innerText = 'Close Map';
    } else {
      map.style.display = 'none';
      cardsGrid.style.display = 'block';
      mapToggleButton.innerText = 'Open Map';
    }
  })
} else {
}