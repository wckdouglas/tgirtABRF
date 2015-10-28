#' Assign mix ratio for ERCC samples
#'
#' inputting designed fold change and it will return
#' the the annotated label
#'
#' @param x designed fold change \code{inputParameter1}
#'
#' @return fold change label
#'
#' @keywords keywords
#'
#'
#' @examples
#' R code here showing how your function works
labeling <- function(fold){
    if(fold == 4){
        '4:1'
    }else if(fold == 0.67){
        '2:3'
    }else if(fold == 0.5){
        '1:2'
    }else if(fold == 1){
        '1:1'
    }
}
