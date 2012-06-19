\name{plotLeverage}
\alias{plotLeverage}
\title{
Function to plot leverage scores
}
\description{
Function to plot the individual values and uniform level of leverage scores. The most influental features may be higlighted.
}
\usage{
plotLeverage(x, C=TRUE, mplr=1000, top.n=100, 
  top.col='red', top.pch=16, ul.col='red', ul.lty=2, ...)
}

\arguments{
  \item{x}{object of class \link{CURobj-class} }
  \item{C}{logical, if it is TRUE, then calculated the rank for the leverage scores belongs to columns, if FALSE, then to rows}
  \item{mplr}{multiplier of leverage scores}
  \item{top.n}{number of highlighting items from top of leverage score list}
  \item{top.col}{color of highligting points}
  \item{top.pch}{pch of highligting points, see par()}
  \item{ul.col}{color of the line of leverage score uniform level}
  \item{ul.lty}{line type of leverage score uniform level}
  \item{...}{further graphical parameters of function plot()}
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
res <- CUR(STTm, 31, 12, 3)
plotLeverage(res, C=FALSE, top.n=10, las=1)
}

