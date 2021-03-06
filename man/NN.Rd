% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/balance_check.R
\name{NN}
\alias{NN}
\title{Find the distances to nearest neighbor for a collection of Cartesian coordinates}
\usage{
NN(dataframe, x_var, y_var)
}
\arguments{
\item{dataframe}{A data frame. Must contain numeric variables corresponding to \code{x_var} and \code{y_var} containing the X and Y coordinate values.}

\item{x_var}{Character string. The name of the variable in \code{dataframe} containing the X components of the coordinates.}

\item{y_var}{Character string. The name of the variable in \code{dataframe} containing the Y components of the coordinates.}
}
\value{
A numeric vector of the distances, one for each point.
}
\description{
Given a data frame containing X and Y Cartesian coordinates, find the distance to the nearest point for each point in the data frame.
}
