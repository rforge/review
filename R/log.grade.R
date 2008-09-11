`log.grade` <-
function(
	directory=getwd(),
	file=dir(),
	reviewer=Sys.info()['login'],
	approved,
	force=FALSE,
	...
){
	if(missing(approved))stop("argument 'approved' is missing")
	target <- log.target(directory,file,force)
	revision <- sapply(target,revision)
	log.append(
		directory,
		log.queue(
			directory,
			file,
			revision=revision,
			reviewer=reviewer,
			approved=approved,
			force=force,
			...
		)
	)
}

