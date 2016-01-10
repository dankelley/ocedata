what=soi
all: create_$(what).out
%.out: %.R
	R --no-save < $< > $@
clean:
	-rm *~ *.rda *.out
download: force
	#curl http://www.cgd.ucar.edu/cas/catalog/climind/soi.html > soi.dat
	http://www.cgd.ucar.edu/cas/catalog/climind/SOI.nc > SOI.nc
install:
	cp $(what).rda ../../data
force:

