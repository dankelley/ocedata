all: create_giss.out
%.out: %.R
	R --no-save < $< > $@
download:
	curl http://data.giss.nasa.gov/gistemp/tabledata_v3/GLB.Ts+dSST.txt > giss-20151107.dat
clean:
	rm *~ *.out
