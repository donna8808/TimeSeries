#6.6.4 wave tank data
wave<-read.table('wave.txt', header=T)
attach(wave)
plot(waveht, type='l',xlab='time')
length(waveht)
plot(waveht[1:395],waveht[2:396],xlab='X_t',ylab='X_{t+1}')
cor(waveht[1:395],waveht[2:396])


AP<-AirPassengers
plot(AP)
acf(AP)

#
X<-rnorm(200,0,1)
plot(X, type='l')
acf(X)

plot(global.ts)

#KPSS 검정 H_0 stationary VS H_1 non-stationary

library(tseries)
kpss.test(AP)
kpss.test(X)
kpss.test(global.ts)
