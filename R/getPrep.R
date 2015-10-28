#' Assign prep for the samples
#'
#' inputting samplename and it will return
#' the prep that was used for preparing
#' the sequencing library
#'
#' @param x the sample name of the RNA-seq library \code{inputParameter1}
#'
#' @return prep
#'
#' @keywords keywords
#'
#' @export
#'
#' @examples
#' R code here showing how your function works
getPrep <- function(x){
    ifelse(grepl('RIBO|W_',x),
           'TruSeq v3',
           ifelse(grepl('ref|Lambowitz_|plasma',x)
                  ,'TGIRT-seq',
                  ifelse(grepl('miRQC',x),
                         'Small RNA-seq',
                         'TruSeq v2')))
}
