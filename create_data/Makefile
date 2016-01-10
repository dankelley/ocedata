dirs=drag endeavour geosecs235 giss coastline conveyor oceans papa riley secchi soi turbulence
all:
	for d in $(dirs); do cd $$d && make && cd .. ; done
install:
	for d in $(dirs); do cd $$d && make install && cd .. ; done
clean:
	for d in $(dirs); do cd $$d && make clean && cd .. ; done

