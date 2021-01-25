$(function() {
	$('.bg').addClass('white-bg');
	$(".white-bg").unwrap();
	$('.white-bg').removeClass('bg');
	$('.white-bg').removeClass('transition');
	$('.white-bg').addClass('sticky-top');
	$('.container-fluid').removeClass('fixed');

	$('#SearchForm').empty();
	$('#SearchForm').load("../layout/searchHeader.html");

});