`log.pending` <-
function(directory=getwd()){
	log <- log.summary(directory)
	log[with(log,fCommit > revision | oCommit > revision | revision == 0),]
}

