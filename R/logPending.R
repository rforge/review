`logPending` <- #needs to change
function(directory=getwd()){
	log <- logSummary(directory)
	log[with(log, time < changed | revision == 0),]
}

