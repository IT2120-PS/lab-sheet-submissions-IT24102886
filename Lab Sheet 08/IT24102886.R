data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
names(data)<-c("Weight")
attach(data)

popmn<-mean(Weight)
popmn
popvar<-var(Weight)
popvar

samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Nicotine,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

n
samples

colnames(samples)=n
samples

s.means<-apply(samples,2,mean)
s.var<-apply(samples,2,var)

s.means
s.var

samplemean<-mean(s.means)
samplevars<-var(s.means)

popmn
samplemean

truevar=popvar/5
truevar
samplevars

