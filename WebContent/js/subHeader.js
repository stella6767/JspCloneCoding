$(function() {
	$('.bg').addClass('white-bg');
	$(".white-bg").unwrap();
	$('.white-bg').removeClass('bg');
	$('.white-bg').removeClass('transition');
	$('.white-bg').addClass('sticky-top');
	$('.container-fluid').removeClass('fixed');
	$('#SearchForm').remove();
	


	var searchForm = ` <div class="collapse navbar-collapse justify-content-between" id="SearchForm">`;
	searchForm += `<form class="search-wrap w-50">`;
	searchForm += `<i class="material-icons mt-1" style="position: absolute; left: 170px;">search</i>`;
	searchForm += `<input type="text" placeholder="지역, 식당 또는 음식"class="ml-5 mt-1 rounded w-50  " style="padding-left: 40px; outline: none; border: none;">`;
	searchForm += `</form>`;
	searchForm += ` <ul class="navbar-nav">`;
	searchForm += `<li class="nav-item active">`;
	searchForm += `<a class="nav-link text-dark font-weight-bold" href="#" >EAT딜</a>`;
	searchForm += `</li>`;
	searchForm += `<li class="nav-item active">`;
	searchForm += `<a class="nav-link text-dark font-weight-bold" href="#" onclick='(function(){ location.reload(); })();'>맛집리스트</a>`;
	searchForm += `</li>`;
	searchForm += `<li class="nav-item">`;
	searchForm += `<a class="nav-link text-dark font-weight-bold" href="#">망고스토리</a>`;
	searchForm += `</li>`;
	searchForm += `<li> <i class="large material-icons md-48">account_circle</i></li></ul></div>`;
	
	$(".navbar-toggler").after(searchForm);

});