`log.assign` <-
function(directory=getwd(),file=dir(),origin=file,...)log.append(
	log.root(directory),
	log.queue(directory=directory,file=file,origin=origin,...)
)

