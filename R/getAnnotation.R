#' Assign annotated lab + prep
#'
#' inputting prep and lab and it will return
#' the annotation for facet
#'
#' @param prep the prep for the RNA-seq library \code{inputParameter1}
#' @param lab the lab that the RNA-seq library was made from \code{inputParameter1}
#'
#' @return annotation
#'
#' @keywords keywords
#'
#' @export
#'
#' @examples
#' R code here showing how your function works
getAnnotation <- function(prep,lab){
    ifelse(prep=='TruSeq v2',paste0(prep,' (',lab,')'),prep)
}
