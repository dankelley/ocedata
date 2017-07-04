what=levitus
all: create_$(what).out
%.out: %.R
	R --no-save < $< > $@
clean:
	-rm *~ *.rda *.out
install:
	cp $(what).rda ../../data
download:
	curl https://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/temperature/netcdf/decav/1.00/woa13_decav_t00_01.nc > woa13_decav_t00_01.nc
	curl https://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/salinity/netcdf/decav/1.00/woa13_decav_s00_01.nc > woa13_decav_s00_01.nc
	echo "DO MANUALLY--  sudo mv woa*nc /data/oar/levitus"
