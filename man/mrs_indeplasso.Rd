% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mrs.indeplasso.R
\name{mrs_indeplasso}
\alias{mrs_indeplasso}
\title{Shrink F-values for MRS modeling using LASSO-style soft-thresholding}
\usage{
mrs_indeplasso(
  output_df,
  lambda = exp(seq(log(0.001), log(0.1), length.out = 20))
)
}
\arguments{
\item{output_df}{A data.frame with columns \code{pair} (e.g., SNP1_SNP2) and \code{F_value}.}

\item{lambda}{A numeric vector of lambda shrinkage values. Default is 20 log-scaled values from 0.001 to 0.1.}
}
\value{
A list containing:
\describe{
\item{lambda}{The lambda values used.}
\item{beta}{A numeric matrix of shrunken F-values (rows = SNP pairs, columns = lambda values).}
\item{pair_names}{Character vector of SNP pair names corresponding to rows in \code{beta}.}
}
}
\description{
Performs lambda-based shrinkage on MB-MDR derived F-values to obtain beta weights for each SNP pair.
}
\examples{
out <- mrs_indeplasso(output_2D)
head(out$beta)
}
