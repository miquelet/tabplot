tableplot_checkCols <- function(sortCol, colNames) {	
	if (!missing(sortCol)) {
		nl <- as.list(seq_along(colNames))
		names(nl) <- colNames
		sortCol <- eval(sortCol, nl, parent.frame())
		if (is.character(sortCol)) sortCol <- which(sortCol==colNames)
		if (!length(sortCol)) stop("Incorrect sortCol argument")
	}
	
	tryCatch({
		if (any(sortCol > length(colNames))) stop("Incorrect sortCol indices")
	}, error=function(e) {
		if (getOption("show.error.messages")) cat("Incorrect sortCol argument\n")
	})
	
	if (length(sortCol)>1) warning("Sorting on multiple columns not supported anymore. Only first column is taken.")
	sortCol[1]
}
