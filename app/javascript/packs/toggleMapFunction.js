// Toggle display and hide of map on click 

const mapToggleButton = document.querySelector('.toggle-map');
const map = document.getElementById('map');
const cardsGrid = document.querySelector('.results-wrapper');

if (window.matchMedia("(max-width: 768px)").matches) {
  
  map.style.opacity = '0';
  map.style.zIndex = '-10';

  mapToggleButton.addEventListener('click', () => {
    if (map.style.opacity == '0') {
      cardsGrid.style.display = 'none';
      map.style.opacity = '1';
      mapToggleButton.innerText = 'Close Map';
    } else {
      map.style.opacity = '0';
      map.style.zIndex = '-10';
      cardsGrid.style.display = 'block';
      mapToggleButton.innerText = 'Open Map';
    }
  })
};