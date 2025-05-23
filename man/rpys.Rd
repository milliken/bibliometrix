% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rpys.R
\name{rpys}
\alias{rpys}
\title{Reference Publication Year Spectroscopy}
\usage{
rpys(M, sep = ";", timespan = NULL, graph = T)
}
\arguments{
\item{M}{is a data frame obtained by the converting function
\code{\link{convert2df}}. It is a data matrix with cases corresponding to
articles and variables to Field Tag in the original ISI or SCOPUS file.}

\item{sep}{is the cited-references separator character. This character separates cited-references in the CR
column of the data frame. The default is \code{sep = ";"}.}

\item{timespan}{is a numeric vector c(min year,max year). The default value is NULL (the entire timespan is considered).}

\item{graph}{is a logical. If TRUE the function plot the spectroscopy otherwise the plot is created but not drawn down.}
}
\value{
a list containing the spectroscopy (class ggplot2) and three dataframes with the number of citations
per year, the list of the cited references for each year, and the reference list with citations recorded year by year, respectively.
}
\description{
\code{rpys} computes a Reference Publication Year Spectroscopy for detecting
the Historical Roots of Research Fields.
The method was introduced by Marx et al., 2014.\cr\cr
}
\details{
Reference:\cr
Marx, W., Bornmann, L., Barth, A., & Leydesdorff, L. (2014).
Detecting the historical roots of research fields by reference publication
year spectroscopy (RPYS). Journal of the Association for Information Science and Technology,
65(4), 751-764.\cr\cr
}
\examples{


data(scientometrics, package = "bibliometrixData")
res <- rpys(scientometrics, sep = ";", graph = TRUE)

}
\seealso{
\code{\link{convert2df}} to import and convert an ISI or SCOPUS
  Export file in a data frame.

\code{\link{biblioAnalysis}} to perform a bibliometric analysis.

\code{\link{biblioNetwork}} to compute a bibliographic network.
}
