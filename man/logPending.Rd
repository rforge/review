\name{logPending}
\alias{logPending}
\title{ List Log Entries that Require Review }
\description{
  Checks the log summary and returns entries for which the \code{latest} version of 
  a file is greater than the (last) \code{revision} that was reviewed, as well as
  those for which the origin has \code{changed} since the \code{time} of review.
}
\usage{
logPending(directory = getwd())
}
\arguments{
  \item{directory}{ any directory at or below that containing the log. }
}
\details{
One always wants to review the latest revision of a file, after the last change
to its origin.  Typically, a file is its own origin (e.g. a directly-authored
script), in which case the condition above is necessarily met.  But for derived 
files (e.g. script generated data files, images, tables) it is conceivable that 
the origin (e.g. script) could legitimately change without creating a new version 
of the derived object.  Further review is indicated, but sequencing must be evaluated
independently for the file and its origin.  Since the review log already contains
time of review, change in time is used to evaluate origin status (as opposed to 
tracking the revision of the origin at time of review).
}
\value{
data.frame
}
\Note{
  Be sure to update your checkout for the latest pending information.
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

