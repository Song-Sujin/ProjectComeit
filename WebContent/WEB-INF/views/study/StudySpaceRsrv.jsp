<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap 4</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
p 
{
	margin: 20px 0px;
}
</style>
</head>
<body>

	<div class="col-12" style="position: absolute; left: 17%">
		<h2 class="card-title">모임장소 예약내역</h2>
		<div class="card">
			<img src="images/card-image.png" alt="" class="card-img-top" />
			<div class="card-body">
			
				<div class="row">
					<div class="col-md-12">
						<img src="<%=cp%>/assets/images/studycafe.jpg" style="width: 100%;">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-8">
							<h3 class="card-title">우리 스터디카페</h3>
							<img src="<%=cp%>/assets/images/resrv.PNG" style="width:150px; height:50px;">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span style="color:gray;, font-size:10pt;">
								#와이파이, #역가까움, #조용함
							</span>
							<hr>
							<h5>주소 : 경기 화성시 진안동 173</h5>
							<h5>예약일 : 2020/07/18</h5>
							<h5>예약시간 : 16시 ~ 18시 </h5>
							<h5>예약인원 : 5명</h5>
					</div>
					<div class="col-md-4">
						<img src="<%=cp%>/assets/images/map.PNG" style="width: 100%;">
					</div>
				</div>

			</div>
		</div>
		</div>

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>