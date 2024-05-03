<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/*------------------------------------
  Social color
------------------------------------*/
.text-facebook, .hover-facebook-text:hover i, .hover-facebook a:hover i
	{
	color: #3b5998;
}

.bg-facebook, .btn-facebook {
	background-color: #3b5998;
	color: #fff;
}

.text-twitter, .hover-twitter-text:hover i, .hover-twitter a:hover i {
	color: #00aced;
}

.bg-twitter, .btn-twitter {
	background-color: #00aced;
	color: #fff;
}

.text-instagram, .hover-instagram-text:hover i, .hover-instagram a:hover i
	{
	color: #b300ad;
}

.bg-instagram, .btn-instagram {
	background-color: #b300ad;
	color: #fff;
}

.text-youtube, .hover-youtube-text:hover i, .hover-youtube a:hover i {
	color: #bd0000;
}

.bg-youtube, .btn-youtube {
	background-color: #bd0000;
	color: #fff;
}

.text-gplus, .hover-gplus-text:hover i, .hover-gplus a:hover i {
	color: #eb5e4c;
}

.bg-gplus, .btn-gplus {
	background-color: #eb5e4c;
	color: #fff;
}

.text-vimeo, .hover-vimeo-text:hover i, .hover-vimeo a:hover i {
	color: #35c6ea;
}

.bg-vimeo, .btn-vimeo {
	background-color: #35c6ea;
	color: #fff;
}

.text-envelope, .hover-envelope-text:hover i, .hover-envelope a:hover i
	{
	color: #faa33d;
}

.bg-envelope, .btn-envelope {
	background-color: #faa33d;
	color: #fff;
}

.text-linkedin, .hover-linkedin-text:hover i, .hover-linkedin a:hover i
	{
	color: #6697ff;
}

.bg-linkedin, .btn-linkedin {
	background-color: #6697ff;
	color: #fff;
}

.text-telegram, .hover-telegram-text:hover i, .hover-telegram a:hover i
	{
	color: #30a8dc;
}

.bg-telegram, .btn-telegram {
	background-color: #30a8dc;
	color: #fff;
}

.text-pinterest, .hover-pinterest-text:hover i, .hover-pinterest a:hover i
	{
	color: #bd081b;
}

.bg-pinterest, .btn-pinterest {
	background-color: #bd081b;
	color: #fff;
}

.black a {
	color: #000;
}

.post-content ul {
	color: #474b5f;
}

.white a {
	color: #fff;
}
/*------------------------------------
	Member area
------------------------------------*/
.sidebar-item.active, .sidebar-item:hover {
	background-color: #fff;
	border: 1px solid #e6e7e9;
	border-right: 0;
	margin-right: -1px;
}

.sidebar-menu {
	border-bottom: 1px solid #e6e7e9;
	border-top: 1px solid #e6e7e9;
	border-right: 1px solid #e6e7e9;
	padding-bottom: 1rem;
	padding-top: 1rem;
	background-color: #f4f4f4;
}

.sidebar-item {
	position: relative;
	display: block;
	padding: 0.75rem 1.25rem;
	margin-bottom: 0.5rem;
	border: 1px solid transparent;
}

.sidebar-item.active:hover {
	background-color: #fff;
}

.card .icon-big {
	font-size: 3rem;
}

.card .icon-big .notif {
	position: absolute;
	min-width: 25px;
	border-radius: 5rem;
	font-size: 1rem;
	background: #dc3545;
	color: #fff;
}

.card .numbers {
	text-align: right;
}

.card .numbers p {
	font-size: 1rem;
	margin: 0;
}

.card .footer {
	padding: 0;
	line-height: 30px;
}

.side-notif {
	padding-left: 7px;
	padding-right: 7px;
	font-size: 0.8rem;
	border-radius: 5rem;
	background-color: #dc3545;
	color: #fff;
}

.statistics li {
	padding: 0.25rem 0;
}

.member-item:hover .card {
	background-color: #f4f4f4;
}

.table-striped tbody tr:nth-of-type(odd) {
	background-color: #f4f4f4;
}

