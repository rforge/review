`log.append` <-
function(directory=log.root(),new,...){
	old <- log.read(directory)
	#Impute NA origin as most recent (time) value.
	precedent <- old$origin
	names(precedent) <- old$file
	precedent <- precedent[order(old$file,old$time)]
	precedent <- rev(precedent)
	precedent <- precedent[!is.na(precedent) & !duplicated(names(precedent))]
	new$precedent <- precedent[new$file]
	new$origin[is.na(new$origin)] <- new$precedent[is.na(new$origin)]
	new$precedent <- NULL
	if(any(is.na(new$origin)))stop(
		paste(
			"file origin must be specified unless it has a precedent, e.g.",
			new$file[is.na(new$origin)][[1]]
		)
	)
	#Combine old and new.
	mix <- rbind(old,new)
	file <- log.name(directory)
	log.write(mix,file=file)
	history <- list()
	if(exists("log.history",where=1)) history <- get("log.history",pos=1)
	newrows <- nrow(new)
	if(is.null(history[[file]])) history[[file]] <- newrows
	else history[[file]] <- append(history[[file]],newrows)
	if(newrows > 0) assign("log.history",history,pos=1)
	invisible(newrows)
}

