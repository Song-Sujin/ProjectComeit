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
<title>ProfessorProfileAdd.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/bootstrap.min.css" >
<link rel="stylesheet"  href="<%=cp %>/assets/css/blog-post.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/professorProfileAdd.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


</head>
<body>
<!-- 헤더 -->
<div class="row">
	<div class="col-md-12">
	</div>
</div><!-- row -->

<div class="container-fluid">

<!-- 스터디 개설 문구 -->	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="boardName">
				<h1>강사 프로필 등록</h1>
				<hr />
			</div>
		</div>
		<div class="col-md-2">
		</div>
	</div>
	
<!-- 리스트 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<!-- 스터디방 제목 -->
			<div class="stuTitle">
				<h4>프로필 이미지 등록<span class="ePoint">*</span></h4>
			</div>
			<div class="stuTitle">
				<div class="well" style="width: 30%; height: 300px;">
					이미지를 등록해 주세요.
				</div>
				<div class="form-group" style="width: 30%;">
					<label for="InputSubject1">이미지 첨부</label>
					<input id="fileInput" filestyle="" type="file" data-class-button="btn btn-default"
					data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload"
					class="form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);
					left: 50%">
						<div class="bootstrap-filestyle input-group">
							<input type="text" id="userFile" class="form-control" name="userFile" disabled="">
							<span class="group-span-filestyle input-group-btn" tabindex="0">
								<label for="fileInput" class="btn btn-default">
									<span class="glyphicon glyphicon-upload">
									</span>
								</label>
							</span> 
						</div>
				</div>
				
				<span class="titleErr">
					프로필 사진은 필수 입력항목입니다.
				</span>
			</div>
			<!-- 스터디방 상세 내용 -->
			<div class="stuContent form-inline">
				<h4>경력 및 이력사항<span class="ePoint">*</span></h4>
			</div>
			<div class="stuContent">
				<input type="text" class="scretBox form-control" id="scretNum" 
							placeholder="경력사항 입력" style="display: inline;">
				<input type="button" value="+" class="keyBtn btn btn-primary" >
				<span class="contentErr">
					경력 및 이력사항은 필수 입력항목입니다.
				</span>
			</div>
			<!-- 키워드 -->
			<div class="stuKeyword">
				<h4>강사 소개<span class="ePoint">*</span></h4>
			</div>
			
			<div class="professorIntro">
				<textarea  class="form-control">
				</textarea>
			</div>
			
			<div class="stuKeyword">
				<h4>입금 계좌<span class="ePoint">*</span></h4>
				<br>
				<select name="area" id="area" class="area form-control" style="width: 15%; display: inline;">
							<option value="0">지역</option>
							<option value="seoul">서울</option>
							<option value="incheon">인천</option>
				</select>
				<input type="text" class="scretBox form-control" id="scretNum" 
							placeholder="계좌번호 입력" style="display: inline;">
			</div>
			
			<br><br>
			
			<div class="button">
					<div class="upload">
						<input type="submit" value="등록" class="btn btn-primary"/>
					</div><!-- end .upload -->
					<div class="cancel">
						<input type="button" value="취소" class="btn btn-default"/>
					</div><!-- end .cancel -->
				</div><!-- end .button -->
			
		</div> <!-- end .col-md-8 -->
		<div class="col-md-2">
		</div>
	</div>
	
</div><!-- end .container-fluid -->

<!-- 푸터 -->
<div class="row">
	<div class="col-md-12">
	</div>
</div>

</body>
</html>