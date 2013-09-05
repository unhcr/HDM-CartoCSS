# WORK-IN-PROGRESS: CartoCSS for Camp mapping

OpenStreetmap (OSM) is a convenient shared repository for Camp Mapping data. 

The default rendering from Open Street map does not allow to present all the details that needs to be presented

The HDM rendering is a Carto project, focusing on presenting the information collected through the camp mapping preset: https://github.com/unhcr/presets.

Preview: http://a.tiles.mapbox.com/v3/unhcr.hdm-camp/page.html

Compare between this stule and the default OSM style: http://unhcr.github.io/HDM-CartoCSS/compare.html

## Deploying

### Local configuration & Workflow


### Import data from Open Street map

1. Import the data from Open Street Map (using JOSM or Qgis with the OSM plugin for instance) and save it an .osm file (here ```zaatari.osm```)

1. Install postgresql with the postgis extension and create the user ```osm``` with ```osm``` password and enough privileges.

1. Create a spatially enabled database (call it ```hdm```) and enable hstore (through the SQL command: ```CREATE EXTENSION hstore;```). 

1. Install osm2pgsql - http://wiki.openstreetmap.org/wiki/Osm2pgsql

1. Run osm2pgsql  - here is the command (adapt the path..) and a few view:

```
osm2pgsql -G  -s -U osm -d hdm -H localhost -P 5432  -S /home/edouard/HDM-CartoCSS/data/hdm.style /home/edouard/HDM-CartoCSS/data/zaatari.osm --hstore --create
psql -U osm -d hdm -h localhost -p 5432  -f /home/edouard/HDM-CartoCSS/data/hdm-sql.sql;

```


####  On TileMill:

1. Install tilemill: http://www.mapbox.com/tilemill/

1. Clone or downlaod this dir

1. Symlink it in your MapBox/project directory with the name `hdm` or create a new project called 'hdm' and copy the files from this dir in this new project.

1. Run tilemill and open the project 'hdm'


### Optional: Digital Elevation Model

1. get the file from [CGIAR](http://srtm.csi.cgiar.org/) 

1. Reproject it with the gdal command: `gdalwarp -s_srs EPSG:4269 -t_srs EPSG:3785 -r bilinear srtm_44_06.tif zaatari-3785.tif`

1. Create hillshade: `gdaldem hillshade -co compress=lzw zaatari-3785.tif zaatari-hillshade-80-3785.tif -alt 80`

1. If you have more than one tiff for you covered area, merge them in a vrt file (remember to use absolute path): `gdalbuildvrt haiti-hillshade.vrt ~/OSM/SRTM/srtm_22_09-hillshade-80-3785.tif ~/OSM/SRTM/srtm_23_09-hillshade-80-3785.tif`

1. Create contour line: `gdal_contour -a height zaatari-3785.tif zaatari_contour_25m.shp -i 25.0`

1. Index shape file: `shapeindex zaatari_contour_25m.shp`

#### Map in QGIS

See the Qgis project and attached styles.

Note that addtional views needs to be created in postgis (see SQL file). 
