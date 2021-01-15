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
<title>MemberMyProject.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/membermy.css" >
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/membermySPL.css" >
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/bootstrap/bootstrap.min.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid">
   <!-- 참여 프로젝트 내역 -->
   <div class="row">
      <div class="col-md-2">
      </div>
      <div class="col-md-8">
	      <div class="panel panel-default">
	         <div class="panel-heading head">
	            <h3 class="panel-title tit">참여 프로젝트 이력</h3>
	         </div>
	            <table class="table table-bordered">
	            <tr class="detail">
	               <th>프로젝트 코드</th>
	               <th>프로젝트명</th>
	               <th>시작일</th>
	               <th>종료일</th>
	               <th>진행상태</th>
	            </tr>
	            <tr class="detail">
	               <td>A0004</td>
	               <td>JAVA 키오스크기계만들기</td>
	               <td>2020-05-30</td>
	               <td>2020-06-30</td>
	               <td>진행중</td>
	            </tr>
	            <tr class="detail">
	               <td>A0003</td>
	               <td>JAVA 꽃집 키오스크</td>
	               <td>2020-04-01</td>
	               <td>2020-05-01</td>
	               <td>종료</td>
	            </tr>
	            <tr class="detail">
	               <td>A0003</td>
	               <td>웹만들기</td>
	               <td>2020-04-01</td>
	               <td>2020-05-01</td>
	               <td>종료</td>
	            </tr>
	            <tr class="detail">
	               <td>A0002</td>
	               <td>오라클 프로젝트</td>
	               <td>2020-02-02</td>
	               <td>2020-02-02</td>
	               <td>종료</td>
	            </tr>
	            <tr class="detail">
	               <td>A0001</td>
	               <td>C언어로 게임 만들기</td>
	               <td>2020-01-01</td>
	               <td>2020-02-01</td>
	               <td>종료</td>
	            </tr>
	            </table>
	      </div>
      </div>
      <div class="col-md-2">
      </div>
      </div><!-- end .row -->
      <!--페이징 처리 -->
      <div class="row">
	      <div class="col-md-2">
		  </div>
			<div class="col-md-8">
				<div class="paging"> 
					<ul class="pagination">
					<li class="page-item"><a href="#" class="page-link">Previous</a></li>
					<li class="page-item"><a href="#" class="page-link">1</a></li>
					<li class="page-item"><a href="#" class="page-link">2</a></li>
					<li class="page-item"><a href="#" class="page-link">3</a></li>
					<li class="page-item"><a href="#" class="page-link">4</a></li>
					<li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">6</a></li>
					<li class="page-item"><a href="#" class="page-link">7</a></li>
					<li class="page-item"><a href="#" class="page-link">8</a></li>
					<li class="page-item"><a href="#" class="page-link">9</a></li>
					<li class="page-item"><a href="#" class="page-link">10</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-2">
				
			</div>
		</div><!-- 페이징처리 끝 -->
</div>

</body>
</html>