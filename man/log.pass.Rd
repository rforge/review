\name{log.pass}
\alias{log.pass}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
log.pass(directory = getwd(), file = dir(), reviewer = Sys.info()["login"], approved = 1, force = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{directory}{ ~~Describe \code{directory} here~~ }
  \item{file}{ ~~Describe \code{file} here~~ }
  \item{reviewer}{ ~~Describe \code{reviewer} here~~ }
  \item{approved}{ ~~Describe \code{approved} here~~ }
  \item{force}{ ~~Describe \code{force} here~~ }
  \item{\dots}{ ~~Describe \code{\dots} here~~ }
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
	reviewer=Sys.info()['login'],
	approved=1,force=FALSE,
	...
){
	target <- log.target(directory,file,force)
	revision <- sapply(target,revision)
	log.append(
		directory,
		log.queue(
			directory,
			file,
			revision=revision,
			reviewer=reviewer,
			approved=1,
			force=force,
			...
		)
	)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
