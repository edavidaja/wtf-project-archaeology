library(dplyr)
library(dtplyr)

lazy_dt(iris) %>% 
  mutate(
    across(starts_with("Sepal"), ~ .x^2, .names = "{col}_squared")
  )
