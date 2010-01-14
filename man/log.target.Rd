\name{log.target}
\alias{log.target}
\title{ Generate Fully Qualified Filenames }
\description{
  Prepend the absolute file path to each file name, and test for existence.
}
\usage{
log.target(file = dir(),directory = getwd(), force = FALSE)
}
\arguments{
  \item{file}{ one or more files for which to create targets}
  \item{directory}{ the parent of file }
  \item{force}{if false (the default) nonexistent files cause an error  }
}
\details{
 This function is vectorized.
}
\value{
 character vector of file names
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{abs.dir}},
\code{\link{log.queue}},
}
\keyword{manip}

