
#' Calculate initial backward distribution
#' 
#' Calculate an initial backward distribution by discounting and normalizing
#' an intrinsic distibution (or kernel)
#'
#' @export
#' @param g Intrinsic distribution
#' @param r discount rate
#' @return backward distribution

b0fun <- function(g, r){
	step <- g[["time_step"]]
	d0 <- with(g, density*exp(-r*time))
	return(with(g, list(
		time_step = step
		, density=d0/sum(step*d0)
	)))
}

