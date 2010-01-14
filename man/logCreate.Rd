\name{logCreate}
\alias{logCreate}
\title{ Create a Review Log }
\description{
  Creates an empty table in the directory specified with name "QClog.csv".
}
\usage{
logCreate(directory = getwd())
}
\arguments{
  \item{directory}{directory in which to create the log file}
}
\details{
  Columns are as follows.  
  \itemize{
  	\item{file}{The path and name of the accepted file, relative to the specified directory, and not beginning with "/".}
	\item{origin}{Identical to 'file' or the name of some other file responsible for this content.}
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
\code{\link{logName}}, 
\code{\link{logAssign}}, 
\code{\link{logAccept}},
}
\keyword{manip}

