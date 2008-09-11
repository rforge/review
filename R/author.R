`author` <-
function(file=log.root()){
	text <- repo.info(file)
	x <- xmlTreeParse(text,asText=TRUE)
	y <- x$doc$children$info[["entry"]][["commit"]][["author"]][[1]]
	z <- NA
	if(!is.null(y) & length(as.character(y)) >= 6) z <- as.character(y)[[6]]
	z
}

