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
</head>
<body>
<%@ include file="../header.jsp" %>
<section id="mainsection">
<div id="search" class="col-md-12">
	<div class="col-md-12"><h1 style="    margin-top: 20px;
    margin-bottom: 10px;">카풀 검색<small>원하시는 카풀을 찾아드립니다.</small></h1></div>
	<form name="search" action="search.do">
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
				<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-8">
				<div class="col-md-4">
				<button type="button" onclick="showCate();"class="button button--ujarak button--border-thin button--text-thick">상세검색</button>
				</div>
				<div class="col-md-4">
				<button type="button" class="button button--ujarak button--border-thin button--text-thick">검색</button>
				</div>
				<div class="col-md-4">
				<button type="button" class="button button--ujarak button--border-thin button--text-thick">실시간 자동 매칭</button>
				</div>
				</div>
				</div>
<br>
	<div class="row">
		<div id="categorySearch" class="col-md-12">
		<div class="row">
		<div class="col-md-3">상세 검색 영역 지역</div> 
		<div class="col-md-9">	<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">서울</button>
					<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">경기</button>
					<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">인천</button>
					<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">부산</button>
		</div>
		<div class="col-md-3">인원</div>
		<div class="col-md-9"> 
		<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">1명</button>
		<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">2명</button>
		<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">3명 이상</button>
		</div>
		<div class="col-md-3">성별</div> 
		<div class="col-md-9">
		<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">여성만</button>
		<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">남성만</button>
		</div>
		<div class="col-md-3">흡연여부</div> 
		<div class="col-md-9">
		<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">흡연 가능</button>
		<button class="button--cate button--moema button--text-thick button--text-upper button--size-s">흡연 불가</button>
		</div>
		</div>
	</div>
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
	$('.input--nao').focus(function(e){
		id=e.target.id
		
		initAutocomplete();
	})

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
		    center: new daum.maps.LatLng(37.50864, 127.03013), // 지도의 중심좌표
		    level: 6, // 지도의 확대 레벨
		    mapTypeId : daum.maps.MapTypeId.ROADMAP // 지도종류
		}; 

		// 지도를 생성한다 
	var map = new daum.maps.Map(mapContainer, mapOption); 
	
	var markers=new Array();
	var infowindows=new Array();
	
	
	var scoordis=document.getElementById('sc').value;
	 var ecoordis=document.getElementById('ec').value;
	
	 var bounds = new daum.maps.LatLngBounds(); 
 
	function initAutocomplete() {
				
		 var input = /** @type {!HTMLInputElement} */(
		      document.getElementById(id));
		
		var value=input.id;
		 
		var sImgSrc='http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png'
		var aImgSrc='http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/blue_b.png'
		
		imgSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/red_b.png', // 출발 마커이미지의 주소입니다    
	    imgSize = new daum.maps.Size(50, 45), // 출발 마커이미지의 크기입니다 
	    imgOption = { 
	        offset: new daum.maps.Point(15, 43) // 출발 마커이미지에서 마커의 좌표에 일치시킬 좌표를 설정합니다 (기본값은 이미지의 가운데 아래입니다)
	    };

		var title='';
		 
		 if(value=='ss')
		 {
			 title='출발지';
			 imgSrc=sImgSrc;
		 }
		 else if(value=='es')
		 {
			 title='도착지';
			 imgSrc=aImgSrc;
		 }

		 
		// 마커 이미지를 생성합니다
			var markerImg = new daum.maps.MarkerImage(imgSrc, imgSize, imgOption);

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
		   
		   window.alert(location+'\n'+address);

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
		        	 
			           bounds.extend(coord);
			           map.setBounds(bound);
  			
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
		        	 var bounds = map.getBounds();
	
		        	 geocoder.coord2detailaddr(coord, callback);
		        	 
		   		});
		        
		      
   
		           for(var i=0;i<markers.length;i++)
		           {
		            	if(markers[i].getTitle()==title)
		            	{
		            		markers[i].setMap(null);
		            		/* infowindows[i].close(); */
		            	 		
		            	}
		           } 
		           markers.push(marker);
		          
		           
		           // 인포윈도우로 장소에 대한 설명을 표시합니다
		           /* var infowindow = new daum.maps.InfoWindow({
		               content: '<div style="padding:5px;">'+title+'</div>'
		           });
		           infowindow.open(map, marker);
		           infowindows.push(infowindow); */

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