$(document).ready(function (){

function initialize() {
    var myLatlng = new google.maps.LatLng(latitude,longitude);

    var mapOptions = {
       zoom: 15,
       scrollwheel: true,   
       center: myLatlng
    }

    var map = new google.maps.Map(document.getElementById('location-map'), mapOptions);

    var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: location1
    });
 
    var contentString = '<h2>'+ location1 + '</h2>' 
    ;

      var infowindow = new google.maps.InfoWindow({
      content: contentString
  });

      google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);
});