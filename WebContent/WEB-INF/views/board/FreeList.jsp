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
<title>StudyFileList.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/bootstrap.min.css" >
<link rel="stylesheet"  href="<%=cp %>/assets/css/blog-post.css" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/studyNoticeList.css">

<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=cp %>/assets/css/asklist_tab.css">
<script type="text/javascript">
        $(document).ready(function() {

            $(".tab_content").hide(); 
            $("ul.tabs li:first").addClass("active").show(); 
            $(".tab_content:first").show();

            $("ul.tabs li").click(function() 
            {

                $("ul.tabs li").removeClass("active"); 
                $("ul.tabs li").removeClass("on"); 
                $(this).addClass("active");
                $(this).addClass("on");
                $(".tab_content").hide();

                var activeTab = $(this).find("a").attr("href");
                $(activeTab).fadeIn(); 
                return false;
            });

        });
        
</script>
</head>
<body class="padding">
<div class="row">
	<div class="col-md-12">
	<c:import url="WEB-INF/views/header.jsp"></c:import>
	</div>
</div>
			
<div class="container-fluid">

	<div class="row searchRow">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
			<div class="col-md-2">
				<select name="search" id="search" class="form-control">
				<option value="title">제목</option>
				<option value="author">작성자</option>
				</select>
			</div>
			<div class="col-md-8">
				<input type="text" id="keyword" class="searchBox form-control" placeholder="검색어를 입력하세요."/>
			</div>
			<div class="col-md-2">
				<button type="button" class="search btn btn-dark">검색</button>
			</div>
			
			
		</div><!-- end .col-md-8 -->
		<div class="col-md-2">
		</div>
	</div><!-- end .row .searchRow -->
	
	<ul class="tabs tabsask">
        <li class="on"><a href="#tab1">Q&A</a></li>
        <li><a href="#tab2">정보공유</a></li>
        <li><a href="#tab3">코드공유</a></li>
    </ul>

    <!--탭 콘텐츠 영역 -->
    <div class="tab_container">

        <div id="tab1" class="tab_content">
            <!--Content-->
            <div class="row">
		<div class="col-md-2">
		</div>
		<div class="container">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>Q&A 게시물 입니다.</td>
						<td>신길동</td>
						<td>2020-07-02</td>
						<td>5</td>
					</tr>
					<tr>
						<td>2</td>
						<td>2020.07.03 Q&A 게시물 입니다.</td>
						<td>최길동</td>
						<td>2020-07-03</td>
						<td>5</td>
					</tr>
					<tr>
						<td>3</td>
						<td>2020.07.04 Q&A 게시물 입니다.</td>
						<td>장길동</td>
						<td>2020-07-04</td>
						<td>5</td>
					</tr>
					<tr>
						<td>4</td>
						<td>2020.07.05 Q&A 게시물 입니다.</td>
						<td>송길동</td>
						<td>2020-07-05</td>
						<td>5</td>
					</tr>
					<tr>
						<td>5</td>
						<td>2020.07.02 Q&A 게시물 입니다.</td>
						<td>김길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>6</td>
						<td>2020.07.02 Q&A 게시물 입니다.</td>
						<td>신길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>7</td>
						<td>2020.07.02 Q&A 게시물 입니다.</td>
						<td>장길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>8</td>
						<td>2020.07.02 Q&A 게시물 입니다.</td>
						<td>최길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>9</td>
						<td>2020.07.02 Q&A 게시물 입니다.</td>
						<td>김길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>10</td>
						<td>2020.07.02 Q&A 게시물 입니다.</td>
						<td>송길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
				</tbody>
		</table>
		
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- end .row -->
        </div>

        <div id="tab2" class="tab_content">
           <!--Content-->
          <div class="row">
		<div class="col-md-2">
		</div>
		<div class="container">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>정보공유 게시물 입니다.</td>
						<td>신길동</td>
						<td>2020-07-02</td>
						<td>5</td>
					</tr>
					<tr>
						<td>2</td>
						<td>2020.07.03 정보공유 게시물 입니다.</td>
						<td>최길동</td>
						<td>2020-07-03</td>
						<td>5</td>
					</tr>
					<tr>
						<td>3</td>
						<td>2020.07.04 정보공유 게시물 입니다.</td>
						<td>장길동</td>
						<td>2020-07-04</td>
						<td>5</td>
					</tr>
					<tr>
						<td>4</td>
						<td>2020.07.05 정보공유 게시물 입니다.</td>
						<td>송길동</td>
						<td>2020-07-05</td>
						<td>5</td>
					</tr>
					<tr>
						<td>5</td>
						<td>2020.07.02 정보공유 게시물 입니다.</td>
						<td>김길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>6</td>
						<td>2020.07.02 정보공유 게시물 입니다.</td>
						<td>신길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>7</td>
						<td>2020.07.02 정보공유 게시물 입니다.</td>
						<td>장길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>8</td>
						<td>2020.07.02 정보공유 게시물 입니다.</td>
						<td>최길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>9</td>
						<td>2020.07.02 정보공유 게시물 입니다.</td>
						<td>김길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>10</td>
						<td>2020.07.02 정보공유 게시물 입니다.</td>
						<td>송길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
				</tbody>
		</table>
		
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- end .row -->
        </div>
        <div id="tab3" class="tab_content">
           <!--Content-->
          <div class="row">
		<div class="col-md-2">
		</div>
		<div class="container">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>코드공유 게시물 입니다.</td>
						<td>신길동</td>
						<td>2020-07-02</td>
						<td>5</td>
					</tr>
					<tr>
						<td>2</td>
						<td>2020.07.03 코드공유 게시물 입니다.</td>
						<td>최길동</td>
						<td>2020-07-03</td>
						<td>5</td>
					</tr>
					<tr>
						<td>3</td>
						<td>2020.07.04 코드공유 게시물 입니다.</td>
						<td>장길동</td>
						<td>2020-07-04</td>
						<td>5</td>
					</tr>
					<tr>
						<td>4</td>
						<td>2020.07.05 코드공유 게시물 입니다.</td>
						<td>송길동</td>
						<td>2020-07-05</td>
						<td>5</td>
					</tr>
					<tr>
						<td>5</td>
						<td>2020.07.02 코드공유 게시물 입니다.</td>
						<td>김길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>6</td>
						<td>2020.07.02 코드공유 게시물 입니다.</td>
						<td>신길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>7</td>
						<td>2020.07.02 코드공유 게시물 입니다.</td>
						<td>장길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>8</td>
						<td>2020.07.02 코드공유 게시물 입니다.</td>
						<td>최길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>9</td>
						<td>2020.07.02 코드공유 게시물 입니다.</td>
						<td>김길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
					<tr>
						<td>10</td>
						<td>2020.07.02 코드공유 게시물 입니다.</td>
						<td>송길동</td>
						<td>2020-07-06</td>
						<td>5</td>
					</tr>
				</tbody>
		</table>
		
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- end .row -->
        </div>
    </div>
    
	
	<div class="row">
		<div class="col-md-2">
		</div>
		<div class="col-md-8">
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
				<button type="button" class="add btn btn-dark">등록</button>
			</div>
			
			
		</div>
		<div class="col-md-2">
		</div>
	</div><!-- end .row -->
</div><!-- end .container-fluid -->
<div class="row">
	<div class="col-md-12">
	<c:import url="WEB-INF/views/footer.jsp"></c:import>
	</div>
</div>
</body>
</html>