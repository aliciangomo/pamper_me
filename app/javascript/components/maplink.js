function mapsSelector(lat, long) {
  if /* if we're on iOS, open in Apple Maps */
    ((navigator.platform.indexOf("iPhone") != -1) ||
     (navigator.platform.indexOf("iPad") != -1) ||
     (navigator.platform.indexOf("iPod") != -1))
  window.open(`maps://maps.google.com/maps?daddr=${lat},${long}&amp;ll=`);
  else /* else use Google */
    window.open(`https://maps.google.com/maps?daddr=${lat},${long}&amp;ll=`);
}

export {mapsSelector};
