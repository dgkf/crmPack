% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Data-methods.R
\name{dose_grid_range}
\alias{dose_grid_range}
\alias{dose_grid_range,Data-method}
\alias{dose_grid_range-Data}
\title{Getting the Dose Grid Range}
\usage{
dose_grid_range(object, ...)

\S4method{dose_grid_range}{Data}(object, ignore_placebo = TRUE)
}
\arguments{
\item{object}{(\code{Data})\cr object with dose grid.}

\item{...}{further arguments passed to class-specific methods.}

\item{ignore_placebo}{(\code{flag})\cr should placebo dose (if any) not be counted?}
}
\value{
A \code{numeric} vector containing the minimum and maximum of all the
doses in a grid or \code{c(-Inf, Inf)}.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#stable}{\figure{lifecycle-stable.svg}{options: alt='[Stable]'}}}{\strong{[Stable]}}

A function that returns a vector of length two with the minimum and maximum
dose in a grid. It returns \code{c(-Inf, Inf)} if the range cannot be determined,
which happens when the dose grid is empty. User can choose whether the
placebo dose (if any) should be counted or not.
}
\examples{
my_data <- Data(
  x = c(10, 50, 90, 100, 0.001, 20, 30, 30),
  y = c(0, 0, 0, 0, 0, 0, 1, 0),
  ID = 1:8,
  cohort = c(1L, 2L, 3L, 4L, 5L, 5L, 6L, 6L),
  doseGrid = c(0.001, seq(from = 10, to = 100, by = 10)),
  placebo = TRUE
)
dose_grid_range(my_data)
dose_grid_range(my_data, ignore_placebo = FALSE)
}
