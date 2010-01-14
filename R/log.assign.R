`log.assign` <-
function(file=dir(),directory=getwd(),origin=file,...)log.append(
	new=log.queue(file=file,directory=directory,origin=origin,...),
	directory=log.root(directory)
)

