dirs=beaufort buoy drag endeavour geosecs235 giss gs coastline conveyor levitus munk nao oceans papa redfield riley schmitt secchi soi turbulence wilson
all:
	for d in $(dirs); do cd $$d && make && cd .. ; done
install:
	for d in $(dirs); do cd $$d && make install && cd .. ; done
clean:
	for d in $(dirs); do cd $$d && make clean && cd .. ; done

