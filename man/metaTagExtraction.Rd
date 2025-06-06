% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/metaTagExtraction.R
\name{metaTagExtraction}
\alias{metaTagExtraction}
\title{Meta-Field Tag Extraction}
\usage{
metaTagExtraction(M, Field = "CR_AU", sep = ";", aff.disamb = TRUE)
}
\arguments{
\item{M}{is a data frame obtained by the converting function \code{\link{convert2df}}.
It is a data matrix with cases corresponding to articles and variables to Field Tag in the original WoS or SCOPUS file.}

\item{Field}{is a character object. New tag extracted from aggregated data is specified by this string.
Field can be equal to one of these tags:
\tabular{lll}{
\code{"CR_AU"}\tab   \tab First Author of each cited reference\cr
\code{"CR_SO"}\tab   \tab Source of each cited reference\cr
\code{"AU_CO"}\tab   \tab Country of affiliation for co-authors \cr
\code{"AU1_CO"}\tab   \tab Country of affiliation for the first author\cr
\code{"AU_UN"}\tab   \tab University of affiliation for each co-author and the corresponding author (AU1_UN)\cr
\code{"SR"}\tab     \tab Short tag of the document (as used in reference lists)}}

\item{sep}{is the field separator character. This character separates strings in each column of the data frame. The default is \code{sep = ";"}.}

\item{aff.disamb}{is a logical. If TRUE and Field="AU_UN", then a disambiguation algorithm is used to identify and match scientific affiliations
(univ, research centers, etc.). The default is \code{aff.disamb=TRUE}.}
}
\value{
the bibliometric data frame with a new column containing data about new field tag indicated in the argument \code{Field}.
}
\description{
It extracts other field tags, different from the standard WoS/SCOPUS codify.
}
\examples{
# Example 1: First Authors for each cited reference

data(scientometrics, package = "bibliometrixData")
scientometrics <- metaTagExtraction(scientometrics, Field = "CR_AU", sep = ";")
unlist(strsplit(scientometrics$CR_AU[1], ";"))


# Example 2: Source for each cited reference

data(scientometrics)
scientometrics <- metaTagExtraction(scientometrics, Field = "CR_SO", sep = ";")
unlist(strsplit(scientometrics$CR_SO[1], ";"))

# Example 3: Affiliation country for co-authors

data(scientometrics)
scientometrics <- metaTagExtraction(scientometrics, Field = "AU_CO", sep = ";")
scientometrics$AU_CO[1:10]

}
\seealso{
\code{\link{convert2df}} for importing and converting bibliographic files into a data frame.

\code{\link{biblioAnalysis}} function for bibliometric analysis
}
