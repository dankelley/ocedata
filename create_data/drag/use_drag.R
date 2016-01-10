load("drag.rda")
par(mar=c(3,3,1,1), mgp=c(2, 0.7, 0))
plot(drag$U, drag$Cd, pch=ifelse(drag$method == "profile", 1, 19),
     xlab="U [m/s]", ylab=expression(C[D]),
     xlim=c(0, 22), ylim=c(0, 3e-3))
anova(lm(Cd~U+method, data=drag))

profileModel <- lm(Cd ~ U, data=subset(drag, method=="profile"))
eddyCorrelationModel <- lm(Cd ~ U, data=subset(drag, method=="eddy"))
new <- data.frame(U=seq(min(drag$U), max(drag$U), length.out=100))
profileCI <- predict(profileModel, new, interval="confidence")
matplot(new$U, cbind(profileCI), type='l', add=TRUE, col='black', lwd=c(2,1,1),lty='solid')
eddyCorrelationCI <- predict(eddyCorrelationModel, new, interval="confidence")
matplot(new$U, eddyCorrelationCI, type='l', add=TRUE, col='black', lwd=c(2,1,1), lty='dashed')
