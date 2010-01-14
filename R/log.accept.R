`log.accept` <-
function(
	file=dir(),
	directory=getwd(),
	origin=NA,
	reviewer=Sys.info()['login'],
	force=FALSE,
	...
){
	target <- log.target(file=file,directory=directory,force=force)
	revision <- sapply(target,revision)
	log.append(
		new=log.queue(
			file=file,
			directory=directory,
			origin=origin,
			revision=revision,
			reviewer=reviewer,
			force=force,
			...
		),
		directory=directory
	)
		
}

