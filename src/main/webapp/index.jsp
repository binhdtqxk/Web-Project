<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.Product" %>
<%@ page import="dao.DAOProduct" %>

<html>
<head>
	<jsp:useBean id="ListP" class="dao.DAOProduct" scope="request">

	</jsp:useBean>
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<link rel="stylesheet"
	href="assets/icon/themify-icons/themify-icons.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300&display=swap"
	rel="stylesheet">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>BeClassy</title>
</head>
<body>
<header class="header">
	<div class="container">
		<!-- Start top-header -->
		<div class="row top-header">

			<div class="left-header col-1">

				<div class="text">
					<span>HOTLINE:</span> <span>0942 827 271</span>
				</div>

			</div>

			<div class="center-header col-1">
				<a href="" class="logo wrapper"
				   title="Be Classy - Giày Da Nam, Giày Tây Nam Sang Trọng"> <img
						class="center-block"
						src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/logo.png?1697690581561"
						alt="Be Classy - Giày Da Nam, Giày Tây Nam Sang Trọng">
				</a>
			</div>

			<div class="right-header col-1">

				<ul class="user-helper">

					<li class="userHelper-nav-item userHelper-nav-account"><a href="" title="Tài khoản">TÀI
						KHOẢN</a>
						<ul class="sub-nav-account">
							<li> <a href="login.jsp" title="Đăng nhập">ĐĂNG NHẬP</a></li>
							<li> <a href="register.jsp" title="Đăng ký">ĐĂNG KÝ</a></li>
						</ul>
					</li>

					<li class="userHelper-nav-item userHelper-nav-cart mini-cart">

						<a href="">GIỎ HÀNG <i class="ti-shopping-cart"></i> <span
								class="count-item-pr">0</span>
						</a>

					</li>

					<li class="userHelper-nav-item userHelper-nav-search"><a
							href=""> <i class="ti-search"></i>
					</a></li>

				</ul>

			</div>


		</div>
	</div>
	<!-- End top header -->
	<div class="container bottom-header">
		<div class="row">
			<div class="header-bottom-nav">
				<ul id="nav" class="nav">
					<li class="nav-item has-child"><a href="" class="nav-link"
													  title="DRESS SHOES">DRESS SHOES <i class="ti-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
							<li class="nav-item-lv2">
								<a href="" class="nav-link" title="OXFORD">OXFORD</a>
							</li>
							<li class="nav-item-lv2">
								<a href="" class="nav-link" title="LOAFER">LOAFER</a>
							</li>
							<li class="nav-item-lv2">
								<a href="" class="nav-link " title="DERBY">DERBY</a>
							</li>
							<li class="nav-item-lv2" >
								<a href="" class="nav-link" title="BOOTS">BOOTS</a>
							</li>
							<li class="nav-item-lv2">
								<a href="" class="nav-link" title="SNEAKER">SNEAKER</a>
							</li>
							<li class="nav-item-lv2">
								<a href="" class="nav-link" title="SANDAL">SANDAL</a>
							</li>
						</ul>
					</li>
					<li class="nav-item has-child"><a href="" class="nav-link"
													  title="ACCESSORIES">ACCESSORIES <i class="ti-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
							<li class="nav-item-lv2">
								<a href="" class="nav-link" title="BELTS">BELTS</a>
							</li>
							<li class="nav-item-lv2">
								<a href="" class="nav-link" title="BAGS - WALLET">BAGS - WALLET</a>
							</li>
							<li class="nav-item-lv2">
								<a href="" class="nav-link " title="DRESS SOCKS">DRESS SOCKS</a>
							</li>
							<li class="nav-item-lv2" >
								<a href="" class="nav-link" title="CARE PRODUCTS">CARE PRODUCTS</a>
							</li>
							<li class="nav-item-lv2">
								<a href="" class="nav-link" title="GIFT CARD">GIFT CARD</a>
							</li>
						</ul>
					</li>
					<li class="nav-item has-child"><a href="" class="nav-link"
													  title="COLLECTION">COLLECTION <i class="ti-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
							<li class="nav-item-lv2">
								<a href="" class="nav-link" title="PREMIUM LINE">PREMIUM LINE</a>
							</li>
							<li class="nav-item-lv2">
								<a href="" class="nav-link" title="WEDDING SHOES">WEDDING SHOES</a>
							</li>
							<li class="nav-item-lv2">
								<a href="" class="nav-link "title="THE NEW GEN">THE NEW GEN</a>
							</li>
							<li class="nav-item-lv2" >
								<a href="" class="nav-link" title="TIMELESS">TIMELESS</a>
							</li>
							<li class="nav-item-lv2">
								<a href="" class="nav-link" title="GROSSS COLLECTION">GROSSS COLLECTION</a>
							</li>
						</ul>
					</li>

					<li class="nav-item" ><a href="" class="nav-link"
											 title="STORES">STORES</a></li>

					<li class="nav-item" ><a href="" class="nav-link"
											 title="STORES">SERVICES</a></li>

				</ul>
			</div>
		</div>
	</div>

