% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trin.R
\name{trin}
\alias{trin}
\title{Performs trigonometric interpolation}
\usage{
trin(y, yk, mercator = FALSE)
}
\arguments{
\item{y}{Numeric. The latitude where the interpolation is
required}

\item{yk}{Numeric vector of the data to be interpolated.
For instance, umz or betam}

\item{mercator}{Logical. Is it require to transform the final data
in mercator coordinates? Default is FALSE.}
}
\value{
Numeric value
}
\description{
This function performs trigonometric interpolation for the
passed basic state variable and the requested latitude
}
\note{
This function is an alternative to \code{\link{ypos}} and is more accurate
}
\examples{
{
input <- system.file("extdata",
                     "uwnd.mon.mean_200hPa_2014JFM.nc",
                      package = "raytracing")
b <- betaks(u = input)
umz <- rev(colMeans(b$u, na.rm = TRUE))*cos(rev(b$lat)*pi/180)
betamz <- rev(colMeans(b$betam, na.rm = TRUE))
y0 <- -17
trin(y = y0, yk = umz)
}
}
\seealso{
\code{\link{ypos}} \code{\link{ray}}  \code{\link{ray_source}}

Other Interpolation: 
\code{\link{ypos}()}
}
\concept{Interpolation}
