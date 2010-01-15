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
	rev_f <- sapply(fpath,revision)
	rev_o <- sapply(opath,revision)
	logAppend(
		new=logQueue(
			file=file,
			directory=directory,
			origin=origin,
			rev_f=rev_f,
			rev_o=rev_o,
			reviewer=reviewer,
			force=force,
			...
		),
		directory=directory
	)
		
}

