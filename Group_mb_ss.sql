SELECT * 
from mb_may_2012_3m tt
inner join
(
	SELECT s.easting, s.northing, s.texture, s.sidescan_intensity 
	FROM ss_2012_05 s
	
) ss
	on tt.easting=ss.easting 
	and tt.northing=ss.northing;