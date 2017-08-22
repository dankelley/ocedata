what=levitus
all: create_$(what).out create_levitus_all.out
%.out: %.R
	R --no-save < $< > $@
clean:
	-rm *~ *.rda *.out
install:
	cp $(what).rda ../../data

## Rename the data files to make them easier to guess. Also, we need to be careful
## on macos because the OS considers "o00" and "O00" to be the same.
##
## FIXME: the curl fails for density but I can download it through the web. I don't know why
download:
	#curl https://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATAv2/density/netcdf/decav/1.00/woa13_decav_I00_01.nca > woa13_density.nc
	curl https://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/temperature/netcdf/decav/1.00/woa13_decav_t00_01.nc > woa13_temperature.nc
	curl https://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/salinity/netcdf/decav/1.00/woa13_decav_s00_01.nc > woa13_salinity.nc
	curl https://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/oxygen/netcdf/all/1.00/woa13_all_o00_01.nc > woa13_oxygen.nc
	curl https://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/o2sat/netcdf/all/1.00/woa13_all_O00_01.nc > woa13_o2sat.nc
	curl https://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/silicate/netcdf/all/1.00/woa13_all_i00_01.nc > woa13_silicate.nc
	curl https://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/phosphate/netcdf/all/1.00/woa13_all_p00_01.nc > woa13_phosphate.nc
	curl https://data.nodc.noaa.gov/thredds/fileServer/woa/WOA13/DATA/nitrate/netcdf/all/1.00/woa13_all_n00_01.nc > woa13_nitrate.nc
	echo "DO MANUALLY--  sudo cp woa*nc /data/oar/levitus"

