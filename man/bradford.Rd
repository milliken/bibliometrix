% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bradford.R
\name{bradford}
\alias{bradford}
\title{Bradford's law}
\usage{
bradford(M)
}
\arguments{
\item{M}{is a bibliographic dataframe.}
}
\value{
The function \code{bradford} returns a list containing the following objects:
\tabular{lll}{
\code{table}  \tab   \tab a dataframe with the source distribution partitioned in the three zones\cr
\code{graph}   \tab   \tab the source distribution plot in ggplot2 format}
}
\description{
It estimates and draws the Bradford's law source distribution.
}
\details{
Bradford's law is a pattern first described by (\cite{Samuel C. Bradford, 1934}) that estimates the exponentially diminishing returns
of searching for references in science journals.

One formulation is that if journals in a field are sorted by number of articles into three groups, each with about one-third of all articles,
then the number of journals in each group will be proportional to 1:n:n2.\cr\cr

Reference:\cr
Bradford, S. C. (1934). Sources of information on specific subjects. Engineering, 137, 85-86.\cr
}
\examples{
\dontrun{
data(management, package = "bibliometrixData")

BR <- bradford(management)
}

}
\seealso{
\code{\link{biblioAnalysis}} function for bibliometric analysis

\code{\link{summary}} method for class '\code{bibliometrix}'
}
