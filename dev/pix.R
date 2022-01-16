library(rRlinks)
library(shellpipes)

rho <- seq(-1, 1, length.out=101)
kap <- seq(0, 1, length.out=5)

plot(rho, exp(rho), type="p")
for(kappa in kap){
	R <- genExp(rho, kappa)
	lines(rho, R)
}
