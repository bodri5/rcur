\name{CUR}
\alias{CUR}
\title{
Function to perform CUR matrix decomposition 
}
\description{
By the function the CUR matrix decomposition can be done obtaining a \link{CURobj-class} object
}
\usage{
CUR(A, c=dim(A)[2], r=dim(A)[1], k=NULL, sv=NULL,
     method="random", alpha=1, weighted=FALSE, beta=4,
     matrix.return=TRUE, error.return=FALSE)
}

\arguments{
  \item{A}{a matrix for decomposition with m rows and n columns}
  \item{c}{column number to be selected from matrix A. Default: all columns, in this case column selection is skipped.}
  \item{r}{row number to be selected from matrix A. Default: all rows, in this case row selection is skipped. }
  \item{k}{rank parameter with perhaps k << min(m,n). Default: if not supplied, singular values accounting for 80\% of the sum of the singular values is selected.}
  \item{sv}{the singular value decomposition of A. It is the most expensive part of the computation, so it can be supplied, if already available. Default: svd is computed on the fly.}
  \item{method}{the method, used, to select the rows. Possible values are
         \describe{
         \item{random}{the original method in [Mahoney and Drineas], rows and columns are selected randomly, with the
                   probability of selection proportional to the leverage score}
         \item{exact.num.random}{like random, but it is guaranteed, that exactly r rows and c columns
                   are selected}
         \item{top.scores}{the rows and columns with the highest leverage scores are returned deterministically}
         \item{ortho.top.scores}{those rows and columns are selected, where the linear combination of the
                   leverage score and orthogonality to the subspace of previously selected items is maximal.
                   See parameter alpha.}
         \item{highest.ranks}{rows and columns with the highest rank of leverage score for some rank parameter
                   are selected. Every possible value is tried up to the value of k. k must be larger than 1. }
         }
         }
  \item{alpha}{if method="ortho.top.scores", the coefficent of orthogonality in the linear combination.
          alpha=0 is equivalent to method="top.scores". The coefficent of the leverage score is always 1.
          Default: 1. Should be positive.}
  \item{weighted}{if true, leverage scores are computed with weighting by the singular values. In this case
          k should be set to its default value. Not used, if method=highest.ranks. Best used whith method=top.scores.
          See parameter beta. Default: FALSE.}
  \item{beta}{if weighted=TRUE, leverage scores are computed with weighting of the singular values raised to the power of beta.
          Default: 4. }
  \item{matrix.return}{if TRUE, the matrices C, U, R are returned. If matrix.return is FALSE,
          U is not computed, which can be expensive, if r and c are large. Default: TRUE.}
  \item{error.return}{if true, the Frobenius norm of the difference between the original matrix and the CUR approximation is returned.
          Effective only if matrix.return is TRUE. Default: FALSE.}
}
\value{
The function produces an object of \link{CURobj-class}.
}
\references{
Mahoney M. W. and Drineas P. (2009) CUR matrix decompositions for improved data analysis. PNAS, 106(3):697-702

Andras Bodor, Istvan Csabai, Michael W Mahoney and Norbert Solymosi
rCUR:an R package for CUR matrix decomposition
BMC Bioinformatics 2012, 13:103
doi:10.1186/1471-2105-13-103

The development was initially based on the Matlab code of Christos Boutsidis:\cr
http://www.cs.rpi.edu/~boutsc/files/AlgorithmCUR.m
}

\examples{
data(STTm)
CUR.results <- CUR(STTm, 31, 12, 3)
}
\keyword{svd}
\keyword{prcomp}
