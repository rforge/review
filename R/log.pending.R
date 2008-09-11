`log.pending` <-
function(directory=getwd()){
	log <- log.summary(directory)
	log[with(log,commit > revision | approved == 0),]
}

