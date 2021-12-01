here::i_am("code/make_table.R")

library(readxl)
library(tidyverse)
library(dplyr)
library(ggplot2)

medals_cleaned <- read.table("medals_cleaned.txt")

data_for_table <- medals_cleaned[,c("Rank","Team","Gold")]

saveRDS(data_for_table, here::here(
  "output", "data_for_table.rds"
))
