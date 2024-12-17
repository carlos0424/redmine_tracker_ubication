document.addEventListener('DOMContentLoaded', function () {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function (position) {
      // Añadir las coordenadas al formulario de actualización
      var latInput = document.createElement('input');
      latInput.type = 'hidden';
      latInput.name = 'latitude';
      latInput.value = position.coords.latitude;

      var lngInput = document.createElement('input');
      lngInput.type = 'hidden';
      lngInput.name = 'longitude';
      lngInput.value = position.coords.longitude;

      var form = document.querySelector('form');
      if (form) {
        form.appendChild(latInput);
        form.appendChild(lngInput);
      }
    });
  }
});
