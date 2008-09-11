`log.target` <-
function(directory=getwd(),file=dir(),force=FALSE){
	target <- paste(abs.dir(directory),file,sep="/")
	missing <- target[!file_test("-f",target)]
	if(length(missing) && !force)stop(paste(length(missing),"nonexistent file(s), e.g.",missing[1]))
	target
}

