\name{repo.info}
\alias{repo.info}
\title{ Retrieve Repository Information }
\description{
  For a given file, retrieve svn repository information as XML.
}
\usage{
repo.info(file = log.root())
}
\arguments{
  \item{file}{a file name }
}
\details{
  Not normally called by the user.
}
\value{
	an XML representation of \code{svn info}
}
\references{ http://metruminstitute.org }
\author{ Tim Bergsma }
\seealso{
\code{\link{revision}},
\code{\link{author}},
\code{\link{log.root}},
}
\keyword{manip}

