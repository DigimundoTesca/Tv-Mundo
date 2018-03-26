    function envia_ajax(cardIds) {
      console.log(cardIds);
      var myRequest = new Request.HTML({
        url: "../Tarot/script.php",
        method: "post",
        data: {
            'cartas': cardIds
        },
      }).send();
      console.log("Enviado a php");
    }

    window.addEvent('domready', function() {
    var positions = $$('#tarot-layout div')
    var cards = $$('#tarot-cards div')
    var text = $$('#tarot-cards p')
    var title = $$('#tarot-cards h1')
    var selected = 0;
    var spacing = 27;
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
        // lin = (colum - 1) * 140;
        lin=0;
        var pos = el.getPosition();
        var espacio = Math.floor(Math.random() * 8) + 5;
        var vespacio = Math.floor(Math.random() * 10);
        pos.y = pos.y + vespacio + lin;
        pos.x = pos.x + despcard;
        el.setStyles({
            'position': 'absolute',
            'left': pos.x + (key * spacing),
            'top': pos.y
        })
        el.addClass("rot5");
        el.addEvent('mouseover', function() {
            el.tween('top', pos.y - 10);
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
                src: 'statics/Images/Tarot-Cards/' + 'img' + el.id + '.jpg',
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
                    progress.inject(el);
                    el.tween('opacity', 0, 1, {
                        duration: 'long'
                    });

                }
            });
            cardIds.push(el.id);
            if(cardIds.length == 3){
                envia_ajax(cardIds);
            }
            for(let i = 0; i<cardIds.length; i++){
              p = cardIds[i]
              r = p-1;
            text[r].setStyles({
              'display':'block'
              });
            }
            for(let i = 0; i<cardIds.length; i++){
              t = cardIds[i]
              q = t-1;
            title[q].setStyles({
              'display':'block'
              });
            }
            elFx.start({
                // 'top': pos.y,
                'top': +250,
                'left': pos.x-42,
                'height': [132, 400],
                'width': [80, 220],
                'background-size': [80, 160]
            });
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
