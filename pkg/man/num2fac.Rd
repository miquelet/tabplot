\name{num2fac}
\alias{num2fac}
\title{Transform a numerical vector to a factor}
\usage{
  num2fac(num, method = "pretty", num_scale = "auto",
    n = 0, brks = NA)
}
\arguments{
  \item{num}{numeric vector}

  \item{method}{\itemize{ \item \code{"pretty"} intervals
  are determined by the base function \code{\link{pretty}}
  \item \code{"kmeans"} the method intervals are determined
  by the method kmeans where \code{n} clusters (i.e.
  intervals) are found \item \code{"fixed"} determines the
  intervals by the argument \code{brks} \item
  \code{"discrete"} the unique values in \code{num} are
  mapped one to one to the levels of the new factor vector)
  }}

  \item{num_scale}{\itemize{ \item \code{"auto"} used scale
  is determined automatically \item \code{"lin"} \code{num}
  is directly fed to the method pretty or kmeans \item
  \code{"log"} a logarithmic transformation of \code{num}
  is fed to the method pretty or kmeans }}

  \item{n}{the (desired) number of levels. \code{n=0} means
  automatic}

  \item{brks}{breaks that determine the levels (only
  required when \code{method="fixed"})}
}
\value{
  A factor vector
}
\description{
  Transform a numerical vector from class
  \code{\link{POSIXt}} or \code{\link{Date}} to a factor.
}
\note{
  This function is still in development stage, and can be
  improved and optimized. \code{ff} vectors are not
  implemented yet
}
\examples{
require(ggplot2)
data(diamonds)

diamonds$price2 <- num2fac(diamonds$price)

tableplot(diamonds)
}
\seealso{
  \code{\link{datetime2fac}}
}

