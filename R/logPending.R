`logPending` <- 
function(directory=getwd()){
	log <- logSummary(directory)
	log[with(log, head_f > rev_f | head_o > rev_o),]
}

