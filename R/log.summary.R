`log.summary` <-
function(directory=getwd()){
	log <- log.read(directory)
	if(any(is.na(log$file)))stop("missing file names in log")
	log <- log[order(log$file, log$revision, log$time),]
	log <- log[rev(rownames(log)),]
	log <- log[!duplicated(log$file),]
	log <- log[rev(rownames(log)),]
	if(!nrow(log))return(cbind(log,data.frame(changed=character(0))))
	target <- log.target(log.root(directory),log$origin,force=TRUE)
	log$changed <- sapply(target,svnDate)
	log
}

