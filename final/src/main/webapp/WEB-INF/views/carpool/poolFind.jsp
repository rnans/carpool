<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#map{ width:100%; height:550px;}

</style>
<link rel="stylesheet" type="text/css" href="/final02/CSS/poolCommon.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/buttons.css" />
<link rel="stylesheet" type="text/css" href="/final02/CSS/set2.css" />
<script src="/final02/js/httpRequest.js"></script>

<script>
var dparams='pooltype=';
var tparams='termtype=';
var lparams='startspot=';
var lparams2='endspot=';
var gparams='gender=';
var sparams='smoking=';
function driveron(bt)
{
	
	$('#driver').toggleClass('button--on');
	
	$('#member').removeClass('button--on');
	if($('#driver').hasClass('button--on'))
	{
		
		dparams=bt.name+'='+bt.value;
	
	}
		

}
function memberon(bt)
{
	
	$('#driver').removeClass('button--on');
	
	$('#member').toggleClass('button--on');
	if($('#member').hasClass('button--on'))
	{
		
		dparams=bt.name+'='+bt.value;
		
	}
	
	
}

function shorton(bt)
{
	
	$('#short').toggleClass('button--on');
	
	$('#long').removeClass('button--on');
	if($('#short').hasClass('button--on'))
	{
		
		tparams=bt.name+'='+bt.value;
	
	}
	

}
function longon(bt)
{
	
	$('#long').toggleClass('button--on');
	
	$('#short').removeClass('button--on');
	if($('#long').hasClass('button--on'))
	{
		
		tparams=bt.name+'='+bt.value;
	
	}
	

}
function seon(bt)
{
	
	$('#se').toggleClass('button--on');
	
	$('#kk').removeClass('button--on');
	$('#ic').removeClass('button--on');
	$('#ps').removeClass('button--on');
	if($('#se').hasClass('button--on'))
	{
		
		lparams='startspot='+bt.value;
		lparams2='endspot='+bt.value;
	
	}
	

}
function kkon(bt)
{
	
	$('#kk').toggleClass('button--on');
	
	$('#se').removeClass('button--on');
	$('#ic').removeClass('button--on');
	$('#ps').removeClass('button--on');
	if($('#kk').hasClass('button--on'))
	{
		
		lparams='startspot='+bt.value;
		lparams2='endspot='+bt.value;
	
	}
	

}
function icon(bt)
{
	
	$('#ic').toggleClass('button--on');
	
	$('#se').removeClass('button--on');
	$('#kk').removeClass('button--on');
	$('#ps').removeClass('button--on');
	if($('#ic').hasClass('button--on'))
	{
		
		lparams='startspot='+bt.value;
		lparams2='endspot='+bt.value;
	
	}
	

}
function pson(bt)
{
	
	$('#ps').toggleClass('button--on');
	
	$('#se').removeClass('button--on');
	$('#ic').removeClass('button--on');
	$('#kk').removeClass('button--on');
	if($('#ps').hasClass('button--on'))
	{
		
		lparams='startspot='+bt.value;
		lparams2='endspot='+bt.value;
	
	}
	

}
function femaleon(bt)
{
	
	$('#female').toggleClass('button--on');
	
	$('#male').removeClass('button--on');
	if($('#female').hasClass('button--on'))
	{
		
		gparams=bt.name+'='+bt.value;
	
	}
	

}
function maleon(bt)
{
	
	$('#male').toggleClass('button--on');
	
	$('#female').removeClass('button--on');
	if($('#male').hasClass('button--on'))
	{
		
		gparams=bt.name+'='+bt.value;
	
	}
	

}
function smokeon(bt)
{
	
	$('#smoke').toggleClass('button--on');
	
	$('#nonsmoke').removeClass('button--on');
	if($('#smoke').hasClass('button--on'))
	{
		
		sparams='smoking='+bt.value;
	
	}
	

}
function nonsmokeon(bt)
{
	
	$('#nonsmoke').toggleClass('button--on');
	
	$('#smoke').removeClass('button--on');
	if($('#nonsmoke').hasClass('button--on'))
	{
		
		sparams='smoking='+bt.value;
	
	}
	

}


