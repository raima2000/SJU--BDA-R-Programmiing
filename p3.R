id<-c(1,2,3,4,5,6,7)
age<-c(22,23,21,24,22,21,25)
bp<-c("no","yes","no","yes","yes","yes","no")
mydata1<-data.frame(id,age,bp)
mydata1
merge.data<-merge(mydata,mydata1,by="id")
merge.data  # merging 2 data

         # Adding rows
rbind() # to join 2 df vertically # 2 dfs must have same variable

          # Split command
  # divides the data into groups defined
df<-split(mydata,mydata$sex) # here on the basis of sex
df

           # Transform command
mydata<-transform(mydata,weight=weight*2.221)
mydata

               # Subsetting Data
# to access object elements
# select and exclude variables and observations
femdata<-mydata[gender=='female',]
femdata # for extracting female data

maledata<-mydata[gender=='male',]
maledata
       # extracting specific rows (and)
malesmoking<-mydata[gender=="male" & smoking=="yes",]
malesmoking


           # Statistical Functions
age<-c(22,23,21,24,22,21,25)
mean(age)
median(age)
max(age)
min(age)
range(age)
quantile(age)
sd(age)
var(age)
        # new dataframe

height<-c(160,161,165,150,155,167,162)
cholestrol<-c(11,13,14,12,15,16,11)
income<-c(100,300,400,300,400,500,800)
id<-c(1,2,3,4,5,6,7)
weight<-c(20,27,24,22,23,25,28)
gender<-c("male","female","male","female","female","female","male")
age<-c(22,23,21,24,22,21,25)
socialdata<-data.frame(height,cholestrol,income,id,weight,gender,age)
socialdata


         # SCATTER PLOT

plot(weight,cholestrol,main="Wt Vs Cholestrol",pch=18,col="red",las=1)
    #pch = used to specify type of plotting points
    #cex = size of the plotting text
    #las= orientation of the tick mark
    #main = heading of the plot

        # BAR PLOT
count<-table(gender)
percent<-count/7 
percent
barplot(percent,main='gender',xlab='gender',ylab='%',las=1,names.arg = c('male','female'))

barplot(percent,main='gender',xlab='gender',ylab='%',las=1,names.arg = c('male','female'),horiz=TRUE,col=3)
barplot(percent,main='gender',xlab='gender',ylab='%',las=1,names.arg = c('male','female'),horiz=TRUE,col=c(2,3))
