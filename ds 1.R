1+1
2*3*4/5
3^2
exp(1)
sqrt(3)
pi*3
x<-10
y<-20
x*y
#value stored in a vector
z<-c(1,5,10,15,16)
z
k<-c(2,4,6,8,10)
z+k
z*k
z/k
z[3]
k[4]
k[-3]
k[1]<- -3
k
k[2]=14
k
k<10 #compare each elemnents,returns result as vector
k
k[k<10]=14 #edits elements marked as True in index vector
k
#data frame :2d data structure 
#it shares the properties of matrix and list
# constructed using data.frame(x=C:R,y=c("a","b","c"))
# for Ex.
df<-data.frame(x=1:3,y=c("a","b","c"))
View(df)
## slicing data frame: access the value in data frame
#from Df data frame find the vlaue below:
#print value 1
df[1,1]
# print value 1 and a
df[1,c(1,2)]
#print value a and c
df[c(1,3),2]
# print 1 and 3
df[c(1,3),1]
# print 1,a,3,c
df[c(1,3),c(1,2)]
# Vector : is 1dimensional heterogenous data structures
# syntax= <-c(1,2,.,.,.,.,.)
airquality<- datasets::airquality

##top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
## coulmns
airquality[,c(1,2)]
dy<-airquality[,-6]
dy
airquality$Temp 
summary(airquality$Temp)## summary gives the full detail of the coloumn like max,min..
 summary(airquality$Solar.R)
 ####plots
 plot(airquality$Wind)
 plot(airquality$Temp, airquality$wind, type="p")
 plot(airquality)
 #points and lines
 plot(airquality$Wind,type="l", col="Red") # P= point, l: lines, b: both
 
 plot(airquality$Wind,xlab="Ozone Concentration",
 ylab= "No. Of Instances",main="Ozone
      Levels in NY city",col="Blue")
 #horizontal Bar Plots
 barplot(airquality$Ozone,main= "ozone concentration in Air", 
         ylab = "ozone level",horiz = F,axes = T, col ="Blue")
 #histogram
 hist(airquality$Ozone)
 hist(airquality$Temp,
      main = "Solar Radiation Value in air",
      xlab="Solar Radiation", col= "blue")
 
hist(airquality$Wind, mai="Wind Flow", col = "red")
## single box plot
#main function of the box plot is to find the outliers
boxplot(airquality$Wind, main="Boxplot",col = "Green")
boxplot.stats(airquality$Wind)$out

## multiple box plots
boxplot(airquality)
boxplot(airquality[,1:4],main="Multiple")

#margin of the grid(mar),
# no of rows and columns (mfrow),
#whether a border is to be included(bty)
#and postion of the labels(las: 1 for horizontal & 
#las : 0 for vertical)
# bty - box around the plot o: boundry, n: no boundry
par(mfrow=c(3,3),mar=c(2,5,2,1), las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Wind, type="l")
plot(airquality$Temp,type = "l")
barplot(airquality$Solar.R, main = "Solar Radition in air", col = 
          "Red",horiz = TRUE)
hist(airquality$Day, col="green")
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main="multiple box plots")

