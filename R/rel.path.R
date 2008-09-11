`rel.path` <-
function(directory=getwd(), file=dir()){
	rel.dir <- sub("^/","",sub(log.root(),"",abs.dir(directory),fixed=TRUE))
	rel.path <- paste(rel.dir,file,sep="/")
	rel.path[!file.exists(paste(directory,file,sep="/"))] <- NA
	rel.path <- sub("^/","",rel.path)
	rel.path
}

