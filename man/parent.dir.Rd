\name{parent.dir}
\alias{parent.dir}
\title{ Identify the Parent of a Directory }
\description{
  Generate a fully qualified directory name for the parent of the specified directory.
}
\usage{
parent.dir(directory = getwd())
}
\arguments{
  \item{directory}{ the directory whose parent is sought }
}
\details{
  It is an error if the directory does not exist.  If it exists but has no parent,
  NULL is returned. The path includes the volume root.  This function is not 
  vectorized.
}
\value{
character
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{abs.dir}},
\code{\link{rel.path}},
\code{\link{log.root}},
}
\keyword{manip}

