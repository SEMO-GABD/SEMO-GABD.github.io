library(tidyverse)
library(gghighlight)
library(ggthemes)

data_path <- "data"


covid_confirmed_raw <- 
  read_csv("data/covid_confirmed.csv") %>% 
  filter(countyFIPS != 0) %>% 
  pivot_longer(cols = ends_with("/20"),
               names_to = "date",
               values_to = "cases") %>% 
  mutate(date = lubridate::mdy(date))



covid_all <- covid_confirmed_raw %>% 
  filter(date >= "2020-03-01") %>% 
  group_by(State, date) %>% 
  summarize(total_cases = sum(cases))


## First reported case in MO is officially 07 March,
## but doesn't appear in the data until 08 March.
covid_mo <- covid_confirmed_raw %>% 
  filter(State == "MO",
         date >= "2020-03-08") %>% 
  group_by(date) %>% 
  summarize(total_cases = sum(cases)) %>% 
  ungroup()



covid_all %>% 
  ggplot(aes(x = date, 
              y = total_cases)) +
  geom_line(aes(color = State)) +
  scale_x_date(date_labels = "%d-%b") +
  gghighlight(State == "MO")

# County Populations ------------------------------------------------------

covid_counties_raw <- read_csv(file.path(data_path, "covid_county_populations.csv")) %>% 
  rename(county_fips = countyFIPS,
         state = State,
         county_name = `County Name`)

# Remove unassigned cases for each state
covid_counties <- covid_counties_raw %>% 
  filter(county_fips != 0,
         state == "MO")


x <- covid_mo$total_cases[2:length(covid_mo$total_cases)]
y <- covid_mo$total_cases[1:length(covid_mo$total_cases)-1]
z <- x - y
z <- c(0, z)

# Use replace_na() to replace first six NAs with 0
# z_avg <- replace_na(data.table::frollmean(z, 7),0)
z_avg <- data.table::frollmean(z, 7, align = "right")

covid_mo$mo_opened <- covid_mo$date == as.Date("2020-06-16")
mo_opens <- covid_mo[mo_opened,]
mo_opens$total_cases <- z_avg[mo_opened]

ggplot(data = covid_mo,
       aes(x = date, y = z)) +
  geom_col(aes(fill = mo_opened),
           color = "gray75") +
  geom_line(aes(x = date, y = z_avg),
          color = "black",
          size = 0.5) +
  scale_x_date(date_labels = "%b %d", 
               date_breaks = "2 weeks",
               limits = c(as.Date("2020-03-08"), NA)) +
  scale_fill_manual(values = c("gray85", "maroon"),
                    guide = NULL) +
  labs(x = "Date",
       y = "Daily New Cases") +
  theme_few() +
  annotate(geom = "text", 
           x = as.Date("2020-06-17"), # Offset by one day looks a little better
           y = 440, 
           label = "Missouri reopened\n16 June 2020",
           hjust = 1,
           color = "maroon") #+
  # annotate(geom = "curve", 
  #          x = as.Date("2020-06-01"),
  #          y = 550,
  #          xend = as.Date("2020-06-16"),
  #          yend = 230,
  #          curvature = -0,
  #          color = "maroon",
  #          arrow = arrow(length = unit(2, "mm"))) 

#+
#  geom_point(data = mo_opens,
#             aes(x = date, y = total_cases),
#             color = "maroon",
#             size = 2)



# "#D95F02" = orange from Brewer Dark2. Good line color.  
