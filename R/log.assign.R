`log.assign` <-
function(directory=getwd(),file=dir(),...)log.append(
	log.root(directory),
	log.queue(directory,file,...)
)

