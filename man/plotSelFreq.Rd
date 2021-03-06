% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/associationTest.R
\name{plotSelFreq}
\alias{plotSelFreq}
\title{Plot markers selection frequencies of the Hierarchical Inference Test}
\usage{
plotSelFreq(x, xlab = "Chromosomes", ylab = "Sel. freq.", col.axis = NULL,
  ...)
}
\arguments{
\item{x}{An object of class \code{\link{qtcatHit}}.}

\item{xlab}{A title for the x axis.}

\item{ylab}{A title for the y axis.}

\item{col.axis}{Colors for axis line, tick marks, and title respectively.}

\item{...}{Other graphical parameters may also be passed as arguments to this function.}
}
\description{
Plot markers selection frequencies at their
position at the genome.
}
\examples{
# If you want to run the examples, use:
# example(plotSelFreq, run.dontrun = TRUE)
\dontrun{
# files containing example data for SNP data and the phenotype
pfile <- system.file("extdata/phenodata.csv", package = "qtcat")
gfile <- system.file("extdata/snpdata.csv", package = "qtcat")
pdat <- read.csv(pfile, header = TRUE)
snp <- read.snpData(gfile, sep = ",")
clust <- qtcatClust(snp)
geno <- qtcatGeno(snp, clust)
pheno <- qtcatPheno(names = pdat[, 1],
                    pheno = pdat[, 2],
                    covariates = model.matrix(~ pdat[, 3]))
fitted <- qtcatHit(pheno, geno)

# Plot the selection frequncy of markers (loci37, loci260, and loci367 are causal)
plotSelFreq(fitted)
}

}

