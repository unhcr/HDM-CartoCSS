

CREATE  VIEW operator AS 
 SELECT planet_osm_polygon.osm_id, planet_osm_polygon.operator, planet_osm_polygon."operator:type" as operator_type, planet_osm_polygon.name, st_centroid(planet_osm_polygon.way) AS st_centroid
   FROM planet_osm_polygon
  WHERE planet_osm_polygon.operator IS NOT NULL;

CREATE  VIEW admin_1_4 AS 
SELECT osm_id, way, name, place, boundary, "addr:postcode", admin_level, '/home/edouard/HDM-CartoCSS/icons/'||"addr:postcode"||'.svg' as icon FROM planet_osm_line WHERE "boundary" = 'administrative'   AND admin_level IN ('0','1','2','3','4');

CREATE  VIEW admin_5_10 AS 
SELECT osm_id, way, name, place, boundary, "addr:postcode", admin_level, '/home/edouard/HDM-CartoCSS/icons/'||"addr:postcode"||'.svg' as icon FROM planet_osm_polygon WHERE "boundary" = 'administrative'  AND admin_level IN ('5', '6', '7', '8', '9', '10');

CREATE  VIEW admin_8 AS 
SELECT osm_id, way, name, place, boundary, "addr:postcode", admin_level, '/home/edouard/HDM-CartoCSS/icons/'||"addr:postcode"||'.svg' as icon FROM planet_osm_polygon WHERE "boundary" = 'administrative'  AND admin_level = '8';

CREATE  VIEW admin_9 AS 
SELECT osm_id, way, name, place, boundary, "addr:postcode", admin_level, '/home/edouard/HDM-CartoCSS/icons/'||"addr:postcode"||'.svg' as icon FROM planet_osm_polygon WHERE "boundary" = 'administrative'  AND admin_level ='9';


CREATE  VIEW  building_point AS 
SELECT osm_id, way, name, "building" AS type  FROM planet_osm_point  WHERE building NOT IN ('0','false', 'no')  ORDER BY ST_YMin(ST_Envelope(way)) DESC;

CREATE  VIEW poi_point AS 
SELECT osm_id, way, name, amenity, shop, tourism, highway, man_made, access, religion, waterway, lock, historic,leisure, 
CASE WHEN tags ? 'iata' THEN 'airport' WHEN aeroway='aerodrome' THEN 'airfield' ELSE null END AS aeroway,
tags->'office' as office, 
tags->'craft' as craft, 
tags->'pump' as pump,
tags->'drinking_water' as drinking_water, "tower:type",
 tags->'emergency' as emergency, power 
 
 FROM planet_osm_point 
 where 
 amenity is not null or shop is not null or
  tags ? 'craft' or tourism in ('alpine_hut','camp_site','caravan_site','guest_house','hostel','hotel','motel','museum','viewpoint','bed_and_breakfast','information','chalet') 
  or highway in ('bus_stop','traffic_signals','ford', 'street_lamp') 
  or man_made in ('mast','water_tower', 'tower', 'water_well', 'watermill') 
  or historic in ('memorial','archaeological_site') 
  or leisure in ('playground','slipway', 'beach_resort') 
  or tags->'office' IN ('ngo', 'government') 
  OR aeroway='aerodrome' OR tags->'emergency'='fire_hydrant' 
  OR power IN ('generator', 'sub_station', 'tower', 'pole');

CREATE  VIEW poi_point_styled AS 
SELECT osm_id, way, name, amenity as type, '/home/edouard/HDM-CartoCSS/icons/svg/'||amenity||'.svg' as icon 
 FROM planet_osm_point WHERE amenity is not NULL  
 UNION  
SELECT osm_id, way, name, shop as type, '/home/edouard/HDM-CartoCSS/icons/svg/'||shop||'.svg' as icon 
 FROM planet_osm_point WHERE shop is not NULL  
 UNION  
SELECT osm_id, way, name, man_made as type, '/home/edouard/HDM-CartoCSS/icons/svg/'||man_made||'.svg' as icon 
 FROM planet_osm_point WHERE man_made is not NULL  
 UNION 
SELECT osm_id, way, name, highway as type, '/home/edouard/HDM-CartoCSS/icons/svg/'||highway||'.svg' as icon 
 FROM planet_osm_point WHERE highway is not NULL  
;


CREATE TABLE bufferseduc (
    the_geom geometry,
    distance text,
    dist integer,
    id integer NOT NULL
);

CREATE SEQUENCE bufferseduc_id_seq;
ALTER TABLE bufferseduc ALTER COLUMN id SET DEFAULT nextval(' bufferseduc_id_seq');
ALTER TABLE  bufferseduc ADD CONSTRAINT bufferseduc_pkey PRIMARY KEY(id ); 

