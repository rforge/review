\name{log.append}
\alias{log.append}
\title{ Append a Review Log }
\description{
  Add records to a review log.
}
\usage{
log.append(directory = log.root(), new, ...)
}
\arguments{
  \item{directory}{ the directory containing the log, or any directory below it }
  \item{new}{ a data.frame of new records to append, as created with log.queue(). }
  \item{\dots}{ arguments passed to log.queue(). }
}
\details{
  Generally this function is not called by the user.  Check "see also" for preferred interface.
  A warning is issued if the log has duplicates of revision.  It is an error if
  the log contains duplicates of origin, or if an attempt is made to reassign
  a file.  Duplicate acceptance records are silently ignored.
}
\value{
(invisible) the number of rows added
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.assign}},
\code{\link{log.accept}},
\code{\link{log.queue}}, 
}
\keyword{manip}

