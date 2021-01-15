<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<%@page import="java.util.Calendar"%>

<%
  // 오늘 날짜로 달력 취득
  Calendar currentCal = Calendar.getInstance();
  Calendar todayCheck_currentCal = Calendar.getInstance();

  // request 객체로 부터 넘어온 값이 있으면 처리
  if(request.getParameter("year") != null){
   currentCal.set(Calendar.YEAR, Integer.parseInt(request.getParameter("year")));
  }
  if(request.getParameter("month") != null){
   currentCal.set(Calendar.MONTH, Integer.parseInt(request.getParameter("month")));
  }
    
  // 날을 1일로 셋팅
  currentCal.set(Calendar.DATE, 1);
  
  // 1일의 '요일'을 취득
  int oneDayNum = currentCal.get(Calendar.DAY_OF_WEEK);
  // 현재달의 최대 일 수
  int monthMaxNum = currentCal.getActualMaximum(Calendar.DAY_OF_MONTH);
  // 현재달의 주 수
  int weekSize = currentCal.getActualMaximum(Calendar.WEEK_OF_MONTH);
  // 현재 '년'을 취득
  int year = currentCal.get(Calendar.YEAR);
  // 현재 '월'을 취득(0월 부터 11월 까지)
  int month = currentCal.get(Calendar.MONTH);
  // 현재 '일'을 취득
  int day = currentCal.get(Calendar.DATE);
  //int day = currentCal.get(Calendar.DAY_OF_MONTH);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LectureDateAdd.jsp</title>
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=cp%>/assets/css/blog-post.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/assets/css/studyCreate.css">

<script type="text/javascript"
	src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
function goCalendar(){
	  var form = document.calendarTextBoxForm;

	  if( (form.year.value == "") ) {
	   alert("'년'을 입력 주세요");
	   return;
	  }
	  if( form.year.value < 1970 ){
	   alert("1970년 1월 1일 이후로 검색해 주세요.");
	   return;
	  }
	  if( (form.month.value == "") ) {
	   alert("'월'을 입력 주세요");
	   return;
	  }
	  if( (form.month.value < 1) || form.month.value > 12) {
	   alert("'월'을 올바르게 입력 주세요");
	   return;
	  }
	  form.month.value = form.month.value - 1;
	  form.action="LectureDateAdd.jsp";
	  form.target = "_self";
	  form.submit();
	 }

	 function goMonth(month){
	  var form = document.calendarHiddenForm;

	  if( (<%=year%> <= 1970) && (month == -1) ){
	   alert("1970년 1월 1일 이후로 검색해 주세요.");
	   return;
	  }
	  if(month==-1){
	   form.year.value = <%=year-1%>;
	   form.month.value = 11;
	  }else if(month==12) {
	   form.year.value = <%=year+1%>;
	   form.month.value = 0;
	  }else{
	   form.year.value = <%=year%>;
	   form.month.value = month;
	  }

	  form.action="LectureDateAdd.jsp";
	  form.target = "_self";
	  form.submit();
	 }
</script>

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
				<h1>모임 날짜 등록</h1>
				<hr />
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>

<!-- 리스트 -->
<div class="row">
	<div class="col-md-2">
	</div>
	<div class="col-md-8">
	
	<div class="boardName">
		<h2>날짜를 선택하세요.</h2>
		<hr>
	</div>
	
	<div>
		<table border="0">
 <tr height="30">
  <td width="30" align="center"> <a href="javascript:goMonth(<%=month-1%>);">◀</a> </td>
  <td width="150" align="center"> <%=year %> 년 <%=month+1 %> 월 </td>
  <td width="30" align="center"> <a href="javascript:goMonth(<%=month+1%>);">▶</a></td>
 </tr> 
</table>


