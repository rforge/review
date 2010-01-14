\name{logAppend}
\alias{logAppend}
\title{ Append a Review Log }
\description{
  Add records to a review log.
}
\usage{
logAppend(new,directory = logRoot(),  ...)
}
\arguments{
  \item{new}{ a data.frame of new records to append, as created with logQueue(). }
  \item{directory}{ the directory containing the log, or any directory below it }
  \item{\dots}{ arguments passed to logQueue(). }
}
\details{
  Generally this function is not called by the user.  Check "see also" for preferred interface.
  new\$origin may contain NA, if (per file) precedents exist in log.
}
\value{
(invisible) the number of rows added
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{logAssign}},
\code{\link{logAccept}},
\code{\link{logQueue}}, 
}
\keyword{manip}

