\name{review-package}
\alias{review-package}
\alias{review}
\docType{package}
\title{
 Manage Review Logs
}
\description{
Functions for managing logs of reviews of subversioned files.
}
\details{
\tabular{ll}{
Package: \tab review\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2008-09-11\cr
License: \tab GPL2\cr
LazyLoad: \tab yes\cr
}
These functions are rather flexible, but convenient defaults are chosen.  Easiest
usage is described here.

Making a Log
\item{In R, navigate to the check-out directory with \code{setwd()}.}
\item{Type \code{log.create()}.}
\item{Be sure to add your log file and check it in with svn tools.}

Making Assignments.
\item{In R, navigate to the check-out directory with \code{setwd()}.}
\item{Try \code{dir(recursive=TRUE)} to get a list of possible assignments.  
customize as necessary.}
\item{To assign all files to "anyone", type \code{log.assign(file=dir(recursive=TRUE))}.}
\item{To assign just the files in a directory, navigate there and type \code{log.assign()}.}
\item{To review the result, type \code{log.read()}.}
\item{To undo the result, type \code{log.revert()}.}
\item{Check in your changes using svn tools.}

Reviewing Files
\item{Update your checkout with svn tools.}
\item{Naviate to the directory containing the log, or below.} 
\item{View your assignments with \code{log.assignments()} or \code{log.assignments(reviewer = 'anyone')}.}
\item{Capture the name of a particular file, e.g. \code{f <- log.assignments()[[1]]}.} 
\item{To approve the file, say \code{log.pass(file=f)}.}
\item{Check in your changes using svn tools.}

Summarizing
\item{Navigate to the directory containing the log, or below.}
\item{Type \code{log.summary()}.}
\item{If \code{log.pending()} is empty, all assigned reviews are complete.}
}
\author{
Tim Bergsma

Maintainer: Tim Bergsma <timb@metrumrg.com>
}
\references{
 Development supported by Metrum Institute:  http://metruminstitute.org.
}
\keyword{ package }
\seealso{
\tabular{11}{
\code{\link{abs.dir}}
\code{\link{parent.dir}}
\code{\link{log.name}}
\code{\link{log.create}}
\code{\link{log.root}}
\code{\link{repo.info}}
\code{\link{revision}}
\code{\link{author}}
\code{\link{log.read}}
\code{\link{log.write}}
\code{\link{rel.path}}
\code{\link{log.target}}
\code{\link{log.queue}}
\code{\link{log.append}}
\code{\link{log.revert}}
\code{\link{log.assign}}
\code{\link{log.pass}}
\code{\link{log.fail}}
\code{\link{log.grade}}
\code{\link{log.summary}}
\code{\link{log.pending}}
\code{\link{log.assignments}}
}
}
\keyword{manip}

