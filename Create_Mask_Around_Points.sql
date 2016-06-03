
CREATE TABLE test_poly_1 as
SELECT ST_ConvexHull( ST_Collect(the_geom)
        )
FROM ss_2012_05
WHERE the_geom IS NOT NULL;