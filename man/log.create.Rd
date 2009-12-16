\name{log.create}
\alias{log.create}
\title{ Create a Review Log }
\description{
  Creates an empty table in the directory specified with name "QClog.csv".
}
\usage{
log.create(directory = getwd())
}
\arguments{
  \item{directory}{directory in which to create the log file}
}
\details{
  Columns are as follows.  
  \itemize{
  	\item{file}{The path and name of the accepted file, relative to the 
	specified directory, and not beginning with "/".}
	\item{revision}{The reviewed revision of the file.}
	\item{reviewer}{The R login of the reviewer of 'file'.}
	\item{time}{Date and time (GMT) of acceptance of \em{'file'}.}
  }
}
\value{
used for side effects.
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.name}},
\code{\link{log.assign}},
\code{\link{log.accept}},
}
\keyword{manip}

