`repo.info` <-
function(file=log.root())paste(system(paste("svn info --xml",file),intern=TRUE),collapse="")

