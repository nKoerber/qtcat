% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllClass.R
\docType{class}
\name{snpMatrix-class}
\alias{snpMatrix-class}
\title{An S4 class to represent a SNP-matrix}
\description{
An S4 class to represent a SNP matrix. Storing SNP information by using a
byte-level (raw) storage scheme jointly with genomic positions and alleles.
}
\section{Slots}{

\describe{
\item{\code{snpData}}{A matrix of SNPs stored in type 'raw'. 0 is NA, 1 homozygote AA, 2 and 4
heterozygote phased for AB and BA, and 3 hetrozygoe unphased AB/BA.}

\item{\code{snpInfo}}{A data.frame with four columns. The first col. contains the chromosomes,
the second col. the positions, the third col. the first allele and the fourth the second
allele.}

\item{\code{dim}}{integer vector with exactly two non-negative values.}

\item{\code{dimnames}}{list of length two; each component containing NULL or a character vector
length equal the corresponding dim element.}
}}

