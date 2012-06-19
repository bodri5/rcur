\name{getR}
\alias{getR}

\title{Retrieve matrix R from CURobj-class}
\description{Retrieve matrix R from \link{CURobj-class}}
\usage{
	getR(object)
}
\arguments{
\item{object}{ object of class \link{CURobj-class} }
}
\value{ a matrix with compontent R of CUR}
\references{
Mahoney M. W. and Drineas P. (2009) CUR matrix decompositions for improved data analysis. PNAS, 106(3):697-702

Andras Bodor, Istvan Csabai, Michael W Mahoney and Norbert Solymosi
rCUR:an R package for CUR matrix decomposition
BMC Bioinformatics 2012, 13:103
doi:10.1186/1471-2105-13-103
}
\examples{
data(STTm)
res <- CUR(STTm, 31, 12, 3)
getR(res)
}


