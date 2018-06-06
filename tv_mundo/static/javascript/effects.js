/*background aleatorio*/
var contenedor = $('#inicio');
var imagenes = ['01.JPG', '02.JPG', '03.jpg', '04.JPG', '05.JPG', '06.JPG'];
var tiempo = 3500;
contenedor.css({'background-image':'url(../static/images/metamundo/03.jpg)'});
image();
function image(){
  contenedor.fadeIn('slow', 0.5, function() {
    var img = new Image();
    var random = imagenes[Math.floor(Math.random() * imagenes.length)]
    img.src = '/static/images/metamundo/' + random ;        
    $(this).css({'background-image': 'url(../static/images/metamundo/' + random + ')'});        
  });         
  setTimeout(image,tiempo);
};