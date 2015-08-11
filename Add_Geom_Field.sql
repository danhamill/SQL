ALTER TABLE tmp ADD COLUMN the_geom GEOMETRY

CONSTRAINT enforce_geotype_geom CHECK (geometrytype(the_geom) = 'POINT'::text OR the_geom IS NULL)
CONSTRAINT enforce_srid_the_geom CHECK (st_srid(the_geom) = 26949);