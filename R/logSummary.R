`logSummary` <-
function(directory=getwd()){
	log <- logRead(directory)
	if(any(is.na(log$file)))stop("missing file names in log")
	log <- log[order(log$file, log$rev.f, log$time),]
	log <- log[!duplicated(log$file,fromLast=TRUE),]
	cols <- c('file','origin','rev.f','head.f','rev.o','head.o','reviewer','time')
	if(!nrow(log))return(cbind(log,data.frame(head.f=numeric(0),head.o=numeric(0))))[,cols]
	absFile <- logTarget(file=log$file,directory=logRoot(directory),force=TRUE)
	absOrigin <- logTarget(file=log$origin,directory=logRoot(directory),force=TRUE)
	log$head.f <- sapply(absFile,revision)
	log$head.o <- sapply(absOrigin,revision)
	log <- log[,cols]
	class(log) <- c('logSummary','data.frame')
	log
}
print.logSummary <- function(x,...){
	x$origin[x$origin==x$file] <- ''
	x$rev.o[x$origin=='' & x$rev.o == x$rev.f] <- ''
	x$head.o[x$origin=='' & x$head.o == x$head.f] <- ''
	if(all(x$origin==''))x$origin <- NULL
	if(all(x$rev.o==''))x$rev.o <- NULL
	if(all(x$head.o==''))x$head.o <- NULL
	NextMethod()
}
