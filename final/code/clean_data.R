here::i_am("code/clean_data.R")

library(readxl)
library(tidyverse)
library(dplyr)
library(ggplot2)

medals <- read_excel("raw_data/Medals.xlsx")

medals_cleaned <-  medals %>% mutate(
  Rank = as.numeric(Rank),
  Gold = as.numeric(Gold),
  Silver = as.numeric(Silver),
  Bronze = as.numeric(Bronze),
  Total = as.numeric(Total)) %>%
  filter(Rank <= 10)

  write.table(medals_cleaned, "medals_cleaned.txt")