DELETE FROM bufferseduc;

Insert INTO bufferseduc (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (1000)::double precision), 4326)), '1 Km', 10
       FROM planet_osm_polygon WHERE amenity= 'school';
Insert INTO bufferseduc (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (500)::double precision), 4326)), '500 m', 5
       FROM planet_osm_polygon WHERE amenity= 'school';
Insert INTO bufferseduc (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (400)::double precision), 4326)), '400 m', 4
       FROM planet_osm_polygon WHERE amenity= 'school';
Insert INTO bufferseduc (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (300)::double precision), 4326)), '300 m', 3
       FROM planet_osm_polygon WHERE amenity= 'school';
Insert INTO bufferseduc (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (200)::double precision), 4326)), '200 m', 2
       FROM planet_osm_polygon WHERE amenity= 'school';
Insert INTO bufferseduc (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (100)::double precision), 4326)), '100 m', 1
       FROM planet_osm_polygon WHERE amenity= 'school';

CREATE INDEX idx_bufferseduc_geom ON bufferseduc USING GIST(the_geom);

      


CREATE TABLE buffershospital (
    the_geom geometry,
    distance text,
    dist integer,
    id integer NOT NULL
);

CREATE SEQUENCE buffershospital_id_seq;
ALTER TABLE buffershospital ALTER COLUMN id SET DEFAULT nextval(' buffershospital_id_seq');
ALTER TABLE  buffershospital ADD CONSTRAINT buffershospital_pkey PRIMARY KEY(id ); 



DELETE FROM buffershospital;

Insert INTO buffershospital (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (1000)::double precision), 4326)), '1 Km', 10
       FROM planet_osm_polygon WHERE amenity= 'hospital';
Insert INTO buffershospital (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (500)::double precision), 4326)), '500 m', 5
       FROM planet_osm_polygon WHERE amenity= 'hospital';
Insert INTO buffershospital (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (400)::double precision), 4326)), '400 m', 4
       FROM planet_osm_polygon WHERE amenity= 'hospital';
Insert INTO buffershospital (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (300)::double precision), 4326)), '300 m', 3
       FROM planet_osm_polygon WHERE amenity= 'hospital';
Insert INTO buffershospital (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (200)::double precision), 4326)), '200 m', 2
       FROM planet_osm_polygon WHERE amenity= 'hospital';
Insert INTO buffershospital (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (100)::double precision), 4326)), '100 m', 1
       FROM planet_osm_polygon WHERE amenity= 'hospital';       


CREATE INDEX idx_buffershospital_geom ON buffershospital USING GIST(the_geom);


CREATE TABLE bufferswater (
    the_geom geometry,
    distance text,
    dist integer,
    id integer NOT NULL
);
CREATE SEQUENCE bufferswater_id_seq;
ALTER TABLE bufferswater ALTER COLUMN id SET DEFAULT nextval(' bufferswater_id_seq');
ALTER TABLE  bufferswater ADD CONSTRAINT bufferswater_pkey PRIMARY KEY(id ); 
DELETE FROM bufferswater;
Insert INTO bufferswater (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (200)::double precision), 4326)), '200 m', 200
       FROM planet_osm_point WHERE amenity= 'drinking_water';
Insert INTO bufferswater (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (100)::double precision), 4326)), '100 m', 100
       FROM planet_osm_point WHERE amenity= 'drinking_water';
Insert INTO bufferswater (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (50)::double precision), 4326)), '50 m', 50
       FROM planet_osm_point WHERE amenity= 'drinking_water';
Insert INTO bufferswater (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (25)::double precision), 4326)), '25 m', 25
       FROM planet_osm_point WHERE amenity= 'drinking_water';  
CREATE INDEX idx_bufferswater_geom ON bufferswater USING GIST(the_geom);


CREATE TABLE bufferslight (
    the_geom geometry,
    distance text,
    dist integer,
    id integer NOT NULL
);
CREATE SEQUENCE bufferslight_id_seq;
ALTER TABLE bufferslight ALTER COLUMN id SET DEFAULT nextval(' bufferslight_id_seq');
ALTER TABLE  bufferslight ADD CONSTRAINT bufferslight_pkey PRIMARY KEY(id ); 
DELETE FROM bufferslight;
Insert INTO bufferslight (the_geom, distance, dist) SELECT
        st_union(st_transform(st_buffer(st_transform(way, 32637), (25)::double precision), 4326)), '25 m', 25
       FROM planet_osm_point WHERE highway = 'street_lamp';  
CREATE INDEX idx_bufferslight_geom ON bufferslight USING GIST(the_geom);
