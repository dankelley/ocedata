what=giss
all: create_$(what).out
%.out: %.R
	R --no-save < $< > $@
clean:
	-rm *~ *.rda *.out
install:
	cp $(what).rda ../../data
download:
	curl http://data.giss.nasa.gov/gistemp/tabledata_v3/GLB.Ts+dSST.txt > giss-20151107.dat

