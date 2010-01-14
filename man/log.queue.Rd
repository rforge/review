\name{log.queue}
\alias{log.queue}
\title{ Prepare Records for Review Log }
\description{
  Create one or more records with the proper format for appending to a review log.
}
\usage{
log.queue(
	file = dir(), 
	directory = getwd(), 
	revision = 0,
	origin = file, 
	reviewer="anyone",
	time=gmt(), 
	force = FALSE
)
}
\arguments{
  \item{file}{ one or more files for which to create records}
  \item{directory}{ the parent of file }
  \item{revision}{ the svn revision of the file being reviewed }
  \item{origin}{ file(s) from which 'file' originates}
  \item{reviewer}{  the user issuing the opinion, normally oneself }
  \item{time}{ character string: date and time of acceptance, using GMT (UTC) }
  \item{force}{if false (the default) nonexistent files cause an error  }
}
\details{
  The required format for a review log is described in \code{\link{log.create}}. 
  Functions like log.assign() and log.accept() send output to the log.  The function
  log.queue() creates a data.frame that can be viewed, assigned, and manipulated prior
  to appending the log.  You may want to use log.queue() in conjunction with log.append().
  That is exactly what log.assign() and log.accept() do.
  
  Note that time should be character, each element ending with "GMT".
}
\value{
data.frame, with a format much like QClog.csv
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.create}},
\code{\link{log.assign}},
\code{\link{log.accept}},
\code{\link{log.append}}, 
}
\keyword{manip}

