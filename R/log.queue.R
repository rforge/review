`log.queue` <-
function(
	directory=getwd(),
	file=dir(),
	revision=0,
	origin=file,
	reviewer="anyone",
	time=gmt(),
	force=FALSE
){
	coerce <- function(arg){
		x <- get(arg)
		if(length(x)==1) x <- rep(x,length(file))
		if(length(x)!=length(file))stop(paste(arg,"should be length 1, or length(file)"))
		x
	}
	confirm <- function(directory,file){
		file <- file[!is.na(file)]
		nonesuch <- file[!file.exists(paste(directory,file,sep="/"))]
		if(length(nonesuch))warning(
			paste(
				length(nonesuch),
				"nonexistent file(s), e.g.",
				nonesuch[[1]]
			)
		)
	}		
	if(length(directory)!=1)stop("directory should have length one")
	if(!is.character(file))stop("file should be character")
	if(!file_test("-d",directory))stop("directory not found")
	directory <- abs.dir(directory)
	file <- sub("^/+","",file)
	confirm(directory,file)
	revision <- coerce("revision")
	origin <- sub("^/+","",origin)
	confirm(directory,origin)
	origin <- coerce("origin")
	reviewer <- coerce("reviewer")
	time <- coerce("time")
	target <- log.target(directory,file,force)
	data.frame(
		file=rel.path(directory,file),
		revision=revision,
		origin=rel.path(directory,origin),
		reviewer=reviewer,
		time=time,
		stringsAsFactors=FALSE
	)
}

