/*background aleatorio*/
do {
  $(document).ready(function() {

  var contenedor = $('#inicio');
  var imagenes = ['01.JPG', '02.JPG', '03.jpg', '04.JPG', '05.JPG', '06.JPG'];
  var tiempo = 3500;
  contenedor.css({'background-image':'url(../static/images/metamundo/03.jpg)'});

  function image(){
  setTimeout(function() {
  contenedor.fadeIn('slow', 0.9, function() {
  $(this).css({'background-image': 'url(../static/images/metamundo/' + imagenes[Math.floor(Math.random() * imagenes.length)] + ')'});
  image();}).fadeIn('slow', 0.9); },tiempo); }

  image();
  });
} while (false);
