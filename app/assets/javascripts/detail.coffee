$(document).on 'click', '#show_map', ()->
  initMap2()
  getFromGeo($(this).data('address'))
  $('#overview_container').hide()
  $('#map_container').show()

map = null
initMap2 = () ->
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 36.696984, lng: 137.213648},
    zoom: 14
  });

getFromGeo = (adress) ->
  geocoder = new google.maps.Geocoder()
  geocoder.geocode {'address': adress, 'region': 'jp'}, (results, status) ->
    if google.maps.GeocoderStatus.OK != status
      return
    lat = results[0].geometry.location.lat()
    lng = results[0].geometry.location.lng()
    console.log(lat)
    console.log(lng)
    map_location = new google.maps.LatLng(lat, lng)
    map.panTo(map_location)

    new google.maps.Marker({
                                position: map_location,
                                map: map
                            })