@media ( max-width : 767.98px) {
	.sidebar-item.active, .sidebar-item:hover {
		border-right: 1px solid #e6e7e9;
		margin-left: 0.25rem;
		margin-right: 0.25rem;
	}
}
</style>
</head>
<body>
	<%@ include file="../main/header.jsp"%>

	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<!--head-->
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
		integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
		crossorigin="anonymous">
	<c:forEach items="${map.ilist}" var="info">
		<section id="about-us" class="py-5">
			<div class="container">
				<div class="row">
					<!--left sidebar-->
					<div class="col-md-3 pr-md-4">
						<div class="sidebar-left">
							<!--sidebar menu-->
							<ul class="list-unstyled sidebar-menu pl-md-2 pr-md-0">
								<li><a
									class="sidebar-item active d-flex justify-content-between align-items-center"
									href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
										Dashboard <span class="fas fa-tachometer-alt"></span>
								</a></li>
								<li><a
									class="sidebar-item d-flex justify-content-between align-items-center"
									href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
										Profile <span class="fas fa-user"></span>
								</a></li>
								<li><a
									class="sidebar-item d-flex justify-content-between align-items-center"
									href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
										Post <span class="fas fa-copy"></span>
								</a></li>
								<li><a
									class="sidebar-item d-flex justify-content-between align-items-center"
									href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
										Comment <span class="side-notif" title="1 new comment">1</span>
										<span class="fas fa-comment"></span>
								</a></li>
								<li><a
									class="sidebar-item d-flex justify-content-between align-items-center"
									href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
										Messages <span class="side-notif" title="1 new messages">1</span>
										<span class="fas fa-envelope"></span>
								</a></li>
								<li><a
									class="sidebar-item d-flex justify-content-between align-items-center"
									href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
										Favorite <span class="fas fa-heart"></span>
								</a></li>
								<li><a
									class="sidebar-item d-flex justify-content-between align-items-center"
									href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
										Setting <span class="fas fa-cog"></span>
								</a></li>
								<li><a
									class="sidebar-item d-flex justify-content-between align-items-center"
									href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
										Sign out <span class="fas fa-sign-out-alt"></span>
								</a></li>
							</ul>
						</div>
					</div>

					<!--Content-->
					<div class="col-md-9">
						<div class="dashboard-area">
							<div class="row">
								<div class="col-12">
									<div class="mb-3 bg-dark">
										<div class="row">
											<div class="col-12">
												<a class="position-absolute ml-3 mt-3 text-white"
													href="setting.html" data-toggle="tooltip"
													data-placement="bottom" title=""
													data-original-title="Edit cover images"><i
													class="fas fa-cog"></i></a>
												<div class="row">
													<div class="col-md-6 ml-auto mr-auto">
														<div
															class="profiles p-3 my-4 rounded text-center shadow-sm">
															<div class="avatars">

																<a href="setting.html"> <img
																	src="/resources/images/${info.filename}"
																	alt="Circle Image"
																	class="avatar-lg rounded-circle img-fluid"
																	data-toggle="tooltip" data-placement="bottom" title=""
																	data-original-title="Edit avatar images">
																</a>
															</div>
															<div class="names">
																<h3 class="title text-light">${info.userid}</h3>
																<h3 class="title text-light">${info.name}</h3>
																<a href="#" class="btn btn-link btn-facebook"><i
																	class="fab fa-facebook"></i></a> <a href="#"
																	class="btn btn-link btn-twitter"><i
																	class="fab fa-twitter"></i></a> <a href="#"
																	class="btn btn-link btn-gplus"><i
																	class="fab fa-google-plus"></i></a> <a href="#"
																	class="btn btn-link btn-instagram"><i
																	class="fab fa-instagram"></i></a> <a href="#"
																	class="btn btn-link btn-youtube"><i
																	class="fab fa-youtube"></i></a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-12">
									<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
										<li class="nav-item"><a class="nav-link active show"
											id="pills-home-tab" data-toggle="pill" href="#pills-home"
											role="tab" aria-controls="pills-home" aria-selected="true">Statistic</a>
										</li>
										<li class="nav-item"><a class="nav-link"
											id="pills-profile-tab" data-toggle="pill"
											href="#pills-profile" role="tab"
											aria-controls="pills-profile" aria-selected="false">Profile</a></li>
										<li class="nav-item"><a class="nav-link"
											id="pills-contact-tab" data-toggle="pill"
											href="#pills-contact" role="tab"
											aria-controls="pills-contact" aria-selected="false">Latest
												post</a></li>
									</ul>
									<div class="tab-content" id="pills-tabContent">
										<div class="tab-pane fade active show" id="pills-home"
											role="tabpanel" aria-labelledby="pills-home-tab">
											<div class="row">
												<div class="col-lg-4 col-sm-6">
													<a class="member-item"
														href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
														<div class="card mb-2 mb-md-5 py-3">
															<div class="content">
																<div class="row">
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="icon-big text-warning text-center">
																			<i class="fas fa-copy"></i>
																		</div>
																	</div>
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="numbers">
																			<p>Article</p>
																			112
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-lg-4 col-sm-6">
													<a class="member-item"
														href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
														<div class="card mb-2 mb-md-5 py-3">
															<div class="content">
																<div class="row">
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="icon-big text-info text-center"
																			title="1 new comment">
																			<div class="notif">1</div>
																			<i class="fas fa-comment"></i>
																		</div>
																	</div>
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="numbers">
																			<p>Comments</p>
																			454
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-lg-4 col-sm-6">
													<a class="member-item"
														href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
														<div class="card mb-2 mb-md-5 py-3">
															<div class="content">
																<div class="row">
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="icon-big text-danger text-center">
																			<i class="fas fa-heart"></i>
																		</div>
																	</div>
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="numbers">
																			<p>Favorite</p>
																			56
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-lg-4 col-sm-6">
													<a class="member-item"
														href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
														<div class="card mb-2 mb-md-5 py-3">
															<div class="content">
																<div class="row">
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="icon-big text-twitter text-center"
																			title="1 new messages">
																			<div class="notif">1</div>
																			<i class="fas fa-envelope"></i>
																		</div>
																	</div>
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="numbers">
																			<p>Messages</p>
																			23
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-lg-4 col-sm-6">
													<a class="member-item"
														href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
														<div class="card mb-2 mb-md-5 py-3">
															<div class="content">
																<div class="row">
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="icon-big text-facebook text-center">
																			<i class="fas fa-star"></i>
																		</div>
																	</div>
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="numbers">
																			<p>Following</p>
																			112
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-lg-4 col-sm-6">
													<a class="member-item"
														href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">
														<div class="card mb-2 mb-md-5 py-3">
															<div class="content">
																<div class="row">
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="icon-big text-success text-center">
																			<i class="fas fa-users"></i>
																		</div>
																	</div>
																	<div
																		class="col-6 d-flex justify-content-center align-items-center">
																		<div class="numbers">
																			<p>Follower</p>
																			1567
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</a>
												</div>
											</div>
										</div>
										<div class="tab-pane fade" id="pills-profile" role="tabpanel"
											aria-labelledby="pills-profile-tab">
											<div class="p-3 border mb-3">
												<a class="position-absolute" style="right: 25px"
													href="setting.html" data-toggle="tooltip"
													data-placement="bottom" title=""
													data-original-title="Edit profile"><i
													class="fas fa-cog"></i></a>
												<h3>Jenifer Tan</h3>
												<p>
													<b>Jobs:</b> Writter
												</p>
												<p>
													<b>About:</b> Hello my name is Jenifer, My passion is
													writting. I hope you enjoy with my article.
												</p>
												<p>
													<b>Address:</b> Street 12 vo 05, California, United States
												</p>
												<p>
													<b>Phone:</b> +1 987654321
												</p>

											</div>
										</div>
										<div class="tab-pane fade" id="pills-contact" role="tabpanel"
											aria-labelledby="pills-contact-tab">
											<div class="p-3 border mb-3">
												<h5>Recently Published</h5>
												<div class="row">
													<div class="col-12">
														<ul class="list-unstyled statistics">
															<li><span class="text-primary">Oct 20</span> <a
																class="h6"
																href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">Toyota
																	Sienna rates marginal in passenger-side overlap crash
																	test</a></li>
															<li><span class="text-primary">Oct 12</span> <a
																class="h6"
																href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">Ford
																	reveals autonomous vehicle philosophies, priorities</a></li>
															<li><span class="text-primary">Oct 7</span> <a
																class="h6"
																href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">Offer
																	Hints to How Dogs Became Domesticated</a></li>
															<li><span class="text-primary">Oct 6</span> <a
																class="h6"
																href="https://bootstrap.news/bootstrap-4-template-news-portal-magazine/">Consumer
																	apprehension grows over autonomous tech, study says</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</c:forEach>
</body>
</html>