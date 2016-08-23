$(document).ready(function (){

function initialize() {
    var myLatlng = new google.maps.LatLng(latitude,longitude);

    var mapOptions = {
       zoom: 15,
       scrollwheel: false,   
       center: myLatlng
    }

    var map = new google.maps.Map(document.getElementById('map'), mapOptions);

    var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: address
    }); 
}

google.maps.event.addDomListener(window, 'load', initialize);
});