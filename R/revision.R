`revision` <-
function(file=log.root()){
	text <- repo.info(file)
	x <- xmlTreeParse(text,asText=TRUE)
	y <- x$doc$children$info[["entry"]][["commit"]]$attributes[["revision"]]
	if(is.null(y))y <- NA
	as.numeric(y)
}

