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
  \list{
  	\item{file}{
		The path and name of the accepted file, relative to the specified 
		directory, and not beginning with "/".  
	}
	\item{revision}{
		The reviewed revision of the file.
	}
	\item{origin}{
		Identical to 'file' or the name of some other file responsible 
		for this content.
	}
	\item{reviewer}{
		The R login of the reviewer of 'file'.
	}
	\item{time}{
		Date and time (GMT) of of acceptance of \em{'file'}.
	}

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

