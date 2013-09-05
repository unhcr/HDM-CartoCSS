DROP VIEW operator;

CREATE  VIEW operator AS 
 SELECT planet_osm_polygon.osm_id, planet_osm_polygon.operator, planet_osm_polygon."operator:type", st_centroid(planet_osm_polygon.way) AS st_centroid
   FROM planet_osm_polygon
  WHERE planet_osm_polygon.operator IS NOT NULL;

;
