`log.queue` <-
function(
	file=dir(),
	directory=getwd(),
	revision=0,
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
	reviewer <- coerce("reviewer")
	time <- coerce("time")
	target <- log.target(file=file,directory=directory,force=force)
	data.frame(
		file=rel.path(file=file,directory=directory),
		revision=revision,
		reviewer=reviewer,
		time=time,
		stringsAsFactors=FALSE
	)
}

