% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/restrict.r
\name{restrict}
\alias{restrict}
\title{Restrict an SPDF with the option to inherit values from a Spatial Polygons Data Frame}
\usage{
restrict(
  spdf1 = NULL,
  spdf2 = NULL,
  inherit = FALSE,
  inherit_field = NULL,
  ignore_case_inherit_field = FALSE,
  bookend_inherit_field = FALSE
)
}
\arguments{
\item{spdf1}{An SPDF to restrict.}

\item{spdf2}{An optional Spatial Polygons Data Frame to restrict \code{spdf1} by. Defaults to \code{NULL}.}

\item{inherit}{Logical. If \code{TRUE} then the output will be the restricted \code{spdf1} with an attribute called by the name that matched \code{inherit_field} in \code{spdf2} and the values from that attribute in \code{spdf2}. Defaults to \code{FALSE}.}

\item{inherit_field}{An optional character string to be used as a regular expression to find a single matching attribute name in \code{spdf2}. The associated values will be inherited by the output where there is spatial overlap and added to an attribute with the name that matched the regular expression. Required if \code{inherit} is \code{TRUE}.}

\item{ignore_case_inherit_field}{Logical. If \code{TRUE} then finding the attribute name in \code{spdf2} with \code{inherit_field} will be case insensitive. Defaults to \code{FALSE}.}

\item{bookend_inherit_field}{Logical. If \code{TRUE} then \code{^} and \code{$} will be added to the ends of the regular expression passed to \code{grepl()} when searching using \code{inherit_field}. Defaults to \code{FALSE}.}
}
\value{
An SPDF of geometry and values from \code{spdf1} where the filtering criteria were met. If \code{inherit == T} then there will be an additional attribute from \code{spdf2}.
}
\description{
Restrict an SPDF to geometry where specified values are found in a given attribute in the data frame, to geometry overlapping a Spatial Polygons Data Frame, or both. If using a Spatial Polygons Data Frame as \code{spdf2}, that can also be filtered by values in an attribute before being used to restrict \code{spdf1}. Also, if using \code{spdf2} then the output can inherit the values in one attribute from that SPDF.
}
\examples{
restrict(spdf1 = wyoming.spdf,
         filter_field_spdf1 = "COUNTY",
         filter_values_spdf1 = "Teton")
restrict(spdf1 = wyoming.spdf,
         spdf2 = grand.tetons.np.spdf)
restrict(spdf1 = wyoming.spdf,
         spdf2 = grand.tetons.np.spdf,
         filter_field_spdf1 = "COUNTY",
         filter_values_spdf1 = "Teton",
         inherit = TRUE,
         inherit_field = "OWNERSHIP")
restrict(spdf1 = wyoming.spdf,
         spdf2 = national.ownership,
         filter_field_spdf2 = "OWNERSHIP",
         filter_values_spdf2 = c("Bureau of Land Management", "BLM"))
restrict(spdf1 = wyoming.spdf,
         spdf2 = national.ownership,
         filter_field_spdf1 = "COUNTY",
         filter_values_spdf1 = "Teton",
         filter_field_spdf2 = "OWNERSHIP",
         # Because I can't confidently spell "bureau"
         filter_values_spdf2 = "Bur[(e)|(a)|(u)]{2,5} of Land Management",
         use_grep_values_spdf2 = TRUE)
}
