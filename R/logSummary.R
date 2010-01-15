`logSummary` <-
function(directory=getwd()){
	log <- logRead(directory)
	if(any(is.na(log$file)))stop("missing file names in log")
	log <- log[order(log$file, log$revision, log$time),]
	#log <- log[rev(rownames(log)),]
	log <- log[!duplicated(log$file,fromLast=TRUE),]
	#log <- log[rev(rownames(log)),]
	cols <- c('file','origin','reviewer','revision','latest','time','changed')
	if(!nrow(log))return(cbind(log,data.frame(latest=character(0),changed=character(0))))[,cols]
	absFile <- logTarget(file=log$file,directory=logRoot(directory),force=TRUE)
	absOrigin <- logTarget(file=log$file,directory=logRoot(directory),force=TRUE)
	log$latest <- sapply(absFile,revision)
	log$changed <- sapply(absOrigin,svnDate)
	if(all(log$file==log$origin))log$origin <- NULL
	log <- log[,cols]
	else log$file[log$file==log$origin] <- '='
	log
}

