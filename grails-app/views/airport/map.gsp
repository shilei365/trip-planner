<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Airports</title>
    <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAU7YnM-urF7eE9yC49kPN7hSpSBtZl-yQqtTIpqi-HukmCJiIQxQYGLhSOO2bJLIWPZwRamze72_IEQ"
      type="text/javascript"></script>
    <script type="text/javascript">
    var usCenterPoint = new GLatLng(52.513035, 13.32015)
    var usZoom = 4

    function load() {
      if (GBrowserIsCompatible()) {
        var map = new GMap2(document.getElementById("map"))
        map.setCenter(usCenterPoint, usZoom);
   	    map.addControl(new GLargeMapControl());
        map.addControl(new GMapTypeControl()); 
	
		
    		<g:each in="${airportList}" status="i" var="airportInstance">
    		 	var point<g:fieldValue bean="${airportInstance}" field="id"/> = new GLatLng(<g:fieldValue bean="${airportInstance}" field="lat"/>, <g:fieldValue bean="${airportInstance}" field="lng"/>)
         		var marker<g:fieldValue bean="${airportInstance}" field="id"/> = new GMarker(point<g:fieldValue bean="${airportInstance}" field="id"/>)
    			marker<g:fieldValue bean="${airportInstance}" field="id"/>.bindInfoWindowHtml("<g:fieldValue bean="${airportInstance}" field="iata"/><br/><g:fieldValue bean="${airportInstance}" field="name"/>")
    			map.addOverlay(marker<g:fieldValue bean="${airportInstance}" field="id"/>)
    	   </g:each>
    		
      }
    }
    </script>
  </head>
  <body onload="load()" onunload="GUnload()">
    <div id="map" style="width: 800px; height: 400px"></div>
  </body>
</html>