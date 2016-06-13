<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>가장 편리한 카풀 서비스, 풀파티!</title>
<style type="text/css">
#chartdiv {float:right; padding:auto; overflow:hidden; clear:both; margin-left:170px;}
#chartdiv2 {float:right; padding:auto; overflow: hidden; margin-left:170px;}
</style>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">	
<script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/pie.js"></script>

<!-- 그래프1 -->
<script type="text/javascript">
AmCharts.makeChart("chartdiv",
		
			{
				"type": "pie",
				"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
				"colors": [
					"#368AFF","#FF5AFF"
						],
				"titleField": "category",
				"valueField": "column-1",
				"allLabels": [],
				"balloon": {},
			    "legend": {
				"enabled": true,
				"align": "center",
				"color": "#1414CF",
				"markerType": "circle",
				"rollOverColor": "#0000FF"

				
			},
				"titles": [],
				
				"dataProvider": [
					{
						"category": "남성",
						"column-1": "${man}"
						
					},
					{
						"category": "여성",
						"column-1": "${woman}"
					}	
			]
	}
);
</script>

<!-- 그래프2 -->
<script type="text/javascript">
			AmCharts.makeChart("chartdiv2",
					{
						"type": "pie",
						"balloonText": "[[title]]<br><span style='font-size:14px'><b>[[value]]</b> ([[percents]]%)</span>",
						"titleField": "category",
						"valueField": "column-1",
						"theme": "light",
						"allLabels": [],
						"balloon": {},
						"colors": [
									"#495fba","#e8d685","#ae85c9","#c9f0e1","#d48652","#629b6d","#719dc3","#719dc3"
										],
						"legend": {
							"enabled": true,
							"align": "center",
							"markerType": "circle"
						},
						"titles": [],
						"dataProvider": [
							{
							"category": "서울특별시",
							"column-1": "${seoul}"
						},
						{
							"category": "인천광역시",
							"column-1": "${inchean}"
						},
						{
							"category": "부산광역시",
							"column-1": "${busan}"
						},
						{
							"category": "경기도",
							"column-1": "${gyeonggi}"
						},
						{
							"category": "기타",
							"column-1": "${etc}"
						}
						]
					}
				);
		</script>

<body>
<%@include file="../header.jsp" %>
<div style="width: 100%; ">
<div style="width: 20%; margin: 60px 0px 0px 0px">
<%@include file="../adHeader.jsp" %>
</div>
<div id="wrapper">
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header" style="margin-top: 20px;border-bottom: 5px solid #eeeeeee ;">
                            관리자 <small>페이지</small>
                        </h1>
                        <ol class="breadcrumb">
                            <li class="active">
                                <i class="fa fa-dashboard"></i> &nbsp;통계
                            </li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="alert alert-info alert-dismissable">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <i class="fa fa-info-circle"></i>  <strong>새로운 글이 올라왔어요.</strong>  
                              &nbsp;&nbsp;&nbsp;
                         	     확인해주세요 
                              &nbsp;&nbsp;&nbsp;
                              <a href="index.do" class="alert-link">

                           PoolParty</a> 
                        </div>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-users fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">${membercount }</div>
                                        <div>New 회원관리!</div>
                                    </div>
                                </div>
                            </div>
                            <a href="memberInfo.do">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-car fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">${poolcount }</div>
                                        <div>New 카풀</div>
                                    </div>
                                </div>
                            </div>
                            <a href="driverPoolList.do">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-credit-card-alt fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">${paylistcount }</div>
                                        <div>New 예약 및 결제!</div>
                                    </div>
                                </div>
                            </div>	
                            <a href="payMentList.do">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-pencil-square-o fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">${oneandonecount }</div>
                                        <div>new 게시물 관리</div>
                                    </div>
                                </div>
                            </div>
                            <a href="adminOneAndOne.do">
                                <div class="panel-footer">
                                    <span class="pull-left">View Details</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                 
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-bar-chart-o fa-fw"></i> 회원 통계</h3>
                            </div>
                            <div class="panel-body">
      </div>
    <div id="chartdiv" style="width: 40%; height: 400px; background-color: #FFFFFF;  display: inline-block; margin-left: 50px; "></div>
	<div id="chartdiv2" style="width: 40%; height: 400px; background-color: #FFFFFF;  display: inline-block;"></div>
<div class=""  style="margin: 0px auto; padding-left:292px;display: inline-block; width: 80%;">
                            </div>
                        </div>
               
                </div>
                <!-- /.row -->

                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-clock-o fa-fw"></i> 새로운 글</h3>
                            </div>
                            <div class="panel-body">
                                <div class="list-group">
                                    <a href="#" class="list-group-item">
                                        <span class="badge">1분전</span>
                                        ${noticesubject}
                                    </a>
                                      <a href="#" class="list-group-item">
                                       
                                        <span class="badge">3분전</span>
                                          [1:1문의]${oneandonesubject }
                                    </a>
                                    <a href="#" class="list-group-item">
                                     
                                        <span class="badge">5분전</span>
                                   [${pooltype }]${poolname }
                                      </a>
                                        <a href="#" class="list-group-item">
                                         
                                        <span class="badge">7분전</span>
                                      [${pooltype2 }]${poolname2 }
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">하루전</span>
                                       [이벤트]첫오픈 기념 이벤트가 진행됩니다.
                                    </a>
                                       <a href="#" class="list-group-item">
                                        <span class="badge">하루전</span>
                                     [이용안내]카풀 등록방법
                                    </a> 
                                    <a href="#" class="list-group-item">
                                        <span class="badge">하루전</span>
                                       [이용안내]카풀 이용방법입니다.
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">하루전</span>
                                     [Q&A]비밀번호변경은 어디서하나요?
                                    </a>
                                </div>
                                <div class="text-right">
                                    <a href="#">View All Activity <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> 결제 내역</h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped" style="margin:0px;">
                                        <thead>
                                            <tr>
                                                <th>결제번호</th>
                                                <th>결제시간</th>                                         
                                                <th>결제금액</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>${idx4 }</td>
                                                <td>${paydate }</td>
                                                <td>${paypay }원</td>
                                              
                                            </tr>
                                            <tr>
                                            
                                                <td>7</td>
                                                <td>2016-06-14 10:14:46.0</td>
                                                <td>4000원</td>
                                               
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>2016-06-13 17:24:06.0</td>
                                                <td>16000원</td>
                                               
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>2016-06-13 15:04:40.0</td>
                                                <td>13000원</td>
                                               
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>2016-06-12 20:24:12.0</td>
                                                <td>3000원</td>
                                               
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>2016-06-12 16:42:26.0</td>
                                                <td>5000원</td>
                                               
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>2016-06-11 17:14:11.0</td>
                                                <td>7000원</td>
                                                
                                            </tr>
                                            <tr>
                                                <td>1</td>
                                                <td>2016-06-11 10:14:46.0</td>
                                                <td>10000원</td>
                                               
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="text-right">
                                    <a href="#">View All Transactions <i class="fa fa-arrow-circle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>






</div>
</div>



</body>
</html>