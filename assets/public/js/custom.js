(function ($) {

	new WOW().init();

	jQuery(window).load(function() { 
		jQuery("#preloader").delay(100).fadeOut("slow");
		jQuery("#load").delay(100).fadeOut("slow");
	});

	$('#container').imagesLoaded( function() {
		// images have loaded
		//alert("foobar");
	});	
			
	$('.carousel-bot').carousel({
		interval: 9000
	});

	//jQuery to collapse the navbar on scroll
	$(window).scroll(function() {
		if ($(".navbar").offset().top > 50) {
			$(".navbar-fixed-top").addClass("top-nav-collapse");		
			$('.logo').find('img').attr('src',base_URL + 'assets/static/img/logo_small.png');	
		} else {
			$(".navbar-fixed-top").removeClass("top-nav-collapse");			
			$('.logo').find('img').attr('src',base_URL + 'assets/static/img/logo.png');	
		}
	});
        
        $('.reload_captcha').click(function() {
                var url	= $(this).attr('rel');		
                $.ajax({
                        type: "POST",
                        url: url,
                        cache: false,
                        async: false,	
                        success: function(msg){
                                $('.reload_captcha').empty().html(msg);
                                // Need random for browser recache
                                img		= $('.reload_captcha').find('img');
                                src		= img.attr('src');
                                ran		= img.fadeOut(50).fadeIn(50).attr('src', src + '?=' + Math.random());
                        },
                        complete: function(msg) {},
                        error: function(msg) {}
                });
                return false;	
        });
	
        
        if ($('#user-form').size() > 0) {
			
            $('#user-form').validate({
                focusInvalid: false, // do not focus the last invalid input
                ignore: "",
                submitHandler: function (form) {				
                    
                    var userform = $('#user-form');
                    var user_id = userform.find('input[name="user_id"]').val();

                    userform.find('.msg').empty();
                    userform.find('.msg').html('<img src="'+base_URL + 'assets/admin/img/input-spinner.gif"/>&nbsp;Saving profile');
                    $.ajax({
                            url: base_URL + 'admin/user/ajax/update/' + user_id,
                            type: 'POST',
                            data: userform.serialize(),
                            timeout: 5000,
                            dataType: "JSON",
                            cache: true,
                            async: true,
                            success: function(message) {
                                    //alert(message);
                                    // Empty loader
                                    //callback.empty().hide();
                                    // Empty loader image
                                    //loader.hide();
                            },
                            complete: function(message) {
                                    var msg = message.responseJSON;

                                    userform.find('.msg').empty();
                                    userform.find('.msg')
                                    .html('<div class="alert alert-danger msg">'
                                    +'<button class="close" data-close="alert"></button>'
                                    +msg.result.text+'</div>');				

                                    if (msg.result.code === 1) {					
                                            setTimeout(function() {
                                                    // Do something after 5 seconds
                                                    //window.location.href = base_URL + 'admin/authenticate/login';
                                            }, 6000);
                                    }

                                    $('.reload_captcha').click();

                                    //alert(msg.result);
                                    //console.log(msg.result);
                            },
                            error: function(x,message,t) { 
                                    if(message==="timeout") {
                                            alert("got timeout");
                                    } else {
                                            //alert(message);
                                    }	
                            }
                    });
                }				
            });

        }
		
	
	//jQuery for page scrolling feature - requires jQuery Easing plugin
	$(function() {
		$('.navbar-nav li a').bind('click', function(event) {
			var $anchor = $(this);
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top
			}, 1500, 'easeInOutExpo');
			event.preventDefault();
		});
		$('.page-scroll a').bind('click', function(event) {
			var $anchor = $(this);
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top
			}, 1500, 'easeInOutExpo');
			event.preventDefault();
		});
	});

	$('.handler-team').click(function() {
		//$('.box-team').toggleClass('hidden wow slideInRight');
	});
	
	$('.box-team').click(function(){
		//$(this).addClass('hidden');
	});
	/*
	$("#maps").gmap3({
		map:{
            options:{
			  animation:google.maps.Animation.DROP,
			  center:[-6.216222,106.807349],
              zoom: 14
            }
          },
          marker:{
            values:[{address:"Plaza Bapindo, Jakarta 12190 Indonesia",id:"1",data:"<div><strong>Dentsu Digital Division</strong></div><di>Mandiri Tower Plaza Bapindo, 22nd Floor, Jl. Jend. Sudirman Kav. 54-55 Jakarta 12190, Indonesia P: (021) 299-501-10 / (021) 526-0286 </div>",options:{"icon":base_URL + "assets/public/img/maps.png","animation":"google.maps.Animation.DROP"}}],			
			options:{
				draggable: false,
				animation:google.maps.Animation.DROP,
				zoom: 14
			},
			events:{
				mouseover: function(marker, event, context){
				  //marker.setAnimation(google.maps.Animation.BOUNCE);	
				  var map = $(this).gmap3("get"),
					infowindow = $(this).gmap3({get:{name:"infowindow"}});
				  if (infowindow){
					infowindow.open(map, marker);
					infowindow.setContent(context.data);
				  } else {
					$(this).gmap3({
					  infowindow:{
						anchor:marker, 
						options:{content: context.data}
					  }
					});
				  }
				},
				mouseout: function(){
				  //marker.setAnimation(null);	
				  var infowindow = $(this).gmap3({get:{name:"infowindow"}});
				  if (infowindow){
					infowindow.close();
				  }
				},
				click: function(marker, event, context){
					//markerSelected(context.id);
					marker.setAnimation(google.maps.Animation.BOUNCE);				
					setTimeout(function(){
						marker.setAnimation(null);
					},1500);
				}
			  }
		  }
	  });	
	*/
       
	//$('#vacancy-form').submit(function() {
		//alert('asdf');
	//});
			
	$(".apply-btn").click(function() {
		var title = $(this).parent().find('.service-desc h5').text();		
		//alert(title);
		$('.vacancy-list-holder').hide({duration:'220',easing:'easeOutExpo'});		
		$(".vacancy-form-holder").show({duration:'220',easing:'easeOutExpo'}).find('.vacancy-title').text(title);				
		return false;
	});
	
	$('a.back').click(function(){
		$(".vacancy-form-holder").hide({duration:'220',easing:'easeOutExpo'});
		$('.vacancy-list-holder').show({duration:'220',easing:'easeOutExpo'});				
		return false;
	});
	
	/*
		$(".apply-btn").fancybox({
			maxWidth	: 800,
			maxHeight	: 600,
			fitToView	: false,
			width		: '70%',
			height		: '70%',
			autoSize	: false,
			closeClick	: false,
			openEffect	: 'none',
			closeEffect	: 'none',
			helpers: {
				overlay: {
				  locked: false
				}
			}
		});
	*/
   
//	$("#about").vide({
//            'mp4': base_URL + 'assets/public/media/Gatwick_Airport_1Videvo_1'//,
//            'webm': base_URL + 'assets/public/media/Gatwick_Airport_1Videvo_1',
//            'ogv': base_URL + 'assets/public/media/Gatwick_Airport_1Videvo_1',
//            'poster': base_URL + 'assets/public/media/Gatwick_Airport_1Videvo_1'
//    });
	
})(jQuery);
