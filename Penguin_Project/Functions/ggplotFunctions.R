#a function to create the bad plot
plot_bad_figure <- function(penguins_raw){penguins_raw %>%
    ggplot(aes(x = Sex, y=Flipper.Length..mm., colour= Island)) + 
    geom_point()+
    scale_y_continuous(limits=c(0, 230))}

#a function to create the explanatory figure 
plot_explanatory_figure <- function(penguins_clean){penguins_clean %>%
    na.omit()%>%
    ggplot(aes(x = sex, y=flipper_length_mm)) + 
    geom_jitter()+
    theme_bw()+
    theme(plot.title = element_text(hjust = 0.5, size=15), axis.title = element_text(size=13))+
    labs(x="Sex", y="Flipper Length (mm)", title = "The flipper length (mm) of Adelie, 
       Gentoo and Chinstrap Penguins, separated by sex")}

#a function to create the density plot
plot_density_plot <- function(penguins_clean){penguins_clean %>%
              na.omit() %>%
              ggdensity(x="flipper_length_mm",                                          
              main = "Density plot of flipper length",
              xlab = "Flipper length (mm)",
              ylab = "Density",
              fill = "sex")}



#a function to create the results figure 
plot_results_figure <- function(penguins_clean){penguins_clean%>%
    ggbetweenstats(sex, flipper_length_mm, type= "nonparametric",
    pairwise.display = "s", p.adjust.method = "holm")+
    labs(x="Sex", y="Flipper Lenth (mm)", title = "Statstical signficance of flipper length 
    sexual dimoprhism")+
    theme(plot.title = element_text(hjust = 0.5, size=15),
          axis.title = element_text(size=13))}









 