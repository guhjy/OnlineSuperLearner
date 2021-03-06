% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Data.Base.R
\docType{class}
\name{Data.Base}
\alias{Data.Base}
\title{Base class for any data providing service class. Extend this class if you want to create a new method
to read data from}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
Data.Base
}
\description{
Base class for any data providing service class. Extend this class if you want to create a new method
to read data from
}
\section{Methods}{

\describe{
  \item{\code{new()}}{This method is used to create object of this class. }

  \item{\code{getNext()}}{Method to retrieve the next observation from the data.}
  \item{\code{getNextN(n)}}{Method that returns the next \code{n} observations. This function can be used to bootstrap an initial model.}
}
}

\keyword{datasets}
