library(tidyr)
library(readr)
library(magrittr)
library(here)


clonal_prev <- read_csv(here("data", "px7_clonal_prev.csv"))
tree_edges  <- read_csv(here("data", "px7_tree_edges.csv"))

clonal_prev_spread <- clonal_prev %>%
  spread(clone_id, clonal_prev) %T>%
  write_csv(here("data", "px7_clonal_prev_spread.csv"))
