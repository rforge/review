`rel.path` <-
function( file=dir(),directory=getwd()){
	rel.dir <- sub("^/","",sub(logRoot(),"",absDir(directory),fixed=TRUE))
	rel.path <- file.path(rel.dir,file)
	rel.path[!file.exists(file.path(directory,file))] <- NA
	rel.path <- sub("^/","",rel.path)
	rel.path
}

