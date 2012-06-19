\name{leverage}
\alias{leverage}

\title{Retrieve leverage scores from CURobj-class}
\description{Retrieve leverage scores from \link{CURobj-class}}
\usage{
	leverage(object, C = TRUE)
}
\arguments{
\item{object}{ object of class \link{CURobj-class} }
\item{C}{ logical, if it is TRUE, then the obtained leverage scores belongs to columns, if FALSE, then to rows}
}
\value{ the function returns a numerical vector of leverage scores}
\references{
Mahoney M. W. and Drineas P. (2009) CUR matrix decompositions for improved data analysis. PNAS, 106(3):697-702
}
\examples{
data(STTm)
res <- CUR(STTm, 31, 12, 3)
leverage(res, C=TRUE)
}
