\name{log.append}
\alias{log.append}
\title{ Append a Review Log }
\description{
  Add records to a review log.
}
\usage{
log.append(new,directory = log.root(),  ...)
}
\arguments{
  \item{new}{ a data.frame of new records to append, as created with log.queue(). }
  \item{directory}{ the directory containing the log, or any directory below it }
  \item{\dots}{ arguments passed to log.queue(). }
}
\details{
  Generally this function is not called by the user.  Check "see also" for preferred interface.
  new$origin may contain NA, if (per file) precedents exist in log.
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

