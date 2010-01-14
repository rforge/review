`logRead` <-
function(directory=getwd()){
	if(is.null(directory))stop("directory is null: log may not exist")
	if(!file_test("-d",directory))stop(paste("nonexistent directory:",directory))
	root <- logRoot(directory)
	if(is.null(root))stop(paste(absDir(directory),"does not have a log root"))
	read.table(
		logName(logRoot(directory)),
		header=TRUE,
		sep=",",
		as.is=TRUE,
		na.strings=".",
		strip.white=TRUE
	)
}

