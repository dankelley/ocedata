load("soi.rda")
str(soi)
par(mar=c(3,3,1,1),mgp=c(2,0.7,0))
plot(soi$year, soi$index, type='l')
