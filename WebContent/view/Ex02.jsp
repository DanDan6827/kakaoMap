<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 위치 지도 생성하기</title>
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
			center: new kakao.maps.LatLng(lat, lng),
			level: 3 // 지도의 레벨 (확대,축소정도)숫자가작을수록 확대
		};

		var map = new kakao.maps.Map(container, options);//지도생성및 객체 리턴
	</script>
</body>
</html>