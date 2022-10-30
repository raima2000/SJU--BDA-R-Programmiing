id<-c(1,2,3,4,5,6,7)
weight<-c(20,27,24,22,23,25,28)
gender<-c("male","female","male","female","female","female","male")
smoking<-c("yes","yes","no","no","yes","yes","no")
tumour<-c("small","medium","small","medium","large","large","small")
mydata<-data.frame(id,weight,gender,smoking,tumour)
mydata
       # PIE CHART
count<-table(smoking)
pie(count,main = 'smoking')
pie(count,main = 'smoking',radius=1) # to inc the size of pie
pie(count,main='Smoking',radius=1,edges = 10) # to specify edge
pie(count,main='smoking',clockwise = T) # to give rotation
pie(count,main='smoking',col=c(2,3))


            # HISTOGRAM
attach(mtcars)
mtcars

hist(mpg)  # displays histogram
hist(mpg,col=4,las=1,freq = T) #Colored histogram
   # adding freq polygon
hist(mpg,col=3,las=1,freq=F)
lines(density(mpg),col=2,lwd=2)

     # 2 plots in 1 window
# mfrow divides the window into 1 row and 2 columns

par(mfrow=c(1,2))
hist(mpg)
hist(mpg[am==0]) 
hist(mpg[am==1])




               # BOX PLOTS
attach(ToothGrowth)
ToothGrowth
boxplot(len,data=ToothGrowth,main="Length of Tooth",xlab="Dose",ylab="Tooth Length")
boxplot(len~dose,data=ToothGrowth,main="Length of Tooth",xlab="Dose",ylab="Tooth Length")


attach(CO2)
qqnorm(uptake)
qqline(uptake,col=3,lwd=3)
