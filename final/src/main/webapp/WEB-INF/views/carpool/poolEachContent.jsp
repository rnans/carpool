<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
<style>
#categorySearch
{
	height:200px;
}
</style>
<meta charset="UTF-8">
<title>카풀 상세 보기</title>
<script src="/final02/js/httpRequest.js"></script>
<script>
function rateReq()
{
	selEl=document.getElementById('rate');
	
	var rate;
	
	conEl=document.getElementById('content');
	
	var content=conEl.value;
	
	for(var i=0;i<selEl.options.length;i++)
	{
		if(selEl.options[i].selected)
		{
			rate=selEl.options[i].value;
		}
	}
	
	var url='rateWrite.do';
	params='aimid='+'${dto.userid}'
			+'&rate='+rate+'&content='+content;
	
	sendRequest(url,params,showResult,'GET')
	
	function showResult(){
		   if(XHR.readyState==4){
		      if(XHR.status==200){
		         var msg = XHR.responseText;
		         
		         
		         window.alert(msg);
		         location.reload();
		      }
		   }
		}
}

function rateEditReq()
{
	selEl=document.getElementById('rate2');
	
	var rate;
	
	conEl=document.getElementById('content2');
	
	var content=conEl.value;
	
	for(var i=0;i<selEl.options.length;i++)
	{
		if(selEl.options[i].selected)
		{
			rate=selEl.options[i].value;
		}
	}
	
	var url='rateEdit.do';
	params='idx='+document.getElementById('rateIdx').value
			+'&rate='+rate+'&content='+content;
	
	sendRequest(url,params,showResult,'GET')
	
	function showResult(){
		   if(XHR.readyState==4){
		      if(XHR.status==200){
		         var msg = XHR.responseText;
		         
		         
		         window.alert(msg);
		         location.reload();
		      }
		   }
		}
}

function showEdit()
{
	var param='?idx='+document.getElementById('idx').value;
	
	location.href='poolEditForm.do'+param;
}
function runDel()
{
	var param='?idx='+document.getElementById('idx').value;
	
	location.href='poolDel.do'+param;
}
var userid=null;
function message(){

	var param="?userid="+userid;
	window.open('messageSend.do'+param,'messagesend','width=480 height=320');
}
function request()
{
	var poolType='${dto.pooltype}';
	var param='';
	
	window.alert(poolType);
	
	if(poolType=='타세요')
	{
		var param='?idx='+document.getElementById('idx').value;
		window.open('reqToMasterPage.do'+param,'reqListPopup','width=480 height=320');
	}	
	else if(poolType=='탈래요')
	{
		var param='?idx='+document.getElementById('idx').value+'&memberid='+'${sessionScope.sid}';
		window.open('reqToMemberPage.do'+param,'reqListPopup2','width=480 height=320');
	}

	
}

function delRate(idx)
{
	var url='rateDel.do';
	params='idx='+idx

	sendRequest(url,params,showResult,'GET')
	
	function showResult(){
		   if(XHR.readyState==4){
		      if(XHR.status==200){
		         var msg = XHR.responseText;
		         
		         
		         window.alert(msg);
		         location.reload();
		      }
		   }
		}
}

function modiRate(idx)
{
	var tBodyEl=document.getElementById('tB');
	
	var trEl=document.getElementById('tr'+idx);
	trEl.style.display="none";
	
	var newTrEl=document.createElement('tr');
	
	newTrEl.innerHTML='<form name="reply" action="rateEdit.do">'
	+'<input type="hidden" id="rateIdx" name="idx" value="'+idx+'">'
	+'<input type="hidden" name="aimid" value="${dto.userid}">'
	+'<select id="rate2" name="rate">'
	+'<option value="1">1</option>'
	+'<option value="2">2</option>'
	+'<option value="3">3</option>'
	+'<option value="4">4</option>'
	+'<option value="5">5</option>'
	+'</select>'
	+'<textarea id="content2" name="content">'
	+'${rDtos[idx].content}'
	+'</textarea>'
	+'<input type="button" onclick="rateEditReq();" value="수정완료">'
	+'</form>';
	
	tBodyEl.insertBefore(newTrEl,trEl);
}

