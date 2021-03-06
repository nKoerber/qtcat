% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/snpData.R
\docType{methods}
\name{snpInfo,snpMatrix-method}
\alias{snpInfo,snpMatrix-method}
\title{Get position from snpMatrix}
\usage{
\S4method{snpInfo}{snpMatrix}(object)
}
\arguments{
\item{object}{An object of class \linkS4class{snpMatrix}.}
}
\description{
Genetic position info from an object of class
 \linkS4class{snpMatrix}.
}
\examples{
# file containing example data for SNP data
gfile <- system.file("extdata/snpdata.csv", package = "qtcat")
snp <- read.snpData(gfile, sep = ",")
info <- snpInfo(snp)

}

