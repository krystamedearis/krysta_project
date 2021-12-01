here::i_am("code/make_fig.R")

library(readxl)
library(tidyverse)
library(dplyr)
library(ggplot2)

medals_cleaned <- read.table("medals_cleaned.txt")
#medals_cleaned <- read_excel(
  here::here("clean_data", "medals_cleaned.txt")
#)

png(here::here("output","bp.png"))
ggplot(data = medals_cleaned, aes(x = Team, y = Gold, fill = Team)) +
  geom_bar(stat = "identity") + theme_minimal()
dev.off()
