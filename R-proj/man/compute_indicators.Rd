% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compute_indicators.R
\name{compute_indicators}
\alias{compute_indicators}
\title{Compute an indicator for each time period that describes the state of a market.}
\usage{
compute_indicators(returns, win_length = NULL, m = NULL, n = NULL,
  nwarning = NULL, ncrisis = NULL)
}
\arguments{
\item{returns}{A \eqn{d}-dimensional vector that describes the direction of the first family of parallel hyperplanes.}

\item{win_length}{Optional. The length of the sliding window. The default value is 60.}

\item{m}{Optional. The number of slices for the copula. The default value is 100.}

\item{n}{Optional. The number of points to sample. The default value is \eqn{5\cdot 10^5}.}

\item{nwarning}{Optional. The number of consecutive indicators larger than 1 required to declare a warning period. The default value is 60.}

\item{ncrisis}{Optional. The number of consecutive indicators larger than 1 required to declare a crisis period. The default value is 100.}
}
\value{
A list that contains the indicators and the corresponding vector that label each time period with respect to the market state: a) normal, b) crisis, c) warning.
}
\description{
Given a matrix that contains row-wise the assets' returns and a sliding window W, this function computes an approximation of the joint distribution (copula) between portfolios' return and volatility in each time period implied by W. 
For each copula it computes an indicator: large value corresponds to a crisis period and a small value to a normal period. 
The periods over which the indicator is greater than 1 for more than 60 consecutives sliding windows are warnings and for more than 100 are crisis. The sliding window is shifted by one day.
}
\references{
\cite{L. Cales, A. Chalkis, I.Z. Emiris, V. Fisikopoulos,
\dQuote{Practical volume computation of structured convex bodies, and an application to modeling portfolio dependencies and financial crises,} \emph{Proc. of Symposium on Computational Geometry, Budapest, Hungary,} 2018.}
}
