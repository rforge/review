`log.queue` <-
function(
	directory=getwd(),
	file=dir(), 
	revision=0,
	author=NULL,
	reviewer="anyone",
	task="review",
	time=Sys.time(),
	approved=0,
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
	revision <- coerce("revision")
	author <- coerce("author")
	reviewer <- coerce("reviewer")
	task <- coerce("task")
	time <- coerce("time")
	approved <- coerce("approved")
	target <- log.target(directory,file,force)
	data.frame(
		file=rel.path(directory,file),
		revision=revision,
		author=author,
		reviewer=reviewer,
		task=task,
		time=as.character(time),
		approved=approved
	)
}

