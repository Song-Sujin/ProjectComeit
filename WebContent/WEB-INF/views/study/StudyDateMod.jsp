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
<title>StudyDateMod.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/bootstrap/bootstrap.min.css" >
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/studyDateAdd.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/assets//js/jquery-ui.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() 
	{
		$("#meetStuDate").datepicker(
		{
			dateFormat : "yy-mm-dd"
			, changeYear : true
			, changeMonth : true
		});	
		
		
	});
	
</script>


</head>
<body>

<div class="container-fluid">
	<!-- 회차 영역 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8 dateInfo">
		<h1>2020년 6월 7회차</h1>
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- 회차 영역 -->
	
	<!-- 박스 영역 -->
	<div class="row">
	<!-- 
		<div class="col-md-2">
		</div>
		<div class="col-md-8 box">
	 -->	
		<div class="col-md-12 box">
		
		
				<div class="blank">
				</div>	
				<div class="meetDate">
					<h3>날짜를 선택하세요<span class="ePoint">*</span></h3>
					<input type="text" id="meetStuDate" name="meetStuDate" placeholder="모임 날짜 선택" class="form-control meetDateInput"/>
				</div><!-- end .meetDate -->
					
				<div class="meetLoc">
					<h3>장소를 선택하세요<span class="ePoint">*</span></h3>
					
					
					
					<select name="" id="" class="form-control locSel">
						<option value="area1">서울</option>
						<option value="area2">경기</option>
						<option value="area3">인천</option>
					</select>
					<select name="" id="" class="form-control locSel2">
						<option value="deArea1">마포구</option>
						<option value="deArea2">일산동구</option>
						<option value="deArea3">서구</option>
					</select>
					<input type="text" class="form-control locInput" placeholder="상세 주소를 입력하는 영역입니다."/>
					
					
				</div><!-- end .meetLoc -->
				
				<div class="meetTime">
					<h3>시간을 선택하세요<span class="ePoint">*</span></h3>
					<select name="" id="" class="form-control timeSel1">
						<option value="am">오전</option>
						<option value="pm">오후</option>
					</select>
					<select name="" id="" class="form-control timeSel2">
						<option value="time1">1시</option>
						<option value="time2">2시</option>
						<option value="time3">3시</option>
					</select>
					<select name="" id="" class="form-control timeSel3">
						<option value="min1">10분</option>
						<option value="min2">20분</option>
						<option value="min3">30분</option>
					</select>
				</div><!-- end .meetTime -->
				<div class="blank">
				</div>	
		</div>
		<!-- <div class="col-md-2">
		</div> -->
	</div><!-- 박스 영역 -->
	
	<!-- 버튼 영역 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="errMsg">
				<span class="err">필수 입력 항목이 누락되었습니다.</span>
			</div>
			<div class="btnbox">
				<input type="submit" value="등록" class="nextBtn btn-lg btn-primary" id="nextBtn" />
				<input type="button" value="수정" class="canBtn btn-lg btn-secondary" id="canBtn" />
			</div>
		</div>
		<div class="col-md-2">
			
		</div>
	</div><!-- 버튼 영역 -->
</div><!-- end .container-fluid -->

</body>
</html>