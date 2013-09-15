psql -U osm -d hdm -h localhost -p 5432  -f /home/edouard/HDM-CartoCSS/data/dropview.sql;
osm2pgsql -G  -s -U osm -d hdm -H localhost -P 5432  -S /home/edouard/HDM-CartoCSS/data/hdm.style /home/edouard/HDM-CartoCSS/data/zaatari.osm --hstore --create
psql -U osm -d hdm -h localhost -p 5432  -f /home/edouard/HDM-CartoCSS/data/hdm-sql.sql;
