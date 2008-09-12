\name{log.grade}
\alias{log.grade}
\title{ Issue Judgments about Files }
\description{
  Create records indicating approval status of files.
}
\usage{
log.grade(
	directory = getwd(), 
	file = dir(), 
	reviewer = Sys.info()["login"], 
	approved, 
	force = FALSE, 
	...
)
}
\arguments{
  \item{directory}{ the parent of file }
  \item{file}{ one or more files to reject }
  \item{reviewer}{ the user issuing the opinion, normally oneself }
  \item{approved}{ 1 (yes) or 0 (no) }
  \item{force}{ if false (the default) nonexistent files cause an error }
  \item{\dots}{ arguments passed to log.queue }
}
\details{
  Unlike log.pass() and log.fail(), 'approve' can be mixed (0,1) for files passed
  to log.grade.  Can be undone with log.revert().
}
\value{
(invisible) number of records created.
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.pass}},
\code{\link{log.fail}},
\code{\link{log.revert}},
\code{\link{log.queue}}, 
}
\keyword{manip}

