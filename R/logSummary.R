`logSummary` <-
function(directory=getwd()){
	log <- logRead(directory)
	if(any(is.na(log$file)))stop("missing file names in log")
	log <- log[order(log$file, log$revision, log$time),]
	log <- log[rev(rownames(log)),]
	log <- log[!duplicated(log$file),]
	log <- log[rev(rownames(log)),]
	if(!nrow(log))return(cbind(log,data.frame(changed=character(0))))
	target <- logTarget(file=log$file,directory=logRoot(directory),force=TRUE)
	log$changed <- sapply(target,svnDate)
	log
}

