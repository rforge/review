`log.summary` <-
function(directory=getwd()){
	log <- log.read(directory)
	if(any(is.na(log$file)))stop("missing file names in log")
	log <- log[order(log$file,log$revision,log$time),]
	log <- log[rev(rownames(log)),]
	log <- log[!duplicated(log$file),]
	log <- log[rev(rownames(log)),]
	target <- log.target(log.root(directory),log$file,force=TRUE)
	log$commit <- sapply(target,revision)
	log
}

