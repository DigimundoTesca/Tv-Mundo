    var cardsTarot = function(){
      /***Envia arreglo por ajax***/
  function envia_ajax(cardIds) {
    console.log(cardIds);
    carta1 = cardIds[0];
    carta2 = cardIds[1];
    carta3 = cardIds[3];
    var myRequest = new Request.HTML({
      url: "../Tarot/script.php",
      method: "post",
      data: {
          'carta1': carta1,
          'carta2': carta2,
          'carta3': carta3
      },
    }).send();
    console.log("Enviado a php");
    var form = document.getElementById("form-tarot").setStyles({
      'display':'block'
    });
    document.body.scrollTop = document.body.scrollHeight;

  }
  /*Tarto position cards*/
  window.addEvent('domready', function() {
  var positions = $$('#tarot-layout div')
  var cards = $$('#tarot-cards div')
  var title = $$('#tarot-cards h1')
  var selected = 0;
  var spacing = 32;
  var cardIds = Array();
  var posmarco = $("tarot-layout").getPosition();
  var despcard = posmarco.x + 25;
  var vidx = 100;
  var colum = 0;
  var lin = 0;

  cards.each(function(el, key) {
      el.set('tween', {
          duration: 'short'
      });
      colum = colum + 1;
      if (colum > 3) colum = 1;
      lin = (colum - 1) * 140;
      lin=0;
      var pos = el.getPosition();
      var espacio = Math.floor(Math.random() * 8) + 5;
      pos.x = pos.x + despcard;

      el.setStyles({
          'position': 'absolute',
          'left': pos.x + (key * spacing),

      })

      el.addClass("rot5");
      el.addEvent('mouseover', function() {
          el.tween('top', pos.y + 25);
      })
      el.addEvent('mouseout', function() {
          el.tween('top', pos.y);
      })
      el.addEvent('touchstart', function() {
          el.click();
      })
      el.addEvent('click', function() {
          if ((selected) >= positions.length) return false;

          el.removeEvents('mouseout');
          el.removeEvents('mouseover');
          el.removeEvents('click');
          vidx = vidx + 1;
          el.style.zIndex = vidx;

          var progress = new Element('img', {
              src: '../static/images/Tarot-Cards/' + 'img' + el.id + '.jpg',
              style: 'height:410px;width:300',
          });

          var pos = positions[selected].getPosition();
          Element.Styles.backgroundSize = '@px';
          var elFx = new Fx.Morph(el, {
              duration: 2800,
              transition: Fx.Transitions.Sine.easeOut,
              onComplete: function() {
                  el.tween('opacity', 1, 0, {
                      duration: 'long'
                  });
                  el.removeClass("rot5");
                  el.addClass("muevetee");
                  el.addClass("muestra");
                  progress.inject(el);
                  el.tween('opacity', 0, 1, {
                      duration: 'long'
                  });

              }
          });

          cardIds.push(el.id);
          console.log(cardIds);

          if(cardIds.length == 3){

            envia_ajax(cardIds);
          }
          var pc_big = window.matchMedia("(min-width: 2000px)");
          var phones = window.matchMedia("(max-width: 600px)");
          var pc = window.matchMedia("(min-width: 1025px)");
          console.log(pc_big)
          console.log(phones)
          console.log(pc)
          if (pc_big.matches) {
            elFx.start({
                'top': pos.y,
                'top': +550,
                'left': pos.x - 65,
                'height': [132, 400],
                'width': [80, 220],
                'background-size': [80, 160]
            });
          }
          else if(pc.matches){
            elFx.start({
                // 'top': pos.y,
                'top': +550,
                'left': pos.x + 35,
                'height': [132, 400],
                'width': [80, 220],
                'background-size': [80, 160]
            });
          }
          else{
            elFx.start({
                'top': pos.y,
                'top': +550,
                'left': pos.x + 53,
                'height': [132, 400],
                'width': [80, 220],
                'background-size': [80, 160]
            });
          }


          selected++;
          if ((selected) >= positions.length) {
              (function() {
                  document.getElementById("return").removeClass("Reintentar");
              }).delay(4000);
          }
      })
    });
  });
  function calculaAncho() {
  if (document.layers) {
      ancho = window.innerWidth;
  } else {
      ancho = document.body.clientWidth;
  }
  return ancho;
  }
  }
  cardsTarot.delay(1000);
