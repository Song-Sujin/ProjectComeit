<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>

<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="<%=cp %>/assets/css/spafeedback.css">
<script>
    $(document).ready(function() {
        $("#slider").slider({
            animate: true,
            value:0,
            min: 0,
            max: 10,
            step: 1,
            slide: function(event, ui) {
                update(1,ui.value); //changed
            }
        });

        $("#slider2").slider({
            animate: true,
            value:0,
            min: 0,
            max: 10,
            step: 1,
            slide: function(event, ui) {
                update(2,ui.value); //changed
            }
        });
        
        $("#slider3").slider({
            animate: true,
            value:0,
            min: 0,
            max: 10,
            step: 1,
            slide: function(event, ui) {
                update(3,ui.value); //changed
            }
        });
        
        $("#slider4").slider({
            animate: true,
            value:0,
            min: 0,
            max: 10,
            step: 1,
            slide: function(event, ui) {
                update(4,ui.value); //changed
            }
        });
        
        $("#slider5").slider({
            animate: true,
            value:0,
            min: 0,
            max: 10,
            step: 1,
            slide: function(event, ui) {
                update(5,ui.value); //changed
            }
        });
        

        //Added, set initial value.
        $("#spa1").val(0);
        $("#spa2").val(0);
        $("#spa3").val(0);
        $("#spa4").val(0);
        $("#spa5").val(0);
        $("#spa1-label").text(0);
        $("#spa2-label").text(0);
        $("#spa3-label").text(0);
        $("#spa4-label").text(0);
        $("#spa5-label").text(0);
        
        update();
    });

    function update(slider,val) {
      var $spa1 = slider == 1?val:$("#spa1").val();
      var $spa2 = slider == 2?val:$("#spa2").val();
      var $spa3 = slider == 3?val:$("#spa3").val();
      var $spa4 = slider == 4?val:$("#spa4").val();
      var $spa5 = slider == 5?val:$("#spa5").val();


       $( "#spa1" ).val($spa1);
       $( "#spa1-label" ).text($spa1);
       $( "#spa2" ).val($spa2);
       $( "#spa2-label" ).text($spa2);
       $( "#spa3" ).val($spa3);
       $( "#spa3-label" ).text($spa3);
       $( "#spa4" ).val($spa4);
       $( "#spa4-label" ).text($spa4);
       $( "#spa5" ).val($spa5);
       $( "#spa5-label" ).text($spa5);

       $('#slider a').html('<label><span class="glyphicon glyphicon-chevron-left"></span> '+$spa1+' <span class="glyphicon glyphicon-chevron-right"></span></label>');
       $('#slider2 a').html('<label><span class="glyphicon glyphicon-chevron-left"></span> '+$spa2+' <span class="glyphicon glyphicon-chevron-right"></span></label>');
       $('#slider3 a').html('<label><span class="glyphicon glyphicon-chevron-left"></span> '+$spa3+' <span class="glyphicon glyphicon-chevron-right"></span></label>');
       $('#slider4 a').html('<label><span class="glyphicon glyphicon-chevron-left"></span> '+$spa4+' <span class="glyphicon glyphicon-chevron-right"></span></label>');
       $('#slider5 a').html('<label><span class="glyphicon glyphicon-chevron-left"></span> '+$spa5+' <span class="glyphicon glyphicon-chevron-right"></span></label>');
    }        
</script>

</head>
<body>
<div class="container">
      
      <!-- START -->
      <div class="price-box">

        <form class="form-horizontal form-pricing" role="form">

          <div class="price-slider">
            <h4 class="great">시설</h4>
            <span>공간의 시설 만족도를 평가하세요!</span>
            <div class="col-sm-12">
             <div id="slider"></div>
            </div>
          </div>
          <div class="price-slider">
            <h4 class="great">친절</h4>
            <span>공간의 친절 만족도를 평가하세요!</span>
            <div class="col-sm-12">
             <div id="slider2"></div>
            </div>
          </div>
          <div class="price-slider">
            <h4 class="great">가격</h4>
            <span>공간의 가격 만족도를 평가하세요!</span>
            <div class="col-sm-12">
             <div id="slider3"></div>
            </div>
          </div>
          <div class="price-slider">
            <h4 class="great">위치</h4>
            <span>공간의 위치 만족도를 평가하세요!</span>
            <div class="col-sm-12">
             <div id="slider4"></div>
            </div>
          </div>
          <div class="price-slider">
            <h4 class="great">소음</h4>
            <span>공간의 소음 만족도를 평가하세요! 0(소음강함)~10(소음없음)</span>
            <div class="col-sm-12">
             <div id="slider5"></div>
            </div>
          </div>
          
          <div class="price-slider">
            <h4 class="great">상세후기</h4>
            <span>공간에 대한 상세 피드백 후기를 남겨주세요! (선택사항)</span>
			<div class="deev">
            	<textarea rows="5" cols="5"></textarea>
            </div>
          </div>
          
          <div class="price-form">

            <div class="form-group">
              <label for="spa1" class="col-sm-6 control-label">시설: </label>
              <span class="help-text">Choose your evaluation</span>
              <div class="col-sm-6">
                <input type="hidden" id="spa1" class="form-control">
                <p class="price lead" id="spa1-label"></p>
                <span class="price">점</span>
              </div>
            </div>
            <div class="form-group">
              <label for="spa2" class="col-sm-6 control-label">친절: </label>
              <span class="help-text">Choose your evaluation</span>
              <div class="col-sm-6">
                <input type="hidden" id="spa2" class="form-control">
                <p class="price lead" id="spa2-label"></p>
                <span class="price">점</span>
              </div>
            </div>
            <div class="form-group">
              <label for="spa3" class="col-sm-6 control-label">가격: </label>
              <span class="help-text">Choose your evaluation</span>
              <div class="col-sm-6">
                <input type="hidden" id="spa3" class="form-control">
                <p class="price lead" id="spa3-label"></p>
                <span class="price">점</span>
              </div>
            </div>
            <div class="form-group">
              <label for="spa4" class="col-sm-6 control-label">위치: </label>
              <span class="help-text">Choose your evaluation</span>
              <div class="col-sm-6">
                <input type="hidden" id="spa4" class="form-control">
                <p class="price lead" id="spa4-label"></p>
                <span class="price">점</span>
              </div>
            </div>
            <div class="form-group">
              <label for="spa5" class="col-sm-6 control-label">소음: </label>
              <span class="help-text">Choose your evaluation</span>
              <div class="col-sm-6">
                <input type="hidden" id="spa5" class="form-control">
                <p class="price lead" id="spa5-label"></p>
                <span class="price">점</span>
              </div>
            </div>
            
            

          </div>

          <div class="form-group">
            <div class="col-sm-12">
              <button type="submit" class="btn btn-primary btn-lg btn-block">등록하기 <span class="glyphicon glyphicon-chevron-right pull-right" style="padding-right: 10px;"></span></button>
            </div>
          </div>

        </form>

      </div>

    </div>
</body>
</html>