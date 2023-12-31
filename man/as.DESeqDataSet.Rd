% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/methods.R
\name{as.DESeqDataSet}
\alias{as.DESeqDataSet}
\alias{as.DESeqDataSet.DGEList}
\title{Convert to DESeqDataSet}
\usage{
as.DESeqDataSet(x, ...)

\method{as.DESeqDataSet}{DGEList}(x, ...)
}
\arguments{
\item{x}{an \R object}

\item{...}{additional arguments to be passed to methods}
}
\value{
A \code{\linkS4class{DESeqDataSet}} object
}
\description{
Coerces an object to \linkS4class{DESeqDataSet}.
}
\section{Methods (by class)}{
\itemize{
\item \code{as.DESeqDataSet(DGEList)}: Coerce \code{\link[edgeR]{DGEList-class}} objects
to \code{\linkS4class{DESeqDataSet}}.

}}
\examples{
require("edgeR")

counts = simulateRnaSeqData()
group = rep(c("case", "control"), each = 3)

dge = DGEList(counts = counts, group = group)
dge

as.DESeqDataSet(dge)
}
\seealso{
\code{\link{as.DGEList}}
}
\author{
Andrzej Oleś <\email{andrzej.oles@gmail.com}>, 2016-2023
}
