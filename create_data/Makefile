dirs=beaufort buoy drag endeavour geosecs235 giss gs coastline conveyor levitus munk nao oceans papa RRprofile redfield riley schmitt secchi soi topo turbulence wilson
all:
	for d in $(dirs); do cd $$d && make && cd .. ; done
install:
	for d in $(dirs); do cd $$d && make install && cd .. ; done
check:
	Rscript check_longitude.R > check_longitude.out
	Rscript check_summaries.R > check_summaries.out
clean:
	for d in $(dirs); do cd $$d && make clean && cd .. ; done

