`log.read` <-
function(directory=getwd()){
	if(!file_test("-d",directory))stop(paste("nonexistent directory:",directory))
	root <- log.root(directory)
	if(is.null(root))stop(paste(abs.dir(directory),"does not have a log root"))
	read.table(
		log.name(log.root(directory)),
		header=TRUE,
		sep=",",
		as.is=TRUE,
		na.strings=".",
		strip.white=TRUE
	)
}

