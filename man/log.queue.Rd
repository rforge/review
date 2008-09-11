\name{log.queue}
\alias{log.queue}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
log.queue(directory = getwd(), file = dir(), revision = 0, author = NULL, reviewer = "anyone", task = "review", time = Sys.time(), approved = 0, force = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{directory}{ ~~Describe \code{directory} here~~ }
  \item{file}{ ~~Describe \code{file} here~~ }
  \item{revision}{ ~~Describe \code{revision} here~~ }
  \item{author}{ ~~Describe \code{author} here~~ }
  \item{reviewer}{ ~~Describe \code{reviewer} here~~ }
  \item{task}{ ~~Describe \code{task} here~~ }
  \item{time}{ ~~Describe \code{time} here~~ }
  \item{approved}{ ~~Describe \code{approved} here~~ }
  \item{force}{ ~~Describe \code{force} here~~ }
}
\details{
  ~~ If necessary, more details than the description above ~~
}
\value{
  ~Describe the value returned
  If it is a LIST, use
  \item{comp1 }{Description of 'comp1'}
  \item{comp2 }{Description of 'comp2'}
  ...
}
\references{ ~put references to the literature/web site here ~ }
\author{ ~~who you are~~ }
\note{ ~~further notes~~ 

 ~Make other sections like Warning with \section{Warning }{....} ~
}
\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
