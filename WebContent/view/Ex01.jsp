<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 지도를 표시할 div -->
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	b0cbf8838c7c61c50a9bee956372d40c"></script>
	<script>
		var container = document.getElementById('map');
		var options = {//지도생성시 필요한 기본 옵션
			//지도의 중심좌표(위도와 경도)
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3 // 지도의 레벨 (확대,축소정도)숫자가작을수록 확대
		};

		var map = new kakao.maps.Map(container, options);//지도생성및 객체 리턴
	</script>
</body>
</html>