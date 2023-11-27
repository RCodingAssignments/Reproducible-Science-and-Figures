#a function to save the bad figure as a vector 
save_bad_figure_svg <- function(penguins_raw, 
                                  filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width   = size_inches, 
          height  = size_inches, 
          scaling = scaling)
  bad_figure <- plot_bad_figure(penguins_raw)
  print(bad_figure)
  dev.off()
}

#a function to save the explanatory figure as vector
save_explanatory_plot_svg <- function(penguins_clean, 
                                  filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width   = size_inches, 
          height  = size_inches, 
          scaling = scaling)
  explanatory_figure <- plot_explanatory_figure(penguins_clean)
  print(explanatory_figure)
  dev.off()
}

#a function to save the results figure as vector
save_results_plot_svg <- function(penguins_clean, 
                                  filename, size, scaling){
  size_inches = size/2.54
  svglite(filename, width   = size_inches, 
          height  = size_inches, 
          scaling = scaling)
  results_figure <- plot_results_figure(penguins_clean)
  print(results_figure)
  dev.off()
}