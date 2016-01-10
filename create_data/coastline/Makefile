what=coastlineWorldFine
all: create_$(what).out
%.out: %.R
	R --no-save < $< > $@
clean:
	-rm *~ *.rda *.out
install:
	cp coastlineWorldMedium.rda coastlineWorldFine.rda ../../data

