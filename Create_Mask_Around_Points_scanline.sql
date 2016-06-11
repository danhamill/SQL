CREATE TABLE ss_2012_05_R00038_mask as
SELECT ST_ConcaveHull(
    ST_Collect(the_geom),0.60 ,true
    )
 FROM ss_2012_05
 WHERE the_geom is not null AND scan_line = 'R00038';