`relPath` <-
function( file=dir(),directory=getwd()){
	rel.dir <- sub("^/","",sub(logRoot(),"",absDir(directory),fixed=TRUE))
	relPath <- file.path(rel.dir,file)
	relPath[!file.exists(file.path(directory,file))] <- NA
	relPath <- sub("^/","",relPath)
	relPath
}

