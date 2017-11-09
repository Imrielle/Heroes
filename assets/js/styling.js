$(document).ready(function (c) {
	$('.alert-close').on('click', function (c) {
		$(this).parent().fadeOut('slow', function (c) {});
	});
    
    $('[visibly]').Visibly();
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	});
    
    $('.navbar').click(function(){
        $('.nav').toggleClass('visible');
        $('body').toggleClass('cover-bg');
    });

});

jQuery(document).ready(function($) {
	/*---------------------------------
		Notice
	-----------------------------------*/
	$(document).on('click', '.notice a[class^="icon-remove"]', function(e) {
		e.preventDefault();
		var notice = $(this).parents('.notice');
		$(this).hide();
		notice.fadeOut('slow');
	});
	
	/*---------------------------------
		CSS Helpers
	-----------------------------------*/
	$('input[type=checkbox]').addClass('checkbox');
	$('input[type=radio]').addClass('radio');
	$('input[type=file]').addClass('file');
	$('[disabled=disabled]').addClass('disabled');
	$('[class*="col_"]').addClass('column');
});