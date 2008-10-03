\name{log.pending}
\alias{log.pending}
\title{ List Log Entries that Require (Further) Review }
\description{
  Checks the log summary and returns entries for files whose revision numbers 
  are zero, or smaller than either the latest commit of the file or its parent.
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
\code{\link{log.accept}}, 
}
\keyword{manip}

