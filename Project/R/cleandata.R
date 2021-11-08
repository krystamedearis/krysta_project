here::i_am('R/cleandata.R')
# read data
medals <- read_xlsx("medals.xlsx")

# remove NAs
medals_cleaned <- medals%>% mutate(
  Rank = as.numeric(Rank),
  Gold = as.numeric(Gold),
  Silver = as.numeric(Silver),
  Bronze = as.numeric(Bronze),
  Total = as.numeric(Total)) %>%
  filter(Rank <= 10)

# save data
write.csv(medals_cleaned, file = "medals_cleaned.xlsx")
