`logAccept` <-
function(
	file=dir(),
	directory=getwd(),
	origin=NA,
	reviewer=Sys.info()['login'],
	force=FALSE,
	...
){
	target <- logTarget(file=file,directory=directory,force=force)
	revision <- sapply(target,revision)
	logAppend(
		new=logQueue(
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

