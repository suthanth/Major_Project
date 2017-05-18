<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Simple Map</title>
<meta name="viewport" content="initial-scale=1.0">
<meta charset="utf-8">
<style>
html,body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#map {
	height: 100%;
}
</style>
</head>
<body>
	<div id="map"></div>
	<script>
		var map;
		var marker = null;
		function initMap() {
			 var myLatLng = {
					lat :13.3317,
					lng :77.1156
				};
				 map = new google.maps.Map(document.getElementById('map'), {
					center : myLatLng,
					zoom : 18
				});

				marker = new google.maps.Marker({
					position : myLatLng,
					map : map
				});
				marker.setMap(map); 
			setInterval(function() {
				dataFunction(marker);
				
			}, 6000);
		}
		function dataFunction(marker) {
		
			$.ajax({
				type: "get",
				url: "GPSServlet.jsp",
				dataType:"json",
				success: function(data) {
					
					
					   var myLatLng = {
								lat : parseFloat(data.lat),
								lng : parseFloat(data.lag)
							};
						   map = new google.maps.Map(document.getElementById('map'), {
								center : myLatLng,
								zoom : 18
							});
						marker = new google.maps.Marker({
							position : myLatLng,
							map : map,
							title : 'Hello World!'
						});
						marker.setMap(map);
					
					
						data = eval('('+data+')');
						var errorString = data.message;
						var resultString = data.status;
						
				
				}
			});
		}
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBBr9cuWTs-UK77E6BjtVQEzp8XHhHSvD0&callback=initMap" async defer></script>
		
	<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
</body>
</html>