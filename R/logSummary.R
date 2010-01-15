`logSummary` <-
function(directory=getwd()){
	log <- logRead(directory)
	if(any(is.na(log$file)))stop("missing file names in log")
	log <- log[order(log$file, log$rev_f, log$time),]
	log <- log[!duplicated(log$file,fromLast=TRUE),]
	cols <- c('file','origin','rev_f','head_f','rev_o','head_o','reviewer','time')
	if(!nrow(log))return(cbind(log,data.frame(head_f=character(0),head_o=character(0))))[,cols]
	absFile <- logTarget(file=log$file,directory=logRoot(directory),force=TRUE)
	absOrigin <- logTarget(file=log$origin,directory=logRoot(directory),force=TRUE)
	log$head_f <- sapply(absFile,revision)
	log$head_o <- sapply(absOrigin,svnDate)
	log <- log[,cols]
	class(log) <- c('logSummary','data.frame')
	log
}
print.logSummary <- function(x,...){
	x$origin[x$origin==x$file] <- '=='
	x$rev_o[x$origin=='==' & x$rev_o == x$rev_f] <- '=='
	if(all(x$origin=='=='))x$origin <- NULL
	if(all(x$rev_o=='=='))x$rev_o <- NULL
}
