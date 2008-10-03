`log.assign` <-
function(directory=getwd(),file=dir(),parent=file,...)log.append(
	log.root(directory),
	log.queue(directory,file,parent,...)
)

