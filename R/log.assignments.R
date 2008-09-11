`log.assignments` <-
function(directory=getwd(),reviewer=Sys.info()[['login']]){
	log <- log.pending(directory)
	if(!is.null(reviewer)) log <- log[log$reviewer %in% reviewer,]
	log[,"file"]
}

