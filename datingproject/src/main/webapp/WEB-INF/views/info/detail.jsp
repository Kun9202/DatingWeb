<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet">
<link href="resources/css/detail.css" rel="stylesheet">
<link href="resources/css/star.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-3.7.1.min.js"></script>

<script>

	function review() {
		let form1 = $("#form1");

		var reviewContent = document.getElementById("reviewContent").value;

		var star = "";

		document.querySelectorAll('input[name="star"]').forEach(
				function(radioButton) {
					if (radioButton.checked) {
						// 선택된 라디오 버튼의 값을 변수에 할당합니다.
						star = radioButton.value;
						// 선택된 값이 확인되면 반복문을 종료합니다.
						return;
					}
				});

		console.log("선택된 값:", reviewContent);

		if (confirm("리뷰를 작성하시겠습니까?")) {

			if (star == "") {
				alert("별점을 등록해주세요.")
				return;

			}
			if (reviewContent.trim() == "") {
				alert("후기 내용을 입력해주세요")
				return;

			}

			form1.attr("action", "/review/reviewwrite.do");
			alert("작성 완료");
			form1.submit();
		}
	}
	
	function chat(userid, otherid) {
		if (confirm("1000point를 이용해 채팅을 시작하시겠습니까?")) {
		   
		var url = "/chat/createchatbox.do?userid=" + userid
				+ "&otherid=" + otherid;

	   
	    // 팝업 창 크기 설정
	    var popupWidth = 700;
	    var popupHeight = 800;

	    // 화면 가운데에 위치 계산
	    var left = (window.innerWidth - popupWidth) / 2;
	    var top = (window.innerHeight - popupHeight) / 2;

	    // 작은 팝업 창을 열기 위한 코드
	    window.open(url, '채팅', 'width=' + popupWidth + ',height=' + popupHeight + ',left=' + left + ',top=' + top);
	    }
	}
</script>

<style>
table {
	width: 100%; /* 테이블의 전체 너비를 사용하도록 설정 */
}

td:first-child, td:nth-child(2) {
	width: 50px; /* 원하는 길이로 조정 */
	white-space: nowrap; /* 긴 텍스트가 잘리지 않도록 설정 */
	overflow: hidden; /* 넘치는 텍스트는 숨김 처리 */
	text-overflow: ellipsis; /* 넘치는 텍스트는 ...으로 표시 */
}

/* 후기의 길이 늘리기 */
td:nth-child(3) {
	width: 300px; /* 원하는 길이로 조정 */
	white-space: normal; /* 텍스트가 줄 바꿈 될 수 있도록 설정 */
}

/*리뷰 테이블 리스트 style*/
th, td {
	padding: 8px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #f5f5f5;
}

/* star */
.star-star {
	display: flex;
	width: 100px;
	height: 100px;
}

.star {
	appearance: none;
	padding: 1px;
}

.star::after {
	content: '☆';
	color: hsl(60, 80%, 45%);
	font-size: 20px;
}

.star:hover::after, .star:has( ~ .star:hover)::after, .star:checked::after,
	.star:has( ~ .star:checked)::after {
	content: '★';
}

.star:hover ~ .star::after {
	content: '☆';
}

.stars1 {
	font-size: 15px; /* 별표의 크기 조정 */
}

.stars1>* {
	display: inline-block;
	margin-right: 3px; /* 각 별표 사이의 간격 조정 */
	color: gold; /* 별표의 색상 설정 */
}

.star-ratings {
	color: #aaa9a9;
	position: relative;
	unicode-bidi: bidi-override;
	width: max-content;
	-webkit-text-fill-color: transparent;
	-webkit-text-stroke-width: 1.3px;
	-webkit-text-stroke-color: #2b2a29;
}

.star-ratings-fill {
	color: #fff58c;
	padding: 0;
	position: absolute;
	z-index: 1;
	display: flex;
	top: 0;
	left: 0;
	overflow: hidden;
	-webkit-text-fill-color: gold;
}

