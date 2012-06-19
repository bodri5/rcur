\name{STTa}
\alias{STTa}
\docType{data}
\title{
Annotation data.frame of soft tissue tumour gene expression dataset
}
\description{
Annotation data for STTm soft tissue tumour gene expression dataset
}

\format{
  A data frame with 5520 observations on the following 4 variables.
  \describe{
    \item{\code{ID}}{ identification number of gene}
    \item{\code{Gene}}{ gene symbol}
    \item{\code{Hs}}{ UniGene ID}
    \item{\code{Descr}}{ function description of transcriptum of gene}
  }
}
\source{
The original, full dataset is downloadable from the Gene Expression Omnibus database (GSE3443) and from Stanford Microarray Database (http://smd.stanford.edu). 
}
\references{
Nielsen T. et al. (2002) Molecular characterisation of soft tissue tumours: A gene expression study. Lancet 359:1301-1307.

Mahoney M. W. and Drineas P. (2009) CUR matrix decompositions for improved data analysis. PNAS, 106(3):697-702
}
\examples{
data(STTa)
}
\keyword{datasets}
