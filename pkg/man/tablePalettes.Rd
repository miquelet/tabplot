\name{tablePalettes}
\alias{tablePalettes}
\title{Show / get all palettes of the tabplot package}
\usage{
  tablePalettes(plot = TRUE)
}
\arguments{
  \item{plot}{Boolean that determines whether the palettes
  are plot.}
}
\value{
  list with palettes (silent output)
}
\description{
  All color palettes are shown and/or returned that can be
  used for tableplots.
}
\details{
  Sequential palettes (for numeric variables):
  \code{"Blues"}, \code{"Greens"}, \code{"Greys"},
  \code{"Oranges"}, and \code{"Purples"} These palettes are
  taken from ColorBrewer (Brewer et al., 2003).

  Qualitative palattes (for categorical variables):
  \code{"Set1"}, \code{"Set2"}, \code{"Set3"},
  \code{"Set4"}, \code{"Set5"}, \code{"Set6"},
  \code{"Set7"}, \code{"Set8"}, \code{"Paired"},
  \code{"HCL1"}, \code{"HCL2"}, and \code{"HCL3"}. The
  default palette, \code{"Set1"}, is a colorblind-friendly
  palette (see Okabe and Ito, 2002). Palettes \code{"Set2"}
  to \code{"Set6"} and \code{"Paired"} are based on
  ColorBrewer palettes (Brewer et al., 2003). Palette
  \code{"Set7"}, is a colorblind-friedly palette from the
  dichromat package (see Thomas Lumley , 2012). Palette
  \code{"Set8"} is a palette created by Wijffelaars (2008).
  The \code{"HCL"} Palettes are based on the
  Hue-Chroma-Luminance color space model (see Zeileis et
  al., 2009). The color red has been removed from the
  orignal palettes, since it is occupied by missing values.
}
\references{
  \href{http://colorbrewer2.org/}{Brewer, Cynthia A.,
  Geoffrey W. Hatchard and Mark A. Harrower, 2003,
  ColorBrewer in Print: A Catalog of Color Schemes for
  Maps, Cartography and Geographic Information Science
  30(1): 5-32.}

  \href{http://jfly.iam.u-tokyo.ac.jp/color/}{Okabe, M. and
  Ito, K. Color Universal Design (CUD) - How to make
  figures and presentations that are friendly to Colorblind
  people, 2002}

  \href{alexandria.tue.nl/extra2/afstversl/wsk-i/wijffelaars2008.pdf}{Wijffelaars,
  M. Synthesis of Color Palettes. Master's thesis.
  Supervisors Wijk, J. van, and Vliegen, R. 2008}

  \href{http://http://CRAN.R-project.org/package=dichromat/}{Thomas
  Lumley (2012). dichromat: Color schemes for dichromats. R
  package version 1.2-4.
  http://CRAN.R-project.org/package=dichromat}

  \href{http://statmath.wu.ac.at/~zeileis/papers/Zeileis+Hornik+Murrell-2009.pdf}{Zeileis,
  A., Hornik, K., and Murrell, P.  Escaping RGBland:
  Selecting colors for statistical graphics.  In
  Proceedings of Computational Statistics & Data Analysis.
  2009, 3259-3270.}
}
\keyword{color}
\keyword{palettes}

