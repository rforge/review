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
Version: \tab 1.2\cr
Date: \tab 2008-10-03\cr
License: \tab GPL2\cr
LazyLoad: \tab yes\cr
}
These functions are rather flexible, but convenient defaults are chosen.  Easiest
usage is described here.

\bold{Making a Log}
\enumerate{
\item{}{In R, navigate to the check-out directory with \code{setwd()}.}
\item{}{Type \code{log.create()}.}
\item{}{Be sure to add your log file and check it in with svn tools.}
}
\bold{Making Assignments}
\enumerate{
\item{}{In R, navigate to the check-out directory with \code{setwd()}.}
\item{}{Try \code{dir(recursive=TRUE)} to get a list of possible assignments.  
customize as necessary.}
\item{}{To assign all files to "anyone", type \code{log.assign(file=dir(recursive=TRUE)).If the files have 'parents', specify.}.}
\item{}{To assign just the files in a directory, navigate there and type \code{log.assign()}.}
\item{}{To review the result, type \code{log.read()}.}
\item{}{To undo the result, type \code{log.revert()}.}
\item{}{Check in your changes using svn tools.}
}
\bold{Reviewing Files}
\enumerate{
\item{}{Update your checkout with svn tools.}
\item{}{Naviate to the directory containing the log, or below.} 
\item{}{View your assignments with \code{log.assignments()} or \code{log.assignments(reviewer = 'anyone')}.}
\item{}{Capture the name of a particular file, e.g. \code{f <- log.assignments()[[1]]}.} 
\item{}{To approve the file, say \code{log.accept(file=f)}.}
\item{}{Check in your changes using svn tools.}
}
\bold{Summarizing}
\enumerate{
\item{}{Navigate to the directory containing the log, or below.}
\item{}{Type \code{log.summary()}.}
\item{}{If \code{log.pending()} is empty, all assigned reviews are complete.}
}
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
\itemize{
	\item{}{\code{\link{abs.dir}}}
	\item{}{\code{\link{parent.dir}}}
	\item{}{\code{\link{log.name}}}
	\item{}{\code{\link{log.create}}}
	\item{}{\code{\link{log.root}}}
	\item{}{\code{\link{repo.info}}}
	\item{}{\code{\link{revision}}}
	\item{}{\code{\link{author}}}
	\item{}{\code{\link{log.read}}}
	\item{}{\code{\link{log.write}}}
	\item{}{\code{\link{rel.path}}}
	\item{}{\code{\link{log.target}}}
	\item{}{\code{\link{log.queue}}}
	\item{}{\code{\link{log.append}}}
	\item{}{\code{\link{log.revert}}}
	\item{}{\code{\link{log.assign}}}
	\item{}{\code{\link{log.accept}}}
	\item{}{\code{\link{log.summary}}}
	\item{}{\code{\link{log.pending}}}
	\item{}{\code{\link{log.assignments}}}
}
}
\keyword{manip}

