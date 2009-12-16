`log.assign` <-
function(file=dir(),directory=getwd(),...)log.append(
	new=log.queue(file=file,directory=directory,...),
	directory=log.root(directory)
)

