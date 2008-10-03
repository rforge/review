`log.create` <-
function(directory=getwd()){
	if(file.exists(log.name(directory)))stop("log exists")
	log.write(
		data.frame(
			file=character(0),
			parent=character(0),
			author=character(0),
			reviewer=character(0)
			revision=integer(0),
		),
		file=log.name(directory)
	)
}

