% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mrs.defailt.R
\name{mrs.default}
\alias{mrs.default}
\title{Multilocus Risk Score calculation using MB-MDR outputs}
\usage{
mrs.default(snp_data, mdr_model, beta, pair_names, cluster = NULL)
}
\arguments{
\item{snp_data}{A genotype matrix or data.frame (rows = individuals, columns = SNPs).}

\item{mdr_model}{A named list of MB-MDR model objects, each containing an HLO matrix.}

\item{beta}{A numeric matrix of F-value weights. Rows = SNP pairs, columns = lambda.}

\item{pair_names}{A character vector of pair names matching beta row order.}

\item{cluster}{Optional parallel backend created by \code{parallel::makeCluster}.}
}
\value{
A numeric matrix: rows = individuals, columns = lambda. Each cell = MRS score.
}
\description{
Calculates multilocus risk scores (MRS) per individual using F-weighted HLO matrices from MB-MDR.
}
