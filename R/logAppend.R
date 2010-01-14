`logAppend` <-
function(new,directory=logRoot(),...){
	old <- logRead(directory)
	#Impute NA origin as most recent (time) value.
	precedent <- old$origin
	names(precedent) <- old$file
	precedent <- precedent[order(old$file,old$time)]
	#precedent <- rev(precedent)
	precedent <- precedent[!is.na(precedent) & !duplicated(names(precedent),fromLast=TRUE)]
	new$precedent <- precedent[new$file]
	new$origin[is.na(new$origin)] <- new$precedent[is.na(new$origin)]
	new$precedent <- NULL
	new$origin[is.na(new$origin)] <- new$file[is.na(new$origin)]
	#Combine old and new.
	mix <- rbind(old[names(new)],new)
	file <- logName(logRoot(directory))
	if(!file.exists(file))stop(paste("can't find",file))
	logWrite(mix,file=file)
	history <- list()
	if(exists("log.history",where=1)) history <- get("log.history",pos=1)
	newrows <- nrow(new)
	if(is.null(history[[file]])) history[[file]] <- newrows
	else history[[file]] <- append(history[[file]],newrows)
	if(newrows > 0) assign("log.history",history,pos=1)
	invisible(newrows)
}

