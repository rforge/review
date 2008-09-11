`parent.dir` <-
function(directory=getwd()){
	if(!file_test("-d",directory))stop(paste("nonexistent directory:",directory))
	directory <- abs.dir(directory)
	start <- getwd()
	setwd(directory)
	parent <- NULL
	if(file_test("-d","..")){
		setwd("..")
		if(getwd()!=abs.dir(directory)) parent <- getwd()
	}
	setwd(start)
	parent
}

