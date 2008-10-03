`log.pending` <-
function(directory=getwd()){
	log <- log.summary(directory)
	log[with(log,fCommit > revision | pCommit > revision | revision == 0),]
}

