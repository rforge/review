\name{rel.path}
\alias{rel.path}
\title{ Create File Paths Relative to the Log Root }
\description{
  For the files specified by the arguments, create file names paths relative to
  the directory containing the review log.
}
\usage{
rel.path(file = dir(), directory = getwd())
}
\arguments{
  \item{file}{ one or more files for which to create paths}
  \item{directory}{ the parent of file }
}
\details{
  The elements of 'file' must be encoded relative to 'directory'.
}
\value{
character vector
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{parent.dir}},
\code{\link{abs.dir}},
\code{\link{log.root}},
\code{\link{help}}, 
}
\keyword{manip}

