\docType{package}
\name{tabplot-package}
\alias{tabplot}
\alias{tabplot-package}
\title{Tableplot, a visualization of large datasets}
\description{
  \tabular{ll}{ Package: \tab tabplot\cr Type: \tab
  Package\cr Version: \tab 1.1\cr Date: \tab 2012-07-03\cr
  License: \tab GPL-3\cr LazyLoad: \tab yes\cr }
}
\details{
  A tableplot is a visualisation of a (large) dataset. Each
  column represents a variable and each row bin is an
  aggregate of a certain number of records. For numeric
  variables, a bar chart of the mean values is depicted.
  For categorical variables, a stacked bar chart is
  depicted of the proportions of categories. Missing values
  are taken into account. Also supports large
  \code{\link[ff:ffdf]{ffdf}} datasets from the
  \code{\link[ff:ff]{ff}} package.

  The main function of the package is
  \code{\link{tableplot}}, which is used to create a
  tableplot. Other useful functions are: \itemize{ \item
  \code{\link{itableplot}} to start a graphical user
  interface (made with the \code{\link[shiny:shiny]{shiny}}
  package); \item \code{\link{tablePrepare}} to prepare a
  large dataset. Tableplotting is much faster when the
  returned object is passed on to \code{\link{tableplot}}
  rather than the dataset itself; \item
  \code{\link{tablePalettes}} to show all quantitative and
  qualitative palettes that are included; \item
  \code{\link{tableSave}} to save a tableplot; \item
  \code{\link{tableChange}} to make layout changes to a
  tableplot. } For a quick intro, see
  \href{../doc/tabplot-vignette.pdf}{\code{vignette("tabplot-vignette")}}.
}
\examples{
# load diamonds dataset from ggplot2
require(ggplot2)
data(diamonds)

# create tableplot
tableplot(diamonds)
}
\author{
  Martijn Tennekes \email{mtennekes@gmail.com} and Edwin de
  Jonge
}
\keyword{datasets}
\keyword{large}
\keyword{visualization}