function findList()
{
	var scoordi=document.getElementById('sc').value.split(',');
	var ecoordi=document.getElementById('ec').value.split(',');

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
			startX=scoordi[i].substring(1,scoordi[i].length-1);

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
			endX=ecoordi[i].substring(1,ecoordi[i].length-1);

		}
	}
	
	
	
	var params=dparams+'&'+tparams+'&'+lparams+'&'+lparams2+'&'+gparams+'&'+sparams+'&slat='+startY+'&slng='+startX+'&elat='+endY+'&elng='+endX;
	
	location.href='poolFind.do?'+params;
	
	window.alert(document.getElementById('ec').value);
	window.alert(document.getElementById('sc').value);
}

</script>
</head>
<body>
<%@ include file="../header.jsp" %>
<section id="mainsection">
<div id="search" class="col-md-12">
	<div class="col-md-12"><h1 style="    margin-top: 20px;
    margin-bottom: 10px;">카풀 검색<small>원하시는 카풀을 찾아드립니다.</small></h1></div>
	<form name="search" id="sForm" action="search.do">
	<div class="input input--nao col-md-12">
					<input  class="input__field input__field--nao" type="text" id="ss" name="startspot"><br> <input type="hidden" id="sc"
			name="startcoordi">
					<label class="input__label input__label--nao" for="ss">
						<span class="input__label-content input__label-content--nao">출발지</span>
					</label>
					<svg class="graphic graphic--nao" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
					</svg>
				</div>
				<br>
				<div class="input input--nao col-md-12">
					 <input class="input__field input__field--nao" type="text" id="es" name="endspot"><br> <input
			type="hidden" id="ec" name="endcoordi"> 
					<label class="input__label input__label--nao" for="es">
						<span class="input__label-content input__label-content--nao">목적지</span>
					</label>
					<svg class="graphic graphic--nao" width="300%" height="100%" viewBox="0 0 1200 60" preserveAspectRatio="none">
						<path d="M0,56.5c0,0,298.666,0,399.333,0C448.336,56.5,513.994,46,597,46c77.327,0,135,10.5,200.999,10.5c95.996,0,402.001,0,402.001,0"/>
					</svg>
				</div>
				<div id="categorySearch" class="col-md-12">
		<div class="row">
		<div class="col-md-3 col-xd-3">카풀 유형</div> 
		<div class="col-md-9 col-xd-9">	
			<button type="button" name="pooltype" value="타세요" id="driver" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="driveron(this)">타세요</button>
			<button type="button" name="pooltype" value="탈래요" id="member" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="memberon(this)">탈래요</button>	
		</div>
		</div>
		<div class="row">
		<div class="col-md-3 col-xd-3">카풀 기간</div> 
		<div class="col-md-9 col-xd-9">	
			<button type="button" id="short" name="termtype" value="단기" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="shorton(this)">단기</button>
			<button type="button" id="long" name="termtype" value="정기" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="longon(this)">정기</button>	
		</div>
		</div>
		<div class="row">
		<div class="col-md-3 col-xd-3">지역</div> 
		<div class="col-md-9 col-xd-9">	<button type="button" id="se" value="서울" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="seon(this)">서울</button>
					<button type="button" id="kk" value="경기" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="kkon(this)">경기</button>
					<button type="button" id="ic" value="인천" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="icon(this)">인천</button>
					<button type="button" id="ps" value="부산" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="pson(this)">부산</button>
		</div>
		</div>
		<div class="row">
		<div class="col-md-3 col-xd-3">성별</div> 
		<div class="col-md-9 col-xd-9">
		<button type="button" id="female" value="남성만" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="femaleon(this)">여성만</button>
		<button type="button" id="male" value="여성만" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="maleon(this)">남성만</button>
		</div>
		</div>
		<div class="row">
		<div class="col-md-3 col-xd-3">흡연여부</div> 
		<div class="col-md-9 col-xd-9">
		<button type="button" id="smoke" value="흡연" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="smokeon(this)">흡연 가능</button>
		<button type="button" id="nonsmoke" value="비흡연" class="button--cate button--moema button--text-thick button--text-upper button--size-s" onclick="nonsmokeon(this)">흡연 불가</button>
		</div>
		</div>
		</div>
				<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-8">
				<div class="col-md-4">
				<button type="button" onclick="showCate();"class="button button--ujarak button--border-thin button--text-thick">상세검색</button>
				</div>
				<div class="col-md-4">
				<button type="button" onclick="findList()" class="button button--ujarak button--border-thin button--text-thick">검색</button>
				</div>
				<div class="col-md-4">
				<button type="button" class="button button--ujarak button--border-thin button--text-thick">실시간 자동 매칭</button>
				</div>
				</div>
				</div>
