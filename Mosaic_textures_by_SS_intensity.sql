CREATE TABLE mosaic AS
(SELECT tt.*
FROM sept_2014 tt
INNER JOIN
    (SELECT easting, northing,texture, scan_line, MAX(sidescan_intensity) AS MaxSSIntensity
    FROM sept_2014
    GROUP BY easting,northing,texture,scan_line) groupedtt 
ON tt.easting = groupedtt.easting 
AND tt.northing = groupedtt.northing
AND tt.texture = groupedtt.texture
AND tt.scan_line= groupedtt.scan_line
AND tt.sidescan_intensity = groupedtt.MaxSSIntensity);