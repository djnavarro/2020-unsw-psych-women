library(jasmines)
library(dplyr)

base <- bind_rows(
  use_seed(2) %>% entity_circle(grain = 3000) %>% mutate(x = x - 3),
  use_seed(2) %>% entity_circle(grain = 3000) %>% mutate(x = x - 1),
  use_seed(2) %>% entity_circle(grain = 3000) %>% mutate(x = x + 1),
  use_seed(2) %>% entity_circle(grain = 3000) %>% mutate(x = x + 3),
  use_seed(2) %>% entity_circle(grain = 3000) %>% mutate(y = y - 3),
  use_seed(2) %>% entity_circle(grain = 3000) %>% mutate(y = y - 1),
  use_seed(2) %>% entity_circle(grain = 3000) %>% mutate(y = y + 1),
  use_seed(2) %>% entity_circle(grain = 3000) %>% mutate(y = y + 3)
)

bck <- "#e6e6fa"

base %>%
  unfold_tempest(iterations = 100,scale = .005) %>%
  style_ribbon(
    palette = palette_manual(
      bck, bck, bck, 
      "#46286e", "#e6e6fa", "#ffffff", "#000000",
      "#46286e", "#e6e6fa", "#ffffff", "#000000",
      "#46286e", "#e6e6fa", "#ffffff", "#000000"
    ),
    background = bck,
    colour = "time", 
    alpha = c(.5, .1)
  ) %>%
  export_image(
    filename = "~/Desktop/background2020.png",
    xlim = c(.1,.9), ylim = c(.1,.9)
  )