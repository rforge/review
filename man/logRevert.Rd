\name{logRevert}
\alias{logRevert}
\title{ Revert a Change to a Review Log }
\description{
  Undo the most recent addition(s) to a review log made during this session.
}
\usage{
logRevert(directory = logRoot())
}
\arguments{
  \item{directory}{ the directory containing the log, or any directory below it }
}
\details{
  The function logAppend() maintains an object in the global environment called
  \code{log.history}, which tracks the number of records associated with each 
  invocation of logAppend().  This allows the user to undo recent additions
  sequentially (backwards). The capability persists until the session ends, at 
  which time log.history no longer exists.  It is an error to revert if no changes
  were made or if all changes were reverted already.
  
  Do not confuse logRevert() with \code{svn revert}.  The latter is a command line function
  that reverses all changes since last commit, and can be used only once.
  The former is an R function that reverses all changes since last append, and 
  can be used as many times as there were append actions in this session.
}
\value{
(invisible) the number of records removed from the end of the log file
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{logAppend}},
\code{\link{logAssign}},
\code{\link{logAccept}}, 
}
\keyword{manip}

