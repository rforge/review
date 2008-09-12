\name{author}
\alias{author}
\title{ Subversion Author of a File }
\description{
  Gives the author of a file that is under subversion control.
}
\usage{
author(file = log.root())
}
\arguments{
  \item{file}{ a (path to a) subversioned file}
}
\details{
  If the file is not subversioned, NA is returned. This function is not vectorized,
  so use sapply for multiple files.
}
\value{
character
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{ 
\code{\link{revision}},
\code{\link{repo.info}},
}
\keyword{manip}

