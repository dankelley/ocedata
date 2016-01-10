what=redfield
all: create_$(what).out
%.out:%.R
	R --no-save < $< >$@
clean:
	rm -f *.out *~
install:
	cp redfieldNC.rda redfieldNP.rda redfieldPlankton.rda ../../data

