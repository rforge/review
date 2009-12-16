\name{log.assign}
\alias{log.assign}
\title{ Assign Review Tasks }
\description{
  Appends a log with defaults supplied by log.queue().  These are appropriate
  for assigments.  Default reviewer is set to "anyone".  
  Default revision is zero, which is diagnostic of an assignment.
}
\usage{
log.assign(file = dir(), directory = getwd(), ...)
}
\arguments{
  \item{file}{ a character vector of filenames (paths) relative to directory }
  \item{directory}{ the parent of 'file' }
  \item{\dots}{ arguments passed to log.queue() }
}
\details{
  Since files with revision of zero normally do not exist, no acceptance is 
  implied by an assigned record. This function may be used to specify a reviewer 
  for certain files.  Default reviewer "anyone" simply declares that an entity
  should be reviewed.
}
\value{
(invisible) the number of records created.
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.assignments}},
\code{\link{log.append}},
\code{\link{log.queue}},
\code{\link{log.accept}}, 
}
\keyword{manip}

