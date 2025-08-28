

setwd("C:\\Users\\IT24104258\\Desktop\\IT24104258PS  Labsheet 5")
#Q1
Delivery_Times <- read.table('Exercise - Lab 05.txt', header = TRUE,sep = ",")

str(Delivery_Times)
head(Delivery_Times)


#Q2
breaks <- seq(20, 70, length.out = 10)

delivery_data <- Delivery_Times[, 1]  


hist(delivery_data, 
     breaks = breaks,
     right = FALSE, 
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency",
     xlim = c(20, 70))



#Q3
cat("- Most delivery times happned in 40 minute")



#Q4
freq_table <- table(cut(delivery_data, 
                        breaks = breaks, 
                        right = FALSE))

cum_freq <- cumsum(freq_table)


plot(breaks[-1], cum_freq,  
     type = "o", 
     pch = 16,    
     
     main = "Cumulative Frequency Polygon (Ogive) of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     xlim = c(20, 70),
     ylim = c(0, max(cum_freq) + 5))