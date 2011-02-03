\name{svnPropget}
\alias{svnPropget}
\alias{svnMimeType}
\alias{svnText}
\title{ Retrieve Subversion File Properties }
\description{
  Retrieve a given Subversion property for a file.
}
\usage{
svnPropget(file,prop)
svnMimeType(x,...)
svnIsText(x,...)
}
\arguments{
   \item{file}{the name of a single file} 
  \item{prop}{a property}
  \item{x}{character vector of file names}
  \item{\dots}{ignored arguments}
}
\details{
	A light-weight interface to some Subversion functionality. \code{file}
	must exist, and \code{prop} must be recognizable by Subversion.  For
	\code{svnPropget} returns an empty character string if the property
	is not defined, and returns NA if the file is not a subversioned resource.
	\code{svnMimeType} calls \code{svnPropget} for a vector of file names to 
	retrieve the property \code{svn:mime-type}: an empty string if not defined.
	\code{svnIsText} applies Subversion's internal criteria for testing whether 
	a file is text or binary.
}
\value{
	\code{svnPropget} and \code{svnMimeType} return \code{character}.  \code{svnText}
	returns \code{logical}.
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
	\itemize{
		\item \code{\link{repoInfo}}
	}
}
\keyword{manip}

