`log.summary` <-
function(directory=getwd()){
	log <- log.read(directory)
	if(any(is.na(log$file)))stop("missing file names in log")
	log <- log[order(log$file,log$revision),]
	log <- log[rev(rownames(log)),]
	log <- log[!duplicated(log$file),]
	log <- log[rev(rownames(log)),]
	if(!nrow(log))return(cbind(log,data.frame(fCommit=character(0),oCommit=character(0))))
	target <- log.target(log.root(directory),log$file,force=TRUE)
	log$fCommit <- sapply(target,revision)
	target <- log.target(log.root(directory),log$origin,force=TRUE)
	log$oCommit <- sapply(target,revision)
	log
}

