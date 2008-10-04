`log.append` <-
function(directory=log.root(),new,...){
	old <- log.read(directory)
	dups <- duplicated(old[,c("file","revision")])
	if(any(dups))warning(
		paste(
			"log contains duplicates of revision, e.g.",
			old$file[dups][[1]]
		)
	)
	file <- log.name(directory)
	key <- unique(old[old$revision==0,c("file","origin")])
	dupKey <- duplicated(key$file)
	#unreachable if no duplicated revision...
	if(any(dupKey))stop(
		paste(
			"log contains duplicates of origin, e.g.",
			key$file[dupKey][[1]]
		)
	)
	row.names(key) <- key$file
	newAssign <- new[new$revision==0,]
	reAssign <- newAssign$file %in% key$file
	if(any(reAssign))stop(
		paste(
			"attempt to reassign file(s), e.g.",
			newAssign$file[reAssign][[1]]
		)
	)
	new <- new[!do.call(paste,new) %in% do.call(paste,old)]
	new$prior <- key[new$file,"origin"]
	clash <- !is.na(new$prior) & new$prior!=new$origin
	if(any(clash))new$origin[clash] <- new$prior[clash]#Not much use if assignment is made after acceptance.
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

