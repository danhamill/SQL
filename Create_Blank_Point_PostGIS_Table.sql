CREATE TABLE tmp1
(
  gid serial NOT NULL,
  easting double precision,
  northing double precision,
  texture double precision,
  the_geom geometry,
  CONSTRAINT enforce_dims_the_geom CHECK (st_ndims(the_geom) = 2),
  CONSTRAINT enforce_geotype_geom CHECK (geometrytype(the_geom) = 'POINT'::text OR the_geom IS NULL),
  CONSTRAINT enforce_srid_the_geom CHECK (st_srid(the_geom) = 26949)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tmp1
  OWNER TO postgres;