\name{log.accept}
\alias{log.accept}
\title{ Approve a File }
\description{
  Indicate acceptance of a file by logging an entry with nonzero version.
}
\usage{
log.accept(
	file = dir(), 
	directory = getwd(), 
	reviewer = Sys.info()["login"],  
	force = FALSE, 
	...
)
}
\arguments{
  \item{file}{ one or more files to accept }
  \item{directory}{ the parent of file }
  \item{reviewer}{ the user issuing the opinion, normally oneself }
  \item{force}{ if false (default) nonexistent files cause an error }
  \item{\dots}{ arguments passed to log.queue }
}
\details{
  Can be undone with log.revert(). Calls log.append().
}
\value{
(invisible) number of records created.
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.assign}},
\code{\link{log.queue}},
\code{\link{log.root}}, 
}
\keyword{manip}

