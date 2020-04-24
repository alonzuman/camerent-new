// Toggle display and hide of map on click 

const mapToggleButton = document.querySelector('.toggle-map');
const map = document.getElementById('map');
const mapContainer = document.querySelector('.map-container');

if (window.matchMedia("(max-width: 768px)").matches) {
  console.log('small screen');
  mapToggleButton.addEventListener('click', () => {
    console.log("clicked")
    if (mapContainer.style.display == 'none') {
      mapContainer.style.display = 'block'
      mapToggleButton.innerText = 'Close Map'
    } else {
      mapContainer.style.display = 'none'
      mapToggleButton.innerText = 'Open Map'
    }
  })
} else {
  console.log('wide screen');
}