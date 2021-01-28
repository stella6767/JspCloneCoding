$(function() {
	$('.bg').addClass('white-bg');
	$(".white-bg").unwrap();
	$('.white-bg').removeClass('bg');
	$('.white-bg').removeClass('transition');
	$('.white-bg').addClass('sticky-top');
	$('.container-fluid').removeClass('fixed');
	$('#SearchForm').removeClass('justify-content-end');
	$('#SearchForm').addClass('justify-content-between');
	$('.nav-link').addClass('text-dark');
	$('.md-48').removeClass('text-white');


	var searchForm = `<form action="/mangoplate/board?cmd=search" method="POST" class="search-wrap w-50" name="searchForm">`;
	searchForm += `<input type="hidden" name="page" value="1" onkeypress="JavaScript:press(this.form)"/>`;
	searchForm += `<i class="material-icons mt-1" style="position: absolute; left: 170px;">search</i>`;
	searchForm += `<input type="text" placeholder="지역, 식당 또는 음식" onkeypress="JavaScript:press(this.form)" class="ml-5 mt-1 rounded w-50  " name="keyword"style="padding-left: 40px; outline: none; border: none;">`;
	searchForm += `</form>`;

	
	$(searchForm).prependTo('#SearchForm');

});


  function press(f) {
        if ( f.keyCode == 13 ) {
			searchForm.submit();
        }
    }