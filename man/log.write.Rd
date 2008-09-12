\name{log.write}
\alias{log.write}
\title{ Write a Review Log to Storage in Standard Format }
\description{
  Write a review log, using the same formatting conventions as log.read().
}
\usage{
log.write(x, file)
}
\arguments{
  \item{x}{ a data.frame, like the output of log.queue() }
  \item{file}{ a file name }
}
\details{
  Calls write.table() with quotes and rownames turned off.  Separator is comma,
  NA's are dots.
  
  Normally the user should not have to call log.write().  The functions 
  log.create(), log.append(), and log.revert() call it.
}
\value{
Used for side effects.
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.read}},
\code{\link{log.create}},
\code{\link{log.append}},
\code{\link{help}}, 
}
\keyword{manip}

