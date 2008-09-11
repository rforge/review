`log.fail` <-
function(
	directory=getwd(),
	file=dir(),
	reviewer=Sys.info()['login'],
	approved=0,force=FALSE,
	...
){
	target <- log.target(directory,file,force)
	revision <- sapply(target,revision)
	log.append(
		directory,
		log.queue(
			directory,
			file,
			revision=revision,
			reviewer=reviewer,
			approved=0,
			force=force,
			...
		)
	)
}

