`logPending` <- 
function(directory=getwd()){
	log <- logSummary(directory)
	log[with(log, head.f > rev.f | head.o > rev.o),]
}

