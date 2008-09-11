`log.root` <-
function(directory=getwd()){
	if(!file_test("-d",directory))stop(paste("nonexistent directory:",directory))
	start <- getwd()
	setwd(directory)
	root <- NULL
	parent <- parent.dir(getwd())
	if(file.exists(log.name(getwd()))) root <- getwd()
	else if(!is.null(parent)) root <- log.root(parent)
	setwd(start)
	root
}

