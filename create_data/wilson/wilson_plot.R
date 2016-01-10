load("wilson.rda")
attach(wilson)
plot(Age, Distance, xlab="Age [My]", ylab="Distance [km]", xlim=c(125,0), ylim=c(0,4000))
abline(0,4000/125)
m <- lm(Distance~Age-1, data=wilson)
## Wilson reports in cm/year; 1cm/y = 1km/1My * 1e5 / 1e6
spreadingRate <- as.numeric(coef(m)) / 10 
print(spreadingRate)
abline(m, col='red')
