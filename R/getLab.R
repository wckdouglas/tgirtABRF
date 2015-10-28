#' Assign lab for the samples
#'
#' inputting samplename and it will return
#' the lab name that the sample was prepared
#'
#' @param x the sample name of the RNA-seq library \code{inputParameter1}
#'
#' @return lab name
#'
#' @keywords keywords
#'
#' @export
#'
#' @examples
#' R code here showing how your function works
getLab <- function(x){
    ifelse(grepl('-L-|L_',x),
           'L',
           ifelse(grepl('-RIBO-|W_',x),
                  'W',
                  ifelse(grepl('-V-|V_',x),
                         'V',
                         ifelse(grepl('-R-|R_',x),
                                'R',
                                ifelse(grepl('plasma',x),
                                       'Lambowitz Plasma',
                                       ifelse(grepl('miRQC',x),'miRQC','Lambowitz'))))))
}
