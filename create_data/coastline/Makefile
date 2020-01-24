what=coastline_slots
all: create_$(what).out
%.out: %.R
	R --no-save < $< > $@
clean:
	-rm *~ *.rda *.out
install:
	cp coastlineWorldMedium_slots.rda ../../inst/extdata
	cp coastlineWorldFine_slots.rda ../../inst/extdata


