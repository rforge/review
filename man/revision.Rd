\name{revision}
\alias{revision}
\title{ Subversion Revision of a File }
\description{
  Gives the revision of a file that is under subversion control.
}
\usage{
revision(file = log.root())
}
\arguments{
  \item{file}{ a (path to a) subversioned file}
}
\details{
  If the file is not subversioned, NA is returned. This function is not vectorized,
  so use sapply for multiple files.

}
\value{
numeric
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{author}},
\code{\link{repo.info}},
}
\keyword{manip}

