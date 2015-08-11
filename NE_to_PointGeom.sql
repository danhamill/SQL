update r4a 

SET the_geom = ST_GeomFromText('POINT(' || easting || ' ' || northing || ')', 26949);
