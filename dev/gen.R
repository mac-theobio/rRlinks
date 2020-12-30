library(devtools)
load_all()

rho <- 3
kappa <- 2

y <- genExp(rho, kappa)
print(y)

print(genLog(y, kappa))
