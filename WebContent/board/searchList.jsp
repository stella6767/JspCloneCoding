<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>



<!--============================= DETAIL =============================-->
<section>
	<div style="margin-left: 200px;">
		<div class="row">
			<div class="col-md-8 responsive-wrap " style="padding-right: 100px;">
				<div class="row detail-filter-wrap">
					<div class="col-md-4 featured-responsive">
						<div class="detail-filter-text">
							<p>
								34 Results For <span>부대찌개</span>
							</p>
						</div>
					</div>
					<div class="col-md-8 container featured-responsive">
						<div class="detail-filter ">
							<p>Filter by</p>
							<form class="filter-dropdown">
								<select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect">
									<option selected>Best Match</option>
									<option value="1">One</option>
									<option value="2">Two</option>
									<option value="3">Three</option>
								</select>
							</form>
							<form class="filter-dropdown">
								<select class="custom-select mb-2 mr-sm-2 mb-sm-0" id="inlineFormCustomSelect1">
									<option selected>Restaurants</option>
									<option value="1">One</option>
									<option value="2">Two</option>
									<option value="3">Three</option>
								</select>
							</form>
							<div class="map-responsive-wrap">
								<a class="map-icon" href="#"><span class="icon-location-pin"></span></a>
							</div>
						</div>
					</div>
				</div>

				<div class="row detail-options-wrap">
					<div class="col-sm-6 col-lg-12 col-xl-6 featured-responsive">
						<div class="featured-place-wrap">
							<a href="detail.html"> <img src="../images/featured1.jpg" class="img-box" alt="#">
								<div class="featured-title-box">
									<h5>오스틴 6.5</h5>
									<h6>강남역-스테이크/바베큐</h6>
									<span class="featured-rating-orange ">6.5</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-sm-6 col-lg-12 col-xl-6 featured-responsive">
						<div class="featured-place-wrap">
							<a href="detail.html"> <img src="../images/featured2.jpg" class="img-fluid" alt="#">
								<div class="featured-title-box">
									<div class="featured-title-box">
										<h5>오스틴 6.5</h5>
										<h6>강남역-스테이크/바베큐</h6>
										<span class="featured-rating-orange ">6.5</span>
									</div>
								</div>
							</a>
						</div>
					</div>

					<div class="col-sm-6 col-lg-12 col-xl-6 featured-responsive">
						<div class="featured-place-wrap">
							<a href="detail.html"> <img src="../images/featured2.jpg" class="img-fluid" alt="#">
								<div class="featured-title-box">
									<div class="featured-title-box">
										<h5>오스틴 6.5</h5>
										<h6>강남역-스테이크/바베큐</h6>
										<span class="featured-rating-orange ">6.5</span>
									</div>
								</div>
							</a>
						</div>
					</div>

					<div class="col-sm-6 col-lg-12 col-xl-6 featured-responsive">
						<div class="featured-place-wrap">
							<a href="detail.html"> <img src="../images/featured2.jpg" class="img-fluid" alt="#">
								<div class="featured-title-box">
									<div class="featured-title-box">
										<h5>오스틴 6.5</h5>
										<h6>강남역-스테이크/바베큐</h6>
										<span class="featured-rating-orange ">6.5</span>
									</div>
								</div>
							</a>
						</div>
					</div>


				</div>

				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
				</ul>
			</div>
			<div class="col-md-4 responsive-wrap map-wrap">
				<div class="map-fix"></div>
				<div></div>
			</div>
		</div>
	</div>

</section>
<!--//END DETAIL -->





<%@ include file="../layout/footer.jsp"%>


<script src="../js/jquery.magnific-popup.js"></script>
<script src="../js/swiper.js"></script>
<script src="../js/subHeader.js"></script>



</body>
</html>
