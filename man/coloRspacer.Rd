\name{coloRspacer}
\alias{coloRSpacer}
\alias{coloRspacer}
\alias{colorspacer}
\title{Easily Create And Visualize Color Gradients}
\usage{
coloRspacer(startcolor = "red", middlecolors = NULL, endcolor = "red4", colors = NULL, steps = 4, return.colors = TRUE, per.line = 10, show.labels = T, show.grid = T, grid.color = "gray")
}
\arguments{
    \item{startcolor}{Starting point of the gradient. R color name or hex code.}
    \item{middlecolors}{Optional vector of color(s) to visit between start and end colors.}
    \item{endcolor}{End point of the gradient. R color name or hex code.}
    \item{colors}{Optional. Alternatively, plot given vector of color hex codes.}
    \item{steps}{Total number of entries in the output color set.}

   \item{return.colors}{If set, outputs a vector of hex color codes. Else,
     display a grid plot of the color gradient.}

   \item{per.line}{plot n colors per row.}
   \item{show.labels}{If set, label the axes.}
   \item{show.grid }{If set, daw a background grid.}
   \item{grid.color}{Background grid color. R color name or hex code.}
}
\value{
  \item{x}{Vector of color hex codes}
}
\description{
Easily create and visualize evenly spaced color gradients of arbitrary length.
}
\examples{
# Simple gradient
coloRspacer(startcolor = "blue",
              endcolor = "red")

coloRspacer(startcolor    = "blue",
            endcolor      = "red",
            return.colors = FALSE)

# Simple Gradient, some plot options
coloRspacer(startcolor    = "blue",
            endcolor      = "red",
            return.colors = FALSE,
            grid.color    = "black",
            per.line      = 2,
            show.labels   = FALSE)

# Bit longer blue gradient
coloRspacer(startcolor = "dodgerblue",
            endcolor   = "blue4",
            steps      = 7)

coloRspacer(startcolor    = "dodgerblue",
            endcolor      = "blue4",
            steps         = 7,
            return.colors = FALSE)

# Rainbow
coloRspacer(startcolor    = "red",
            middlecolors  = c("yellow", "green", "blue"),
            endcolor      = "violet",
            return.colors = FALSE,
            show.grid     = FALSE,
            show.labels   = FALSE,
            steps         = 15,
            per.line      = 15)

# Oscillating
coloRspacer(startcolor    = "red",
            middlecolors  = c("yellow", "darkred", "goldenrod", "darkred", "darkorange"),
            endcolor      = "brown",
            return.colors = FALSE,
            show.grid     = FALSE,
            show.labels   = FALSE,
            steps         = 20,
            per.line      = 10)

coloRspacer(startcolor    = "red",
            middlecolors  = c("yellow", "darkred", "goldenrod", "darkred", "darkorange"),
            endcolor      = "brown",
            return.colors = FALSE,
            show.grid     = FALSE,
            show.labels   = FALSE,
            steps         = 90,
            per.line      = 90)

# Full spectrum 1
coloRspacer(startcolor    = "red",
            middlecolors  = c("yellow", "green", "blue"),
            endcolor      = "violet",
            return.colors = FALSE,
            show.grid     = FALSE,
            show.labels   = FALSE,
            steps         = 1000,
            per.line      = 100)

# Full spectrum 2
coloRspacer(startcolor    = "red",
            middlecolors  = c("yellow", "green", "blue"),
            endcolor      = "violet",
            return.colors = FALSE,
            show.grid     = FALSE,
            show.labels   = FALSE,
            steps         = 10000,
            per.line      = 10)

# Random gradient
rbow <- coloRspacer(startcolor    = "red",
                    middlecolors  = c("yellow", "green", "blue"),
                    endcolor      = "violet",
                    return.colors = TRUE,
                    steps         = 10000)

coloRspacer(startcolor    = sample(rbow, 1),
            endcolor      = sample(rbow, 1),
            return.colors = FALSE,
            steps         = 16,
            per.line      = 4,
            show.grid     = FALSE,
            show.labels   = FALSE)
}
