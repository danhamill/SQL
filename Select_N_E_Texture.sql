SELECT r4a_2015_04.easting, r4a_2015_04.northing, r4a_2015_04.texture
FROM r4a_2015_04
INNER JOIN r4a_2014_09
ON  r4a_2015_04.easting = r4a_2014_09.easting AND r4a_2015_04.northing = r4a_2014_09.northing;
