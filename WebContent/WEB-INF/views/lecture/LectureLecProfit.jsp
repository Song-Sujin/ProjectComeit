<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LectureLecProfit.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/bootstrap.min.css" >
<link rel="stylesheet"  href="<%=cp %>/assets/css/blog-post.css" >
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/studyDateList.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container-fluid">

<!-- 월 / 년도 회차 선택 selectbox -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="boardName">
				<h1>강의 관리</h1>
				<hr />
			</div>
		</div><!-- end .col-md-8 -->
		<div class="col-md-2">
		</div>
	</div>
	
<!-- 선택 박스 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 box1">
			<div class="box2">
				<div class="time">
					<h3><a href="LectureLecStudent.jsp">수강생 조회</a></h3>
				</div><!-- end .time -->
				<div class="location">
					<h3><a href="LectureLecProfit.jsp">수익 관리</a></h3>
				</div><!-- end .location -->
			</div><!-- end .box2 -->
			<div class="box3">
				<div class="mem">
					<div class="memImg" >
						<img alt="Bootstrap Image Preview" src="assets/images/hjkim.PNG" class="rounded-circle profileImg" />
					</div>
					<div class="memName">
						<span class="name">김길동</span>
					</div>
					<div class="memAtten">
						<div class="answer1">
							환불 요청일 : 2020/06/22
						</div>
						<div class="answer2">
							<p style="color:blue;">- ￦ 300,000</p>
						</div>
						<div class="answer2">
							<p style="color:blue;">환불</p>
						</div>
					</div>
				</div><!-- end .mem -->
				<div class="mem">
					<div class="memImg">
						<img alt="Bootstrap Image Preview" src="assets/images/khjang.PNG" class="rounded-circle profileImg" />
					</div>
					<div class="memName">
						<span class="name">장길동</span>
					</div>
					<div class="memAtten">
						<div class="answer1">
							수강 신청일 : 2020/06/14
						</div>
						<div class="answer2">
							<p style="color:red;">+ ￦ 300,000</p>
						</div>
						<div class="answer2">
							<p style="color:red;">결제</p>
						</div>
					</div>
				</div><!-- end .mem -->
				<div class="mem">
					<div class="memImg">
						<img alt="Bootstrap Image Preview" src="assets/images/sjsong.PNG" class="rounded-circle profileImg" />
					</div>
					<div class="memName">
						<span class="name">송길동</span>
					</div>
					<div class="memAtten">
						<div class="answer1">
							수강 신청일 : 2020/06/14
						</div>
						<div class="answer2">
							<p style="color:red;">+ ￦ 300,000</p>
						</div>
						<div class="answer2">
							<p style="color:red;">결제</p>
						</div>
					</div>
				</div><!-- end .mem -->
				<div class="blank" style="float: right;">
					총 수익금 : ￦ 300,000
				</div>
			</div><!-- end .box3 -->
		</div><!-- end .col-md-8 box1-->
		<div class="col-md-2">
		</div>
	</div>
	
</div><!-- end .container-fluid -->

</body>
</html>