.star-ratings-base {
	z-index: 0;
	padding: 0;
}
</style>
</head>
<body>




	<%@ include file="../main/header.jsp"%>


	<div class="main-content">
		<!-- Top navbar -->

		<!-- Header -->
		<div
			style="min-height: 800px; background-image: url('../resources/images/back.jpg'); background-size: cover; background-position: center top;">
			<!-- Mask -->
			<span></span>
			<!-- Header container -->
			<div class="container-fluid d-flex align-items-center">
				<div class="row">
					<div class="col-lg-7 col-md-10"></div>
				</div>
			</div>
		</div>
		<!-- Page content -->
		<div class="container-fluid mt--7"
			style="position: absolute; left: 1250px; top: 850px;">
			<div class="row">

				<div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
					<div class="card card-profile shadow ">
						<div class="row justify-content-center">
							<div class="col-lg-3 order-lg-2">
								<div class="card-profile-image ">
									<a href="#"> <img src="resources/images/${dto.filename}"
										class="rounded-circle">
									</a>
								</div>
							</div>
						</div>
						<div
							class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
							<div class="d-flex justify-content-between">
								<a onclick="chat('${sessionScope.userid}', '${dto.userid}')"
									class="btn btn-sm btn-info mr-4">채팅</a>
							</div>
						</div>
						<div class="card-body pt-0 pt-md-4">
							<div class="row">
								<div class="col">
									<div
										class="card-profile-stats d-flex justify-content-center mt-md-5">
										<div>
											<span class="heading">${follower}</span> <span
												class="description">팔로워</span>

										</div>
										<div>
											<span class="heading"> <!-- 평균 별점  -->

												<div class="star-ratings">
													<div class="star-ratings-fill space-x-2 text-lg">
														<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
													</div>
													<div class="star-ratings-base space-x-2 text-lg">
														<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
													</div>
													<a style="font-size: small;">${avgstar}/ 5점</a>
												</div>


											</span> <span class="description">평균 별점</span>
										</div>
										<div>
											<span class="heading">${reviewcount}</span> <span
												class="description">후기 수</span>
										</div>
									</div>
								</div>
							</div>
							<div class="text-center">
								<h3>
									${dto.name}<span class="font-weight-light">(${dto.age})</span>
								</h3>
								<div class="h5 font-weight-300">
									<i class="ni location_pin mr-2"></i>키: ${dto.height} <br>몸무게:
									${dto.weight}<br>학력:${dto.education}
								</div>

								<div class="h5 mt-4">
									<i class="ni business_briefcase-24 mr-2"></i>${dto.job}
								</div>
								<hr class="my-4">




								<!--  리뷰 위치   -->


								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>이름</th>
											<th>별점</th>
											<th>후기</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="row" items="${list}" varStatus="loop">
											<input type="hidden" value="${row.star}"
												id="star-${loop.index}">
											<script>
        function ratingToPercent${loop.index}(score) {
            return (score / 5) * 100;
        }

        $(document).ready(function() {
            let score = document.getElementById('star-${loop.index}').value;
            let percent = ratingToPercent${loop.index}(score);
            
            

            $('.star-ratings-fill${loop.index}').css('width', percent + '%');
        });
        
    	function ratingToPercent(score) {
    		return (score / 5) * 100;
    	}

    	$(document).ready(function() {
    		let score = ${avgstar}; // 서버에서 평균 점수를 가져온다고 가정합니다.
    		let percent = ratingToPercent(score);

    		$('.star-ratings-fill').css('width', percent + '%');
    	});
    	
    </script>
	<style>