</header>
<div class="section-1">
	<img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/slider_1.jpg?1701093253480" alt="anh" class="burning-deal">
</div>
<div class="section-2">
	<div class="container">

		<div class="row">

			<div class="col-md-12">

				<div class="section_product section_product_best_sell clearfix">

					<div class="section-head clearfix text-center">

						<h2 class="title_blog">

							<a href="" title="NEW ARRIVALS">

								<strong>NEW ARRIVALS</strong>

							</a>

						</h2>

					</div>

					<div class="product-blocks clearfix">

						<div class="evo-owl-product owl-carousel not-dqowl clearfix owl-loaded owl-drag">

							<div class="owl-stage" style="width: 100%;">

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="" title="SIR CLASSIC OXFORD - OF34">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2434.jpg?v=1699335369040" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2434.jpg?v=1699335369040" class="product-card-image-front img-responsive center-block" alt="SIR CLASSIC OXFORD - OF34">

												</div>

											</a>

											<h4 class="product-single__series">OXFORD</h4>

											<h3 class="product-card__title">SIR CLASSIC OXFORD - OF34</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/lf08" title="MERLE LOAFERS - LF08">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2304.jpg?v=1698632377647" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2304.jpg?v=1698632377647" class="product-card-image-front img-responsive center-block" alt="MERLE LOAFERS - LF08">

												</div>

											</a>

											<h4 class="product-single__series">LOAFER</h4>

											<h3 class="product-card__title">MERLE LOAFERS - LF08</h3>

											<div class="product-price">

												<strong>1.650.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/of32" title="SAVILLE CAPTOE OXFORD - OF32">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9565.jpg?v=1693217659420" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9565.jpg?v=1693217659420" class="product-card-image-front img-responsive center-block" alt="SAVILLE CAPTOE OXFORD - OF32">

												</div>
											</a>

											<h4 class="product-single__series">OXFORD</h4>

											<h3 class="product-card__title">SAVILLE CAPTOE OXFORD - OF32</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/db07-1" title="SIR CLASSIC DERBY - DB07">
												<div class="product-card__image">
													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf3412.jpg?v=1701231499067" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf3412.jpg?v=1701231499067" class="product-card-image-front img-responsive center-block" alt="SIR CLASSIC DERBY - DB07">

												</div>
											</a>

											<h4 class="product-single__series">DERBY</h4>

											<h3 class="product-card__title">SIR CLASSIC DERBY - DB07</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>


							</div>

							<a href="san-pham-noi-bat" title="Xem tất cả NEW ARRIVALS" class="evo-button mobile-viewmore">Xem tất cả . <strong>NEW ARRIVALS</strong></a>

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>

