# VECTORS

a<-c(1,2,3,4,5,6)
a
typeof(a)
class(a)
length(a) # to find the length

A<-2:10
print(A)
A[3] # find the 3rd element

A[-3] # to retrieve all elements except the 3rd element

# LISTS

x<-list("a","b",8,3) # lists can have values of any datatype
print(x)
x[3] # to access the element of that particular loc

# MATRIX 
   # Its like a vector but it has 2 dimensions . You use it to modify and store values from a dataset because matrix has 2D 
   # Follow syntax
   # variable<-matrix(vector,nrow =n, ncol=i)
# create a matrix with 3 rows & 3 cols
A<-matrix(c(1,2,3,4,5,6,7,8,3),nrow=3,ncol=3)
print(A)
B<-matrix(c(3,5,8,0,2,3,6,1,7),nrow=3,ncol=3)
print(B)
C=A+B # matrix addition
C
D=A-B # matrix subtraction
D
E=A*B # matrix multiplication
E

A[1,] # to select the first row
A[,1] #to select the first column
A[-3,] # to select all rows except the 3rd row
A[2,2] # to select 2nd row & 2nd col


# DATAFRAME
  # special list or R obj that is multidimensional and is usually used to store dataread from an excel
  # matrix can only store same datatype but df stores different datatypes
  # declaring df "variable =data.frame(colname 1=c(),colname 2=c())
id<-c(1,2,3,4,5,6,7)
weight<-c(20,27,24,22,23,25,28)
gender<-c("male","female","male","female","female","female","male")
smoking<-c("yes","yes","no","no","yes","yes","no")
tumour<-c("small","medium","small","medium","large","large","small")
mydata<-data.frame(id,weight,gender,smoking,tumour)
mydata


names(mydata) # function to get or set the names of an object
str(mydata)  # compactly display the internal structure of an R obj
levels(mydata$gender) # provides access to the levels of a variable
dim(mydata) # retrieve or set the dimensions of an obj
class(gender) # displays the datatype
class(weight)
mydata[1:3,] # print 1st 3 rows
head(mydata)
head(mydata, n=3)
tail(mydata)
tail(mydata,n=3)


# RENAME VARIABLES

names(mydata)[3]<-"sex"
names(mydata)[c(4,5)]<-c("Smoke","Tum")
mydata

# SORT COMMAND
  # It alphabetizes or numerically orders 1 or more specifies cols and carries along associated cols
  # done on vector,matrix,df
newdata<-mydata[order(weight),]  # sort by weight
newdata

newdata1<-mydata[order(-weight),] # sort by weight (descending)
newdata1
