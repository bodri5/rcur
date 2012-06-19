\name{CURobj-class}
\Rdversion{1.1}
\docType{class}
\alias{CURobj-class}
\alias{getC,CURobj-method}
\alias{getR,CURobj-method}
\alias{getU,CURobj-method}
\alias{getError,CURobj-method}
\alias{leverage,CURobj-method}
\alias{plotLeverage,CURobj-method}
\alias{topLeverage,CURobj-method}

\title{Class "CURobj"}
\description{
Class for the results of CUR decompostion performed by the function \link{CUR} 
}
\section{Objects from the Class}{
Objects can be created by calls to the function \link{CUR} 
}
\section{Slots}{
  \describe{
    \item{\code{C}:}{matrix C  }
    \item{\code{U}:}{matrix U}
    \item{\code{R}:}{matrix R}
    \item{\code{C.leverage.score}:}{leverage scores of the columns}
    \item{\code{R.leverage.score}:}{leverage scores of the rows}
    \item{\code{C.index}:}{index of columns selected for C}
    \item{\code{R.index}:}{index of rows selected for R}
    \item{\code{Error}:}{the error of the approximation}
  }
}
\section{Methods}{
  \describe{
    \item{\link{getC}}{retrieves the matrix C from object of CURobj-class}
    \item{\link{getU}}{retrieves the matrix U from object of CURobj-class}
    \item{\link{getR}}{retrieves the matrix R from object of CURobj-class}
    \item{\link{getError}}{retrieves the error from object of CURobj-class}
    \item{\link{leverage}}{retrieves the vector of leverage scores from object of CURobj-class}
    \item{\link{topLeverage}}{retrieves the top elements of leverage scores from object of CURobj-class}
    \item{\link{plotLeverage}}{plot the leverage scores of CURobj-class object}
  }
}
\references{
Mahoney M. W. and Drineas P. (2009) CUR matrix decompositions for improved data analysis. PNAS, 106(3):697-702
}

\examples{
showClass("CURobj")
}
\keyword{classes}
