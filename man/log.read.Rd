\name{log.read}
\alias{log.read}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
log.read(directory = getwd())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{directory}{ ~~Describe \code{directory} here~~ }
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
function(directory=getwd()){
	if(!file_test("-d",directory))stop(paste("nonexistent directory:",directory))
	root <- log.root(directory)
	if(is.null(root))stop(paste(abs.dir(directory),"does not have a log root"))
	read.table(
		log.name(log.root(directory)),
		header=TRUE,
		sep=",",
		as.is=TRUE,
		na.strings=".",
		strip.white=TRUE
	)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
