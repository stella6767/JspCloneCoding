$(function() {
	$('.bg').addClass('white-bg');
	$(".white-bg").unwrap();
	$('.white-bg').removeClass('bg');
	$('.white-bg').removeClass('transition');
	$('.white-bg').addClass('sticky-top');
	$('.container-fluid').removeClass('fixed');
	$('#SearchForm').remove();
	


	var searchForm = ` <div class="collapse navbar-collapse justify-content-between" id="SearchForm">`;
	searchForm += `<form action="/mangoplate/board?cmd=search" method="POST" class="search-wrap w-50" name="searchForm">`;
	searchForm += `<input type="hidden" name="page" value="1" onkeypress="JavaScript:press(this.form)"/>`;
	searchForm += `<i class="material-icons mt-1" style="position: absolute; left: 170px;">search</i>`;
	searchForm += `<input type="text" placeholder="지역, 식당 또는 음식" onkeypress="JavaScript:press(this.form)" class="ml-5 mt-1 rounded w-50  " name="keyword"style="padding-left: 40px; outline: none; border: none;">`;
	searchForm += `</form>`;
	searchForm += ` <ul class="navbar-nav">`;
	searchForm += `<li class="nav-item active">`
	searchForm += `<a class="nav-link text-dark font-weight-bold" href="/mangoplate/user?cmd=joinForm" >회원가입</a>`;
	searchForm += `</li>`;
	searchForm += `<li class="nav-item active">`;
	searchForm += `<a class="nav-link text-dark font-weight-bold" href="/mangoplate/board?cmd=allList" >맛집리스트</a>`;
	searchForm += `</li>`;
	searchForm += `<li class="nav-item">`;
	searchForm += `<a class="nav-link text-dark font-weight-bold" href="#">로그인</a>`;
	searchForm += `</li>`;
	searchForm += `<li> <i class="large material-icons md-48">account_circle</i></li></ul></div>`;
	
	$(".navbar-toggler").after(searchForm);

});


  function press(f) {
        if ( f.keyCode == 13 ) {
			searchForm.submit();
        }
    }