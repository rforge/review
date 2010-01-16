\name{logSummary}
\alias{logSummary}
\alias{print.logSummary}
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
  
  The function logSummary() uses the svn interface to retrieve the latest revision
  of each file and origin, appending them as head.f and head.o respectively.
  Column order is controled.
  
  print.logSummary() tries to eliminate some redundant information for easier 
  viewing.  Columns \code{origin}, \code{rev.o}, and \code{head.o} are marked as ''
  where non-informative, and are dropped if entirely non-informative.
}
\value{
data.frame
}
\references{ http://metruminstitute.org }
\note{Be sure to update your checkout for the most current summary.}
\author{ Tim Bergsma }
\seealso{
	\itemize{
		\item{}{\code{\link{logPending}}}
		\item{}{\code{\link{logAssignments}}}
		\item{}{\code{\link{logRead}}}
		\item{}{\code{\link{logTarget}}}
		\item{}{\code{\link{svnDate}}}
	}
}
\keyword{manip}

