% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\name{analyzeEdgeQuant}
\alias{analyzeEdgeQuant}
\title{Performs linear regression of a quantitative traits against a single edge in the network.}
\usage{
analyzeEdgeQuant(i, osa, net, field, samples = c())
}
\arguments{
\item{i}{The index of the edge in the network}

\item{osa}{The sample annotation matrix. One column must contain the header 'Sample'
and the remaining colums correspond to an annotation type.  The rows
of the anntation columns should contain the annotations.}

\item{net}{A network dataframe containing the KINC-produced network.  The loadNetwork
function imports a dataframe in the correct format for this function.}

\item{field}{The field in the osa variable on which enrichment will be performed.}

\item{samples}{Limit the analysis to only the samples indexes provided.}
}
\description{
Performs linear regression of a quantitative traits against a single edge in the network.
}
\examples{

}
