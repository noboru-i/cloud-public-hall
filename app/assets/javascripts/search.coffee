$(document).on 'click', '.link_to_detail', (event) ->
  location.href = $(this).data('url')
  return

map = null
@initMap = () ->
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 36.696984, lng: 137.213648},
    zoom: 10
  });
  halls.forEach (hall) ->
    getFromGeo(hall.address1 + hall.address2 + hall.address3)

getFromGeo = (adress) ->
  geocoder = new google.maps.Geocoder()
  geocoder.geocode {'address': adress, 'region': 'jp'}, (results, status) ->
    if google.maps.GeocoderStatus.OK != status
      return
    map_location = new google.maps.LatLng(
        results[0].geometry.location.lat(),
        results[0].geometry.location.lng())

    new google.maps.Marker({
                                position: map_location,
                                map: map
                            })
