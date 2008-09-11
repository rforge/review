\name{log.target}
\alias{log.target}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
log.target(directory = getwd(), file = dir(), force = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{directory}{ ~~Describe \code{directory} here~~ }
  \item{file}{ ~~Describe \code{file} here~~ }
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
function(directory=getwd(),file=dir(),force=FALSE){
	target <- paste(abs.dir(directory),file,sep="/")
	missing <- target[!file_test("-f",target)]
	if(length(missing) && !force)stop(paste(length(missing),"nonexistent file(s), e.g.",missing[1]))
	target
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
