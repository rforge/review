\name{log.queue}
\alias{log.queue}
\title{ Prepare Records for Review Log }
\description{
  Create one or more records with the proper format for appending to a review log.
}
\usage{
log.queue(
	directory = getwd(), 
	file = dir(), 
	revision = 0, 
	author = NULL, 
	reviewer = "anyone", 
	task = "review", 
	time = Sys.time(), 
	approved = 0, 
	force = FALSE
)
}
\arguments{
  \item{directory}{ the parent of file }
  \item{file}{ one or more files for which to create records}
  \item{revision}{ the svn revision of the file being reviewed }
  \item{author}{ the svn author of the file being reviewed }
  \item{reviewer}{  the user issuing the opinion, normally oneself }
  \item{task}{ specific review task, arbitrary content }
  \item{time}{ time of log entry: YYYY-MM-DD HH:MM:SS }
  \item{approved}{ 1 (yes) or 0 (no) }
  \item{force}{if false (the default) nonexistent files cause an error  }
}
\details{
  The required format for a review log is described in \code{\link{log.create}}. 
  Functions like log.assign() and log.pass() send output to the log.  The function
  log.queue() creates a data.frame that can be viewed, assigned, and manipulated prior
  to appending the log.  You may want to use log.queue() in conjunction with log.append().
  That is exactly what log.assign(), log.pass(), and log.fail() do.
}
\value{
data.frame, with a format much like QClog.csv
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.create}},
\code{\link{log.assign}},
\code{\link{log.pass}},
\code{\link{log.fail}}, 
\code{\link{log.append}}, 
}
\keyword{manip}

