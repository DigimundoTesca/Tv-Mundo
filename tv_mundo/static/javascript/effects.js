/*background aleatorio*/
do {
  $(document).ready(function() {

  var contenedor = $('#inicio');
  var imagenes = ['fondo1.jpeg', 'fondo2.jpg', 'fondo3.jpg', 'fondo4.jpeg'];
  var tiempo = 2500;
  contenedor.css({'background-image':'url(statics/images/fondo3.jpg)'});

  function image(){
  setTimeout(function() {
  contenedor.fadeIn('slow', 0.3, function() {
  $(this).css({'background-image': 'url(statics/images/' + imagenes[Math.floor(Math.random() * imagenes.length)] + ')'});
  image();}).fadeIn('slow', 0.3); },tiempo); }

  image();
  });
} while (false);
