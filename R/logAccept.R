`logAccept` <-
function(
	file=dir(),
	directory=getwd(),
	origin=logOrigin(file,directory),
	reviewer=Sys.info()['login'],
	force=FALSE,
	...
){
	fpath <- logTarget(file=file,directory=directory,force=force)
	opath <- logTarget(file=origin,directory=directory,force=force)
	rev.f <- sapply(fpath,revision)
	rev.o <- sapply(opath,revision)
	logAppend(
		new=logQueue(
			file=file,
			directory=directory,
			origin=origin,
			rev.f=rev.f,
			rev.o=rev.o,
			reviewer=reviewer,
			force=force,
			...
		),
		directory=directory
	)
		
}

