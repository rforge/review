\name{logPending}
\alias{logPending}
\title{ List Log Entries that Require Review }
\description{
  Checks the log summary and returns entries for files whose revision numbers 
  are zero, or whose times are less then the Last Changed Time of 'origin'.
}
\usage{
logPending(directory = getwd())
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
\code{\link{logSummary}},
\code{\link{logAssignments}},
\code{\link{logAssign}},
\code{\link{logAccept}}, 
}
\keyword{manip}

