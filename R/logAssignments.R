`logAssignments` <-
function(directory=getwd(),reviewer=Sys.info()[['login']]){
	log <- logPending(directory)
	if(!is.null(reviewer)) log <- log[log$reviewer %in% reviewer,]
	log[,"file"]
}

