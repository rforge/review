`log.pending` <-
function(directory=getwd()){
	log <- log.summary(directory)
	log[with(log, time < changed | revision == 0),]
}

