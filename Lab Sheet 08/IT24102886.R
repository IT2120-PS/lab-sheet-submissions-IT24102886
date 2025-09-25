setwd("C:\\Users\\Sahanmi Perera\\Desktop\\IT24102886")

data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
names(data)<-c("Weight")
attach(data)

#1
popmn<-mean(Weight)
popmn
popsd<-sd(Weight)
popsd

#2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.sds<-apply(samples,2,sd)

s.means
s.sds

#3
sample_mean<-mean(s.means)
sample_sd<-sd(s.means)

sample_mean
popmn

sample_sd
truesd = popsd / sqrt(6)
truesd