</div>
<div class="section-3">
	<div class="container section_blogs section_blogs_2">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
				<h2 class="text-center"><a href="/chinh-sach-1" title="Be Classy"><strong>Be Classy</strong></a></h2>
				<div class="clearfix row">

					<div class="col-md-3 col-sm-6 col-xs-12 news-items">
						<a href="/madeinvietnam" title="SẢN XUẤT TẠI VIỆT NAM" class="clearfix">
							<div class="evo-article-image">

								<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/sa-n-xua-t.jpg?v=1691566611930" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/sa-n-xua-t.jpg?v=1691566611930" alt="SẢN XUẤT TẠI VIỆT NAM" class="img-responsive center-block">

							</div>
							<h3 class="line-clamp">SẢN XUẤT TẠI VIỆT NAM</h3>
							<p class="">

								Từ những nghệ nhân đóng giày dày dạn kinh nghiệm với&nbsp;mong muốn mang đến cho&nbsp;Quý Ông đôi giày mang Thương Hiệu Việt&nbsp;chất lượng tốt nhất.

							</p>
						</a>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 news-items">
						<a href="/phom-giay-danh-rieng-cho-quy-ong-viet" title="LAST GIÀY DÀNH RIÊNG CHO QUÝ ÔNG VIỆT" class="clearfix">
							<div class="evo-article-image">

								<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/last-gia-y.jpg?v=1691566667937" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/last-gia-y.jpg?v=1691566667937" alt="LAST GIÀY DÀNH RIÊNG CHO QUÝ ÔNG VIỆT" class="img-responsive center-block">

							</div>
							<h3 class="line-clamp">LAST GIÀY DÀNH RIÊNG CHO QUÝ ÔNG VIỆT</h3>
							<p class="">

								Với châm ngôn “Giày Tây dành cho Ta” - Be Classy thiết kế Phom (Last)&nbsp;giày phù hợp với phom chân chuẩn của Quý Ông Việt.

							</p>
						</a>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 news-items">
						<a href="/da-bo-that" title="VẬT TƯ NHẬP KHẨU" class="clearfix">
							<div class="evo-article-image">

								<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/va-t-t.jpg?v=1691566640127" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/va-t-t.jpg?v=1691566640127" alt="VẬT TƯ NHẬP KHẨU" class="img-responsive center-block">

							</div>
							<h3 class="line-clamp">VẬT TƯ NHẬP KHẨU</h3>
							<p class="">

								Giày được làm từ những mảng da bò Ý,&nbsp;chọn lọc kỹ càng để đảm bảo thành phẩm là một đôi giày chất lượng và lên màu giày chuẩn nhất.

							</p>
						</a>
					</div>

					<div class="col-md-3 col-sm-6 col-xs-12 news-items">
						<a href="/baohanh3nam" title="BẢO HÀNH 3 NĂM" class="clearfix">
							<div class="evo-article-image">

								<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/webcover1-04.jpg?v=1650382795633" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/articles/webcover1-04.jpg?v=1650382795633" alt="BẢO HÀNH 3 NĂM" class="img-responsive center-block">

							</div>
							<h3 class="line-clamp">BẢO HÀNH 3 NĂM</h3>
							<p class="">

								Chính sách Bảo Hành - Bảo Dưỡng miễn phí trong&nbsp;3 Năm, nhằm hỗ trợ quý&nbsp;khách hàng tốt nhất trong quá trình sử dụng giày.

							</p>
						</a>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
<div class="section-4">
	<div class="section_banner">
		<div class="container" style wi>
			<div class="row">

				<div class="col-sm-4 col-xs-12 evo-margin">
					<div class="evo-banner">
						<img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_1.jpg?1701093253480" data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_1.jpg?1701093253480" alt="DRESS SHOES" class="img-responsive center-block">
						<div class="evo-banner-content">
							<h3>DRESS SHOES</h3>
							<a href="/oxfords" title="Xem thêm">Xem thêm</a>
						</div>
					</div>
				</div>




				<div class="col-sm-4 col-xs-12 evo-margin">
					<div class="evo-banner">
						<img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_2.jpg?1701093253480" data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_2.jpg?1701093253480" alt="BELT" class="img-responsive center-block">
						<div class="evo-banner-content">
							<h3>BELT</h3>
							<a href="/belt-1" title="Xem thêm">Xem thêm</a>
						</div>
					</div>
				</div>

				<div class="col-sm-4 col-xs-12 evo-margin">
					<div class="evo-banner">
						<img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_3.jpg?1701093253480" data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/ant_index_banner_3.jpg?1701093253480" alt="WALLET" class="img-responsive center-block">
						<div class="evo-banner-content">
							<h3>WALLET</h3>
							<a href="/wallet" title="Xem thêm">Xem thêm</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
