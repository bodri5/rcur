\name{topLeverage}
\alias{topLeverage}
\title{
Function to obtain indexes of the most influental features due to leverage score
}
\description{
The function sort the features (rows or columns) based on their influence (leverage score) and list out the indexes of the top valued items
}
\usage{
topLeverage(object, C=TRUE, top.n=100, sort=TRUE)
}

\arguments{
  \item{object}{object of class \link{CURobj-class} }
  \item{C}{logical, if it is TRUE, then calculated the rank for the leverage scores belongs to columns, if FALSE, then to rows}
  \item{top.n}{number of indexes to list}
  \item{sort}{logical, if TRUE the indexes are sorted increasing}
}

\value{
  The function returns a numerical vector of indexes of the most influental features
}
\references{
Mahoney M. W. and Drineas P. (2009) CUR matrix decompositions for improved data analysis. PNAS, 106(3):697-702

Andras Bodor, Istvan Csabai, Michael W Mahoney and Norbert Solymosi
rCUR:an R package for CUR matrix decomposition
BMC Bioinformatics 2012, 13:103
doi:10.1186/1471-2105-13-103
}
\examples{
data(STTm)
res <- CUR(STTm, 3, 31, 12)
topLeverage(res, top.n=10)
}

