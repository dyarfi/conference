(function ($) {

	new WOW().init();

	jQuery(window).load(function() { 
            //jQuery("#preloader").delay(100).fadeOut("slow");
            //jQuery("#load").delay(100).fadeOut("slow");
	});
        
        //jQuery to collapse the navbar on scroll
	$(window).scroll(function() {
            if ($(".navbar").offset().top > 50) {
                $(".navbar-fixed-top").addClass("top-nav-collapse");		
                $('.logo')
                .find('img')
                .attr('src',base_URL + 'assets/static/img/logo_small.png');
            } else {
                $(".navbar-fixed-top").removeClass("top-nav-collapse");			
                $('.logo')
                .find('img')
                .attr('src',base_URL + 'assets/static/img/logo.png');
            }
            if ($(this).scrollTop() > 0) {
                $('.back-top').show();
            } else {
                $('.back-top').hide();
            }
	});
        
	$('#container').imagesLoaded( function() {
		// images have loaded
		//alert("foobar");
	});	
			
	$('.carousel-bot').carousel({
		interval: 9000
	});

        $('.carousel-top').carousel({
		interval: 9000
	});
	
	$('.carousel-top').on('slide.bs.carousel', function () {
		//$(this).find('.carousel-caption').css({'bottom':'90px'});
		$(this).fadeOut(240).fadeIn(240);
	});
	$('.carousel-top').hover(function(){
            $(this).find('.carousel-caption').animate({opacity:1,bottom:0}, 500, 'easeInOutExpo');
            $(this).find('.carousel-indicators').animate({opacity:1}, 800, 'easeInOutExpo');
            //$(this).find('.carousel-control').animate({'opacity':0.5});
	},function(){
            $(this).find('.carousel-caption').stop().animate({opacity:0,bottom:-50}, 600, 'easeInOutExpo');
            $(this).find('.carousel-indicators').animate({opacity:0}, 900, 'easeInOutExpo');
            //$(this).find('.carousel-control').animate({'opacity':0});
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
                    img = $('.reload_captcha').find('img');
                    src = img.attr('src');
                    ran	= img.fadeOut(50).fadeIn(50).attr('src', src + '?=' + Math.random());
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
                        scrollTop: $($anchor.attr('href')).offset().top - 110
                }, 1500, 'easeInOutExpo');
                event.preventDefault();
            });
            $('.page-scroll a').bind('click', function(event) {
                var $anchor = $(this);
                $('html, body').stop().animate({
                        scrollTop: $($anchor.attr('href')).offset().top - 110
                }, 1500, 'easeInOutExpo');
                event.preventDefault();
            });
	});	
       
})(jQuery);
