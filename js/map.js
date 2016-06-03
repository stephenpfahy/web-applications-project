// JavaScript source code 
function init() { 
    var mapOptions = { 
        center: new google.maps.LatLng(53.288804, -6.355706300000065),
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        zoom: 10
    };
 
    var myMap;     myMap = new google.maps.Map(document.getElementById('map'), mapOptions); 
}
 
function loadScript() { 
    var script = document.createElement('script');
    script.src = 'http://maps.googleapis.com/maps/api/js?sensor=false&callback=init';
    document.body.appendChild(script);                 
}
 
window.onload = loadScript; 