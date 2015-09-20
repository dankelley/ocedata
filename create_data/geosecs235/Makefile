download: force
	curl http://iridl.ldeo.columbia.edu/SOURCES/.GEOSECS/ISTA/235/VALUE/data.cdf > geosecs235.cdf
geosecs235.out: geosecs235.R
	R --no-save < $< > $@
force:
