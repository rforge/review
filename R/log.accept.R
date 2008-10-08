`log.accept` <-
function(
	directory=getwd(),
	file=dir(),
	origin=NA,
	reviewer=Sys.info()['login'],
	force=FALSE,
	...
){
	target <- log.target(directory,file,force)
	revision <- sapply(target,revision)
	log.append(
		directory,
		log.queue(
			directory=directory,
			file=file,
			origin=origin,
			revision=revision,
			reviewer=reviewer,
			force=force,
			...
		)
	)
}

