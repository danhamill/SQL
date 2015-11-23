SELECT r4a_2015_04.easting, r4a_2015_04.northing, r4a_2015_04.texture-r4a_2014_09.texture as texture_diff
FROM r4a_2015_04,r4a_2014_09
WHERE r4a_2015_04.easting = r4a_2014_09.easting AND r4a_2015_04.northing = r4a_2014_09.northing;