</script>
</head>
<body onload="initTmap()">
<%@ include file="../header.jsp" %>
<section>
<article>
<div id="profile">유저 프로필 영역</div>
</article>
<article>
<div id="viewContent">
<h1>(타세요 / 태워주세요 태그) 카폴 상세 보기</h1>
<input type="hidden" id="idx" name="idx" value="${dto.idx}">
<div>프로필 사진 영역</div>
<div>진행 상태 ${dto.status}</div>
<div>출발지 ${dto.startspot }</div>
<div>경유지 ${dto.route }</div>
<div>도착지 ${dto.endspot }</div>
<div>출발 일시 ${dto.starttime }</div>
<c:if test="${dto.termtype eq '정기' }">
<div>종료 일시 ${dto.enddate }</div>
<div>반복 ${dto.days }</div>
</c:if>
<div>목적 ${dto.aim }</div>
<div>인원 ${dto.mannum }</div>
<div>비용 ${dto.pay }</div>
<div>성별 ${dto.gender }</div>
<div>흡연 ${dto.smoking }</div>
<div id="map_div">지도 API 영역</div>
<div>평점 게시판 영역
</div>
<div><input type="button" value="찜하기"><input type="button" value="예약하기" onclick="request()"></div>
<c:if test="${dto.userid eq sid}">
<div><input type="button" value="목록보기"><input type="button" value="수정하기" onclick="showEdit()"><input type="button" value="삭제하기" onclick="runDel()"></div>
</c:if>
<div><input type="button" value="쪽지보내기" onclick="javascript:userid='${dto.userid}';message();"></div>
  <a href="messageShow.do?sid=${sid }">목록</a>
<div>댓글
<c:if test="${empty rDtos}">
<div>${msg}</div>
</c:if>
<table>
<tbody id="tB">
<c:forEach var="rDtos" items="${rDtos}">
	<tr id="tr${rDtos.idx}">
		<td>${rDtos.rate }</td>
		<td>${rDtos.userid}</td>
		<td>${rDtos.content }</td>
		<td>${rDtos.writedate }</td>
		<td><c:if test="${rDtos.userid eq sid}"><a href="javascript:modiRate(${rDtos.idx})">수정</a> <a href="javascript:delRate(${rDtos.idx})">삭제</a></c:if></td>
	</tr>
</c:forEach>
</tbody>
</table>
</div>
</div>


</article>
<article>
<c:if test="${sid ne dto.userid}">
<div>
댓글 달기
<form name="reply" action="rateWrite.do">
<input type="hidden" name="aimid" value="${dto.userid}">
<select id="rate" name="rate">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
<textarea id="content" name="content">

</textarea>
<input type="button" onclick="rateReq();" value="평가하기">

</form>
</div>
</c:if>
</article>
</section>
</body>
<script src="/final02/js/jquery-1.12.4.min.js"></script>
<script src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=2e2fe45c-1baa-3078-b615-2c0b3f71bfe5"></script>
<script>
//초기화 함수
function initTmap(){
  
    map = new Tmap.Map({div:'map_div',
                        width:'100%', 
                        height:'400px',
                        transitionEffect:"resize",
                        animation:true
                    }); 
  //pr_3857 인스탄스 생성.
	var pr_3857 = new Tmap.Projection("EPSG:3857");
	 
	//pr_4326 인스탄스 생성.
	var pr_4326 = new Tmap.Projection("EPSG:4326");

	var scoordi='${dto.startcoordi}'.split(',');
	var ecoordi='${dto.endcoordi}'.split(',');
	
	var startX;
	var startY;
	var endX;
	var endY;

	for(var i=0;i<scoordi.length;i++)
	{
		
		if(i==0)
		{
			startY=scoordi[i].substring(1,scoordi[i].length);

		}
		if(i==1)
		{
			startX=scoordi[i].substring(0,scoordi[i].length-1);

		}
	}
	
	for(var i=0;i<ecoordi.length;i++)
	{
		
		if(i==0)
		{
			endY=ecoordi[i].substring(1,ecoordi[i].length);

		}
		if(i==1)
		{
			endX=ecoordi[i].substring(0,ecoordi[i].length-1);

		}
	}
			
	var sCoordi= new Tmap.LonLat(startX, startY).transform(pr_4326,pr_3857);
	var eCoordi = new Tmap.LonLat(endX, endY).transform(pr_4326,pr_3857);
		
	window.alert(sCoordi.lat+''+sCoordi.lon);

	 
    
    searchRoute(startX,startY,endX,endY);
};
//경로 정보 로드
function searchRoute(startX,startY,endX,endY){
    var routeFormat = new Tmap.Format.KML({extractStyles:true, extractAttributes:true});
    var urlStr = "https://apis.skplanetx.com/tmap/routes?version=1&format=xml";
    urlStr += "&reqCoordType="+'WGS84GEO';
    urlStr += "&startX="+startX;
    urlStr += "&startY="+startY;
    urlStr += "&endX="+endX;
    urlStr += "&endY="+endY;
    urlStr += "&appKey=2e2fe45c-1baa-3078-b615-2c0b3f71bfe5";
    var prtcl = new Tmap.Protocol.HTTP({
                                        url: urlStr,
                                        format:routeFormat
                                        });
    var routeLayer = new Tmap.Layer.Vector("route", {protocol:prtcl, strategies:[new Tmap.Strategy.Fixed()]});
    routeLayer.events.register("featuresadded", routeLayer, onDrawnFeatures);
    map.addLayer(routeLayer);
    
    
}
//경로 그리기 후 해당영역으로 줌
function onDrawnFeatures(e){
    map.zoomToExtent(this.getDataExtent());
}
</script>
</html>