`log.append` <-
function(directory=log.root(),new,...){
	old <- log.read(directory)
	file <- log.name(directory)
	mix <- rbind(old,new)
	log.write(mix,file=file)
	history <- list()
	if(exists("log.history",where=1)) history <- get("log.history",pos=1)
	newrows <- nrow(new)
	if(is.null(history[[file]])) history[[file]] <- newrows
	else history[[file]] <- append(history[[file]],newrows)
	if(newrows > 0) assign("log.history",history,pos=1)
	invisible(newrows)
}