<br>
	
		
	</div>
	
	</form>
</div>
<div id="map"></div>
</section>
<script>
var cateBtStatus=false;
var cate=document.getElementById('categorySearch');
window.onload=function()
{
		cateBtStatus=false;
		cate.style.display="none";
		
		var url='poolListByJson.do';
		sendRequest(url, null, callback, 'POST');
	
}
function callback(){
	   if(XHR.readyState==4){
	      if(XHR.status==200){
	         var text = XHR.responseText;
	         var data = eval('('+text+')');
	         
	        data.lists.forEach(viewList);
	      }
	   }
	}

function showCate()
{
		if(cateBtStatus==true){
		cate.style.display="none";
		cateBtStatus=false;
		}
		else
		{
		cate.style.display="block";
		cateBtStatus=true;
										
		}
}
									 
</script>

<script src="//apis.daum.net/maps/maps3.js?apikey=140c866172be3f537fee6199c675008a&libraries=services,clusterer"></script>
<script>
		
	var id;
	$('.input__field--nao').focus(function(e){
		id=e.target.id
		initAutocomplete(id);
	})

	
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
		    center: new daum.maps.LatLng(37.50864, 127.03013), // 지도의 중심좌표
		    level: 11, // 지도의 확대 레벨
		    mapTypeId : daum.maps.MapTypeId.ROADMAP // 지도종류
		}; 

	
	
		// 지도를 생성한다 
	var map = new daum.maps.Map(mapContainer, mapOption); 
	
	  var clusterer = new daum.maps.MarkerClusterer({
	        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
	        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
	        minLevel: 10 // 클러스터 할 최소 지도 레벨 
	    });

	function viewList(item,index){
	  
	  
	var scoordi=item.startcoordi.split(',');
	var ecoordi=item.endcoordi.split(',');

	var startX;
	var startY;
	var endX;
	var endY;

	for(var i=0;i<scoordi.length;i++)
	{
		
		if(i==0)
		{
			startX=scoordi[i].substring(1,scoordi[i].length);

		}
		if(i==1)
		{
			startY=scoordi[i].substring(0,scoordi[i].length-1);

		}
	}

	for(var i=0;i<ecoordi.length;i++)
	{
		
		if(i==0)
		{
			endX=ecoordi[i].substring(1,ecoordi[i].length);

		}
		if(i==1)
		{
			endY=ecoordi[i].substring(0,ecoordi[i].length-1);

		}
	}
	
	var scoords = new daum.maps.LatLng(startX, startY);
	var ecoords = new daum.maps.LatLng(endX, endY);
	
	
	
	var sImgSrc='http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png'
	var aImgSrc='http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png'
		
		imgSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png', // 출발 마커이미지의 주소입니다    
	    imgSize = new daum.maps.Size(50, 45), // 출발 마커이미지의 크기입니다 
	    imgOption = { 
	        offset: new daum.maps.Point(15, 43) // 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
	    };

	 
		// 마커 이미지를 생성합니다
			var sMarkerImg = new daum.maps.MarkerImage(sImgSrc, imgSize, imgOption);
			var eMarkerImg = new daum.maps.MarkerImage(aImgSrc, imgSize, imgOption);
		
	  // 결과값으로 받은 위치를 마커로 표시합니다
    var sMarker = new daum.maps.Marker({
        map: map,
        position: scoords,
        draggable : false,
        title: item.startspot,
        image: sMarkerImg
       
    });
	  
    // 결과값으로 받은 위치를 마커로 표시합니다
    var eMarker = new daum.maps.Marker({
        map: map,
        position: ecoords,
        draggable : false,
        title: item.endspot,
        image: eMarkerImg
    });
	
 // 커스텀 오버레이에 표시할 컨텐츠 입니다
 // 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
 // 별도의 이벤트 메소드를 제공하지 않습니다 
 var scontent = '<div class="wrap" id="scon'+index+'">' + 
             '    <div class="info">' + 
             '        <div class="title">'+
             				item.pooltype+' / '+item.termtype +
             '        </div>' + 
             '        <div class="body">' + 
             '            <div class="img">' +
             '                <img class="profile" src="http://s.cmstatic.net/webclient/dres/20160419171121/images/template/profile_60x60.gif" width="73" height="70">' +
             '           </div>' + 
             '            <div class="desc">' + 
             '                <div class="ellipsis">'+item.startspot+'</div>' + 
             '                <div class="ellipsis">'+item.endspot+'</div>'+ 
             '                <div><a href="poolEachContent.do?idx='+item.idx+'">상세보기</a></div>' + 
             '            </div>' + 
             '        </div>' + 
             '    </div>' +    
             '</div>';
var econtent = '<div class="wrap" id="econ'+index+'">' + 
             '    <div class="info">' + 
             '        <div class="title">'+
             				item.pooltype+' / '+item.termtype + 
             '        </div>' + 
             '        <div class="body">' + 
             '            <div class="img">' +
             '                <img class="profile" src="http://s.cmstatic.net/webclient/dres/20160419171121/images/template/profile_60x60.gif" width="73" height="70">' +
             '           </div>' + 
             '            <div class="desc">' + 
             '                <div class="ellipsis">'+item.startspot+'</div>' + 
             '                <div class="ellipsis">'+item.endspot+'</div>'+ 
             '                <div><a href="poolEachContent.do?idx='+item.idx+'">상세보기</a></div>' + 
             '            </div>' + 
             '        </div>' + 
             '    </div>' +    
             '</div>';

 // 마커 위에 커스텀오버레이를 표시합니다
 // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
 
 
    sMarker.setMap(map);
    eMarker.setMap(map);
    
  
    clusterer.addMarker(sMarker);
    clusterer.addMarker(eMarker);
 
    
    var sOverlay = new daum.maps.CustomOverlay({
	     content: scontent,
	     map: map,
	     position: sMarker.getPosition()       
	 });
	 
	 
	 sOverlay.setMap(map);
	 sOverlay.setVisible(false);
    
	
	 
	 var eOverlay = new daum.maps.CustomOverlay({
	     content: econtent,
	     map: map,
	     position: eMarker.getPosition()       
	 });

	 eOverlay.setMap(map);
	 eOverlay.setVisible(false);
	 
	 var smarkerOn=false;
	 var emarkerOn=false;
	 
	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	 daum.maps.event.addListener(sMarker, 'click', function() {
	    if(!smarkerOn){
		sOverlay.setVisible(true);
	    smarkerOn=true;
	    }
	    else
	    {
	    	sOverlay.setVisible(false);
		    smarkerOn=false;
	    }
	 }); 
	
	
	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	 daum.maps.event.addListener(eMarker, 'click', function() {
		 if(!emarkerOn){
				eOverlay.setVisible(true);
			    emarkerOn=true;
			    }
			    else
			    {
			    	eOverlay.setVisible(false);
				    emarkerOn=false;
			    }
	 });
	
	
 	
	
	}
	
	var scoordis=document.getElementById('sc').value;
	 var ecoordis=document.getElementById('ec').value;
	
	 var bounds = new daum.maps.LatLngBounds(); 

	 function initAutocomplete(id) {
			
		 var input = /** @type {!HTMLInputElement} */(
		      document.getElementById(id));
		
		

		var title='';
		 
		 if(input.getAttribute('id')=='ss')
		 {
			 title='출발지';
			
		 }
		 else if(input.getAttribute('id')=='es')
		 {
			 title='도착지';
			 
		 }

		 
		 
		  autocomplete = new google.maps.places.Autocomplete(
			      /** @type {!HTMLInputElement} */(input),
			      {types: ['geocode']});


		  

		 autocomplete.addListener('place_changed', function() {
		  
		    var place = autocomplete.getPlace();
		
		    if (!place.geometry) {
		      window.alert("Autocomplete's returned place contains no geometry");
		      return;
		    }

		    // If the place has a geometry, then present it on a map.
		    if (place.geometry.viewport) {
		      //map.fitBounds(place.geometry.viewport);
		    } else {
		      //map.setCenter(place.geometry.location);
		      //map.setZoom(17);  // Why 17? Because it looks good.
		    }
		    
		    var address = '';
		    var location='';
		    var lat='';
		    var lng='';
		    
		    if (place.formatted_address) {
		     	address = place.formatted_address;
		     	location= place.geometry.location;
		     	lat=location.lat();
		     	lng=location.lng();
		    }
		    
		    if(title=='출발지'){
		    	document.getElementById('sc').value=location.toString();
		    	
		   }
		   else if(title=='도착지')
		   {
			    document.getElementById('ec').value=location.toString();
	
		   }
		   

			// 주소-좌표 변환 객체를 생성합니다
		   var geocoder = new daum.maps.services.Geocoder();

		           var coords = new daum.maps.LatLng(lat, lng);
			       
		           // 결과값으로 받은 위치를 마커로 표시합니다
		           var marker = new daum.maps.Marker({
		               map: map,
		               position: coords,
		               draggable : true,
		               title: title,
		               image: markerImg
		           });
				
		           bounds.extend(coords);
		           map.setBounds(bounds);
		           
		        daum.maps.event.addListener(marker,"dragend",function(){
		   			
		        	 if(title=='출발지'){
		 		    	document.getElementById('sc').value=marker.getPosition();
		 		   }
		 		   else if(title=='도착지')
		 		   {
		 			    document.getElementById('ec').value=marker.getPosition();
		 		   }
		        	
		        	

		        	 var coord = marker.getPosition();
		        	 var bounds = map.getBounds();
		        	 
			           bounds.extend(coord);
			      
			
		        	 var geocoder = new daum.maps.services.Geocoder();
		        	 
		        	 var callback = function(status, result) {
		        	     if (status === daum.maps.services.Status.OK) {
		        	     
		        	         
		        	    	 if(title=='출발지'){
		 		 		    	document.getElementById('ss').value=result[0].jibunAddress.name;
		 		 		   }
		 		 		    else if(title=='도착지')
		 		 		   {
		 		 			    document.getElementById('es').value=result[0].jibunAddress.name;
		 		 		   }
		 		        	
		        	    	 
		        	     }   

			           
		        	 };
		        	
	
		        	 geocoder.coord2detailaddr(coord, callback);
		        	 
		   		});
		        
		      
 
		           for(var i=0;i<markers.length;i++)
		           {
		            	
		            		markers[i].setMap(null);
		            		/* infowindows[i].close(); */
		            	 
		           } 
		          
		          
		           
		  });
	
}
</script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCJz53NRCX_RWtNSeoAbPveANaDjlQF1tU&libraries=places&callback=initAutocomplete"
        async defer></script>	
<script src="/final02/js/classie.js"></script>
		<script>
			(function() {
				// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
				if (!String.prototype.trim) {
					(function() {
						// Make sure we trim BOM and NBSP
						var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
						String.prototype.trim = function() {
							return this.replace(rtrim, '');
						};
					})();
				}

				[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
					// in case the input is already filled..
					if( inputEl.value.trim() !== '' ) {
						classie.add( inputEl.parentNode, 'input--filled' );
					}

					// events:
					inputEl.addEventListener( 'focus', onInputFocus );
					inputEl.addEventListener( 'blur', onInputBlur );
				} );

				function onInputFocus( ev ) {
					classie.add( ev.target.parentNode, 'input--filled' );
				}

				function onInputBlur( ev ) {
					if( ev.target.value.trim() === '' ) {
						classie.remove( ev.target.parentNode, 'input--filled' );
					}
				}
			})();
		</script>

</body>
</html>