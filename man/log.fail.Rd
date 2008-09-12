\name{log.fail}
\alias{log.fail}
\title{ Dissaprove a File }
\description{
  Indicate rejection of a file by logging an entry with 'approved' equal to 0.
}
\usage{
log.fail(directory = getwd(), file = dir(), reviewer = Sys.info()["login"], approved = 0, force = FALSE, ...)
}
\arguments{
  \item{directory}{ the parent of file }
  \item{file}{ one or more files to reject }
  \item{reviewer}{ the user issuing the opinion, normally oneself }
  \item{approved}{ coerced to zero, regardless of the value supplied }
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
\code{\link{log.pass}},
\code{\link{log.queue}},
\code{\link{log.revert}}, 
}
\keyword{manip}

