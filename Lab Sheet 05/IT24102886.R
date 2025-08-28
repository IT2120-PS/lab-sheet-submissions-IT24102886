#1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
attach(Delivery_Times)

names(Delivery_Times)<-c("X1")
attach(Delivery_Times)

#2
histogram <- hist(X1, main = "Histogram of Delivery Times", xlab = "Delivery Time (minutes)",
     breaks = seq(20, 70, length = 10), right = FALSE)

#4
breaks <- round(histogram$breaks)
breaks

freq <- histogram$counts
freq

mids <- histogram$mids
mids

cum.freq <- cumsum(freq)
cum.freq

new <- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i]= 0
  }else{
    new[i]= cum.freq[i-1]
  }
}

plot(breaks, new, type = 'l', main = "Cumalative Frequency Polygon for Delivery Time",
     xlab = "Delivery Time", ylab = "Cumalative Frequency", ylim = c(0,max(cum.freq)))