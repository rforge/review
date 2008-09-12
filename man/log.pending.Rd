\name{log.pending}
\alias{log.pending}
\title{ List Log Entries that Require (Further) Review }
\description{
  Checks the log summary and returns entries for files whose most recent action
  is disapproval, as well as approved files that have been surpassed by more recent
  versions.
}
\usage{
log.pending(directory = getwd())
}
\arguments{
  \item{directory}{ any directory at or below that containing the log. }
}
\details{
  Be sure to update your checkout for the latest pending information.
}
\value{
data.frame
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.summary}},
\code{\link{log.assignments}},
\code{\link{log.assign}},
\code{\link{log.pass}}, 
}
\keyword{manip}

