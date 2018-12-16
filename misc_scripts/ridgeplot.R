ggplot(lincoln_weather, aes(x = `Mean Temperature [F]`, y = `Month`, fill = ..x..)) +
  geom_density_ridges_gradient(scale = 3, rel_min_height = 0.01, gradient_lwd = 1.) +
  scale_x_continuous(expand = c(0.01, 0)) +
  scale_y_discrete(expand = c(0.01, 0)) +
  scale_fill_viridis(name = "Temp. [F]", option = "C") +
  labs(
    title = 'Temperatures in Lincoln NE',
    subtitle = 'Mean temperatures (Fahrenheit) by month for 2016\nData: Original CSV from the Weather Underground'
  ) +
  theme_ridges(font_size = 13, grid = TRUE) + theme(axis.title.y = element_blank())
  

## Working Ridgeplot modified from 
## https://github.com/clauswilke/dataviz/blob/master/redundant_coding.Rmd
## See the very last figure in the code.
## I changed the scale_fill_continuous_sequential to viridis, and
## got rid of his references to dviz font family.

library(ggplot2)
library(ggridges)
library(viridis)

bandwidth <- 3.4

lincoln_base <- ggplot(lincoln_weather, aes(x = `Mean Temperature [F]`, y = `Month`, fill = ..x..)) +
  geom_density_ridges_gradient(scale = 3, rel_min_height = 0.01, bandwidth = bandwidth,
                               color = "black", size = 0.25) +
  scale_x_continuous(expand = c(0, 0), breaks = c(0, 25, 50, 75), labels = NULL) +
  scale_y_discrete(expand = c(0, .2, 0, 2.6)) +
#  scale_fill_continuous_sequential(palette = "Heat", l1 = 20, l2 = 100, c2 = 0) +
  scale_fill_viridis(name = "Temp. [F]", option = "C") +
  xlab("mean temperature (°F)") +
  guides(fill = "none") +
  theme_ridges(center = TRUE, grid = TRUE) +
  theme(axis.title.y = element_blank())

# x axis labels

temps <- data.frame(temp = c(0, 25, 50, 75))

# calculate corrected color ranges
# stat_joy uses the +/- 3*bandwidth calculation internally

tmin <- min(lincoln_weather$`Mean Temperature [F]`) - 3*bandwidth
tmax <- max(lincoln_weather$`Mean Temperature [F]`) + 3*bandwidth

xax <- axis_canvas(lincoln_base, axis = "x", ylim = c(0, 2)) +
  geom_ridgeline_gradient(data = data.frame(temp = seq(tmin, tmax, length.out = 100)),
                          aes(x = temp, y = 1.1, height = .9, fill = temp),
                          color = "transparent") +
  geom_text(data = temps, aes(x = temp, label = temp),
            color = "black",
            y = 0.9, hjust = 0.5, vjust = 1, size = 14/.pt) +
#  scale_fill_continuous_sequential(palette = "Heat", l1 = 20, l2 = 100, c2 = 0)
  scale_fill_viridis(name = "Temp. [F]", option = "C")

lincoln_final <- insert_xaxis_grob(lincoln_base, xax, position = "bottom", height = unit(0.1, "null"))

ggdraw(lincoln_final)