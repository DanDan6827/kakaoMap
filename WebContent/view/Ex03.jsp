<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 위치 지도에 마커에 인포윈도우 표시하기</title>
<script type="text/javascript">
 	var lat=0;
	var lng=0;
	navigator.geolocation.getCurrentPosition(function(position) {
		lat = position.coords.latitude; // 위도
		lng = position.coords.longitude; // 경도
	});
	document.getElementById("lat").innerHTML = lat;
	document.getElementById("lng").innerHTML = lng;
</script>
</head>
<body>
	위도: <span id="lat"></span> , 경도:<span id="lng"></span>
	<!-- 지도를 표시할 div -->
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	b0cbf8838c7c61c50a9bee956372d40c"></script>
	<script>
		var container = document.getElementById('map');
		var options = {//지도생성시 필요한 기본 옵션
			//지도의 중심좌표(위도와 경도)
			center: new kakao.maps.LatLng(lat,lng),
			level: 3 // 지도의 레벨 (확대,축소정도)숫자가작을수록 확대
		};

			var map = new kakao.maps.Map(container, options);//지도생성및 객체 리턴
	
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(lat, lng); 

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

			var iwContent = '내위치', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			    iwPosition = new kakao.maps.LatLng(lat, lng); //인포윈도우 표시 위치입니다

			// 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
			    position : iwPosition, 
			    content : iwContent 
			});
			  
			// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
			infowindow.open(map, marker); 
		</script>
</body>
</html>