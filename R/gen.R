
#' Generalized exponential
#'
#' @param rho is the value to be exponentiated
#' @param kappa is 1/degree (don't specify both)
#' @param degree is the degree of the polynomial (extent of compounding)
#' @export
genExp <- function(rho, kappa=NULL, degree=NULL){
	if(!is.null(degree)){
		if(!is.null(kappa))
			stop("Don't specify both kappa and degree in genExp")
		kappa = 1/degree
	}
	if (kappa==0)
		return(exp(rho))
	return((1+rho*kappa)^(1/kappa))
}

#' Generalized logarithm
#'
#' @param y is the value to be logged
#' @param kappa is 1/degree (don't specify both)
#' @param degree is the degree of the polynomial (extent of compounding)
#' @export
genLog <- function(y, kappa=NULL, degree=NULL){
	if(!is.null(degree)){
		if(!is.null(kappa))
			stop("Don't specify both kappa and degree in genLog")
		kappa = 1/degree
	}
	if (kappa==0)
		return(log(y))
	return((y^kappa-1)/kappa)
}
