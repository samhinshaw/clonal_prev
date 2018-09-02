library(tidyr)
library(readr)
library(magrittr)
library(here)


clonal_prev <- read_csv(here("data", "px7_clonal_prev.csv"))
tree_edges  <- read_csv(here("data", "px7_tree_edges.csv"))

clonal_prev_spread <- clonal_prev %>%
  spread(clone_id, clonal_prev) %T>%
  write_csv(here("data", "px7_clonal_prev_spread.csv"))

## gather state data
state_data <- read_csv(here("data", "data.csv"))
long_state_data <- state_data %>%
  gather(key = "age_group", value = "count", -State) %T>%
  write_csv(here("data", "long_state_data.csv"))
