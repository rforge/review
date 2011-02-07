.First.lib <-function(lib,pkg)
{
    ver <- as.character(
    	read.dcf(
		file=file.path(lib,pkg,"DESCRIPTION"), 
		fields="Version"
	)
    )
    cat("review", ver, "loaded\n")
 }
