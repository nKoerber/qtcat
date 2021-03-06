% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/snpCluster.R
\name{qtcatClust}
\alias{qtcatClust}
\title{A three step approximated hierarchical clustering of SNPs}
\usage{
qtcatClust(snp, k, identicals = TRUE, maxNeigbours = 100, nLocal = 10,
  method = "complete", mc.cores = 1, trace = FALSE, ...)
}
\arguments{
\item{snp}{A object of class \linkS4class{snpMatrix}.}

\item{k}{A positive integer specifying the number of clusters, less than the number of
observations.}

\item{identicals}{Logical, if zero clustering.}

\item{maxNeigbours}{Positive integer, specifying the maximum number of randomized
searches.}

\item{nLocal}{Positive integer, specifying the number of optimisation runs. Columns have
to be similar to \code{snp}.}

\item{method}{See hclust.}

\item{mc.cores}{Number of cores for parallel computing. See \code{mclapply} in package
parallel for details.}

\item{trace}{If \code{TRUE} it prints current status of the program.}

\item{...}{Additional argruments for \code{\link[stats]{hclust}}}
}
\description{
Hierarchical clustering for big SNP data sets.
}
\examples{
# file containing example data for SNP data
gfile <- system.file("extdata/snpdata.csv", package = "qtcat")
snp <- read.snpData(gfile, sep = ",")

clust <- qtcatClust(snp)

}
\seealso{
clarans
}

