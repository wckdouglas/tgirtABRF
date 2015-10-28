#' Assign replicate for the samples
#'
#' inputting samplename and it will return
#' the the replicate number that the sample was
#'
#' @param x the sample name of the RNA-seq library \code{inputParameter1}
#'
#' @return replicate
#'
#' @keywords keywords
#'
#' @export
#'
#' @examples
#' R code here showing how your function works
getReplicate <- function(x){
	ifelse(grepl('ABRF',x),
		   stri_list2matrix(stri_split_fixed(x,'-'))[5,],
		   ifelse(grepl('miRQC',x),
				  ifelse(grepl('repeat',x),'2','1'),
					str_sub(x,5,5)))
}