.star-ratings-fill${loop.index}{
color:#fff58c;
padding:0;
position:absolute;
z-index:1;
display:flex;
top:0;
left:0;
overflow:hidden;
-webkit-text-fill-color:gold;
}
</style>
											<tr>
												<td>${row.userid}</td>
												<td>
													<div class="star-ratings">
														<div
															class="star-ratings-fill${loop.index} space-x-2 text-lg">
															<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
														</div>
														<div class="star-ratings-base space-x-2 text-lg">
															<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
														</div>
														<a style="font-size: small;">${row.star} / 5점</a>
													</div>
												</td>
												<td>${row.review}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>

							<br>
							<hr class="my-4">
							<br>




							<form id="form1" method="post">
								<input type="button" class="btn btn-sm btn-info mr-4"
									value="후기작성하기" onclick="review()"><br>
								<fieldset class="rate">
									<input type="radio" id="star10" name="star" value="5.0"><label
										for="star10" title="5점"></label> <input type="radio"
										id="star9" name="star" value="4.5"><label class="half"
										for="star9" title="4.5점"></label> <input type="radio"
										id="star8" name="star" value="4.0"><label for="star8"
										title="4점"></label> <input type="radio" id="star7" name="star"
										value="3.5"><label class="half" for="star7"
										title="3.5점"></label> <input type="radio" id="star6"
										name="star" value="3.0"><label for="star6" title="3점"></label>
									<input type="radio" id="star5" name="star" value="2.5"><label
										class="half" for="star5" title="2.5점"></label> <input
										type="radio" id="star4" name="star" value="2.0"><label
										for="star4" title="2점"></label> <input type="radio" id="star3"
										name="star" value="1.5"><label class="half"
										for="star3" title="1.5점"></label> <input type="radio"
										id="star2" name="star" value="1.0"><label for="star2"
										title="1점"></label> <input type="radio" id="star1" name="star"
										value="0.5"><label class="half" for="star1"
										title="0.5점"></label>

								</fieldset>
								<div>
									<textarea class="col-auto form-control" name="reviewContent"
										id="reviewContent" placeholder="자기 얼굴에 침뱉기 금지"></textarea>
								</div>
								<input type="hidden" name="userid"
									value="${sessionScope.userid }"> <input type="hidden"
									name="otherid" value="${dto.userid}">

							</form>

						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
	<div class="col-xl-8 order-xl-1">
		<br> <br> <br> <br> <br>
		<div>
			<div class="card-header bg-white border-0">
				<div class="row align-items-center">
					<div class="col-8">
						<h3 class="mb-0">${dto.name}프로필</h3>
					</div>



				</div>
			</div>


			<div class="card-body">


				<hr class="my-4">


				<h6 class="heading-small text-muted mb-4">나를 소개해요</h6>




				<div class="pl-lg-4">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group focused">
								<label class="form-control-label" for="input-address">스타일</label>
								<input id="input-address"
									class="form-control form-control-alternative"
									readonly="readonly" value="${dto.style}" type="text">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group focused">
								<label class="form-control-label" for="input-address">취미</label>
								<input id="input-address"
									class="form-control form-control-alternative"
									readonly="readonly" value="${dto.hobby}" type="text">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4">
							<div class="form-group focused">
								<label class="form-control-label" for="input-city">MBTI</label>
								<input type="text" id="input-city"
									class="form-control form-control-alternative"
									readonly="readonly" value="${dto.MBTI}">
							</div>
						</div>
						<div class="col-lg-4">
							<div class="form-group focused">
								<label class="form-control-label" for="input-country">종교</label>
								<input type="text" id="input-country"
									class="form-control form-control-alternative"
									readonly="readonly" value="${dto.religion}">
							</div>
						</div>
						<div class="col-lg-4">
							<div class="form-group">
								<label class="form-control-label" for="input-country">흡연</label>
								<c:choose>
									<c:when test="${dto.smoking == 1}">
										<input type="text" id="input-postal-code"
											class="form-control form-control-alternative"
											readonly="readonly" value="흡연">
									</c:when>
									<c:when test="${dto.smoking == 2}">
										<input type="text" id="input-postal-code"
											class="form-control form-control-alternative"
											readonly="readonly" value="비흡연">
									</c:when>
								</c:choose>


							</div>
						</div>
					</div>
				</div>
			</div>

			<hr class="my-4">





			<h6 class="heading-small text-muted mb-4">나의 사진 및 한마디</h6>

			<div class="pl-lg-4">

				<div class="form-group focused">
					<a>${dto.description}</a>
				</div>




			</div>
		</div>
		<hr class="my-4">
		<!-- Address -->

		<!-- 리뷰 평점 -->





	</div>


	<footer class="footer">
		<div class="row align-items-center justify-content-xl-between">
			<div class="col-xl-6 m-auto text-center">
				<div class="copyright">
					<p>
						Made with <a
							href="https://www.creative-tim.com/product/argon-dashboard"
							target="_blank">Argon Dashboard</a> by Creative Tim
					</p>
				</div>
			</div>
		</div>
	</footer>

</body>
</html>