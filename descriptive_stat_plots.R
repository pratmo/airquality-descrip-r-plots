#creating data frame airquality
airquality <- datasets::airquality

#initial observation of data-set
head(airquality,10)
tail(airquality,10)

#statistical summary of the data-set and wind dimention
summary(airquality)
summary(airquality$Wind) 

#scatter plot for Wind, Temp vs Wind and complete dataframe
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)

# using lines for data-points rather than points
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both

#Plotting Ozone levels in New York City
plot(airquality$Wind, xlab = 'Ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')

# Horizontal bar plot for Ozone concentration in air
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = F,axes=T)

#Histogram for air quality and solar radiation values in air
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot for wind
boxplot(airquality$Wind,main="Boxplot")

# Multiple box plots for ozone, solar r., wind and temp.
boxplot(airquality[,1:4],main='Multiple')

#plotting multiple graphs in one dashboard
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')

