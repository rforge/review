\name{svnMarkAsNonText}
\alias{svnMarkAsNonText}
\title{}
\description{}
\usage{svnMarkAsNonText(x, ...)
}
\arguments{
  \item{x}{character vector of file names}
  \item{\dots}{ignored}
}
\details{
\code{x} is reduced to those file names that are subversioned
and are not already considered \sQuote{text}.  Then the property \sQuote{svn:mime-type}
is set to \sQuote{application/octetstream}.
}
\value{numeric}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
	\itemize{
		\item \code{\link{isSubversioned}}
		\item \code{\link{svnIsText}}
		\item \code{\link{svnMarkAsText}}
		\item \code{\link{svnPropSet}}
	}
}
\keyword{manip}
