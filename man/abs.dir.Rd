\name{abs.dir}
\alias{abs.dir}
\title{ Absolute Directory }
\description{
  Return the full path of a directory.
}
\usage{
abs.dir(directory)
}
\arguments{
  \item{directory}{an absolute or relative path of a directory.}
}
\details{
  Relative paths include subdirectories, "..",".", "~","~/", etc. abs.dir() should
  return the complete path, back to the volume root.
}
\value{
character
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{rel.path}},
}
\keyword{manip}