<table border="0" cellpadding="0" cellspacing="0">
 <tr height="30" bgcolor="#dcdcdc">
  <td width="30" align="center">일</td>
  <td width="30" align="center">월</td>
  <td width="30" align="center">화</td>
  <td width="30" align="center">수</td>
  <td width="30" align="center">목</td>
  <td width="30" align="center">금</td>
  <td width="30" align="center">토</td>
 </tr>
 
 <%

  //int dayNum = 1;
  boolean dayCheck = false;

  // 현재 달의 주 수만큰 반복
  for(int i=0; weekSize > i;i++){
   out.println("<tr height='25'>");
   
   // 일주일이 7일 이니 7번 반복
   for(int j=0; (7 > j); j++){
    out.println("<td align='center'>");
    
    // 현재 달의 1을의 요일에 해당하는 곳부터 출력하기위함
    if(oneDayNum == j+1 || dayCheck){
     // 현재 달의 최대 일수일경우
     if(monthMaxNum >= day ){
      /// 일요일의 경우 글자색 '빨강'
      if(currentCal.get(Calendar.DAY_OF_WEEK) == 1){
       // 일요일이면서 오늘일 경우 글자색은 '빨강', 글자 진하게 아니면 글자색만 '빨강'
       if(todayCheck_currentCal.equals(currentCal)){
        out.println("<font color='red'><b>" + day + "</b></font>");
       }else{
        out.println("<font color='red'>" + day + "</font>");
       }
       currentCal.set(Calendar.DATE, ++day);
       dayCheck = true;
      // 토요일의 경우 글자색 '파랑'
      }else if(currentCal.get(Calendar.DAY_OF_WEEK) == 7){
       // 토요일이면서 오늘일 경우 글자색은 '파랑', 글자 진하게 아니면 글자색만 '파랑'
       if(todayCheck_currentCal.equals(currentCal)){
        out.println("<font color='blue'><b>" + day + "</b></font>");
       }else{
        out.println("<font color='blue'>" + day + "</font>");
       }
       currentCal.set(Calendar.DATE, ++day);
       dayCheck = true;
      // 일요일도 아니고 토요일도 아니면 기본속성 글자출력 
      }else {
       //  일요일도 아니고 토요일도 아닌데 오늘이면 글자진하게
       if(todayCheck_currentCal.equals(currentCal)){
       out.println("<b>" + day + "</b>");
       }else{
        out.println(day);
       }
       currentCal.set(Calendar.DATE, ++day);
       dayCheck = true;
      }
       
     }else{
      out.println("&nbsp;");
     }
    }else{
     out.println("&nbsp;");
    }
    
    out.println("</td>");
    
   }
   out.println("</tr>");
  }

 %>
 
</table>

<!-- ◀ / ▶ 에 해당하는 폼 -->
<form name="calendarHiddenForm" method="post">
 <input type="hidden" name="year" value="" />
 <input type="hidden" name="month" value="" />
</form>

<!-- TextBox 에 해당하는 폼 -->
<form name="calendarTextBoxForm" method="post">
 <input type="text" name="year" size="5" value="" maxlength="4" /> 년
 <input type="text" name="month"size="3" value="" maxlength="2" /> 월
 <input type="button" onclick="javascript:goCalendar();" value="이동" />
</form>
	</div>
	
	
	<br><br>
	
	
	<div class="boardName">
		<h2>장소와 시간을 선택하세요.</h2>
		<hr>
	</div>
	
	
	
	<!-- 모임지역 -->
		<div class="areaMemNum">
			<h4>모임지역</h4>
			<select name="area" id="area" class="area form-control">
				<option value="0">지역</option>
				<option value="seoul">서울</option>
				<option value="incheon">인천</option>
			</select> <select name="spcArea" id="spcArea" class="spcArea form-control">
				<option value="0">상세 지역</option>
				<option value="mapogu">마포구</option>
				<option value="seogu">서구</option>
			</select>


			<div class="period">
				<h4>장소명</h4>
				<input type="text"
					class="keyInput form-control" id="keyInput"
					placeholder="ex) 직접 입력..." />
			</div>
			<!-- end . period -->

			<div class="period">
				<h4>주소</h4>
				<input type="text"
					class="keyInput form-control" id="keyInput"
					placeholder="ex) 직접 입력..." />
			</div>
			<!-- end . period -->

			<div class="meetTime">
				<h4>모임시간</h4>
			</div>
			<!-- end .weekTitle -->
			<div class="weekDay">
				<select name="week" id="week" class="weekSel form-control">
					<option>선택</option>
					<option value="moring">오전</option>
					<option value="afternoon">오후</option>
				</select> <select name="hour" id="hour" class="weekSel form-control">
					<option>선택</option>
					<option value="1">1시</option>
					<option value="2">2시</option>
					<option value="3">3시</option>
				</select> <select name="min" id="min" class="weekSel form-control">
					<option>선택</option>
					<option value="10">10분</option>
					<option value="20">20분</option>
					<option value="30">30분</option>
				</select> <input type="button" value="추가" class="weekBtn btn btn-primary" />

			</div>
		</div>
			<!-- end .weekDay -->
		<br><br>	
			<!-- end .col-md-8 -->
		<div class="col-md-4">
			<div class="button">
				<div class="upload">
					<input type="submit" value="모임날짜 등록하기" class="btn btn-primary" />
				</div>
				<!-- end .upload -->
			</div>
			<!-- end .button -->

		</div>
		
	</div>

</div>
<!-- end .container-fluid -->

<!-- 푸터 -->
<div class="row">
	<div class="col-md-12"></div>
</div>
</body>
</html>