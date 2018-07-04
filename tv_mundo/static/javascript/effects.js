/*background aleatorio*/
jQuery.noConflict();
(function($) {
var contenedor = $('#inicio');

contenedor.css({'background-image':'url(../static/images/metamundo/01.jpg)'});

var img1 = loadImage('/static/images/metamundo/01.jpg');
var img2 = loadImage('/static/images/metamundo/02.jpg');
var img3 = loadImage('/static/images/metamundo/03.jpg');
var img4 = loadImage('/static/images/metamundo/04.jpg');
var img5 = loadImage('/static/images/metamundo/05.jpg');

var imagenes = [img1,img2,img3,img4,img5];
changeBG();

function loadImage(url){
  var newImg = new Image;
  newImg.src = url;
  return newImg;
}

function changeBG(){
  var direccion = imagenes[Math.floor(Math.random() * imagenes.length)].src;
  $('#inicio').css({'background-image':'url('+direccion+')'});
  $('#inicio').fadeIn();
  setTimeout(changeBG,4000);
};
})(jQuery);
