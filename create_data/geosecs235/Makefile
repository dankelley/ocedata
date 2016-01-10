what=geosecs235
all: create_$(what).out
%.out: %.R
	R --no-save < $< > $@
clean:
	-rm *~ *.rda *.out
install:
	cp $(what).rda ../../data

## I wouldn't be surprised that this link will fail some day ... they all do.
download: force
	curl http://iridl.ldeo.columbia.edu/SOURCES/.GEOSECS/ISTA/235/VALUE/data.cdf > geosecs235.cdf
force:

