<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   <style type="text/css">
      html, body { height: 100%; width: 100%; margin: 0; padding: 0; }
      #map { height: 500px; width: 100%; }



input[type='text']
{
	width: 720px;
}
</style>


</head>
<body>
<h2>카풀등록 페이지4</h2>
	<div id="div1">
		<h3>카풀등록</h3>
	</div>
	
	<div id="div2">
		<form name="geoInfo" action="poolMemberAdd03.do">
		<input type="hidden" name="pooltype" value="탈래요">
		유형<select id="type" name="aim">
			<option value="출/퇴근">출/퇴근</option>
			<option value="드라이브">드라이브</option>
			<option value="좋은 만남">좋은만남</option>
			<option value="명절">명절</option>
		  </select><br>
		출발지<input type="text" placeholder="출발지를 입력하세요."  id="ss" name="startspot"><br>
		<input type="text" id="sc" name="startcoordi">
		목적지<input type="text" placeholder="목적지를 입력하세요."  id="es" name="endspot"><br>
		<input type="text" id="ec" name="endcoordi">
		<p>
			<input type="button" name="back" value="이전" onclick="location.href='poolMemberAdd.do'">
			<input type="submit" name="next" value="다음">
		</p>
		</form>
	</div>
	
	<div id="map">
	지도 영역
	</div>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="//apis.daum.net/maps/maps3.js?apikey=140c866172be3f537fee6199c675008a&libraries=services,clusterer"></script>


    <script src="https://apis.skplanetx.com/tmap/js?version=1&format=javascript&appKey=2e2fe45c-1baa-3078-b615-2c0b3f71bfe5"></script>
	<script>
	var id;
	$('input').focus(function(e){
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
</body>
</html>