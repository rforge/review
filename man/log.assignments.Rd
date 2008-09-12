\name{log.assignments}
\alias{log.assignments}
\title{ Detect Files to be Reviewed }
\description{
  Gives a vector of the pending files assigned to reviewer (normally oneself).
}
\usage{
log.assignments(directory = getwd(), reviewer = Sys.info()[["login"]])
}
\arguments{
  \item{directory}{ the directory containing the log, or any directory below it  }
  \item{reviewer}{a user name on which to filter results }
}
\details{
  "Pending" has the meaning described for log.pending().  "Assigned" has the meaning
  described for log.assign().  A character vector is returned, from which elements
  can be selected for use as arguments to log.pass() or log.fail().
}
\value{
character
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.pending}},
\code{\link{log.assign}},
\code{\link{log.pass}},
\code{\link{log.fail}}, 
}
\keyword{manip}

