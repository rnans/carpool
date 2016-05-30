<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="../css/mainLayout.css">
<script type="text/javascript" src="js/httpRequest.js"></script>
<script type="text/javascript">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/Chart.js/0.2.0/Chart.min.js"></script>
<script>
$(function() {
	var data = {
		    labels: ["총 주행거리", "총 지출금액", "총 주유비용", "총 정비비용", "총 물품구입비용"],
		    datasets: [
		        {
		            label: "My First dataset",
		            backgroundColor: "rgba(255,99,132,0.2)",
		            borderColor: "rgba(255,99,132,1)",
		            borderWidth: 1,
		            hoverBackgroundColor: "rgba(255,99,132,0.4)",
		            hoverBorderColor: "rgba(255,99,132,1)",
		            data: ['${costsum}','${kmsum}','${jooyusum}','${jungbisum}','${buysum}'],
		        }
		    ]
		};

    var options = {
        animation: false
    };

    var ctx = $('#myChart').get(0).getContext('2d');
    var myBarChart = new Chart(ctx).Bar(data, options);
});
</script>
</head>
<body>
<form action="">
<div>Date: 
<input type="text" name="startday" id="datepicker" value="시작일" maxlength="10" size="6">~
<input type="text" name="endday" id="datepicker2" value="종료일" maxlength="10" size="6"> 
<select name=type>
   <option>주유</option>
   <option>정비</option>
   <option>물품구입비용</option>
</select>
<input type="button" value="확인"><br>
</div>
<canvas id="myChart" width="800" height="400"></canvas>
</form>
<a href="graphTest.do">test</a>
</body>
 <script type="text/javascript">
$(function() {
    $( "#datepicker" ).datepicker();
  });
$("#jj").click(function(){
	
	var kk = $("#datepicker").val();
	
	alert(kk);
	
}); 

$(function() {
	$("#datepicker2").datepicker();
});


</script>

</html>