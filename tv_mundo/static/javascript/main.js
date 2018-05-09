
$('show-menu').addEvent('click', function() {
  $('navigation').setStyles({
    'left':'0'
  })
  $('movil').setStyles({
    'background-color': 'rgba(0,0,0,0.65)',
    'width':'100%',
    'z-index':'900',
    'display': 'block',
    'height': '100%'
  })
})
$('close').addEvent('click', function(){
  $('navigation').setStyles({
    'left':'-85%'
  })
  $('movil').setStyles({
    'width':'0',
    'height':'0'
  })
})
/*cards tarot function*/
  /*menu lateral
	var navigation		= document.getElementById('navigation');
	var hammer		= new Hammer.Manager(navigation);
	var swipe		= new Hammer.Swipe();
	hammer.add(swipe);
	hammer.on('swipeleft', function(){
	   $(navigation).setStyles({
       'left': "-85%",
       'overflow-y':'scroll'
   })
     $('movil').setStyles({
       'height': '0',
       'width': '0'
     });
   });*/

   var cardsTarot = function(){

    /***Envia arreglo por ajax***/
    function envia_ajax(cardIds) {
    var miJSON = JSON.encode(cardIds);
    var miAjax = new Request({

     url: '{% url "tarot:start" %}',
     type: 'POST',
     data: {
      csrfmiddlewaretoken: '{{ csrf_token }}',
      'datos=': miJSON,
    },
     onFailure: function(){
        $('resultado').set("html", "fallo en la conexión Ajax");
     }
    })
    miAjax.send();
    console.log(miJSON);
    // 
    // $.ajax({
  //    url: '{% url "tarot:start_tarot" %}',
  //    type: 'POST',
  //    data: {
  //     csrfmiddlewaretoken: '{{ csrf_token }}',
  //     'datos=': miJSON,
  //   },
  //   traditional: true,
  //   datatype: 'jsonp',
  //   success: function (result) {
  //     alert('salio');
  //     location.reload()
  //   },
  // });

    var form = document.getElementById("form-tarot").setStyles({
      'display':'block'
    });

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
      pos.y = pos.y-33;
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
            'top': +780,
            'left': pos.x - 50,
            'height': [132, 400],
            'width': [80, 220],
            'background-size': [80, 160]
          });
        }
        else if(pc.matches){
          elFx.start({
                // 'top': pos.y,
                'top': +580,
                'left': pos.x + 35,
                'height': [132, 400],
                'width': [80, 220],
                'background-size': [80, 160]
              });
        }
        else{
          elFx.start({

            'top': +550,
            'left': pos.x + 64,
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