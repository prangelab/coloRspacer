coloRspacer <- function(startcolor = "red", middlecolors = NULL, endcolor = "red4", colors = NULL, steps = 4, return.colors = TRUE, per.line = 10, show.labels = T, show.grid = T, grid.color = "gray"){
  # If a premade list of colors is given, use that.
  if(!is.null(colors)){
    steps <- length(colors)
  }else{
    # If start, end point, and (optionally) mid point colors are given, use those instead
    if(is.null(middlecolors)){
      pal <- colorRampPalette(c(startcolor, endcolor))
    }else{
      pal <- colorRampPalette(c(startcolor, middlecolors, endcolor))
    }
    colors <- pal(steps)
  }
  if(return.colors){
    return(colors)
  }else{
    # Make a plot
    # Define number of lines to plot and how many colors will go on the last line
    if(steps <= per.line){
      lines      <- 1
      last.steps <- 0
      per.line  <- steps
    }else{
      lines      <- ceiling(steps/per.line)
      last.steps <- per.line - steps %% per.line
      if(last.steps == per.line){
        last.steps <- 0
      }
    }
    # Start building the plot
    plot(0, 0, type = "n", xlim = c(0, 1), ylim = c(0, 1), axes = FALSE, xlab = "", ylab = "" )

    # Add colored rectangles
    if(show.grid){
      rect(     rep((0:(per.line - 1) / per.line), lines)[1:(per.line * lines - last.steps)],
                sort(rep((0:(   lines - 1) / lines),    per.line), decreasing=T)[1:(per.line * lines - last.steps)],
                rep((1:per.line       / per.line), lines)[1:(per.line * lines - last.steps)],
                sort(rep((1:lines          / lines),    per.line), decreasing=T)[1:(per.line * lines - last.steps)],
                border = grid.color,
                col    = colors)
    }else{
      rect(     rep((0:(per.line - 1) / per.line), lines)[1:(per.line * lines - last.steps)],
                sort(rep((0:(   lines - 1) / lines),    per.line), decreasing=T)[1:(per.line * lines - last.steps)],
                rep((1:per.line       / per.line), lines)[1:(per.line * lines - last.steps)],
                sort(rep((1:lines          / lines),    per.line), decreasing=T)[1:(per.line * lines - last.steps)],
                border = NA,
                col    = colors)
    }

    # Add axes (if requested)
    if(show.labels){
      axis(2,
           at     = (0:(lines - 1) / lines) + (1 / (lines * 2)),
           labels = rev(seq(0,(lines * per.line),per.line)[1:lines]),
           tick   = F, lty = 6, pos = 0.01)
      axis(3,
           at     = 0:(per.line - 1) / per.line + (1 / (per.line * 2)),
           labels = seq(1,per.line),
           tick   = F, lty = 6, pos = 0.99)

      # Add labels
      mtext("Little step #", 3, line = 1)
      mtext("Big step #", 2, line = 1)
      mtext("Step #: Little + Big Step #", 1)
    }
  }
}
