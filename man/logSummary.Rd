\name{logSummary}
\alias{logSummary}
\title{ Summarize a Review Log }
\description{
  Summarize the review log associated with a particular directory.
}
\usage{
logSummary(directory = getwd())
}
\arguments{
  \item{directory}{ the directory containing the log, or any directory below it }
}
\details{
  Whereas the review log can have any number of records for the same file, the
  summary reduces the data to one record per file.  It is an error if any element
  of the file column is missing.  
  
  The log is read, then sorted on file, revision, time.  The last record 
  for each file is retained.
  
  The function logSummary() uses the svn interface to retrieve the Last Changed
  Date of each \em{origin}, appending the information as the column 'changed'.
  It retrieves the Last Changed Revision of each \em{file}, appending the information
  as the column 'latest'.  Column order is adjusted.
  
  Be sure to update your checkout for the most current summary.
}
\value{
data.frame
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{logPending}},
\code{\link{logAssignments}},
\code{\link{logRead}},
\code{\link{logTarget}}, 
\code{\link{svnDate}}, 
}
\keyword{manip}

