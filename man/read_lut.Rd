% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read.lut.r
\name{read_lut}
\alias{read_lut}
\title{Read in a lookup table from .CSV or .XLSX}
\usage{
read_lut(filepath = NULL, ..., filename = NULL, sheet = NULL)
}
\arguments{
\item{filepath}{A string specifying either the path to the folder containing the filename provided in \code{filename} OR the full filepath to a file, including the filename and extension. If unprovided, the current working directory will be used.}

\item{...}{Strings corresponding to column/variable names in the source file. Must provide at least one string.}

\item{filename}{An optional string specifying the filename and extension of the file to open from the location \code{filepath}. Only use this if the filename and extension aren't included in \code{filepath}. Defaults to \code{NULL}.}

\item{sheet}{An optional string or numeric index value to be passed to \code{readxl::read_excel()} specifying the sheet from the .XLSX workbook to read in. Do not use if reading in a .CSV. Defaults to \code{NULL}.}
}
\value{
A data frame of the unique rows/observations in the source file for the given columns/variables.
}
\description{
Reads in either a .CSV using \code{utils::read.csv()} or a sheet from a .XLSX file using \code{readxl::read_excel()}, limits it to specified columns/variables, and returns only distinct rows.
}
\examples{
# Read in a table of data with the columns "Ecological.Site" and "Soil.Map.Unit.Component"
ecosite.lookup <- read.lut(filename = "ecosite_soil_lookup.csv",
                           "Ecological.Site",
                           "Soil.Map.Unit.Component")
}
