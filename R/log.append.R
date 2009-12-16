`log.append` <-
function(new,directory=log.root(),...){
	old <- log.read(directory)
	#Combine old and new.
	mix <- rbind(old,new)
	file <- log.name(log.root(directory))
	if(!file.exists(file))stop(paste("can't find",file))
	log.write(mix,file=file)
	history <- list()
	if(exists("log.history",where=1)) history <- get("log.history",pos=1)
	newrows <- nrow(new)
	if(is.null(history[[file]])) history[[file]] <- newrows
	else history[[file]] <- append(history[[file]],newrows)
	if(newrows > 0) assign("log.history",history,pos=1)
	invisible(newrows)
}

