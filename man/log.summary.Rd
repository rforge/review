\name{log.summary}
\alias{log.summary}
\title{ Summarize a Review Log }
\description{
  Summarize the review log associated with a particular directory.
}
\usage{
log.summary(directory = getwd())
}
\arguments{
  \item{directory}{ the directory containing the log, or any directory below it }
}
\details{
  Whereas the review log can have any number of records for the same file, the
  summary reduces the data to one record per file.  It is an error if any element
  of the file column is missing.  
  
  The log is read, then sorted on file, revision, and time, in ascending order.  
  The last record for each unique file is retained.
  
  The function log.summary() uses the svn interface to retrieve the current 
  revision number of each file, appending the information as the column 'commit'.
  
  Be sure to update your checkout for the most current summary.  In particular,
  this ensures that the latest values of 'commit' are represented.
}
\value{
data.frame
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.pending}},
\code{\link{log.assignments}},
\code{\link{log.read}},
\code{\link{log.target}}, 
}
\keyword{manip}

