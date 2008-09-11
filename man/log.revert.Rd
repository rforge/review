\name{log.revert}
\alias{log.revert}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
log.revert(directory = log.root())
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
function(directory=log.root()){
	old <- log.read(directory)
	file <- log.name(directory)
	if(exists("log.history",where=1))	history <- get("log.history",pos=1)
	else stop("no log history in this session")
	if(!file \%in\% names(history))stop(paste("no history for",file,"in this session"))
	recent <- length(history[[file]])
	revert <- history[[file]][[recent]]
	if(recent==1) history[[file]] <- NULL
	else history[[file]] <- history[[file]][1:recent-1]
	if(revert > nrow(old))stop("history inconsistent with log state")
	if(nrow(old)==0)stop("log has no records")
	row.names(old) <- nrow(old):1
	old <- old[as.numeric(row.names(old)) > revert,]
	log.write(old,file=file)
	assign("log.history",history,pos=1)
	invisible(revert)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
