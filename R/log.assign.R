`log.assign` <-
function(file=dir(),directory=getwd(),...)log.append(
	log.root(directory),
	log.queue(file=file,directory=directory,...)
)