<div class="section-5">
	<div class="container">

		<div class="row">

			<div class="col-md-12">

				<div class="section_product section_product_best_sell clearfix">

					<div class="section-head clearfix text-center">

						<h2 class="title_blog">

							<a href="" title="OXFORD">

								<strong>OXFORD</strong>

							</a>

						</h2>

					</div>

					<div class="product-blocks clearfix">

						<div class="evo-owl-product owl-carousel not-dqowl clearfix owl-loaded owl-drag">

							<div class="owl-stage" style="width: 100%;">

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="" title="SIR CLASSIC OXFORD - OF34">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2434.jpg?v=1699335369040" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2434.jpg?v=1699335369040" class="product-card-image-front img-responsive center-block" alt="SIR CLASSIC OXFORD - OF34">

												</div>

											</a>

											<h4 class="product-single__series">OXFORD</h4>

											<h3 class="product-card__title">SIR CLASSIC OXFORD - OF34</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/lf08" title="MERLE LOAFERS - LF08">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2304.jpg?v=1698632377647" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2304.jpg?v=1698632377647" class="product-card-image-front img-responsive center-block" alt="MERLE LOAFERS - LF08">

												</div>

											</a>

											<h4 class="product-single__series">LOAFER</h4>

											<h3 class="product-card__title">MERLE LOAFERS - LF08</h3>

											<div class="product-price">

												<strong>1.650.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/of32" title="SAVILLE CAPTOE OXFORD - OF32">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9565.jpg?v=1693217659420" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9565.jpg?v=1693217659420" class="product-card-image-front img-responsive center-block" alt="SAVILLE CAPTOE OXFORD - OF32">

												</div>
											</a>

											<h4 class="product-single__series">OXFORD</h4>

											<h3 class="product-card__title">SAVILLE CAPTOE OXFORD - OF32</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/db07-1" title="SIR CLASSIC DERBY - DB07">
												<div class="product-card__image">
													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf3412.jpg?v=1701231499067" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf3412.jpg?v=1701231499067" class="product-card-image-front img-responsive center-block" alt="SIR CLASSIC DERBY - DB07">

												</div>
											</a>

											<h4 class="product-single__series">DERBY</h4>

											<h3 class="product-card__title">SIR CLASSIC DERBY - DB07</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>


							</div>

							<a href="san-pham-noi-bat" title="Xem tất cả NEW ARRIVALS" class="evo-button mobile-viewmore">Xem tất cả . <strong>NEW ARRIVALS</strong></a>

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>
</div>
<div class="section-6">
	<div class="container">

		<div class="row">

			<div class="col-md-12">

				<div class="section_product section_product_best_sell clearfix">

					<div class="section-head clearfix text-center">

						<h2 class="title_blog">

							<a href="" title="LOAFER">

								<strong>LOAFER</strong>

							</a>

						</h2>

					</div>

					<div class="product-blocks clearfix">

						<div class="evo-owl-product owl-carousel not-dqowl clearfix owl-loaded owl-drag">

							<div class="owl-stage" style="width: 100%;">

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="" title="SIR CLASSIC OXFORD - OF34">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2434.jpg?v=1699335369040" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2434.jpg?v=1699335369040" class="product-card-image-front img-responsive center-block" alt="SIR CLASSIC OXFORD - OF34">

												</div>

											</a>

											<h4 class="product-single__series">OXFORD</h4>

											<h3 class="product-card__title">SIR CLASSIC OXFORD - OF34</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/lf08" title="MERLE LOAFERS - LF08">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2304.jpg?v=1698632377647" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2304.jpg?v=1698632377647" class="product-card-image-front img-responsive center-block" alt="MERLE LOAFERS - LF08">

												</div>

											</a>

											<h4 class="product-single__series">LOAFER</h4>

											<h3 class="product-card__title">MERLE LOAFERS - LF08</h3>

											<div class="product-price">

												<strong>1.650.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/of32" title="SAVILLE CAPTOE OXFORD - OF32">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9565.jpg?v=1693217659420" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9565.jpg?v=1693217659420" class="product-card-image-front img-responsive center-block" alt="SAVILLE CAPTOE OXFORD - OF32">

												</div>
											</a>

											<h4 class="product-single__series">OXFORD</h4>

											<h3 class="product-card__title">SAVILLE CAPTOE OXFORD - OF32</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/db07-1" title="SIR CLASSIC DERBY - DB07">
												<div class="product-card__image">
													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf3412.jpg?v=1701231499067" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf3412.jpg?v=1701231499067" class="product-card-image-front img-responsive center-block" alt="SIR CLASSIC DERBY - DB07">

												</div>
											</a>

											<h4 class="product-single__series">DERBY</h4>

											<h3 class="product-card__title">SIR CLASSIC DERBY - DB07</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>


							</div>

							<a href="san-pham-noi-bat" title="Xem tất cả NEW ARRIVALS" class="evo-button mobile-viewmore">Xem tất cả . <strong>NEW ARRIVALS</strong></a>

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>
</div>
<div class="section-7">
	<div class="container">

		<div class="row">

			<div class="col-md-12">

				<div class="section_product section_product_best_sell clearfix">

					<div class="section-head clearfix text-center">

						<h2 class="title_blog">

							<a href="" title="DERBY">

								<strong>DERBY</strong>

							</a>

						</h2>

					</div>

					<div class="product-blocks clearfix">

						<div class="evo-owl-product owl-carousel not-dqowl clearfix owl-loaded owl-drag">

							<div class="owl-stage" style="width: 100%;">

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="" title="SIR CLASSIC OXFORD - OF34">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2434.jpg?v=1699335369040" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2434.jpg?v=1699335369040" class="product-card-image-front img-responsive center-block" alt="SIR CLASSIC OXFORD - OF34">

												</div>

											</a>

											<h4 class="product-single__series">OXFORD</h4>

											<h3 class="product-card__title">SIR CLASSIC OXFORD - OF34</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/lf08" title="MERLE LOAFERS - LF08">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2304.jpg?v=1698632377647" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2304.jpg?v=1698632377647" class="product-card-image-front img-responsive center-block" alt="MERLE LOAFERS - LF08">

												</div>

											</a>

											<h4 class="product-single__series">LOAFER</h4>

											<h3 class="product-card__title">MERLE LOAFERS - LF08</h3>

											<div class="product-price">

												<strong>1.650.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/of32" title="SAVILLE CAPTOE OXFORD - OF32">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9565.jpg?v=1693217659420" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9565.jpg?v=1693217659420" class="product-card-image-front img-responsive center-block" alt="SAVILLE CAPTOE OXFORD - OF32">

												</div>
											</a>

											<h4 class="product-single__series">OXFORD</h4>

											<h3 class="product-card__title">SAVILLE CAPTOE OXFORD - OF32</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/db07-1" title="SIR CLASSIC DERBY - DB07">
												<div class="product-card__image">
													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf3412.jpg?v=1701231499067" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf3412.jpg?v=1701231499067" class="product-card-image-front img-responsive center-block" alt="SIR CLASSIC DERBY - DB07">

												</div>
											</a>

											<h4 class="product-single__series">DERBY</h4>

											<h3 class="product-card__title">SIR CLASSIC DERBY - DB07</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>


							</div>

							<a href="san-pham-noi-bat" title="Xem tất cả NEW ARRIVALS" class="evo-button mobile-viewmore">Xem tất cả . <strong>NEW ARRIVALS</strong></a>

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>
</div>
<div class="section-8">
	<div class="container">

		<div class="row">

			<div class="col-md-12">

				<div class="section_product section_product_best_sell clearfix">

					<div class="section-head clearfix text-center">

						<h2 class="title_blog">

							<a href="" title="BELT - WALLET">

								<strong>BELT - WALLET</strong>

							</a>

						</h2>

					</div>

					<div class="product-blocks clearfix">

						<div class="evo-owl-product owl-carousel not-dqowl clearfix owl-loaded owl-drag">

							<div class="owl-stage" style="width: 100%;">

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="" title="SIR CLASSIC OXFORD - OF34">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2434.jpg?v=1699335369040" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2434.jpg?v=1699335369040" class="product-card-image-front img-responsive center-block" alt="SIR CLASSIC OXFORD - OF34">

												</div>

											</a>

											<h4 class="product-single__series">OXFORD</h4>

											<h3 class="product-card__title">SIR CLASSIC OXFORD - OF34</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/lf08" title="MERLE LOAFERS - LF08">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2304.jpg?v=1698632377647" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf2304.jpg?v=1698632377647" class="product-card-image-front img-responsive center-block" alt="MERLE LOAFERS - LF08">

												</div>

											</a>

											<h4 class="product-single__series">LOAFER</h4>

											<h3 class="product-card__title">MERLE LOAFERS - LF08</h3>

											<div class="product-price">

												<strong>1.650.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/of32" title="SAVILLE CAPTOE OXFORD - OF32">

												<div class="product-card__image">

													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9565.jpg?v=1693217659420" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf9565.jpg?v=1693217659420" class="product-card-image-front img-responsive center-block" alt="SAVILLE CAPTOE OXFORD - OF32">

												</div>
											</a>

											<h4 class="product-single__series">OXFORD</h4>

											<h3 class="product-card__title">SAVILLE CAPTOE OXFORD - OF32</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>

								<div class="owl-item active" style="width: 25%; padding-right: 10px;">

									<div class="product-card">
										<div class="product-card__inner">
											<a class="product-urls" href="/db07-1" title="SIR CLASSIC DERBY - DB07">
												<div class="product-card__image">
													<img src="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf3412.jpg?v=1701231499067" data-lazyload="//bizweb.dktcdn.net/thumb/large/100/292/624/products/dscf3412.jpg?v=1701231499067" class="product-card-image-front img-responsive center-block" alt="SIR CLASSIC DERBY - DB07">

												</div>
											</a>

											<h4 class="product-single__series">DERBY</h4>

											<h3 class="product-card__title">SIR CLASSIC DERBY - DB07</h3>

											<div class="product-price">

												<strong>1.750.000₫</strong>

											</div>
										</div>
									</div>

								</div>


							</div>

							<a href="san-pham-noi-bat" title="Xem tất cả NEW ARRIVALS" class="evo-button mobile-viewmore">Xem tất cả . <strong>NEW ARRIVALS</strong></a>

						</div>

					</div>

				</div>

			</div>

		</div>

	</div>
