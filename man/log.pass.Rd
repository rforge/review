\name{log.pass}
\alias{log.pass}
\title{ Approve a File }
\description{
  Indicate acceptance of a file by logging an entry with 'approved' equal to 1.
}
\usage{
log.pass(
	directory = getwd(), 
	file = dir(), 
	reviewer = Sys.info()["login"], 
	approved = 1, 
	force = FALSE, 
	...
)
}
\arguments{
  \item{directory}{ the parent of file }
  \item{file}{ one or more files to reject }
  \item{reviewer}{ the user issuing the opinion, normally oneself }
  \item{approved}{ coerced to 1, regardless of the value supplied }
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
\code{\link{log.fail}},
\code{\link{log.queue}},
\code{\link{log.root}}, 
}
\keyword{manip}

