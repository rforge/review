\name{log.accept}
\alias{log.accept}
\title{ Approve a File }
\description{
  Indicate acceptance of a file by logging an entry with nonzero version.
}
\usage{
log.accept(
	directory = getwd(), 
	file = dir(), 
	parent = file,
	reviewer = Sys.info()["login"],  
	force = FALSE, 
	...
)
}
\arguments{
  \item{directory}{ the parent of file }
  \item{file}{ one or more files to accept }
  \item{parent}{ the file that created this file, or self }
  \item{reviewer}{ the user issuing the opinion, normally oneself }
  \item{force}{ if false (default) nonexistent files cause an error }
  \item{\dots}{ arguments passed to log.queue }
}
\details{
  Can be undone with log.revert().
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

