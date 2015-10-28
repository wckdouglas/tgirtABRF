#' Assign template for the samples
#'
#' inputting samplename and it will return
#' the template that was sequenced
#'
#' @param x the sample name of the RNA-seq library \code{inputParameter1}
#'
#' @return template
#'
#' @keywords keywords
#'
#' @export
#'
#' @examples
#' R code here showing how your function works
getTemplate <- function(x){
    ifelse(grepl('ABRF',x),
           stri_list2matrix(stri_split_fixed(x,'-'))[4,],
           ifelse(grepl('miRQC',x),
                  stri_list2matrix(stri_split_fixed(x,'_'))[2,],
                  substr(x,4,4)))
}
