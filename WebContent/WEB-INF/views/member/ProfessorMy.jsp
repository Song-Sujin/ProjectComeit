<!-- 모달 팝업은 상황에 맞게 수정해야함 -->
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
<title>ProfessorMy.jsp</title>

<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/membermy.css" >

<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/assets/js/bootstrap.min.js"></script>

</head>
<body>

<div class="container-fluid">

	<!-- 내 정보 -->
	<div class="row row">
		<div class="col-md-2">
		</div>
		<div class="col-md-3 img">
		<img class="img-fluid img-square myimg" src="assets/images/IU.jpg" alt="myimg">
		</div>
		<div class="col-md-5">
			<table class="table myInfo">
				<tr>
					<th>이름</th>
					<td>아이유</td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>ji-eun-lee</td>
				</tr>
				<tr>
					<th>한 줄 소개</th>
					<td>등록된 한 줄 소개가 노출되는 영역입니다.</td>
				</tr>
				<tr>
					<th>매너 연필</th>
					<td>55cm</td>
				</tr>
				<tr>
					<th>신분</th>
					<td>취업준비생</td>
				</tr>
				<tr>
					<th>관심과목</th>
					<td>
					<ul class="list-my-tags">
						<li class="stack-item">Java</li>
						<li class="stack-item">Oracle</li>
						<li class="stack-item">JavaScript</li>
						<li class="stack-item">HTML</li>
					</ul>
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>hgd@naver.com</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>010-2222-3333</td>
				</tr>
				<tr>
					<th>지역</th>
					<td>서울시 마포구</td>
				</tr>
				<tr>
					<th>페널티</th>
					<td>정지 1회, 옐로카드 1개</td>
				</tr>
			</table>
			
			<div class="myModi">
				<button type="button" class="btn btn-primary myModiBtn">프로필 수정</button>
			</div>
			
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- 내 정보 끝 -->
	
	
	<!-- 강의 조회 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		<div class="panel panel-default">
			<div class="panel-heading head">
				<h3 class="panel-title tit">강의 조회 ></h3>
			</div>
				<table class="table table-bordered">
				<tr class="myPro">
					<th>강의 코드</th>
					<th>진행 상태</th>
					<th>강의 명</th>
					<th>삭제</th>
				</tr>
				<tr class="detail">
					<td>A0001</td>
					<td>강의진행중</td>
					<td class="deTit">첫 번째 강의 제목이 노출되는 영역입니다.</td>
					<td>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
						강의삭제
					</button>
					
					<!-- 모달 -->
					<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					      <div class="modal-header head">
					        <h5 class="modal-title mTit" id="staticBackdropLabel">환불신청 사유</h5>
					        <button type="button" class="close xBtn" data-dismiss="modal" aria-label="Close">
					        X
					        </button>
					      </div>
					      <div class="modal-body mbody">
					      	<div class="rsnTit">사유 입력</div>
					      	<input type="text" class="form-control content">
					      	<div class="rsnTit">환불 계좌 입력</div>
					      	
					      	<table class="table">
					      		<tr>
					      			<td>
					      			<select name="bank" class="form-control">
							      		<option value="신한은행">신한은행</option>
							      		<option value="국민은행">국민은행</option>
							      		<option value="우리은행">우리은행</option>
							      	</select>
					      			</td>
					      			<td>
					      				<input type="text" class="form-control">
					      			</td>
					      		</tr>
					      	</table>
					      	
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-primary">확인</button>
					      </div>
					    </div>
					  </div>
					</div><!-- 모달 끝  -->
					
					</td>
				</tr>
				<tr class="detail">
					<td>A0001</td>
					<td>강의진행중</td>
					<td class="deTit">두 번째 강의 제목이 노출되는 영역입니다.</td>
					<td>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
						강의삭제
					</button>
					
					<!-- 모달 -->
					<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog modal-dialog-centered">
					    <div class="modal-content">
					      <div class="modal-header head">
					        <h5 class="modal-title mTit" id="staticBackdropLabel">환불신청 사유</h5>
					        <button type="button" class="close xBtn" data-dismiss="modal" aria-label="Close">
					        X
					        </button>
					      </div>
					      <div class="modal-body mbody">
					      	<div class="rsnTit">사유 입력</div>
					      	<input type="text" class="form-control content">
					      	<div class="rsnTit">환불 계좌 입력</div>
					      	
					      	<table class="table bankSel">
					      		<tr>
					      			<td>
					      			<select name="bank" class="form-control">
							      		<option value="신한은행">신한은행</option>
							      		<option value="국민은행">국민은행</option>
							      		<option value="우리은행">우리은행</option>
							      	</select>
					      			</td>
					      			<td>
					      				<input type="text" class="form-control">
					      			</td>
					      		</tr>
					      	</table>
					      	
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-primary">확인</button>
					      </div>
					    </div>
					  </div>
					</div><!-- 모달 끝  -->
					</td>
				</tr>
				<tr class="detail">
					<td>A0001</td>
					<td>강의진행중</td>
					<td class="deTit">세 번째 강의 제목이 노출되는 영역입니다.</td>
					<td>
					<button class="btn">강의삭제</button>
					</td>
				</tr>
				</table>
		</div>
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- 수강 내역 끝 -->
	
	<!-- 수익 조회 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		<div class="panel panel-default">
			<div class="panel-heading head">
				<h3 class="panel-title tit">수익 조회 ></h3>
			</div>
				<table class="table table-bordered">
				<tr class="myPro">
					<th>강의 코드</th>
					<th>강의 명</th>
					<th>강의기간</th>
					<th>정산금액</th>
					<th>정산유형</th>
				</tr>
				<tr class="detail">
					<td>A0004</td>
					<td>JAVA배우기</td>
					<td>2020-05-30 ~ 2020-06-30</td>
					<td>170,000</td>
					<td style="color:blue;">미정산</td>
				</tr>
				<tr class="detail">
					<td>A0003</td>
					<td>웹만들기</td>
					<td>2020-04-01 ~ 2020-05-01</td>
					<td>250,000</td>
					<td style="color:red;">정산</td>
				</tr>
				<tr class="detail">
					<td>A0003</td>
					<td>웹만들기</td>
					<td>2020-04-01 ~ 2020-05-01</td>
					<td>250,000</td>
					<td style="color:red;">정산</td>
				</tr>
				<tr class="detail">
					<td>A0002</td>
					<td>오라클 배우기</td>
					<td>2020-02-02 ~ 2020-02-02</td>
					<td>120,000</td>
					<td style="color:blue;">미정산</td>
				</tr>
				<tr class="detail">
					<td>A0001</td>
					<td>C언어로 게임 만들기</td>
					<td>2020-01-01 ~ 2020-02-01</td>
					<td>100,000</td>
					<td style="color:blue;">미정산</td>
				</tr>
				</table>
		</div>
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- 결제 내역 끝 -->
	
	<!-- 공간 예약 내역 -->
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
		<div class="panel panel-default">
			<div class="panel-heading head">
				<h3 class="panel-title tit">공간 예약내역 ></h3>
			</div>
				<table class="table table-bordered">
				<tr class="myPro">
					<th>예약코드</th>
					<th>공간 명</th>
					<th>강의/스터디/프로젝트 명</th>
					<th>예약 요청일</th>
					<th>이용 일시</th>
					<th>예약 인원</th>
					<th>예약 상태</th>
					<th>예약 취소</th>
				</tr>
				<tr class="detail">
					<td>LR001</td>
					<td>업체명이 입력되는 공간입니다.</td>
					<td>강의/스터디명</td>
					<td>2020-07-01</td>
					<td>2020-07-06 18:00</td>
					<td>5명</td>
					<td>예약완료</td>
					<td>
					<button class="btn btn-primary">예약 취소</button>
					</td>
				</tr>
				<tr class="detail">
					<td>LR002</td>
					<td>업체명이 입력되는 공간입니다.</td>
					<td>강의/스터디명</td>
					<td>2020-04-01</td>
					<td>2020-04-06 18:00</td>
					<td>5명</td>
					<td>예약완료</td>
					<td>
					<button class="btn btn-primary">예약 취소</button>
					</td>
				</tr>
				<tr class="detail">
					<td>LS001</td>
					<td>업체명이 입력되는 공간입니다.</td>
					<td>강의/스터디명</td>
					<td>2020-03-01</td>
					<td>2020-03-06 18:00</td>
					<td>5명</td>
					<td>예약 거부</td>
					<td>
					<button class="btn">예약 취소</button>
					</td>
				</tr>
				<tr class="detail">
					<td>LP001</td>
					<td>업체명이 입력되는 공간입니다.</td>
					<td>강의/스터디명</td>
					<td>2020-02-01</td>
					<td>2020-02-06 18:00</td>
					<td>5명</td>
					<td>이용 완료</td>
					<td>
					<button class="btn">예약 취소</button>
					</td>
				</tr>
				<tr class="detail">
					<td>LP002</td>
					<td>업체명이 입력되는 공간입니다.</td>
					<td>강의/스터디명</td>
					<td>2020-01-01</td>
					<td>2020-01-06 18:00</td>
					<td>5명</td>
					<td>이용 완료</td>
					<td>
					<button class="btn">예약 취소</button>
					</td>
				</tr>
				</table>
		</div>
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- 공간 예약 내역 끝 -->
	
	
	
</div>

</body>
</html>