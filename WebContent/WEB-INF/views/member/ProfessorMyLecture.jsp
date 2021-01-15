<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProfessorMyLecture.jsp</title>
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp%>/assets/css/blog-post.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/assets/css/professorMyLecture.css">

<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


</head>
<body>
	<!-- 헤더 -->
	<div class="row">
		<div class="col-md-12"></div>
	</div>
	<!-- row -->

	<div class="container-fluid">

		<!-- 스터디 개설 문구 -->
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="boardName">
					<h1>강의 조회</h1>
					<hr />
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>

		<!-- 리스트 -->
		<div class="row">
			<div class="col-md-2"></div>

			<div class="col-md-8">

				<div id="search"
					style="width: 100%">
					<select name="area" id="area" class="form-control"
						style="width: 13%; display: inline;">
						<option value="name">강의명</option>
						<option value="code">강의코드</option>
					</select> <input type="text" class="form-control"
						style="width: 30%; display: inline;"> <input type="submit"
						value="검색" class="btn btn-primary" />
				</div>
				
				<br><br>
				
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>강의코드</th>
							<th>강의명</th>
							<th>강의상태</th>
							<th>시작일</th>
							<th>종료일</th>
							<th>강의삭제</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>강의코드</td>
							<td>강의명</td>
							<td>강의상태</td>
							<td>시작일</td>
							<td>종료일</td>
							<td>
								<button type="button" class="btn btn-danger">삭제</button>
							</td>
						</tr>
						<tr>
							<td>강의코드</td>
							<td>강의명</td>
							<td>강의상태</td>
							<td>시작일</td>
							<td>종료일</td>
							<td>
								<button type="button" class="btn btn-danger">삭제</button>
							</td>
						</tr>
						<tr>
							<td>강의코드</td>
							<td>강의명</td>
							<td>강의상태</td>
							<td>시작일</td>
							<td>종료일</td>
							<td>
								<button type="button" class="btn btn-danger">삭제</button>
							</td>
						</tr>
					</tbody>

				</table>

			</div>
			<!-- end .col-md-8 -->

			<div class="col-md-2"></div>
		</div>

	</div>
	<!-- end .container-fluid -->

	<!-- 푸터 -->
	<div class="row">
		<div class="col-md-12"></div>
	</div>

</body>
</html>