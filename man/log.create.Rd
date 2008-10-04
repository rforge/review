\name{log.create}
\alias{log.create}
\title{ Create a Review Log }
\description{
  Creates an empty table in the directory specified with name "QClog.csv".
}
\usage{
log.create(directory = getwd())
}
\arguments{
  \item{directory}{directory in which to create the log file}
}
\details{
  Column names are file, revision, author, reviewer, task, time, and approved.  
  Entries for 'file' will be relative to the specified directory, and will not 
  begin with "/".  Entries for 'origin' should be identical to 'file' or the name
  of some other file responsible for this content.  Entries for 'author' should
  be the svn author of the reviewed revision.  Entries for 'reviewer' should be 
  the R login of the reviewer.  Entries for 'revision' should reflect the 
  reviewed revision of the file.
}
\value{
used for side effects.
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.name}},
\code{\link{log.assign}},
\code{\link{log.accept}},
}
\keyword{manip}

