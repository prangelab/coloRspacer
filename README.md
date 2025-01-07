# coloRspacer
Easily create and visualize evenly spaced color gradients of arbitrary length.

Input

    start and end color: R color names or hex codes
    middle colors (optional): vector of color(s) to visit between start and end colors.
    colors (optional): alternatively, plot given vector of color hex codes.
    steps = 4: total number of entries in the output color set.

Output

    If return.colors is set, outputs a vector of hex color codes.
    If return.colors is not set, displays a grid plot of the color gradient.

Plot options (optional)

    per.line    = 10: how many colors to plot on one plot row
    show.labels = T: label the axes
    show.grid   = T: draw a background grid
    grid.color  = "gray": background grid color
