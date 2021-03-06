% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/masq.R
\name{masqVIIRS}
\alias{masqVIIRS}
\title{extract data from a raster using one polygon in a multipolygon}
\usage{
masqVIIRS(ctryPoly, ctryRast, idx, retVal = "colrowval", configName)
}
\arguments{
\item{ctryPoly}{the country Polygon layer as SpatialPolygon}

\item{ctryRast}{the clipped country raster}

\item{idx}{the index of the polygon in the country polygon layer (shp)}

\item{retVal}{Whether to return the raster data as a vector, or 
data.frame with spatial context NULL returns a vector of all
values, colrowval returns a data.frame with row, col and raster
value while lonlatval returns a data.frame with lon,lat and val.}

\item{configName}{character the type of raster being processed}
}
\value{
numeric vector of radiances
}
\description{
extract data from a raster using one polygon in a multipolygon.
}
\examples{
\dontrun{
ctryPoly <- rgdal::readOGR('path/to/polygon.shp')

ctryRaster <- raster::raster('path/to/raster.tif')

#get the sum of nightlight pixels in the first polygon in a multipolygon
sumPolygon1 <- sum(masqVIIRS(ctryPoly, ctryRaster, 1), na.rm=T)
}

}
