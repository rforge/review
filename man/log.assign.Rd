\name{log.assign}
\alias{log.assign}
\title{ Assign Review Ttasks }
\description{
  Appends a log with defaults supplied by log.queue().  These are appropriate
  for assigments, with default reviewer set to "anyone" and default approved set
  to 0.  Default revision is also zero, which is diagnostic.
}
\usage{
log.assign(directory = getwd(), file = dir(), ...)
}
\arguments{
  \item{directory}{ the parent of 'file' }
  \item{file}{ a character vector of filenames (paths) relative to directory }
  \item{\dots}{ arguments passed to log.queue() }
}
\details{
  Since files with revision of zero normally do not exist,  the other fields are
  not really informative, except for reviewer.  This function may be used to 
  specify a reviewer for certain files, regardless of review number.  Default reviewer 
  "anyone" simply declares that an entitity should be reviewed.
}
\value{
(invisible) the number of records created..
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.assignments}},
\code{\link{log.append}},
\code{\link{log.queue}},
\code{\link{log.pass}}, 
}
\keyword{manip}

