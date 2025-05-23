% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/duplicatedMatching.R
\name{duplicatedMatching}
\alias{duplicatedMatching}
\title{Searching of duplicated records in a bibliographic database}
\usage{
duplicatedMatching(M, Field = "TI", exact = FALSE, tol = 0.95)
}
\arguments{
\item{M}{is the bibliographic data frame.}

\item{Field}{is a character object. It indicates one of the field tags used to identify duplicated records. Field can be equal to one of these tags: TI (title), AB (abstract), UT (manuscript ID).}

\item{exact}{is logical. If exact = TRUE the function searches duplicates using exact matching. If exact=FALSE,
the function uses the restricted Damerau-Levenshtein distance to find duplicated documents.}

\item{tol}{is a numeric value giving the minimum relative similarity to match two manuscripts. Default value is \code{tol = 0.95}.
To use the restricted Damerau-Levenshtein distance, exact argument has to be set as FALSE.}
}
\value{
the value returned from \code{duplicatedMatching} is a data frame without duplicated records.
}
\description{
Search duplicated records in a dataframe.
}
\details{
A bibliographic data frame is obtained by the converting function \code{\link{convert2df}}.
It is a data matrix with cases corresponding to manuscripts and variables to Field Tag in the original SCOPUS and Clarivate Analytics WoS file.
The function identifies duplicated records in a bibliographic data frame and deletes them.
Duplicate entries are identified through the restricted Damerau-Levenshtein distance.
Two manuscripts that have a relative similarity measure greater than \code{tol} argument are stored in the output data frame only once.
}
\examples{

data(scientometrics, package = "bibliometrixData")

M <- rbind(scientometrics[1:20, ], scientometrics[10:30, ])

newM <- duplicatedMatching(M, Field = "TI", exact = FALSE, tol = 0.95)

dim(newM)

}
\seealso{
\code{\link{convert2df}} to import and convert an WoS or SCOPUS Export file in a bibliographic data frame.

\code{\link{biblioAnalysis}} function for bibliometric analysis.

\code{\link{summary}} to obtain a summary of the results.

\code{\link{plot}} to draw some useful plots of the results.
}
