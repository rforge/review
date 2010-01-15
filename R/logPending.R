`logPending` <- 
function(directory=getwd()){
	log <- logSummary(directory)
	log[with(log, latest > revision | changed > time),]
}

