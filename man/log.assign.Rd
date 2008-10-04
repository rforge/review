\name{log.assign}
\alias{log.assign}
\title{ Assign Review Ttasks }
\description{
  Appends a log with defaults supplied by log.queue().  These are appropriate
  for assigments.  Default reviewer is set to "anyone".  
  Default revision is zero, which is diagnostic of an assignment.
}
\usage{
log.assign(directory = getwd(), file = dir(), origin = file, ...)
}
\arguments{
  \item{directory}{ the parent of 'file' }
  \item{file}{ a character vector of filenames (paths) relative to directory }
  \item{origin}{ a character vector filenames (paths) relative to directory, from which 'file' originates }
  \item{\dots}{ arguments passed to log.queue() }
}
\details{
  Since files with revision of zero normally do not exist, no acceptance is 
  implied by an assigned record. This function may be used to specify a reviewer 
  for certain files.  Default reviewer "anyone" simply declares that an entitity
  should be reviewed. "Origin" files may also be specified, indicating that a 
  file originates from (e.g. is created by) some other file.  The function 
  log.pending() identifies files with a later-versioned origin.  A file's origin
  is itself, by default. Currently, log.assign() calls log.append, which will
  not allow reassignments (new records for the same file with revision==0).
}
\value{
(invisible) the number of records created..
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{log.assignments}},
\code{\link{log.append}},
\code{\link{log.queue}},
\code{\link{log.accept}}, 
}
\keyword{manip}

