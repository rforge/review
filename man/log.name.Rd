\name{log.name}
\alias{log.name}
\title{ The Full Path and Name of the Log File }
\description{
  Gives a full-path log name for the directory supplied. The default directory
  is log.root(), in which case the file must already exist.
}
\usage{
log.name(directory = log.root())
}
\arguments{
  \item{directory}{ a directory for which a log name is desired }
}
\details{
  Without arguments, returns full path to log file when current directory is at
  or below the root (directory containing the log).
}
\value{
character
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.root()}},
\code{\link{abs.dir}},
\code{\link{log.create}},
}
\keyword{manip}

