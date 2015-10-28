#' Assign group for ERCC spikein
#'
#' inputting fold change and it will return
#' the group for the ERCC spikein
#'
#' @param x fold change for the ERCC spikein \code{inputParameter1}
#'
#' @return group
#'
#' @keywords keywords
#'
#' @export
#'
#' @examples
#' R code here showing how your function works

getGroup <- function(fold){
    sapply(fold,labeling)
}
