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
  	\item{file}{The path and name of the accepted file, relative to the specified directory, and not beginning with "/"}
	\item{origin}{Identical to 'file' or the name of some other file responsible for this content}
	\item{revf}{The reviewed revision of the file}
	\item{revo}{The review-time version of the file's origin}
	\item{reviewer}{The R login of the reviewer of 'file'}
	\item{time}{Date and time (GMT) of acceptance of \em{'file'}}
  }
}
\value{
used for side effects.
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
	\itemize{
		\item{}{\code{\link{logName}}}
		\item{}{\code{\link{logAssign}}}
		\item{}{\code{\link{logAccept}}}
	}
}
\keyword{manip}

