`log.accept` <-
function(
	directory=getwd(),
	file=dir(),
	parent=file,
	reviewer=Sys.info()['login'],
	force=FALSE,
	...
){
	target <- log.target(directory,file,force)
	revision <- sapply(target,revision)
	log.append(
		directory,
		log.queue(
			directory,
			file,
			parent,
			revision=revision,
			reviewer=reviewer,
			force=force,
			...
		)
	)
}

