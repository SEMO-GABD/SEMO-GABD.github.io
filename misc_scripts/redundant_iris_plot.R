## Based on Chapter 17 Redundant Coding from
## Fundamentals of Data Visualization by Claus O. Wilke
## https://serialmentor.com/dataviz/redundant-coding.html
## https://github.com/clauswilke/dataviz/blob/master/redundant_coding.Rmd

library(tidyverse)
library(cowplot)
library(colorspace)
library(ggridges)

# grid lines along major axis ticks, no axes
theme_dviz_grid <- function(font_size = 14, font_family = "") {
  color = "grey90"
  line_size = 0.5

  # Starts with theme_cowplot and then modify some parts
  theme_cowplot(font_size = font_size, font_family = font_family) %+replace%
    theme(
      # make horizontal grid lines
      panel.grid.major   = element_line(colour = color,
                                        size = line_size),

      # adjust axis tickmarks
      axis.ticks        = element_line(colour = color, size = line_size),

      # no x or y axis lines
     axis.line.x       = element_blank(),
      axis.line.y       = element_blank(),
    )
}


breaks = c("setosa", "virginica", "versicolor")
labels = paste0("Iris ", breaks)


iris_scatter2_base <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, shape = Species, fill = Species, color = Species)) +     
    scale_shape_manual(values = c(21, 22, 23),
                       breaks = breaks,
                       labels = labels,
                       name = NULL) +
#    scale_color_manual(values = darken(c("#56B4E9", "#E69F00", "#009E73"), 0.3),
    scale_color_manual(values = c("#56B4E9", "#E69F00", "#009E73"),
                      breaks = breaks,
                       labels = labels,
                       name = NULL) +
    scale_fill_manual(values = c("#56B4E980", "#E69F0080", "#009E7380"),
                       breaks = breaks,
                       labels = labels,
                       name = NULL) +
    scale_x_continuous(limits = c(3.95, 8.2), expand = c(0, 0),
                       labels = c("4.0", "5.0", "6.0", "7.0", "8.0"),
                       name = "sepal length") +
    scale_y_continuous(limits = c(1.9, 4.6), expand = c(0, 0),
                       name = "sepal width")


iris_scatter2 <- iris_scatter2_base +
  geom_point(size=2.5,
             position = position_jitter(width = 0.01 * diff(range(iris$Sepal.Length)),
                                        height = 0.01 * diff(range(iris$Sepal.Width)),
                                        seed = 3942)) +
  theme_dviz_grid() +
  theme(legend.title.align = 0.5,
        legend.text = element_text(face = "italic"),
        legend.spacing.y = unit(3.5, "pt"),
        plot.margin = margin(7, 7, 3, 0))
        
iris_scatter2

# compute densities for sepal lengths
iris_dens <- group_by(iris, Species) %>%
  do(ggplot2:::compute_density(.$Sepal.Length, NULL)) %>%
  rename(Sepal.Length = x)

iris_max <- filter(iris_dens, density == max(density)) %>%
  ungroup() %>%
  mutate(hjust = c(0, 0.4, 0),
         vjust = c(1, 0, 1),
         nudge_x = c(0.11, 0, 0.24),
         nudge_y = c(-0.02, 0.02, -0.02),
         label = paste0("Iris ", Species)
  )

# compute densities for sepal lengths
iris_dens2 <- group_by(iris, Species) %>%
  do(ggplot2:::compute_density(.$Sepal.Width, NULL)) %>%
  rename(Sepal.Width = x)

dens_limit <- max(iris_dens$density, iris_dens2$density) * 1.05 # upper limit of density curves

# we need different hjust and nudge values here
iris_max <- mutate(iris_max,
         hjust = c(1, 0.4, 0),
         vjust = c(1, 0, 1),
         nudge_x = c(-0.18, 0, 0.47),
         nudge_y = c(-0.01, 0.06, 0.03),
         label = paste0("Iris ", Species)
        )

xdens <- axis_canvas(iris_scatter2, axis = "x") +
  geom_density_line(data=iris_dens, aes(x = Sepal.Length, y = density, fill = Species, color = Species),
                    stat = "identity", size = .2) +
  geom_text(data = iris_max, aes(label = label, hjust = hjust, vjust = vjust, color = Species,
                                 x = Sepal.Length + nudge_x, 
                                 y = density + nudge_y),
            size = 11/.pt, 
            #color = "black", inherit.aes = FALSE,
            fontface = "italic") +
#  scale_color_manual(values = darken(c("#56B4E9", "#E69F00", "#009E73"), 0.3),
  scale_color_manual(values = c("#56B4E9", "#E69F00", "#009E73"),
                     breaks = c("virginica", "versicolor", "setosa"),
                    guide = "none") +
  scale_fill_manual(values = c("#56B4E980", "#E69F0080", "#009E7380"),
                    breaks = c("virginica", "versicolor", "setosa"),
                    guide = "none") +
  scale_y_continuous(limits = c(0, dens_limit), expand = c(0, 0))

ydens <- axis_canvas(iris_scatter2, axis = "y", coord_flip = TRUE) +
  geom_density_line(data = iris_dens2, aes(x = Sepal.Width, y = density, fill = Species, color = Species),
                    stat = "identity", alpha = 0.5, size = .2)  +
#  scale_color_manual(values = darken(c("#56B4E9", "#E69F00", "#009E73"), 0.3),
  scale_color_manual(values = c("#56B4E9", "#E69F00", "#009E73"),
                    breaks = c("virginica", "versicolor", "setosa"),
                    guide = "none") +
  scale_fill_manual(values = c("#56B4E980", "#E69F0080", "#009E7380"),
                    breaks = c("virginica", "versicolor", "setosa"),
                    guide = "none") +
  scale_y_continuous(limits = c(0, dens_limit), expand = c(0, 0)) +
  coord_flip()

p1 <- insert_xaxis_grob(iris_scatter2 + 
                          theme(legend.position = "none"),
                        xdens, grid::unit(3*14, "pt"), position = "top")

p2 <- insert_yaxis_grob(p1, ydens, grid::unit(3*14, "pt"), position = "right")

ggdraw(p2)

