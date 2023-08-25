getwd()
"/Users/pritika_timsina"
setwd("/Users/pritika_timsina/Desktop/dataset")
data<-read.csv('portfolio_data.csv')
data<-read.csv('portfolio_data.csv', header=TRUE)
head(data)
summary(data)
data[c('DPZ', 'NFLX')]
result <- t.test(data$DPZ, data$NFLX,var.equal=TRUE)
result
t.test(data$DPZ, data$NFLX, alternative="two.sided", mu=0, paired=FALSE, var.equal=FALSE, conf.level=0.95)
par(mfrow = c(1, 2))
# Create a histogram for 'DPZ'
hist(data$DPZ, main = "Histogram of DPZ", xlab = "DPZ Stock Prices")

# Create a histogram for 'NFLX'
hist(data$NFLX, main = "Histogram of NFLX", xlab = "NFLX Stock Prices")

install.packages("ggplot2")
library(ggplot2)
combined_hist <- ggplot(data, aes(x = DPZ)) + 
  geom_histogram(fill = "blue", alpha = 0.5) +
  labs(title = "Comparison of DPZ and NFLX Stock Prices",
       x = "Stock Prices",
       y = "Frequency") +
  geom_histogram(aes(x = NFLX), fill = "red", alpha = 0.5)
combined_hist
