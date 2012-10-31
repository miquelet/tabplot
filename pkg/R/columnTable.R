columnTable <-
function(bd, datName, colNames, sortCol,  decreasing, scales, pals, colorNA, numPals, nBins, from, to) {
	
	n <- length(bd)
	nr <- nBins
	colNames <- names(bd)
	
	#####################################
	## Grammar of Graphics: Stats
	##
	## Perform statistical operations
	#####################################
	
	## Determine viewport, and check if nBins is at least number of items
	vp <- tableViewport(nr, from, to)
	if (nBins > vp$m) nBins <- vp$m

	## Calculate bin sizes
	binSizes <-	getBinSizes(vp$m, nBins)
	print(list(binSizes=binSizes, bd=bd[[1]][,1]))


	#############################
	##
	## Create list object that contains all data needed to plot
	##
	#############################
	isNumber <- sapply(bd, function(agg) colnames(agg)[2] == "mean")
	
	tab <- list()
	tab$dataset <- datName
	tab$filter <- "Not used"
	tab$n <- n
	tab$nBins <- nBins
	tab$binSizes <- binSizes
	tab$isNumber <- isNumber
	## tab$row contains info about bins/y-axis
	tab$rows <- list( heights = -(binSizes/vp$m)
	                , y = 1- c(0,cumsum(binSizes/vp$m)[-nBins])
	                , m = vp$m
	                , from = from
	                , to = to
	                , marks = pretty(c(from, to), 10)
	                )
	
	## create column list
	tab$columns <- list()
	paletNr <- 1
	scales <- rep(scales, length.out=sum(isNumber))
	numP <- rep(numPals, length.out=sum(isNumber))
	scalesNr <- 1
	for (i in 1:n) {
		sortc <- ifelse(i %in% sortCol, ifelse(decreasing[which(i==sortCol)], "decreasing", "increasing"), "")
		col <- list(name = colNames[i], isnumeric = isNumber[i], sort=sortc)
		agg <- bd[[col$name]]
		col$agg <- agg
		
		if (isNumber[i]) {
			col$mean <- agg[,2]
			col$compl <- 100*agg[,3]
			col$scale_init <- scales[scalesNr]
			col$paletname <- numP[scalesNr]
			scalesNr <- scalesNr + 1
		} else {
			col$freq <- agg
			col$categories <- colnames(agg)
			col$categories[ncol(agg)] <- "missing"
			col$paletname <- pals$name[paletNr]
			col$palet <- pals$palette[[paletNr]]
			col$colorNA <- colorNA
			paletNr <- ifelse(paletNr==length(pals$name), 1, paletNr + 1)
		}
 		tab$columns[[i]] <- col
	}

	return(tab)
}