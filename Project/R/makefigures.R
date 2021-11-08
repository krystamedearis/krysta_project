here::i_am('R/makefigures.R')

# read data
medals <- read.csv("medals_cleaned.xlsx", header = TRUE)

bp <- ggplot(medals_cleaned, aes(x="", y=Gold, fill=Team)) +
  geom_bar(width = 1, stat = "identity")
png('bp.png')

pie<- bp + coord_polar("y", start=0)
png('pie.png')
