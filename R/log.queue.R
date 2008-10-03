`log.queue` <-
function(
	directory=getwd(),
	file=dir(),
	parent=file,
	author=NULL,
	reviewer="anyone",
	revision=0,
	force=FALSE
){
	coerce <- function(arg){
		x <- get(arg)
		if(length(x)==1) x <- rep(x,length(file))
		if(length(x)!=length(file))stop(paste(arg,"should be length 1, or length(file)"))
		x
	}
	if(length(directory)!=1)stop("directory should have length one")
	if(!is.character(file))stop("file should be character")
	if(!file_test("-d",directory))stop("directory not found")
	if(is.null(author))author <- sapply(log.target(directory,file,force),author)
	names(author) <- NULL
	directory <- abs.dir(directory)
	file <- sub("^/+","",file)
	parent <- coerce("parent")
	author <- coerce("author")
	reviewer <- coerce("reviewer")
	revision <- coerce("revision")
	target <- log.target(directory,file,force)
	data.frame(
		file=rel.path(directory,file),
		parent=parent,
		author=author,
		reviewer=reviewer,
		revision=revision
	)
}

