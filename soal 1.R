#no 1 a
dgeom(3, .20)

#no 1b
mean(rgeom( n = 10000, prob = .20) == 3)


#no 1 d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = .20)) %>%
  mutate(failures = ifelse(x == 3,3, "other")) %>%
ggplot(aes(x = factor(x), y = prob, fill = failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
  position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 gagal Sebelum Sukses Pertama",
       subtitle = "geometric",
       x = "Peluang gagal sebelum sukses pertama",
       y = "probabilitas")

#no 1 e
mean = 3 * 0.20
mean
varian = 3 * 0.20 * (1 - 0.20)
varian
