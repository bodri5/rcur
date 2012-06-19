\name{getError}
\alias{getError}

\title{Retrieve the error of the approximation from CURobj-class}
\description{Retrieve the error of the approximation from \link{CURobj-class}}
\usage{
	getError(object)
}
\arguments{
\item{object}{ object of class \link{CURobj-class} }
}
\value{ The Frobenius norm of the difference between the original matrix and the CUR approximation, or NULL, if CUR was called with error.return=FALSE (default).}
\references{
Mahoney M. W. and Drineas P. (2009) CUR matrix decompositions for improved data analysis. PNAS, 106(3):697-702
}
\examples{
data(STTm)
res <- CUR(STTm, 31, 12, 3, error.return=TRUE)
getError(res)
}


