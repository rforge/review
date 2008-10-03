`log.append` <-
function(directory=log.root(),new,...){
	old <- log.read(directory)
	file <- log.name(directory)
	key <- unique(old[,c("file","parent")])
	if(any(duplicated(key$file)))stop(
		paste(
			"log contains conficting parents for file(s) e.g.",
			key$file[duplicated(key$file)][[1]]
		)
	)
	row.names(key) <- key$file
	new$prior <- key[new$file,"parent"]
	clash <- !is.na(new$prior) & new$prior!=new$parent
	if(any(clash)){
		warning(
			paste(
				"coercing new parent(s) to old parent(s), e.g.",
				new$file[clash][[1]]
			)
		)
		new$parent[clash] <- new$prior[clash]
	}
	new$prior <- NULL
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

