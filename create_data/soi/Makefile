what=soi
all: create_$(what).out
# As of August 26, 2016, the R script does its own download.
%.out: %.R
	R --no-save < $< > $@
clean:
	-rm *~ *.rda *.out
install:
	cp $(what).rda ../../data
force:

