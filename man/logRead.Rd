\name{logRead}
\alias{logRead}
\title{ Read a Review Log }
\description{
  Read a review log from storage and create a corresponding data.frame.
}
\usage{
logRead(directory = getwd())
}
\arguments{
  \item{directory}{ the directory containing the log, or any directory below it }
}
\details{
  Regardless of the current working directory, if the directory containing the log
  is an ancestor (parent, grandparent, etc.) the log will be found and read. It is
  an error if the directory does not exist or if the log does not exist.
}
\value{
data.frame with format much like QClog.csv
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{logCreate}},
\code{\link{logRoot}},
\code{\link{logAppend}},
\code{\link{logWrite}}, 
}
\keyword{manip}

