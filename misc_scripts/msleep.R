ggplot(data = msleep) +
  geom_boxplot(aes(x = vore, y = sleep_rem))

ggplot(data = msleep) +
  geom_boxplot(aes(x = order, y = sleep_total)) +
  coord_flip()


msleep %>% 
  drop_na(vore) %>% # Remove NA
  filter(bodywt < 25) %>% # Play with filters
  ggplot() +
  geom_boxplot(aes(x = vore,
                   y = bodywt)) +
  coord_flip()

msleep %>% 
#  drop_na() %>% # Remove NA
  ggplot(aes(x = sleep_total,
           y = sleep_rem)) +
  geom_point(aes(color = order))

msleep %>% 
  drop_na() %>% 
  ggplot(aes(x = sleep_cycle,
             y = sleep_total)) +
  geom_point(aes(color = order)) +
  facet_wrap(~ vore, ncol = 2)


msleep %>% 
  drop_na(sleep_rem, vore) %>% 
  ggplot(aes(x = reorder(name, sleep_rem),
             y = sleep_rem)) +
  geom_point(aes(color = vore)) +
  coord_flip()

+
  facet_wrap(~ vore, ncol = 2)

+
  geom_smooth(method = "lm")

ggplot(data = msleep,
       aes(x = bodywt,
           y = brainwt)) +
  geom_point(aes(color = order)) +
  geom_smooth(method = "lm")

