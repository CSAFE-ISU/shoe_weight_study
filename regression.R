df <- read.csv('intensity_weight.csv')
library(tidyverse)
library('Hotelling')
lm_obj <- lm(data = df, Intensity~Weight)
summary(lm_obj)
plot(df$Intensity~df$Weight)

df_features <- read.csv("extracted_features.csv")

df1 <- read.csv("no_weight.csv")
df2 <- read.csv("max_weight.csv")

for (i in 1:12) {
  x <- df1[,i]
  y <- df2[,i]
  print(sum(x))
  print(sum(y))
  # print(t.test(x, y, paired = TRUE, alternative = "two.sided"))
}

length(df1[,1])
sum(df1[,1])

cumsum <- 0
for (i in 1:17) {
  cumsum <- cumsum + df1[i,1]
  print(cumsum)
}
cumsum
