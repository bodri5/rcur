\name{rCUR-package}
\alias{rCUR-package}
\alias{rCUR}
\docType{package}
\title{
CUR matrix decomposition package
}
\description{
In modern data mining tasks the user has often matrices with huge number of rows and/or columns as the base of analysis. One way of the analysis of this type of huge datasets is to reduct their dimensions. Principal component analysis (PCA) is a widely used tool for such data analysis. PCA produced singular vectors are mathematical abstractions and hardly interpretable on the field from which the data are drawn. Mahoney & Drineas (2009) proposed a method the CUR matrix decomposition what decreases the dimensions  as well, but the resulting matrices are interpretable on the application area. This package contains functions and objects to help doing CUR matrix decomposition.
}
\details{
\tabular{ll}{
Package: \tab rCUR\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-03-31\cr
License: \tab GPL (>=2)\cr
LazyLoad: \tab yes\cr
}
}
\author{
Andras Bodor, Norbert Solymosi

Maintainer:Andras Bodor <bodri.mh3@gmail.com>
}
\references{
Mahoney M. W. and Drineas P. (2009) CUR matrix decompositions for improved data analysis. PNAS, 106(3):697-702

Andras Bodor, Istvan Csabai, Michael W Mahoney and Norbert Solymosi
rCUR:an R package for CUR matrix decomposition
BMC Bioinformatics 2012, 13:103
doi:10.1186/1471-2105-13-103

http://www.cs.rpi.edu/~boutsc/files/AlgorithmCUR.m
}
\keyword{svd}
\keyword{prcomp}
\examples{
library(rCUR)
library(lattice)

data(STTm)
data(STTa)

n = 27
res = CUR(STTm, 31, n, 4)

plotLeverage(res, C=FALSE, top.n=n, xlab='Gene ID', las=1, top.col='black', 
  top.pch=16, ul.col='black', ul.lty=2, col='grey')

PCA01 = prcomp(STTm, scale=TRUE)

top.idx = topLeverage(res, C=FALSE, top.n=n, sort=FALSE)
top.STTm = STTm[top.idx,]
PCA02 = prcomp(top.STTm, scale=TRUE)

t.top.STTm = t(top.STTm)
x = 1:dim(t.top.STTm)[1]
y = 1:dim(t.top.STTm)[2]

ann.tab = STTa[top.idx,]
genes = as.character(ann.tab$Gene)
genes[genes==''] = as.character(ann.tab[genes=='','Hs'])

op = par(mar=c(3.5, 0, 0, 5) + 0.1)
image(x, y, t.top.STTm, col=rev(gray(0:256/300)), axes=FALSE, xlab='', 
  ylab='')
axis(1, at=c(10,22,31), labels=c('GIST','LEIO','SARC'), tick=FALSE, 
  las=2, cex=0.6, line=-0.8)
axis(4, at=1:length(genes), labels=genes, tick=FALSE, las=1, cex=0.6, 
  line=-0.8)
par(op)

PCAs = rbind(PCA01$rotation[,c(1,2)], PCA02$rotation[,c(1,2)])
group = rownames(PCAs)
pchs = ifelse(group=='GIST', 16, 0)
pchs = ifelse(group=='LEIO', 17, pchs)
pchs = ifelse(group=='SARC', 18, pchs)
PCAs = data.frame(PC1=PCAs[,1], PC2=PCAs[,2], 
  lab=c(rep('all',31),rep('selected',31)), group, pchs)

xyplot(PC2 ~ PC1 | lab, data = PCAs, pch=pchs, cex=1.0, col='black', 
  fill='black', key = list(space = "bottom", text = list(levels(PCAs$group)), 
  points=TRUE, pch=c(16, 17, 18), fill='black', columns=3, just=1))
}
