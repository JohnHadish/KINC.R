% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/base.R
\name{findLinkedCommunities}
\alias{findLinkedCommunities}
\title{Finds Linked communities in the network.}
\usage{
findLinkedCommunities(
  net,
  file_prefix = "net",
  module_prefix = "M",
  hcmethod = "complete",
  meta = TRUE,
  ignore_inverse = TRUE
)
}
\arguments{
\item{net}{A network data frame containing the KINC-produced network.  The loadNetwork
function imports a dataframe in the correct format for this function.}

\item{file_prefix}{A prefix to add to the beginning of each file name.}

\item{module_prefix}{A prefix to add to the beginning of the module names. By deafult this is simply
the letter 'M'.}

\item{hcmethod}{A character string naming the hierarchical clustering method to use. Can be one of
"ward.D", "single", "complete", "average", "mcquitty", "median", or "centroid".
Defaults to "single".}

\item{meta}{Indicates if modules should be collapsed into meta-modules. If set to TRUE then
the linked communities returned are meta modules. Defaults to FALSE.}
}
\value{
The linked communities object.
}
\description{
This function generates three output files that it writes to the current
working directory.
}
