// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('page:change', function() {

	// $('#arrow1').setTimeout(function() {
	// 	$('#arrow1').addClass('animated bounce');
	// 	$('#arrow1').removeClass('animated bounce'), 2000
	// })


		function scrollToTag(aid){
    var tag = $(aid);
    $('html,body').animate({scrollTop: tag.offset().top},'slow');
	}

	$('#arrow1').on('click', function() {
		scrollToTag('#about');
	})	

	$('tab-list').each(function() {
		var $this = $(this);
		var $tab = $this.find('li:active');
		var $link = $tab.find('a');
		var $panel = $($link.attr('href'));

		$this.on('click', 'tab-control', function(e) {
			e.preventDefault();
			var $link = $(this);
			var id = this.hash;

			if (id && !$link.is('.active')) {
				$panel.removeClass('active');
				$tab.removeClass('active');

				$panel = $(id).addClass('active');
				$tab = $link.parent().addClass('active');
			}
		});
	});

});