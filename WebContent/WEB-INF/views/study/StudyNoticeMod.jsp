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
<title>StudyNoticeMod.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/studynoticemod.css" >

<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/assets/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container-fluid">

	<!-- 상세내용 영역 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<table class="table detail">
				<tr>
					<th>제목 *</th>
					<td colspan="4">
					<input type="text" class="form-control ntcTitle" id="ntcTitle" value="기존 등록되어 있던 게시글 제목이 노출되는 영역입니다.">
					</td>
				</tr>
				<tr class="tit">
					<th>작성자</th>
					<td>홍길동</td>
					<th>작성일</th>
					<td>2020-06-18</td>
				</tr>
				<tr class="content">
					<th>내용 *</th>
					<td colspan="4">
					<textarea class="form-control ntcContent" rows="20">기존 등록되어 있던 게시글 내용이 노출되는 영역입니다.</textarea>
					</td>
				</tr>
			</table>
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- 상세내용 영역 끝 -->
	
	<!-- 버튼 영역 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		
			<div class="bottom">
				<div class="errMsg">
					필수 입력항목이 누락되었습니다.
				</div>
				
				<button type="button" class="btn btn-primary btn-lg btm">
					수정
				</button>
				<button type="button" class="btn btn-lg btm">
					리셋
				</button>
				<button type="button" class="btn btn-lg btm cancel">
					취소
				</button>
			
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- 버튼 영역 끝-->
	
	
</div>

</body>
</html>