</div>
<footer class="footer bg-footer">
	<div class="site-footer">
		<div class="container">
			<div class="footer-inner padding-bottom-20">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="footer-widget footer-contact">
							<h3>
								<a href="/" class="logo-wrapper" title="Be Classy - Giày Da Nam, Giày Tây Nam Sang Trọng">
									<img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/logo.png?1702364761300" data-lazyload="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/logo.png?1702364761300" alt="Be Classy - Giày Da Nam, Giày Tây Nam Sang Trọng" class="img-responsive center-block">
								</a>
							</h3>
							<ul class="list-menu">

								<li><i class="fa fa-map-marker" aria-hidden="true"></i> 73 Lý Tự Trọng, Quận 1, Tp. HCM </li>
								<li><i class="fa fa-map-marker" aria-hidden="true"></i> 13 Nguyễn Thiện Thuật, Quận 3, TP. HCM</li>
								<li><i class="fa fa-map-marker" aria-hidden="true"></i> 210B Hồ Văn Huê, Quận Phú Nhuận, TP. HCM</li>
								<li><i class="fa fa-map-marker" aria-hidden="true"></i> 261 Phố Huế, Quận Hai Bà Trưng, Hà Nội</li>
								<li><i class="fa fa-map-marker" aria-hidden="true"></i> 371 Lê Duẩn, Quận Thanh Khê, Đà Nẵng</li>

								<li><i class="fa fa-phone" aria-hidden="true"></i> <a href="tel:0898515689" title="0898515689">0898 515 689</a></li>
								<li><i class="fa fa-envelope" aria-hidden="true"></i> <a href="mailto:hello@beclassy.vn" title="hello@beclassy.vn">hello@beclassy.vn</a></li>

							</ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="footer-widget had-click">
							<h3>Hướng dẫn <span class="Collapsible__Plus"></span></h3>
							<ul class="list-menu has-click">

								<li><a href="/huong-dan" title="Hướng dẫn mua hàng" rel="nofollow">Hướng dẫn mua hàng</a></li>

								<li><a href="/huong-dan" title="Giao nhận và thanh toán" rel="nofollow">Giao nhận và thanh toán</a></li>

								<li><a href="/huong-dan" title="Đổi trả và bảo hành" rel="nofollow">Đổi trả và bảo hành</a></li>

								<li><a href="/account/register" title="Đăng kí thành viên" rel="nofollow">Đăng kí thành viên</a></li>

								<li><a href="/apps/kiem-tra-don-hang" title="Tra cứu đơn hàng" rel="nofollow">Tra cứu đơn hàng</a></li>

							</ul>
						</div>
						<a href="http://online.gov.vn/Home/WebDetails/78189" target="blank"><img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/bct.png?1702364761300" style="max-width:70%"></a>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="footer-widget had-click">
							<h3>Chính sách <span class="Collapsible__Plus"></span></h3>
							<ul class="list-menu has-click">

								<li><a href="/services" title="Chăm sóc khách hàng" rel="nofollow">Chăm sóc khách hàng</a></li>

								<li><a href="/loyaltycard" title="Hệ thống tích điểm" rel="nofollow">Hệ thống tích điểm</a></li>

								<li><a href="/doihang" title="Chính sách đổi hàng" rel="nofollow">Chính sách đổi hàng</a></li>

								<li><a href="/baohanh" title="Chính sách bảo hành" rel="nofollow">Chính sách bảo hành</a></li>

								<li><a href="/thanhtoan" title="Chính sách thanh toán" rel="nofollow">Chính sách thanh toán</a></li>

								<li><a href="/hinh-thuc-van-chuyen" title="Chính sách vận chuyển" rel="nofollow">Chính sách vận chuyển</a></li>

							</ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="footer-widget footer-subcrible">
							<h3>Đăng ký nhận tin</h3>
							<p>Nhận thông tin sản phẩm mới nhất, tin khuyến mãi và nhiều hơn nữa.</p>



							<form action="#" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank" class="has-validation-callback">
								<input type="email" class="form-control" value="" placeholder="Email của bạn" name="EMAIL" id="mail">
								<button class="evo-button btn btn-default" name="subscribe" id="subscribe" type="submit">Đăng ký</button>
							</form>
							<div class="footer-payment">
								<ul class="list-menu clearfix">


								</ul>
							</div>
							<div class="footer-social">
								<ul>

									<li class="facebook">
										<a href="https://www.facebook.com/beclassy.vn/" target="_blank" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
									</li>


									<li class="instagram">
										<a href="https://www.instagram.com/beclassy.vn/" target="_blank" title="Instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a>
									</li>


									<li class="youtube">
										<a href="https://www.youtube.com/channel/UCyWNlEAruzS2IH2pztLrDMg" target="_blank" title="Youtube"><i class="fa fa-youtube" aria-hidden="true"></i></a>
									</li>


									<li class="zalo">
										<a href="//zalo.me/1516216379227086944" target="_blank" title="Zalo"><img src="//bizweb.dktcdn.net/100/292/624/themes/758446/assets/zalo_sharelogo_-1.png?1702364761300" style="max-width:40px;padding-bottom: 2px;"></a>
									</li>

								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="copyright clearfix">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center">
					<span>Copyright ©2021 BE CLASSY. Công ty TNHH Be Classy. Địa chỉ: 13 Nguyễn Thiện Thuật, Phường 2, Quận 3, TP.HCM.    Mã số thuế 0315272367 cấp ngày 18/09/2018 <span class="s480-f">|</span> Cung cấp bởi <a href="https://www.sapo.vn/?utm_campaign=cpn:site_khach_hang-plm:footer&amp;utm_source=site_khach_hang&amp;utm_medium=referral&amp;utm_content=fm:text_link-km:-sz:&amp;utm_term=&amp;campaign=site_khach_hang" title="Sapo" target="_blank" rel="nofollow">Sapo</a></span>

				</div>
			</div>

			<div class="back-to-top show" title="Lên đầu trang">Lên đầu trang <i class="fa fa-long-arrow-right" aria-hidden="true"></i></div>

		</div>
	</div>
</footer>

</body>
</html>