<div class='map-wrap'>
    <h3><?php if ($sidebarTitle) echo $sidebarTitle; else echo __("Find us on Google Map"); ?></h3>
    <!-- Google map div -->
    <div id='map'></div>
    <?php if (count($maps) > 1):  $lat = 0;$lng = 0;$zoom = 2; ?>

        <script type="text/javascript">
            $(document).ready(function(){
                /* Set google map properties */
                RCDMap.options.mapTypeId = google.maps.MapTypeId.ROADMAP;
                RCDMap.options.zoom = <?php echo $zoom; ?>;
                RCDMap.init('map', <?php echo $lat; ?>, <?php echo $lng; ?>);

                <?php foreach ($maps as $item): ?>
                <?php  if(!$item->map->lat) continue;
                       $mapUrl = "http://maps.google.com/maps?q={$item->map->lat},{$item->map->lng}";
                ?>
                RCDMap.addMarker('<?php echo $item->summary; ?>', '<?php echo $mapUrl; ?>',
                    <?php echo $item->map->lat; ?>, <?php echo $item->map->lng; ?>);
                <?php endforeach;?>

                RCDMap.fitToMarkers();
            });
        </script>

    <?php else: ?>
    <?php
    $mapInfo = $maps->first();
    $lat = $mapInfo->map->lat;$lng = $mapInfo->map->lng;

    ?>
        <script type="text/javascript">
            $(document).ready(function(){
                var myCenter=new google.maps.LatLng(<?php echo $lat; ?>, <?php echo $lng; ?>);
                var marker=new google.maps.Marker({position:myCenter});
                var infowindow = new google.maps.InfoWindow({content: contentString});
                var mapNote = null;

                <?php
                    $mapUrl = "http://maps.google.com/maps?q={$mapInfo->map->lat},{$mapInfo->map->lng}";
                    $host = '//' . $_SERVER['HTTP_HOST'];
                    $anchorLink = "<p><a href='{$host}'>http:{$host}</a></p>";
                ?>

                var contentString = "<div id='map-info-window'><?php if ($mapInfo->summary) echo $mapInfo->summary . $anchorLink ; else echo $mapUrl; ?></div>";
                var markerUrl = '<?php echo $mapUrl; ?>';
                function initialize() {
                    var mapProp = {
                        center:myCenter,
                        zoom: <?php echo $mapInfo->map->zoom; ?>,
                        draggable: true,
                        scrollwheel: false,
                        mapTypeId:google.maps.MapTypeId.ROADMAP
                        // This is where you would paste any style found on Snazzy Maps.
                    };

                    var map=new google.maps.Map(document.getElementById('map'),mapProp);
                    marker.setMap(map);

                    google.maps.event.addListener(marker, 'mouseover', function() {
                        if (contentString != '') infowindow.setContent(contentString);
                        infowindow.open(map, marker);

                    });
                    google.maps.event.addListener(marker, 'click', function() {
                        window.open(markerUrl, '_blank');
                    });
                };
                initialize();
            });
        </script>
    <?php endif; ?>
</div>