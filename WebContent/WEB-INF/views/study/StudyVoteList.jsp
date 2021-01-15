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
<title>StudyVoteList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/studyvotelist.css" >

<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/assets/js/bootstrap.min.js"></script>

</head>
<body>



<div class="container-fluid">
	<!-- 진행 중 투표 내역 -->
	<div class="row">
		<div class="col-md-12">
			<div class="voteIngTitle">
				<h1 class="title">진행 중인 투표 내역</h1>
				<hr>
			</div>
			<div class="voteIng">
				<div class="voteDate"><span class="glyphicon glyphicon-calendar icon" aria-hidden="true"></span><span>개설일:2020-06-20 / 종료 예정일 : 2020-06-27</span></div>
				<div class="voteMem"><span class="glyphicon glyphicon-bullhorn icon" aria-hidden="true"></span><span>사안 : 홍길동 스터디장 방출</span></div>
				<div class="voteRsn"><span>사유 : 스터디장의 역할을 제대로 하지 않음</span></div>
			</div>
			<div class="selectVote">
				<div class="myVote">
					<span class="glyphicon glyphicon-user icon" aria-hidden="true"></span><span class="myName">고길동</span>
					<span>
					<label class="radio-inline" class="rad"><input type="radio" name="voteResult" checked>동의</label>
					<label class="radio-inline" class="rad"><input type="radio" name="voteResult">비동의</label>
					</span>
					
				</div>
				<div class="changeBtn">
					<button type="button" class="btn btn-primary">변경</button>
				</div>
			</div>
		</div>
	</div><!-- 진행 중 투표 내역 끝 -->
	
	<!-- 1주일 이내 투표 내역 -->
	<div class="row">
		<div class="col-md-12">
			<div class="voteIngTitle">
				<h1 class="title">1주일 이내 투표 내역</h1>
				<hr>
			</div>
			<div class="voteIng">
				<div class="voteDate"><span class="glyphicon glyphicon-calendar icon" aria-hidden="true"></span><span>개설일:2020-06-20 / 종료 예정일 : 2020-06-27</span></div>
				<div class="voteMem"><span class="glyphicon glyphicon-bullhorn icon" aria-hidden="true"></span><span>사안 : 홍길동 스터디장 방출</span></div>
			</div>
			<div class="voteResult">
				<div>
					<span class="glyphicon glyphicon-user icon" aria-hidden="true"></span><span class="agree">동의 : 4</span>
					<span class="glyphicon glyphicon-user icon" aria-hidden="true"></span><span>비동의 : 0</span>
				</div>
				<div class="vRslt">
					결과 : 방출 완료
				</div>
			</div>
		</div>
	</div><!-- 1주일 이내 투표 내역 끝 -->
</div>



</body>
</html>