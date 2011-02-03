\name{svnMarkAsText}
\alias{svnMarkAsText}
\title{Mark Subversioned File as Text}
\description{Mark subversioned file as text, rather than binary.}
\usage{svnMarkAsText(x, ...)
}
\arguments{
  \item{x}{character vector of file names}
  \item{\dots}{ignored}
}
\details{
\code{x} is reduced to those file names that are subversioned
and are not already considered \sQuote{text}.  Then the property \sQuote{svn:mime-type}
is set to \sQuote{text/user}.
}
\value{numeric}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
	\itemize{
		\item \code{\link{isSubversioned}}
		\item \code{\link{svnIsText}}
		\item \code{\link{svnMarkAsNonText}}
		\item \code{\link{svnPropSet}}
	}
}
\keyword{manip}
